package com.yuhan.mydrobe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class controller {

    // localhost:8080/로 들어오면 처음 시작하는 페이지 맵핑
    @GetMapping("/")
    public String index() {
        return "index"; }

    @GetMapping("login")
    public String login() {
        return "login"; }
    @GetMapping("join")
    public String join() {
        return "join"; }
    @GetMapping("pwSearch")
    public String pwSearch() {
        return "pwSearch"; }
    @GetMapping("qnaboardview")
    public String qnaboardview() {
        return "qnaboardview"; }

    @GetMapping("developing")
    public String developing() {
        return "developing"; }

    @GetMapping("imgtest") // 테스트로 작성, 나중에 지워야함
    public String imgtest() {
        return "imgtest"; }

    @GetMapping("imgtest2") // 테스트로 작성, 나중에 지워야함
    public String imgtest2() {
        return "imgtest2"; }

    @PostMapping("imgtestAction") // 테스트로 작성, 나중에 지워야함
    public String imgtestAction() {
        return "imgtestAction"; }

    // 회원가입, 로그인 Post 매핑
    @PostMapping("joinAction")
    public String joinAction() {
        return "joinAction"; }

    @PostMapping("loginAction")
    public String loginAction() {
        return "loginAction"; }

    @PostMapping("deleteAction")
    public String deleteAction() {
        return "deleteAction"; }

    @PostMapping("updateAction")
    public String updateAction() {
        return "updateAction"; }

    @PostMapping("qnawriteAction")
    public String qnawriteAction() {
        return "qnawriteAction"; }

    @PostMapping("qnadeleteAction")
    public String qnadeleteAction() {
        return "qnadeleteAction"; }

    @PostMapping("qnaupdateAction")
    public String qnaupdateAction() {
        return "qnaupdateAction"; }

    @PostMapping("todayAction")
    public String todayAction() {
        return "todayAction"; }

    @PostMapping("mySaveAction")
    public String mySaveAction() {
        return "mySaveAction"; }
}
