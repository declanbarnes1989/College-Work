package com.StudentPoints.sap;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
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

import java.util.Hashtable;
import java.util.Map;

public class  RegisterActivity extends Activity {

    //DECLARE VARIABLES
    private EditText nameTF, emailTF, passwordTF;
    private Button registerBtn, gotoLogBtn;
    private SessionManager session;
    private SQLiteHandler db;
    private ProgressDialog pDialog;

    private static final String TAG = RegisterActivity.class.getSimpleName();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);

        //FINDVIEWBYID FOR EDITTEXTs & BUTTONS
        nameTF = (EditText) findViewById(R.id.fullnameRF);
        emailTF = (EditText) findViewById(R.id.emailRF);
        passwordTF = (EditText) findViewById(R.id.passwordRF);
        registerBtn = (Button) findViewById(R.id.register_btn);
        gotoLogBtn = (Button) findViewById(R.id.signinto_btn);

        session = new SessionManager(getApplicationContext());
        db = new SQLiteHandler(getApplicationContext());
        pDialog = new ProgressDialog(this);

        //IF STATEMENT, WHEN USER IS LOGGED IN, OPEN MAINACTIVITY.CLASS
        if (session.isLoggedIn()) {
            Intent i = new Intent(RegisterActivity.this, MainActivity.class);
            startActivity(i);
            finish();
        }

        //GO TO LOGIN PAGE
        gotoLogBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(RegisterActivity.this, LoginActivity.class);
                startActivity(i);
                finish();
            }
        });

        //RETRIEVE USER'S DETAILS
        registerBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String name = nameTF.getText().toString();
                String Student_ID = emailTF.getText().toString();
                String password = passwordTF.getText().toString();

                if (!name.isEmpty() && !Student_ID.isEmpty() && !password.isEmpty()) {
                    registerCheck(name, Student_ID, password);
                }
            }
        });
    }



    //METHOD FOR STORING USER'S DETAILS TO DATABASE
    public void registerCheck(final String name, final String Student_ID, final String password) {
        String tag_reg = "register_request";
        pDialog.setMessage("Registering....");
        showDialog();

        //REQUEST POST METHOD FROM REGISTER_URL
        StringRequest strR = new StringRequest(
                Request.Method.POST, AppConfig.REGISTER_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        hideDialog();

                            //JSONOBJECT TO CHECK FOR ERROR
                        try {
                            JSONObject jsb = new JSONObject(response);
                            boolean error = jsb.getBoolean("error");
                            if (!error) {
                                String uid = jsb.getString("uid");

                                //JSONOBJECT TO ADD USER
                                JSONObject user = jsb.getJSONObject("user");
                                String name = user.getString("name");
                                String Student_ID = user.getString("Student_ID");
                                String created_at = user.getString("created_at");
                                db.addUser(name, uid, Student_ID, created_at);

                                //LOGIN IS SUCCESSFUL
                                session.setLogin(true);

                                 //OPEN MAINACTIVITY
                                Intent i = new Intent(RegisterActivity.this, MainActivity.class);
                                startActivity(i);
                                finish();
                            } else {

                                //PRINT ERROR MESSAGE
                                String error_msg = jsb.getString("error_msg");
                                Toast.makeText(RegisterActivity.this, error_msg, Toast.LENGTH_LONG).show();
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                },

                //GET ERROR MESSAGE
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Log.e(TAG, error.getMessage());
                    }
                }) {
            @Override
            protected Map<String, String> getParams() {
                Map<String, String> p = new Hashtable<String, String>();
                p.put("tag", "register");
                p.put("name", name);
                p.put("Student_ID", Student_ID);
                p.put("password", password);

                return p;
            }
        };
        AppController.getInstance().addToRequestQueue(strR, tag_reg);
    }

    //SHOWDIALOG METHOD
    public void showDialog() {
        if (!pDialog.isShowing()) {
            pDialog.show();
        }
    }

    //HIDEDIALOG METHOD
    public void hideDialog() {
        if (pDialog.isShowing()) {
            pDialog.dismiss();
        }
    }
}
