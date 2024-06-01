package tqk.QLSV.Services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import tqk.QLSV.Models.KhoaModel;


public interface KhoaService {
    List<KhoaModel> getAllKhoa();
    KhoaModel saveKhoa(KhoaModel khoa);
    KhoaModel getKhoaByID(String maKhoa);
    KhoaModel updateKhoa(KhoaModel khoa);
    void deleteKhoaByID(String maKhoa);
    Page<KhoaModel> getKhoaPage(Pageable pageable);
    Page<KhoaModel> searchKhoaByMaKhoa(String maKhoa, Pageable pageable);
    Page<KhoaModel> searchKhoaByTenKhoa(String tenKhoa, Pageable pageable);
}
