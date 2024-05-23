package tqk.QLSV.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tqk.QLSV.Models.LopHocModel;

@Repository
public interface LopHocRepository extends JpaRepository<LopHocModel, String> {
}
