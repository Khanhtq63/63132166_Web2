package tqk.QLSV.Models;

public class DiemThiDisplayModel {
    private DiemThiModel diemThi;
    private String tenSinhVien;
    private String tenMonHoc;

    public DiemThiDisplayModel(DiemThiModel diemThi, String tenSinhVien, String tenMonHoc) {
        this.diemThi = diemThi;
        this.tenSinhVien = tenSinhVien;
        this.tenMonHoc = tenMonHoc;
    }

    // Getters and setters
    public DiemThiModel getDiemThi() {
        return diemThi;
    }

    public void setDiemThi(DiemThiModel diemThi) {
        this.diemThi = diemThi;
    }

    public String getTenSinhVien() {
        return tenSinhVien;
    }

    public void setTenSinhVien(String tenSinhVien) {
        this.tenSinhVien = tenSinhVien;
    }

    public String getTenMonHoc() {
        return tenMonHoc;
    }

    public void setTenMonHoc(String tenMonHoc) {
        this.tenMonHoc = tenMonHoc;
    }
}
