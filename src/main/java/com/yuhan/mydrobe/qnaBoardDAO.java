package com.yuhan.mydrobe;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class qnaBoardDAO {

    private Connection conn;	// 데이터베이스 접근 객체

    private PreparedStatement pstmt;
    private ResultSet rs;

    public qnaBoardDAO() {
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
        String SQL = "SELECT qnaboardID FROM QNABOARD ORDER BY qnaboardID DESC";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) + 1;
            }
            return 1; //첫번째 게시물인 경우
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public int getCount(int qnaboardID) {  // 게시글 개수 확인 함수
        String SQL = "SELECT COUNT(*) FROM QNABOARD WHERE qnaboardID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, qnaboardID);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public int write(String userID, String qnaboardTitle,String qnaboardpw, String qnaboardContent) {
        String SQL = "INSERT INTO QNABOARD VALUES(?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext());
            pstmt.setString(2, userID);
            pstmt.setString(3, qnaboardTitle);
            pstmt.setString(4, qnaboardpw);
            pstmt.setString(5, qnaboardContent);
            pstmt.setString(6, getDate());
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; //데이터베이스 오류
    }

    public ArrayList<qnaBoard> getList(int pageNumber){
        String SQL = "SELECT *  FROM QNABOARD WHERE qnaboardID < ? ORDER BY qnaboardID DESC LIMIT 10";
        ArrayList<qnaBoard> list = new ArrayList<qnaBoard>();
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                qnaBoard qnaboard = new qnaBoard();
                qnaboard.setqnaboardID(rs.getInt(1));
                qnaboard.setUserID(rs.getString(2));
                qnaboard.setqnaboardTitle(rs.getString(3));
                qnaboard.setqnaboardpw(rs.getString(4));
                qnaboard.setqnaboardContent(rs.getString(5));
                qnaboard.setboardDate(rs.getString(6));
                list.add(qnaboard);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean nextPage(int pageNumber){
        String SQL = "SELECT * FROM qnaBoard WHERE qnaboardID < ? ";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public qnaBoard getqnaBoard(int qnaboardID){
        String SQL = "SELECT * FROM qnaboard WHERE qnaboardID = ? ";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, qnaboardID);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                qnaBoard qnaboard = new qnaBoard();
                qnaboard.setqnaboardID(rs.getInt(1));
                qnaboard.setUserID(rs.getString(2));
                qnaboard.setqnaboardTitle(rs.getString(3));
                qnaboard.setqnaboardpw(rs.getString(4));
                qnaboard.setqnaboardContent(rs.getString(5));
                qnaboard.setboardDate(rs.getString(6));
                return qnaboard;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int update(int qnaboardID,String qnaboardTitle,String qnaboardContent){
        String SQL = "UPDATE QNABOARD SET  qnpboardTitle= ?, qnpboardContent = ? where qnpboardID ";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);;
            pstmt.setString(1, qnaboardTitle);
            pstmt.setString(2, qnaboardContent);
            pstmt.setInt(3, qnaboardID);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; //데이터베이스 오류
    }
    public int delete(int qnaboardID){
        String SQL = "DELETE FROM QNABOARD WHERE qnpboardID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);;
            pstmt.setInt(1, qnaboardID);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; //데이터베이스 오류
    }
}



    // 밑에는 가져온건데 쓸지 말지 몰라서 일단 냅둠 더잇는데 몇개 지움
/*


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
