package tqk.QLSV.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tqk.QLSV.Models.MonHocModel;
import tqk.QLSV.Repositories.MonHocRepository;

@Service
public class MonHocServiceImp implements MonHocService {

    @Autowired
    private MonHocRepository monHocRepository;

    @Override
    public List<MonHocModel> getAllMonHoc() {
        return monHocRepository.findAll();
    }

    @Override
    public MonHocModel saveMonHoc(MonHocModel monHoc) {
        return monHocRepository.save(monHoc);
    }

    @Override
    public MonHocModel getMonHocByID(String maMonHoc) {
        Optional<MonHocModel> opt = monHocRepository.findById(maMonHoc);
        return opt.orElse(null);
    }

    @Override
    public MonHocModel updateMonHoc(MonHocModel monHoc) {
        return monHocRepository.save(monHoc);
    }

    @Override
    public void deleteMonHocByID(String maMonHoc) {
        monHocRepository.deleteById(maMonHoc);
    }
}
