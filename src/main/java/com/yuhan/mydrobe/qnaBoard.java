package com.yuhan.mydrobe;

public class qnaBoard {
    private int qnaboardID;
    private String userID;
    private String qnaboardTitle;
    private String qnaboardpw;
    private String qnaboardContent;
    private String boardDate;


    public int getqnaboardID() { return qnaboardID; }

    public void setqnaboardID(int qnaboardID) { this.qnaboardID = qnaboardID;}

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getqnaboardTitle() {
        return qnaboardTitle;
    }

    public void setqnaboardTitle(String qnaboardTitle) {
        this.qnaboardTitle = qnaboardTitle;
    }

    public String getqnaboardpw() {return qnaboardpw;}

    public void setqnaboardpw(String qnaboardpw) {
        this.qnaboardpw = qnaboardpw;
    }

    public String getqnaboardContent() {
        return qnaboardContent;
    }
    public void setqnaboardContent(String qnaboardContent) {
        this.qnaboardContent = qnaboardContent;
    }

    public String getboardDate() {
        return boardDate;
    }

    public void setboardDate(String boardDate) {
        this.boardDate = boardDate;
    }



}