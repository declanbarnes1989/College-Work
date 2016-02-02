package com.StudentPoints.helper;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import java.util.HashMap;

/**
 * Created by declan on 07/11/2015.
 */

//*****BENIT KIBABU'S YOUTUBE TUTORIAL WAS USED TO HELP WITH THIS CLASS*****//

public class SQLiteHandler extends SQLiteOpenHelper {

    public static final  String TAG = SQLiteHandler.class.getSimpleName();

    private static final int DATABASE_VERSION = 4;
    private static final String DATABASE_NAME = "login_db";
    private static final String TABLE_NAME = "users";
    private static final String TABLE_NAME2 = "attendance";

    private static final String KEY_ID = "id";
    private static final String KEY_NAME = "name";
    private static final String KEY_UID = "uid";
    private static final String KEY_STUDENT_ID = "Student_ID";
    private static final String KEY_CREATED_AT = "created_at";

    private static final String KEY_ROOM = "Room";
    private static final String KEY_SCAN_TIME = "Scan_Time";
    private static final String KEY_WEEKDAY = "weekDay";


    public SQLiteHandler(Context context){
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        String CREATE_TABLE = "CREATE TABLE " + TABLE_NAME + "("
                +KEY_ID + " INTEGER PRIMARY KEY, "
                + KEY_NAME + " TEXT, "
                + KEY_UID + "  TEXT,"
                + KEY_STUDENT_ID + " TEXT, "
                + KEY_CREATED_AT + " TEXT " +")";
        db.execSQL(CREATE_TABLE);

        Log.d(TAG, "users database table created");

        String CREATE_TABLE2 = "CREATE TABLE " + TABLE_NAME2 + "("
                + KEY_STUDENT_ID + " TEXT, "
                + KEY_ROOM + " TEXT, "
                + KEY_SCAN_TIME + " TEXT, "
                + KEY_WEEKDAY + " TEXT " +")";

        db.execSQL(CREATE_TABLE2);

        Log.d(TAG, "attendance database table created");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_NAME);
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_NAME2);


        onCreate(db);
    }

    public void addUser(String name, String uid, String Student_ID, String created_at){
        SQLiteDatabase db = this.getWritableDatabase();

        ContentValues values = new ContentValues();
        values.put(KEY_NAME, name);
        values.put(KEY_UID, uid);
        values.put(KEY_STUDENT_ID, Student_ID);
        values.put(KEY_CREATED_AT, created_at);


        long id = db.insert(TABLE_NAME, null, values);
        db.close();

        Log.d(TAG, "New user was added to SQLite " + id);
    }

    public void addAttendance(String Student_ID, String Room, String Scan_Time, String weekDay){
        SQLiteDatabase db = this.getWritableDatabase();

        ContentValues values = new ContentValues();
        values.put(KEY_STUDENT_ID, Student_ID);
        values.put(KEY_ROOM, Room);
        values.put(KEY_SCAN_TIME, Scan_Time);
        values.put(KEY_WEEKDAY, weekDay);



        long id = db.insert(TABLE_NAME2, null, values);
        db.close();

        Log.d(TAG, "New attendance was recorded to SQLite " + id);
    }

    public HashMap<String, String> getUserDetails(){
        HashMap<String, String> temp = new HashMap<String, String>();
        String selectQuery = "SELECT * FROM " + TABLE_NAME;

        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.rawQuery(selectQuery, null);

        cursor.moveToFirst();
        if(cursor.getCount() > 0){
            temp.put("name", cursor.getString(1));
            temp.put("uid", cursor.getString(2));
            temp.put("Student_ID", cursor.getString(3));
            temp.put("created_at", cursor.getString(4));


        }



        cursor.close();
        db.close();

        Log.d(TAG, "Fetching users info from SQLite");

        return temp;
    }

    public HashMap<String, String> getAttendDetails(){
        HashMap<String, String> temp = new HashMap<String, String>();
        String selectQuery = "SELECT * FROM " + TABLE_NAME2;

        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.rawQuery(selectQuery, null);

        cursor.moveToFirst();
        if(cursor.getCount() > 0){
            temp.put("Student_ID", cursor.getString(1));
            temp.put("Room", cursor.getString(2));
            temp.put("Scan_Time", cursor.getString(3));
            temp.put("weekDay", cursor.getString(4));



        }



        cursor.close();
        db.close();

        Log.d(TAG, "Fetching Attendance info from SQLite");

        return temp;
    }

    public int getRowCount(){
        String countQuery = "SELECT * FROM " + TABLE_NAME;
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor c = db.rawQuery(countQuery, null);
        int rowCount = c.getCount();
        db.close();
        c.close();

        return rowCount;
    }
    public void deleteUser(){
        SQLiteDatabase db = this.getWritableDatabase();
        db.delete(TABLE_NAME, null, null);
        db.close();

        Log.d(TAG, "User has been deleted from SQLite");
    }
}
