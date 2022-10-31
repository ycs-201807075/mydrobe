package com.yuhan.mydrobe;

public class Board {
    private int boardID;
    private String userID;
    private String boardTitle;
    private String boardContent;
    private int boardRead;
    private int boardLike;

    public int getBoardID() {
        return boardID;
    }

    public void setBoardID(int boardID) {
        this.boardID = boardID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getBoardTitle() {
        return boardTitle;
    }

    public void setBoardTitle(String boardTitle) {
        this.boardTitle = boardTitle;
    }

    public String getBoardContent() {
        return boardContent;
    }

    public void setBoardContent(String boardContent) {
        this.boardContent = boardContent;
    }

    public int getBoardRead() {
        return boardRead;
    }

    public void setBoardRead(int boardRead) {
        this.boardRead = boardRead;
    }

    public int getBoardLike() {
        return boardLike;
    }

    public void setBoardLike(int boardLike) {
        this.boardLike = boardLike;
    }
}