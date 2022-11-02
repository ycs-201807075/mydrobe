package com.yuhan.mydrobe;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {

    private Connection conn;    //db에 접근하는 객체
    private ResultSet rs;

    public BoardDAO() {
        try {
            String dbURL = "jdbc:mysql://localhost:3306/mydrobe";
            String dbID = "root";
            String dbPassword = "root";
            //Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getDate() { // 날짜 가져오는 함수
        String SQL = "SELECT NOW()";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ""; //데이터베이스 오류
    }

    public int getNext() { // 게시물 번호 지정 함수
        String SQL = "SELECT boardID FROM BOARD ORDER BY boadrID DESC";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) + 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 1; //첫번째 게시물인 경우
    }

    public int getCount(int boardID) {  // 게시글 개수 확인 함수
        String SQL = "SELECT COUNT(*) FROM BOARD WHERE boardID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, boardID);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public int write(int boardID, String userID, String boardTitle, String boardContent) {
        String SQL = "INSERT INTO BOARD VALUES(?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext());
            pstmt.setString(2, userID);
            pstmt.setString(3, boardTitle);
            pstmt.setString(4, getDate());
            pstmt.setString(5, boardContent);
            pstmt.setInt(6, 0);
            pstmt.setInt(7, 0);
            pstmt.executeUpdate();
            return getNext();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; //데이터베이스 오류
    }

    public ArrayList<Board> getListToday() {
        String SQL = "SELECT * FROM BOARD ORDER BY board DESC";
        ArrayList<Board> list = new ArrayList<Board>();
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Board board = new Board();
                board.setBoardID(rs.getInt(1));
                board.setUserID(rs.getString(2));
                board.setBoardTitle(rs.getString(3));
                board.setBoardContent(rs.getString(5));
                board.setBoardRead(rs.getInt(6));
                board.setBoardLike(rs.getInt(7));
                list.add(board);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list; //데이터베이스 오류
    }

    // 밑에는 가져온건데 쓸지 말지 몰라서 일단 냅둠 더잇는데 몇개 지움
/*
    public ArrayList<Bbs> getList(int boardID, int pageNumber){
        String SQL = "SELECT * FROM BBS WHERE boardID = ? AND bbsID < ? AND bbsAvailable = 1 ORDER BY bbsID DESC LIMIT 10";
        ArrayList<Bbs> list = new ArrayList<Bbs>();
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, boardID);
            pstmt.setInt(2,  getNext() - (pageNumber - 1) * 10);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Bbs bbs = new Bbs();
                bbs.setBoardID(rs.getInt(1));
                bbs.setBbsID(rs.getInt(2));
                bbs.setBbsTitle(rs.getString(3));
                bbs.setUserID(rs.getString(4));
                bbs.setBbsDate(rs.getString(5));
                bbs.setBbsContent(rs.getString(6));
                bbs.setMap(rs.getString(7));
                bbs.setBbsAvailable(rs.getInt(8));
                list.add(bbs);
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return list; //데이터베이스 오류
    }

    public Board getBoard(int boardID) {
        String SQL = "SELECT * FROM BOARD WHERE boardID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1,  boardID);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Board board = new Board();
                board.setBoardID(rs.getInt(1));
                board.setUserID(rs.getString(2));
                board.setBoardTitle(rs.getString(3));
                board.setBoardContent(rs.getString(4));
                return board;
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int update(int boardID, String boardTitle, String boadrContent) {
        String SQL = "UPDATE BOARD SET boardTitle = ?, boardContent = ? WHERE boardID LIKE ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, boardTitle);
            pstmt.setString(2, boardContent);
            pstmt.setInt(4, boardID);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }

    public int delete(int bbsID) {
        String SQL = "DELETE FROM BOARD WHERE boardID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, boardID);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }
 */
}