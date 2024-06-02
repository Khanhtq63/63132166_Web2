package tqk.QLSV.Repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tqk.QLSV.Models.LopHocModel;




@Repository
public interface LopHocRepository extends JpaRepository<LopHocModel, String> {
	Page<LopHocModel> findByMaLopContainingAndTenLopContainingAndHeDaoTaoContainingAndMaKhoaContaining(
	        String maLop, String tenLop, String heDaoTao, String maKhoa, Pageable pageable);
    Page<LopHocModel> findAll(Pageable pageable);
    LopHocModel findByTenLop(String tenLop);
}
