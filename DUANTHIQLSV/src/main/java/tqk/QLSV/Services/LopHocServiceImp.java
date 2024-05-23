package tqk.QLSV.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tqk.QLSV.Models.LopHocModel;
import tqk.QLSV.Repositories.LopHocRepository;

@Service
public class LopHocServiceImp implements LopHocService {

    @Autowired
    private LopHocRepository lopHocRepository;

    @Override
    public List<LopHocModel> getAllLopHoc() {
        return lopHocRepository.findAll();
    }

    @Override
    public LopHocModel saveLopHoc(LopHocModel lopHoc) {
        return lopHocRepository.save(lopHoc);
    }

    @Override
    public LopHocModel getLopHocByID(String maLop) {
        Optional<LopHocModel> opt = lopHocRepository.findById(maLop);
        return opt.orElse(null);
    }

    @Override
    public LopHocModel updateLopHoc(LopHocModel lopHoc) {
        return lopHocRepository.save(lopHoc);
    }

    @Override
    public void deleteLopHocByID(String maLop) {
        lopHocRepository.deleteById(maLop);
    }
}