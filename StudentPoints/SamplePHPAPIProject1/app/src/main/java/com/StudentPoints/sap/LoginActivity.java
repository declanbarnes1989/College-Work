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
/*
 * Created by declanbarnes on 07/10/15.
 */
public class LoginActivity extends Activity {

    //DECLARE VARIABLES
	private EditText emailTF, passwordTF;
    private Button loginBtn, goToRegBtn,Bleader;
    private ProgressDialog pDialog;
    private SessionManager session;
    private SQLiteHandler db;

    private static final String TAG = LoginActivity.class.getSimpleName();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login);

        //FINDVIEWBYID FOR BUTTONS & EDITTEXTS
        emailTF = (EditText) findViewById(R.id.emailSF);
        passwordTF =(EditText) findViewById(R.id.passwordSF);
        loginBtn =(Button) findViewById(R.id.signin_btn);
        goToRegBtn = (Button) findViewById(R.id.notreg_btn);
        Bleader = (Button) findViewById(R.id.Bleader);


        pDialog = new ProgressDialog(this);
        session = new SessionManager(getApplicationContext());
        db = new SQLiteHandler(getApplicationContext());

        //IF USER LOGS IN SUCCESSFULLY, OPEN MAINACTIVITY.CLASS
        if(session.isLoggedIn()){
            Intent i = new Intent(this, MainActivity.class);
            startActivity(i);
            finish();
        }

        //OPEN'S REGISTERACTIVITY.CLASS
        goToRegBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(LoginActivity.this, RegisterActivity.class);
                startActivity(i);
                finish();
            }

        });

        //LOGS IN USER
        loginBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String Student_ID = emailTF.getText().toString();
                String password = passwordTF.getText().toString();

                if(!Student_ID.isEmpty() &&  !password.isEmpty()){
                    checkLogin(Student_ID, password);
                }else{
                    Toast.makeText(LoginActivity.this, "Please enter details", Toast.LENGTH_LONG).show();
                }
            }
        });

        Bleader.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(LoginActivity.this, Leaderboard.class);
                startActivity(i);
                finish();
            }
        });

    }

    //*****BENIT KIBABU'S YOUTUBE TUTORIAL WAS VIEWED IN ORDER TO FIGURE OUT HOW TO GO ABOUT THE NEXT SECTION*****//

    //METHOD FOR LOGGING USER
	public void checkLogin(final String Student_ID, final String password){
        String tag_reg = "login_request";
        pDialog.setMessage("Logging In....");
        showDialog();

        //REQUEST POST METHOD FROM LOGIN_URL
        StringRequest strR = new StringRequest(
                Request.Method.POST, AppConfig.LOGIN_URL,
                new Response.Listener<String>(){
                    @Override
                    public void onResponse(String response) {
                        hideDialog();

                        //JSONOBJECT FOR ERROR RESPONSE
                        try{
                            JSONObject jsb = new JSONObject(response);
                            boolean error = jsb.getBoolean("error");
                            if(!error){
                                String uid = jsb.getString("uid");

                                //JSONOBJECT FOR ADDING USER
                                JSONObject user = jsb.getJSONObject("user");
                                String name = user.getString("name");
                                String Student_ID = user.getString("Student_ID");
                                String created_at = user.getString("created_at");
                                db.addUser(name, uid, Student_ID, created_at);

                                //LOGIN SUCCESSFUL
                                session.setLogin(true);

                                //OPEN MAINACTIVITY.CLASS
                                Intent i = new Intent(getBaseContext(), MainActivity.class);

                                //GRAB CURRENT USER'S STUDENT_ID, CARRY OVER TO NEXT ACTIVITY
                                i.putExtra("Student_ID", Student_ID);
                                startActivity(i);
                                finish();
                            }else{
                                //SHOW ERROR MESSAGE
                                String error_msg = jsb.getString("error_msg");
                                Toast.makeText(LoginActivity.this, error_msg,Toast.LENGTH_LONG).show();
                            }
                        }
                        catch(JSONException e){
                            e.printStackTrace();
                        }
                    }
                },
                new Response.ErrorListener(){
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Log.e(TAG, "ERROR" + error.getMessage(), error.getCause());
                    }
                }){
            @Override
            protected Map<String, String> getParams() {
                Map<String, String> p = new Hashtable<String, String>();
                p.put("tag", "login");
                p.put("Student_ID", Student_ID);
                p.put("password", password);

                return p;
            }
        };
        AppController.getInstance().addToRequestQueue(strR, tag_reg);
    }
    public void showDialog(){
        if(!pDialog.isShowing()){
            pDialog.show();
        }
    }
    public void hideDialog(){
        if(pDialog.isShowing()){
            pDialog.dismiss();
        }
    }
}
