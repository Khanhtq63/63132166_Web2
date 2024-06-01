package tqk.QLSV.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import tqk.QLSV.Models.KhoaModel;
import tqk.QLSV.Repositories.KhoaRepository;

@Service
public class KhoaServiceImp implements KhoaService {

    @Autowired
    private KhoaRepository khoaRepository;

    @Override
    public List<KhoaModel> getAllKhoa() {
        return khoaRepository.findAll();
    }

    @Override
    public KhoaModel saveKhoa(KhoaModel khoa) {
        return khoaRepository.save(khoa);
    }

    @Override
    public KhoaModel getKhoaByID(String maKhoa) {
        Optional<KhoaModel> opt = khoaRepository.findById(maKhoa);
        return opt.orElse(null);
    }

    @Override
    public KhoaModel updateKhoa(KhoaModel khoa) {
        return khoaRepository.save(khoa);
    }

    @Override
    public void deleteKhoaByID(String maKhoa) {
        khoaRepository.deleteById(maKhoa);
    }
    
    @Override
   	public Page<KhoaModel> getKhoaPage(Pageable pageable) {
   		Page<KhoaModel> page = khoaRepository.findAll(pageable);
   	    if (page == null) {
   	        // Trường hợp không tìm thấy dữ liệu, trả về một trang rỗng
   	        return Page.empty(pageable);
   	    }
   	    return page;
   	}
    
    @Override
    public Page<KhoaModel> searchKhoaByMaKhoa(String maKhoa, Pageable pageable) {
        return khoaRepository.findByMaKhoaContaining(maKhoa, pageable);
    }

    @Override
    public Page<KhoaModel> searchKhoaByTenKhoa(String tenKhoa, Pageable pageable) {
        return khoaRepository.findByTenKhoaContaining(tenKhoa, pageable);
    }
}
