package tqk.QLSV.Repositories;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tqk.QLSV.Models.SinhVienModel;
@Repository
public interface SinhVienRepository extends JpaRepository<SinhVienModel, String> {
	
	 List<SinhVienModel> findByHoTenContainingIgnoreCase(String hoTen);
	 
	 Page<SinhVienModel> findAll(Pageable pageable);
	 
	 List<SinhVienModel> findByMaSinhVienContainingIgnoreCase(String maSinhVien);

	 List<SinhVienModel> findByGioiTinhContainingIgnoreCase(String gioiTinh);

	 List<SinhVienModel> findByMaLopContainingIgnoreCase(String maLop);

}
