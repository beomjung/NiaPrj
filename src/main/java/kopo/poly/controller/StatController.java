package kopo.poly.controller;

import kopo.poly.dto.StatFourDTO;
import kopo.poly.dto.StatOneDTO;
import kopo.poly.service.IStatService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/stat")
@Controller
public class StatController {

    private final IStatService statService;

    @GetMapping("diseases")
    public String diseases(Model model, StatOneDTO statOneDTO) throws Exception {
        log.info(this.getClass().getName() + "국내 감염병 현황 조회 시작!");

        StatOneDTO statOne = statService.getStatOne(statOneDTO);
        StatFourDTO statFour = statService.getStatFour(statOneDTO);


        model.addAttribute("statOne", statOne);
        model.addAttribute("statFour", statFour);

        return "stat/diseases";
    }

    @GetMapping("Qna")
    public String qna() {
        log.info(this.getClass().getName() + "Qna 시작!");
        return "stat/qna";
    }

    @GetMapping("action")
    public String action() {
        log.info(this.getClass().getName() + "행동요령");

        return "stat/action";
    }
}
