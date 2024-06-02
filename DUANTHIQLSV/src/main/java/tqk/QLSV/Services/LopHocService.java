package tqk.QLSV.Services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import tqk.QLSV.Models.LopHocModel;


public interface LopHocService {
    List<LopHocModel> getAllLopHoc();
    LopHocModel saveLopHoc(LopHocModel lopHoc);
    LopHocModel getLopHocByID(String maLop);
    LopHocModel updateLopHoc(LopHocModel lopHoc);
    void deleteLopHocByID(String maLop);
    Page<LopHocModel> searchLopHoc(String maLop, String tenLop, String heDaoTao, String maKhoa, Pageable pageable);
    Page<LopHocModel> getLopHocPage(Pageable pageable);
    LopHocModel getLopHocByTenLop(String tenLop);
}
