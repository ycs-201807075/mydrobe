package com.yuhan.mydrobe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class controller {

    // localhost:8080/로 들어오면 처음 시작하는 페이지 맵핑
    @GetMapping("/")
    public String main() {
        return "main"; }

    @GetMapping("imgtest") // 테스트로 작성, 나중에 지워야함
    public String imgtest() {
        return "imgtest"; }

    @GetMapping("imgtest2") // 테스트로 작성, 나중에 지워야함
    public String imgtest2() {
        return "imgtest2"; }

    @PostMapping("imgtestAction") // 테스트로 작성, 나중에 지워야함
    public String imgtestAction() {
        return "imgtestAction"; }

    @PostMapping("joinform") // 테스트로 작성, 나중에 지워야함
    public String joinform() {
        return "joinform"; }

}
