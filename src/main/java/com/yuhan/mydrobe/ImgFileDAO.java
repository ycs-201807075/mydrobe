package com.yuhan.mydrobe;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


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
        String SQL = "SELECT fileNumber FROM FILE ORDER BY fileNumber DESC";
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

    public int getNextMyFile() { // 게시물 번호 지정 함수
        String SQL = "SELECT myFileNumber FROM MYFILE ORDER BY myFileNumber DESC";
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

    public int getMax() { // 게시물 번호 지정 함수
        String SQL = "SELECT COUNT(boardID) FROM BOARD";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return 1;
    }

    public int[] getBest() {
        int[] result = new int[3];
        String SQL = "SELECT boardID FROM BOARD ORDER BY boardLike DESC LIMIT 3";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            int i = 0;
            while (rs.next()) {
                result[i] = rs.getInt(1);
                i++;
            }
            return result;
        }catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    // DB에 이미지 이름 저장
    public int upload(int boardID, String fileName, String fileRealName, int start) {
        String SQL = "INSERT INTO FILE VALUES (?, ?, ?, ?, ?)";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext());
            pstmt.setInt(2, boardID);
            pstmt.setString(3, fileName);
            pstmt.setString(4, fileRealName);
            pstmt.setInt(5, start);
            return pstmt.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public int uploadMyFile(String userID, String fileName, String fileRealName) {
        String SQL = "INSERT INTO MYFILE VALUES (?, ?, ?, ?)";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNextMyFile());
            pstmt.setString(2, userID);
            pstmt.setString(3, fileName);
            pstmt.setString(4, fileRealName);
            return pstmt.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public ArrayList<ImgFile> getImgListBest() {
        String SQL = "SELECT F.fileName, F.fileRealName FROM FILE F, BOARD D WHERE F.boardID = D.boardID AND F.fileStart = 1 ORDER BY D.boardLike DESC LIMIT 3;";
        ArrayList<ImgFile> list = new ArrayList<ImgFile>();
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                ImgFile imgFile = new ImgFile();
                imgFile.setImgFileName(rs.getString(1));
                imgFile.setImgFileRealName(rs.getString(2));
                list.add(imgFile);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list; //데이터베이스 오류
    }

    public ArrayList<ArrayList<ImgFile>> getImgListBestDetail() {
        ArrayList<ArrayList<ImgFile>> list = new ArrayList<ArrayList<ImgFile>>();
        for(int i = 0; i < 3; i++) {
            String SQL = "SELECT F.fileName, F.fileRealName FROM FILE F, BOARD D WHERE F.boardID = D.boardID AND F.boardID = ? ORDER BY D.boardLike DESC";
            ArrayList<ImgFile> lista = new ArrayList<ImgFile>();
            int j[] = getBest();
            try {
                pstmt = conn.prepareStatement(SQL);
                pstmt.setInt(1,j[i]);
                rs = pstmt.executeQuery();
                while (rs.next()) {
                    ImgFile imgFile = new ImgFile();
                    imgFile.setImgFileName(rs.getString(1));
                    imgFile.setImgFileRealName(rs.getString(2));
                    lista.add(imgFile);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            list.add(lista);
        }
        return list;
    }

    public ArrayList<ImgFile> getImgListToday() {
        String SQL = "SELECT fileName, fileRealName FROM FILE WHERE fileStart = 1 ORDER BY boardID DESC";
        ArrayList<ImgFile> list = new ArrayList<ImgFile>();
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                ImgFile imgFile = new ImgFile();
                imgFile.setImgFileName(rs.getString(1));
                imgFile.setImgFileRealName(rs.getString(2));
                list.add(imgFile);
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return list;
    }


    public ArrayList<ArrayList<ImgFile>> getImgListDetail() {
        ArrayList<ArrayList<ImgFile>> list = new ArrayList<ArrayList<ImgFile>>();
        for(int i = getMax(); i >= 1; i--) {
            String SQL = "SELECT fileName, fileRealName FROM FILE WHERE boardID = ?";
            ArrayList<ImgFile> lista = new ArrayList<ImgFile>();
            try {
                pstmt = conn.prepareStatement(SQL);
                pstmt.setInt(1, i);
                rs = pstmt.executeQuery();
                while (rs.next()) {
                    ImgFile imgFile = new ImgFile();
                    imgFile.setImgFileName(rs.getString(1));
                    imgFile.setImgFileRealName(rs.getString(2));
                    lista.add(imgFile);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            list.add(lista);
        }
        return list;
    }

    public ArrayList<ImgFile> getImgListMy(String userID) {
        String SQL = "SELECT myFileName, myFileRealName FROM MYFILE WHERE userID = ?";
        ArrayList<ImgFile> list = new ArrayList<ImgFile>();
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                ImgFile imgFile = new ImgFile();
                imgFile.setImgFileName(rs.getString(1));
                imgFile.setImgFileRealName(rs.getString(2));
                list.add(imgFile);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list; //데이터베이스 오류
    }
}
