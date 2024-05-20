package tqk.QLSV.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tqk.QLSV.Models.DiemThiModel;
import tqk.QLSV.Services.DiemThiService;

@Controller
@RequestMapping("/DiemThi")
public class DiemThiContronller {
	
	@Autowired
	DiemThiService diemThiService;
	
	@GetMapping("/all")
    public String getAllDiemThi(Model model, @RequestParam(defaultValue = "0") int page) {
        Pageable pageable = PageRequest.of(page, 5);
        Page<DiemThiModel> diemthiPage = diemThiService.getDiemThiPage(pageable);
        model.addAttribute("DSDiemThi", diemthiPage.getContent());
        model.addAttribute("totalPages", diemthiPage.getTotalPages());
        model.addAttribute("currentPage", page);
        return "diemthi";
    }
	
	

}
