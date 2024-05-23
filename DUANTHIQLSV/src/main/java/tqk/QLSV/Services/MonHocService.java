package tqk.QLSV.Services;

import java.util.List;
import tqk.QLSV.Models.MonHocModel;

public interface MonHocService {
    List<MonHocModel> getAllMonHoc();
    MonHocModel saveMonHoc(MonHocModel monHoc);
    MonHocModel getMonHocByID(String maMonHoc);
    MonHocModel updateMonHoc(MonHocModel monHoc);
    void deleteMonHocByID(String maMonHoc);
}
