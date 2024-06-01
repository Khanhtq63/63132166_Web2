package tqk.QLSV.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import tqk.QLSV.Models.KhoaModel;
import tqk.QLSV.Services.KhoaService;

@Controller
@RequestMapping("/Khoa")
public class KhoaController {

    @Autowired
    private KhoaService khoaService;

    @GetMapping("/all")
    public String getAllKhoa(Model model,@RequestParam(defaultValue = "0") int page) {
    	Pageable pageable = PageRequest.of(page,5);
    	Page<KhoaModel> khoaPage = khoaService.getKhoaPage(pageable);
    	model.addAttribute("totalPages", khoaPage.getTotalPages());
        model.addAttribute("currentPage", page);
        model.addAttribute("DSKhoa", khoaService.getAllKhoa());
        return "khoa";
    }

    @GetMapping("/add")
    public String createKhoaForm(Model model) {
        model.addAttribute("DSKhoa", new KhoaModel());
        return "addk";
    }

    @PostMapping("/save")
    public String saveKhoa(@ModelAttribute("DSKhoa") KhoaModel khoa) {
        khoaService.saveKhoa(khoa);
        return "redirect:/Khoa/all";
    }

    @GetMapping("/edit/{maKhoa}")
    public String editKhoa(@PathVariable String maKhoa, Model model) {
        model.addAttribute("DSKhoa", khoaService.getKhoaByID(maKhoa));
        return "updatek";
    }
    

    @GetMapping("/delete/{maKhoa}")
    public String deleteKhoa(@PathVariable String maKhoa) {
        khoaService.deleteKhoaByID(maKhoa);
        return "redirect:/Khoa/all";
    }
    
    @GetMapping("/search")
    public String searchKhoa(@RequestParam(required = false) String criteria,
                             @RequestParam(required = false) String value,
                             @RequestParam(defaultValue = "0") int page,
                             Model model) {
        Pageable pageable = PageRequest.of(page, 5);
        Page<KhoaModel> searchResults;

        if ("maKhoa".equals(criteria)) {
            searchResults = khoaService.searchKhoaByMaKhoa(value, pageable);
        } else if ("tenKhoa".equals(criteria)) {
            searchResults = khoaService.searchKhoaByTenKhoa(value, pageable);
        } else {
            // Trường hợp không có tiêu chí, trả về toàn bộ danh sách khoa
            searchResults = khoaService.getKhoaPage(pageable);
        }

        model.addAttribute("DSKhoa", searchResults.getContent());
        model.addAttribute("totalPages", searchResults.getTotalPages());
        model.addAttribute("currentPage", page);
        model.addAttribute("searchCriteria", criteria);
        model.addAttribute("searchValue", value);
        return "khoa";
    }
}
