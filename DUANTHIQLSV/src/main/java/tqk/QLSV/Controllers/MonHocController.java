package tqk.QLSV.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
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
        MonHocModel existingMonHocByMa = monHocService.getMonHocByID(monHoc.getMaMonHoc());
        MonHocModel existingMonHocByName = monHocService.getMonHocByName(monHoc.getTenMonHoc());
        
        if (existingMonHocByMa != null) {
            model.addAttribute("error", "Mã môn học đã tồn tại!");
            return "addmh";
        } else if (existingMonHocByName != null) {
            model.addAttribute("error", "Tên môn học đã tồn tại!");
            return "addmh";
        } else {
            monHocService.saveMonHoc(monHoc);
            return "redirect:/MonHoc/all";
        }
    }

    @GetMapping("/edit/{maMonHoc}")
    public String editMonHoc(@PathVariable String maMonHoc, Model model) {
        model.addAttribute("DSMonHoc", monHocService.getMonHocByID(maMonHoc));
        return "updatemh";
    }
    
    @PostMapping("/update")
    public String updateMonHoc(@ModelAttribute("DSMonHoc") MonHocModel monHoc, Model model) {
    	MonHocModel existingMonHocByName = monHocService.getMonHocByName(monHoc.getTenMonHoc());
    	if (existingMonHocByName != null) {
            model.addAttribute("error", "Tên môn học đã tồn tại!");
            return "addmh";
        }
         monHocService.saveMonHoc(monHoc);
         return "redirect:/MonHoc/all";
    }

    @GetMapping("/delete/{maMonHoc}")
    public String deleteMonHoc(@PathVariable String maMonHoc, Model model) {
    	try {
    		monHocService.deleteMonHocByID(maMonHoc);
            return "redirect:/MonHoc/all";
    	} catch (DataIntegrityViolationException e) {
    		model.addAttribute("error","Không thể xóa vì có sinh viên đang học môn này");
    		return "error";
    	}

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
