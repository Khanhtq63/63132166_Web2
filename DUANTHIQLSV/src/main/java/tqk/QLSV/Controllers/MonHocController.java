package tqk.QLSV.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import tqk.QLSV.Models.MonHocModel;
import tqk.QLSV.Services.MonHocService;

@Controller
@RequestMapping("/MonHoc")
public class MonHocController {

    @Autowired
    private MonHocService monHocService;

    @GetMapping("/all")
    public String getAllMonHoc(Model model,@RequestParam(defaultValue = "0")int page) {
    	Pageable pageable = PageRequest.of(page, 5);
    	Page<MonHocModel> monHocPage = monHocService.getMonHocPage(pageable);
    	model.addAttribute("DSMonHoc", monHocPage.getContent());
    	model.addAttribute("totalPages", monHocPage.getTotalPages());
        model.addAttribute("currentPage", page);
        return "monhoc";
    }

    @GetMapping("/add")
    public String createMonHocForm(Model model) {
        model.addAttribute("DSMonHoc", new MonHocModel());
        return "addmh";
    }

    @PostMapping("/save")
    public String saveMonHoc(@ModelAttribute("DSMonHoc") MonHocModel monHoc, Model model) {
        // Kiểm tra xem mã số môn học đã tồn tại chưa
        MonHocModel existingMonHoc = monHocService.getMonHocByID(monHoc.getMaMonHoc());
        if (existingMonHoc != null) {
            // Nếu mã số môn học đã tồn tại, thông báo cho người dùng
            model.addAttribute("error", "Mã môn học đã tồn tại!");
            return "addmh"; // Trả về trang thêm môn học với thông báo lỗi
        } else {
            // Nếu mã số môn học chưa tồn tại, lưu môn học vào cơ sở dữ liệu
            monHocService.saveMonHoc(monHoc);
            return "redirect:/MonHoc/all";
        }
    }

    @GetMapping("/edit/{maMonHoc}")
    public String editMonHoc(@PathVariable String maMonHoc, Model model) {
        model.addAttribute("DSMonHoc", monHocService.getMonHocByID(maMonHoc));
        return "updatemh";
    }

    @GetMapping("/delete/{maMonHoc}")
    public String deleteMonHoc(@PathVariable String maMonHoc) {
        monHocService.deleteMonHocByID(maMonHoc);
        return "redirect:/MonHoc/all";
    }
    
    @GetMapping("/search")
    public String searchMonHoc(@RequestParam(defaultValue = "0") int page,
                               @RequestParam(required = false) String criteria,
                               @RequestParam(required = false) String value,
                               Model model) {
        Pageable pageable = PageRequest.of(page, 5);
        Page<MonHocModel> monHocPage;

        if (criteria != null && !criteria.isEmpty() && value != null && !value.isEmpty()) {
            if (criteria.equals("maMonHoc")) {
                monHocPage = monHocService.findByMaMonHocContaining(value, pageable);
            } else if (criteria.equals("tenMonHoc")) {
                monHocPage = monHocService.findByTenMonHocContaining(value, pageable);
            } else {
                monHocPage = monHocService.getMonHocPage(pageable);
            }
        } else {
            monHocPage = monHocService.getMonHocPage(pageable);
        }

        model.addAttribute("DSMonHoc", monHocPage.getContent());
        model.addAttribute("totalPages", monHocPage.getTotalPages());
        model.addAttribute("currentPage", page);
        model.addAttribute("criteria", criteria);
        model.addAttribute("value", value);
        return "monhoc";
    }
}
