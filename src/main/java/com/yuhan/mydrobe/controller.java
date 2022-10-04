package com.yuhan.mydrobe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class controller {

    // localhost:8080/로 들어오면 처음 시작하는 페이지 맵핑
    @GetMapping("/")
    public String main() {
        return "main"; }
}
