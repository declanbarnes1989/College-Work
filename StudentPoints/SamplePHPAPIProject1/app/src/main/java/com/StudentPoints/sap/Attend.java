package com.StudentPoints.sap;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.StudentPoints.app.AppConfig;
import com.StudentPoints.app.AppController;
import com.StudentPoints.helper.SQLiteHandler;
import com.StudentPoints.helper.SessionManager;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;

import static java.util.Calendar.DAY_OF_WEEK;

/*
 * Created by declanbarnes on 25/11/15.
 */
public class Attend extends Activity {

    //DECLARE VARIABLES
    public TextView TFRoom, emailTV, TVDayIN;
    public Button logoutBtn, BtnLeader;
    public Button Battend;
    private SessionManager session;
    private SQLiteHandler db;
    String r;

    private ProgressDialog pDialog;


    private static final String TAG = Attend.class.getSimpleName();


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_attend);
        initialize();

        logoutBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                logoutUser();

            }
        });

        session = new SessionManager(getApplicationContext());
        db = new SQLiteHandler(getApplicationContext());
        pDialog = new ProgressDialog(this);

        if (!session.isLoggedIn()) {
            logoutUser();

        }

        //ATTEND BUTTON, RETRIEVE STUDENT_ID, ROOM, DAY_OF_WEEK FROM TEXTVIEW'S
        Battend.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String Student_ID = emailTV.getText().toString();
                String Room = TFRoom.getText().toString();
                String Day_of_Week = TVDayIN.getText().toString();

                if (!Student_ID.isEmpty() && !Room.isEmpty() && !Day_of_Week.isEmpty()) {
                    attendanceCheck(Student_ID, Room, Day_of_Week);
                }
            }
        });

        //*****STACKOVERFLOW FORUM WAS VIEWED IN ORDER TO FIGURE OUT HOW TO GO ABOUT THE NEXT SECTION*****//

        //Get Student_ID of user that is logged in
        HashMap<String, String> detail = db.getUserDetails();
        String Student_ID = detail.get("Student_ID");
        emailTV.setText(Student_ID);

        //BUNDLE TO CARRY ROOM OVER TO TEXTVIEW
        Bundle gotRoom = getIntent().getExtras();
        r = gotRoom.getString("key");
        TFRoom.setText(r);

        //CALENDER METHOD TO RETRIEVE THE CURRENT DAY OF THE WEEK
        Calendar sCalendar = Calendar.getInstance();
        String weekDay = sCalendar.getDisplayName(DAY_OF_WEEK, Calendar.LONG, Locale.getDefault());
        TVDayIN.setText(weekDay);

        super.onResume();

        //OPEN LEADERBOARD.CLASS
        BtnLeader.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(Attend.this, Leaderboard.class);
                startActivity(i);
                finish();
            }
        });
    }

    //INITIALIZE METHOD
    public void initialize() {

        TFRoom = (TextView) findViewById(R.id.TFRoom);
        emailTV = (TextView) findViewById(R.id.emailWF);
        TVDayIN = (TextView) findViewById(R.id.TVDayIN);
        logoutBtn = (Button) findViewById(R.id.logout_btn);
        Battend = (Button) findViewById(R.id.Battend);
        BtnLeader = (Button) findViewById(R.id.BtnLeader);



    }

    //LOGOUT USER
    private void logoutUser() {
        session.setLogin(false);
        db.deleteUser();

        Intent i = new Intent(this, LoginActivity.class);
        startActivity(i);
        finish();
    }

    //STORE AND CHECK ATTENDANCE DETAIL'S
    public void attendanceCheck(final String Student_ID, final String Room, final String weekDay) {
        String tag_reg = "Attendance_request";
        pDialog.setMessage("Attending....");
        showDialog();

        //REQUEST POST METHOD FROM ATTEND_URL
        StringRequest strR = new StringRequest(
                Request.Method.POST, AppConfig.ATTEND_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        hideDialog();

                            //JSONOBJECT FOR ERROR RESPONSE
                        try {
                            JSONObject jsb2 = new JSONObject(response);
                            boolean error = jsb2.getBoolean("error");
                            if (!error) {

                                //JSONOBJECT FOR ADDING ATTENDANCE
                                JSONObject user = jsb2.getJSONObject("user");
                                String Student = user.getString("Student_ID");
                                String Room = user.getString("Room");
                                String Scan_Time = user.getString("Scan_Time");
                                String weekDay = user.getString("weekDay");

                                //ADD STUDENT, ROOM, SCAN_TIME, AND WEEKDAY TO THE ATTENDANCE TABLE IN MYSQL
                                db.addAttendance(Student, Room, Scan_Time, weekDay);

                            } else {

                                //RETRIEVE ERROR MESSAGE
                                String error_msg = jsb2.getString("error_msg");
                                Toast.makeText(Attend.this, error_msg, Toast.LENGTH_LONG).show();
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Log.e(TAG, error.getMessage(), error.getCause());
                    }
                }) {
            @Override
            protected Map<String, String> getParams() {
                Map<String, String> a = new Hashtable<String, String>();
                a.put("tag", "attendance");
                a.put("Student_ID", Student_ID);
                a.put("Room", Room);
                a.put("weekDay", weekDay);



                return a;
            }

        };
        AppController.getInstance().addToRequestQueue(strR, tag_reg);
    }

    //SHOW-DIALOG METHOD
    public void showDialog() {
        if (!pDialog.isShowing()) {
            pDialog.show();
        }
    }

    //HIDE-DIALOG METHOD
    public void hideDialog() {
        if (pDialog.isShowing()) {
            pDialog.dismiss();
        }
    }
}
