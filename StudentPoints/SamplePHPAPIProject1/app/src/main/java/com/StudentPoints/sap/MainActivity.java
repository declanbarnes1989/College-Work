package com.StudentPoints.sap;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.StudentPoints.helper.SQLiteHandler;
import com.StudentPoints.helper.SessionManager;

import java.util.HashMap;
/*
 * Created by declanbarnes on 07/10/15.
 */
public class MainActivity extends Activity {
    //DECLARE VARIABLES
    public TextView nameTV, emailTV;
    private Button logoutBtn;
    private SessionManager session;
    private SQLiteHandler db;
    private Button scannerButton;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

        //FINDVIEWBYID FOR BUTTONS/TEXTVIEWS
        nameTV = (TextView) findViewById(R.id.nameWF);
        emailTV = (TextView) findViewById(R.id.emailWF);
        logoutBtn = (Button) findViewById(R.id.logout_btn);
        scannerButton = (Button) findViewById(R.id.scannerButton);

        session = new SessionManager(getApplicationContext());
        db = new SQLiteHandler(getApplicationContext());

        if(!session.isLoggedIn()){
            logoutUser();

        }
        //RETRIEVE USER'S DETAILS AND SET THEM IN TEXTVIEWS
        HashMap<String, String> detail = db.getUserDetails();
        String name = detail.get("name");
        String Student_ID = detail.get("Student_ID");
        nameTV.setText(name);
        emailTV.setText(Student_ID);

        //LOGOUT USER
        logoutBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                logoutUser();

            }
        });

        //OPEN QR SCANNER
        scannerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                //OPEN BARCODESCANNER.CLASS
                Intent intent = new Intent(v.getContext(), BarcodeScanner.class);
                startActivity(intent);
            }
        });
    }


    //LOGOUT USER METHOD, SEE 'logoutBtn'
    public void logoutUser(){
        session.setLogin(false);
        db.deleteUser();

        //OPEN LOGINACTIVITY.CLASS
        Intent i = new Intent(this, LoginActivity.class);
        startActivity(i);
        finish();
    }
}
