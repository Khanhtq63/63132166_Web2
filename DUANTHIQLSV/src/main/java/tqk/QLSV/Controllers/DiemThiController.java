package tqk.QLSV.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import java.util.ArrayList;
import org.springframework.web.bind.annotation.*;
import tqk.QLSV.Models.DiemThiModel;
import tqk.QLSV.Models.DiemThiDisplayModel;
import tqk.QLSV.Services.DiemThiService;
import tqk.QLSV.Services.MonHocService;
import tqk.QLSV.Services.SinhVienService;
import Serializable.DiemThiId;

@Controller
@RequestMapping("/DiemThi")
public class DiemThiController {

    @Autowired
    private DiemThiService diemThiService;
    
    @Autowired
    private SinhVienService sinhVienService;
        
    @Autowired
    private MonHocService monHocService;

    @GetMapping("/all")
    public String getAllDiemThi(Model model) {
    	 List<DiemThiModel> diemThiList = diemThiService.getAllDiemThi();
    	    List<DiemThiDisplayModel> displayList = new ArrayList<>();

    	    for (DiemThiModel diemThi : diemThiList) {
    	        String hoTen = sinhVienService.getSinhVienByID(diemThi.getMaSinhVien()).getHoTen();
    	        String tenMonHoc = monHocService.getMonHocByID(diemThi.getMaMonHoc()).getTenMonHoc();
    	        DiemThiDisplayModel displayModel = new DiemThiDisplayModel(diemThi, hoTen, tenMonHoc);
    	        displayList.add(displayModel);
    	    }

    	    model.addAttribute("DSDiemThi", displayList);
    	    return "diemthi";
    }

    @GetMapping("/adddt")
    public String createDiemThiForm(Model model) {
        model.addAttribute("diemThi", new DiemThiModel());
        model.addAttribute("DSMonHoc", monHocService.getAllMonHoc());
        model.addAttribute("DSSinhVien", sinhVienService.getAllSinhVien());
        return "adddt";
    }

    @PostMapping("/save")
    public String saveDiemThi(@ModelAttribute("diemThi") DiemThiModel diemThi) {
        diemThiService.saveDiemThi(diemThi);
        return "redirect:/DiemThi/all";
    }

    @GetMapping("/edit/{maMonHoc}/{maSinhVien}")
    public String editDiemThi(@PathVariable String maMonHoc, @PathVariable String maSinhVien, Model model) {
        DiemThiId id = new DiemThiId(maMonHoc, maSinhVien);
        model.addAttribute("diemThi", diemThiService.getDiemThiByID(id));
        model.addAttribute("DSMonHoc", monHocService.getAllMonHoc());
        model.addAttribute("DSSinhVien", sinhVienService.getAllSinhVien());
        return "updatedt";
    }

    @GetMapping("/delete/{maMonHoc}/{maSinhVien}")
    public String deleteDiemThi(@PathVariable String maMonHoc, @PathVariable String maSinhVien) {
        DiemThiId id = new DiemThiId(maMonHoc, maSinhVien);
        diemThiService.deleteDiemThiByID(id);
        return "redirect:/DiemThi/all";
    }
}
