package tqk.QLSV.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tqk.QLSV.Models.MonHocModel;

@Repository
public interface MonHocRepository extends JpaRepository<MonHocModel, String> {
}
