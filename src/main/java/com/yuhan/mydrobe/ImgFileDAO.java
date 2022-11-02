package com.yuhan.mydrobe;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ImgFileDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public ImgFileDAO() {
        try {
            String dbURL = "jdbc:mysql://localhost:3306/mydrobe";  // 포트번호 뒤에 데이터베이스 이름
            String dbID = "root";
            String dbPassword = "root";
            //Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getNext() { // 게시물 번호 지정 함수
        String SQL = "SELECT boardID FROM BOARD ORDER BY boadrID DESC";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) + 1;
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return 1; // 첫번째 게시물인 경우
    }


    // DB에 이미지 이름 저장
    public int upload(String fileName, String fileRealName, boolean start) {
        String SQL = "INSERT INTO FILE VALUES (?, ?, ?, ?, ?)";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext());
            pstmt.setInt(2, 0); // 게시판 번호 가져올거
            pstmt.setString(3, fileName);
            pstmt.setString(4, fileRealName);
            if (start){
                pstmt.setBoolean(5, true);
                start = false;
            } else {
                pstmt.setBoolean(5, false);
            }
            return pstmt.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        }
        return -1;
    }


    public ArrayList<ImgFile> getListTodayImg() {
        String SQL = "SELECT * FROM FILE";
        ArrayList<ImgFile> list = new ArrayList<ImgFile>();
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                ImgFile imgFile = new ImgFile();
                imgFile.setImgFileName(rs.getString(3));
                imgFile.setImgFileRealName(rs.getString(4));
                list.add(imgFile);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list; //데이터베이스 오류
    }

    public ImgFile getImgFile() {
        String SQL = "SELECT * FROM FILE";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                ImgFile imgFile = new ImgFile();
                imgFile.setImgFileName(rs.getString(3));
                imgFile.setImgFileRealName(rs.getString(4));
                return imgFile;
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
