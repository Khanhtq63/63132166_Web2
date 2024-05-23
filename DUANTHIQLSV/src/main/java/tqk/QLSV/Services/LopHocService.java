package tqk.QLSV.Services;

import java.util.List;
import tqk.QLSV.Models.LopHocModel;

public interface LopHocService {
    List<LopHocModel> getAllLopHoc();
    LopHocModel saveLopHoc(LopHocModel lopHoc);
    LopHocModel getLopHocByID(String maLop);
    LopHocModel updateLopHoc(LopHocModel lopHoc);
    void deleteLopHocByID(String maLop);
}