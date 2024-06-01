package tqk.QLSV.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import tqk.QLSV.Models.SinhVienModel;
import tqk.QLSV.Repositories.SinhVienRepository;

@Service
public class SinhVienServiceImp implements SinhVienService {
	
	@Autowired SinhVienRepository sinhVienRepository;
	@Override
	public List<SinhVienModel> getAllSinhVien() {
		
		 return sinhVienRepository.findAll();
	}
	
	public SinhVienServiceImp(SinhVienRepository sinhVienRepository) {
		super();
		this.sinhVienRepository = sinhVienRepository;
	}

	@Override
	public SinhVienModel getSinhVienByID(String maSinhVien) {
		
		Optional <SinhVienModel> opt = sinhVienRepository.findById(maSinhVien);
		if (opt.isPresent()) return opt.get();
		else return null;
	}

	@Override
	public SinhVienModel SaveSinhVien(SinhVienModel sinhvien) {
		return sinhVienRepository.save(sinhvien);
	}

	@Override
	public SinhVienModel UpdateSinhVien(SinhVienModel sinhvien) {
		return sinhVienRepository.save(sinhvien);
	}

	@Override
	public void DeleteStudentByID(String maSinhVien) {
		sinhVienRepository.deleteById(maSinhVien);
	}	

	@Override
	public Page<SinhVienModel> getSinhVienPage(Pageable pageable) {
		Page<SinhVienModel> page = sinhVienRepository.findAll(pageable);
	    if (page == null) {
	        // Trường hợp không tìm thấy dữ liệu, trả về một trang rỗng
	        return Page.empty(pageable);
	    }
	    return page;
	}
	
	@Override
	public Page<SinhVienModel> SearchSinhVienByName(String hoTen, Pageable pageable) {
	    return sinhVienRepository.findByHoTenContainingIgnoreCase(hoTen, pageable);
	}

	@Override
	public Page<SinhVienModel> SearchSinhVienByMaSV(String maSinhVien, Pageable pageable) {
	    return sinhVienRepository.findByMaSinhVienContainingIgnoreCase(maSinhVien, pageable);
	}

	@Override
	public Page<SinhVienModel> SearchSinhVienByGioiTinh(String gioiTinh, Pageable pageable) {
	    return sinhVienRepository.findByGioiTinhContainingIgnoreCase(gioiTinh, pageable);
	}

	@Override
	public Page<SinhVienModel> SearchSinhVienByMaLop(String maLop, Pageable pageable) {
	    return sinhVienRepository.findByMaLopContainingIgnoreCase(maLop, pageable);
	}
	
	
}
