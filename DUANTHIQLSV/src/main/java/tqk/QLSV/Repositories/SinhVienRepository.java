package tqk.QLSV.Repositories;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tqk.QLSV.Models.SinhVienModel;
@Repository
public interface SinhVienRepository extends JpaRepository<SinhVienModel, String> {
		 
	 Page<SinhVienModel> findAll(Pageable pageable);
	 
	 Page<SinhVienModel> findByHoTenContainingIgnoreCase(String hoTen, Pageable pageable);
	 
	 Page<SinhVienModel> findByMaSinhVienContainingIgnoreCase(String maSinhVien, Pageable pageable);
	 
	 Page<SinhVienModel> findByGioiTinhContainingIgnoreCase(String gioiTinh, Pageable pageable);
	 
	 Page<SinhVienModel> findByMaLopContainingIgnoreCase(String maLop, Pageable pageable);

}
