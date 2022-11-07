package com.yuhan.mydrobe;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UserDAO {

    private Connection conn;	// 데이터베이스 접근 객체
    private PreparedStatement pstmt;
    private ResultSet rs;

    public UserDAO() {
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

    public String getDate() {   // 날짜 가져오는 함수
        String SQL = "SELECT NOW()";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getString(1);
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return ""; //데이터베이스 오류
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
        String SQL = "INSERT INTO USER VALUES(?, ?, ?, ?, ?, ?, ?, ?)";  // 데이터베이스에 회원정보 입력
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, user.getUserID());
            pstmt.setInt(2, 0); // 회원 권한 부여
            pstmt.setString(3, user.getUserPassword());
            pstmt.setString(4, user.getUserName());
            pstmt.setString(5, user.getUserBirth());
            pstmt.setString(6, user.getUserPhoneNumber());
            pstmt.setString(7, user.getUserEmail());
            pstmt.setString(8, getDate());
            return pstmt.executeUpdate();
        }catch(Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 목록
    }

    public User getUser(String userID) {
        String SQL = "SELECT * FROM USER WHERE userID = ?";  // 데이터베이스에서 회원 정보 불러오기
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserID(rs.getString(1));
                user.setUserPassword(rs.getString(3));
                user.setUserName(rs.getString(4));
                user.setUserBirth(rs.getString(5));
                user.setUserPhoneNumber(rs.getString(6));
                user.setUserEmail(rs.getString(7));
                user.setUserDate(rs.getString(8));
                return user;
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int delete(String userID, String userPassword) {
        String SQL = "DELETE FROM USER WHERE userID = ? AND userPassword = ? ";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            pstmt.setString(2, userPassword);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }

    public int update(String userPassword,String userID) {
        String SQL = "UPDATE USER SET userPassword = ?  WHERE userID = ? ";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userPassword);
            pstmt.setString(2, userID);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }
}