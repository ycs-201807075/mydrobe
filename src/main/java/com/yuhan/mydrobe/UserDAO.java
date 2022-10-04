package com.yuhan.mydrobe;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    private Connection conn;	// 데이터베이스 접근 객체
    private PreparedStatement pstmt;
    private ResultSet rs;

    public UserDAO() {
        try {
            String dbURL = "jdbc:mysql://localhost:3306/sample";  // 포트번호 뒤에 데이터베이스 이름
            String dbID = "root";
            String dbPassword = "root";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int login(String userID, String userPassword) {
        String SQL = "SELECT userPassword FROM USER WHERE userID = ?";  // 데이터베이스에서 아이디로 패스워드 조회
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            rs = pstmt.executeQuery();
            if(rs.next()) {
                if(rs.getString(1).equals(userPassword))
                    return 1; // 로그인 성공
                else
                    return 0; // 비밀번호 불일치
            }
            return -1; // 아이디가 없음
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2; // 데이터베이스 오류
    }

    public int join(User user) {
        String SQL = "INSERT INTO USER VALUES(?,?,?,?,?,?)";  // 데이터베이스에 회원정보 입력
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, user.getUserID());
            pstmt.setString(2, user.getUserPassword());
            pstmt.setString(3, user.getUserName());
            pstmt.setString(4, user.getUserBirth());
            pstmt.setString(5, user.getUserPhoneNumber());
            pstmt.setString(6, user.getUserEmail());
            return pstmt.executeUpdate();
        }catch(Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 목록
    }
}