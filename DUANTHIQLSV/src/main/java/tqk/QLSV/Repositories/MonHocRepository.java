package tqk.QLSV.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import tqk.QLSV.Models.MonHocModel;

@Repository
public interface MonHocRepository extends JpaRepository<MonHocModel, String> {
	
	Page<MonHocModel> findAll(Pageable pageable);
	 Page<MonHocModel> findByMaMonHocContaining(String maMonHoc, Pageable pageable);
	    Page<MonHocModel> findByTenMonHocContaining(String tenMonHoc, Pageable pageable);
}
