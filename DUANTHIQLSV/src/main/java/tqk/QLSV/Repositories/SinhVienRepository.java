package tqk.QLSV.Repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tqk.QLSV.Models.SinhVienModel;
@Repository
public interface SinhVienRepository extends JpaRepository<SinhVienModel, String> {
	
	 List<SinhVienModel> findByHoTenContainingIgnoreCase(String hoTen);

}
