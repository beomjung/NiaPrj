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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/stat")
@Controller
public class StatController {

    private final IStatService statService;

    @GetMapping("diseases")
    @ResponseBody
    public String diseases(Model model)throws Exception {
        log.info(this.getClass().getName() + "국내 감염병 현황 조회 시작!");

        List<StatOneDTO> statOneDTOList = statService.getStatOne();
        List<StatFourDTO> statFourDTOList = statService.getStatFour();

        log.info("1군 감염병 조회 결과 : " + statOneDTOList.size());
        log.info("4군 감염병 조회 결과 : " + statFourDTOList.size());

        model.addAttribute("oneList", statOneDTOList);
        model.addAttribute("fourList", statFourDTOList);

        return "test";
    }
}
