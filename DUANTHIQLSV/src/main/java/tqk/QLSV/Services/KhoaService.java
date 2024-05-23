package tqk.QLSV.Services;

import java.util.List;
import tqk.QLSV.Models.KhoaModel;

public interface KhoaService {
    List<KhoaModel> getAllKhoa();
    KhoaModel saveKhoa(KhoaModel khoa);
    KhoaModel getKhoaByID(String maKhoa);
    KhoaModel updateKhoa(KhoaModel khoa);
    void deleteKhoaByID(String maKhoa);
}
