package kopo.poly.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@RequestMapping("/confirmed")
@RequiredArgsConstructor
@Controller
public class ConfirmController {

    @GetMapping("confirmed")
    public String confirmed() {
        log.info(this.getClass().getName() + " 확진 페이지 시작");

        return "confirmed/confirmed";
    }
}
