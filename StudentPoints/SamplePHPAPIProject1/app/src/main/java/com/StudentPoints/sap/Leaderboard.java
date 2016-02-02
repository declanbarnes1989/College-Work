package com.StudentPoints.sap;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import com.StudentPoints.helper.SQLiteHandler;
import com.StudentPoints.helper.SessionManager;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by declanbarnes on 06/12/15.
 */
public class Leaderboard extends Activity {
    //DECLARE VARIABLES
    String myJSON;


    private static final String TAG_RESULTS="result";
    private static final String TAG_STUDENT_ID = "Student_ID";
    private static final String TAG_POINTS = "Points";

    //Initialize JSONARRAY
    JSONArray peoples = null;

    ArrayList<HashMap<String, String>> personList;

    ListView list;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.leaderboard);
        list = (ListView) findViewById(R.id.listView);
        personList = new ArrayList<HashMap<String,String>>();
        getData();





    }


    //METHOD FOR SHOWING STUDENT_ID & POINTS TO LIST VIEW
    protected void showList(){
        try {
            //CREATE JSONOBJECT
            JSONObject jsonObj = new JSONObject(myJSON);
            peoples = jsonObj.getJSONArray(TAG_RESULTS);

            for(int i=0;i<peoples.length();i++){
                JSONObject c = peoples.getJSONObject(i);
                String Student_ID = c.getString(TAG_STUDENT_ID);
                String Points = c.getString(TAG_POINTS);

                HashMap<String,String> persons = new HashMap<String,String>();

                persons.put(TAG_STUDENT_ID,Student_ID);
                persons.put(TAG_POINTS,Points);

                personList.add(persons);
            }
            //USE ADAPTER TO LIST STUDENT_ID & POINTS
            ListAdapter adapter = new SimpleAdapter(
                    Leaderboard.this, personList, R.layout.list_item,
                    new String[]{TAG_STUDENT_ID,TAG_POINTS,},
                    new int[]{R.id.Student_ID, R.id.Points}
            );

            list.setAdapter(adapter);

        } catch (JSONException e) {
            e.printStackTrace();
        }

    }


    //METHOD FOR RETRIEVING DATA FROM PHP FILE/DATABASE
    public void getData(){
        class GetDataJSON extends AsyncTask<String, Void, String> {

            @Override
            protected String doInBackground(String... params) {
                DefaultHttpClient httpclient = new DefaultHttpClient(new BasicHttpParams());
                HttpPost httppost = new HttpPost("http://sampleandroidlogin5.gear.host/Leaderboard.php");

                httppost.setHeader("Content-type", "application/json");

                InputStream inputStream = null;
                String result = null;
                try {
                    HttpResponse response = httpclient.execute(httppost);
                    HttpEntity entity = response.getEntity();

                    inputStream = entity.getContent();
                    // json is UTF-8 by default
                    BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"), 8);
                    StringBuilder sb = new StringBuilder();

                    String line = null;
                    while ((line = reader.readLine()) != null)
                    {
                        sb.append(line + "\n");
                    }
                    result = sb.toString();
                } catch (Exception e) {
                    // Oops
                }
                finally {
                    try{if(inputStream != null)inputStream.close();}catch(Exception squish){}
                }
                return result;
            }

            //SHOW RESULT
            @Override
            protected void onPostExecute(String result){
                myJSON=result;
                showList();
            }
        }
        //GET DATA JSONOBJECT
        GetDataJSON g = new GetDataJSON();
        g.execute();
    }
}
