package tqk.QLSV.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import tqk.QLSV.Models.LopHocModel;
import tqk.QLSV.Services.KhoaService;
import tqk.QLSV.Services.LopHocService;

import java.util.List;

@Controller
@RequestMapping("/LopHoc")
public class LopHocController {

    @Autowired
    private LopHocService lopHocService;

    @Autowired
    private KhoaService khoaService;

    @GetMapping("/all")
    public String getAllLopHoc(Model model,@RequestParam(defaultValue = "0") int page) {
    	Pageable pageable = PageRequest.of(page, 5);
    	Page<LopHocModel> lopHocPage = lopHocService.getLopHocPage(pageable);
        model.addAttribute("DSLopHoc", lopHocPage.getContent());
        model.addAttribute("totalPages", lopHocPage.getTotalPages());
        model.addAttribute("currentPage", page);
        return "lophoc";
    }

    @GetMapping("/addlh")
    public String createLopHocForm(Model model) {
        model.addAttribute("DSLopHoc", new LopHocModel());
        model.addAttribute("DSKhoa", khoaService.getAllKhoa());
        return "addlh";
    }

    @PostMapping("/save")
    public String saveLopHoc(@ModelAttribute("DSLopHoc") LopHocModel lopHoc) {
        lopHocService.saveLopHoc(lopHoc);
        return "redirect:/LopHoc/all";
    }

    @GetMapping("/edit/{maLop}")
    public String editLopHoc(@PathVariable String maLop, Model model) {
        model.addAttribute("DSLopHoc", lopHocService.getLopHocByID(maLop));
        model.addAttribute("DSKhoa", khoaService.getAllKhoa());
        return "updatelh";
    }

    @GetMapping("/delete/{maLop}")
    public String deleteLopHoc(@PathVariable String maLop) {
        lopHocService.deleteLopHocByID(maLop);
        return "redirect:/LopHoc/all";
    }

    @GetMapping("/search")
    public String searchLopHoc(@RequestParam(required = false) String criteria,
                               @RequestParam(required = false) String value,
                               @RequestParam(defaultValue = "0") int page,
                               Model model) {
        Pageable pageable = PageRequest.of(page, 5);
        Page<LopHocModel> searchResults;

        if ("maLop".equals(criteria)) {
            searchResults = lopHocService.searchLopHoc(value, "", "", "", pageable);
        } else if ("tenLop".equals(criteria)) {
            searchResults = lopHocService.searchLopHoc("", value, "", "", pageable);
        } else if ("heDaoTao".equals(criteria)) {
            searchResults = lopHocService.searchLopHoc("", "", value, "", pageable);
        } else if ("maKhoa".equals(criteria)) {
            searchResults = lopHocService.searchLopHoc("", "", "", value, pageable);
        } else {
            searchResults = lopHocService.getLopHocPage(pageable);
        }

        model.addAttribute("DSLopHoc", searchResults.getContent());
        model.addAttribute("totalPages", searchResults.getTotalPages());
        model.addAttribute("currentPage", page);
        model.addAttribute("searchCriteria", criteria);
        model.addAttribute("searchValue", value);
        return "lophoc";
    }
}
