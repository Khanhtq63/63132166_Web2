package tqk.QLSV.Models;

import Serializable.DiemThiId;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.Table;

@Entity
@Table(name="DIEMTHI")
@IdClass(DiemThiId.class)
public class DiemThiModel {
    
    @Id
    @Column(name="MAMONHOC")
    private String maMonHoc;

    @Id
    @Column(name="MASV")
    private String maSinhVien;

    @Column(name="DIEMQUATRINH")
    private float diemQuaTrinh;

    @Column(name="DIEMGIUAKY")
    private float diemGiuaKy;

    @Column(name="DIEMCUOIKY")
    private float diemCuoiKy;

    // Getters and setters

    public String getMaMonHoc() {
        return maMonHoc;
    }

    public void setMaMonHoc(String maMonHoc) {
        this.maMonHoc = maMonHoc;
    }

    public String getMaSinhVien() {
        return maSinhVien;
    }

    public void setMaSinhVien(String maSinhVien) {
        this.maSinhVien = maSinhVien;
    }

    public float getDiemQuaTrinh() {
        return diemQuaTrinh;
    }

    public void setDiemQuaTrinh(float diemQuaTrinh) {
        this.diemQuaTrinh = diemQuaTrinh;
    }

    public float getDiemGiuaKy() {
        return diemGiuaKy;
    }

    public void setDiemGiuaKy(float diemGiuaKy) {
        this.diemGiuaKy = diemGiuaKy;
    }

    public float getDiemCuoiKy() {
        return diemCuoiKy;
    }

    public void setDiemCuoiKy(float diemCuoiKy) {
        this.diemCuoiKy = diemCuoiKy;
    }
    
    // Phương thức tính điểm trung bình cả kỳ
    public float getDiemTrungBinh() {
        return (diemQuaTrinh * 0.25f + diemGiuaKy * 0.25f + diemCuoiKy * 0.5f);
    }

    @Override
    public String toString() {
        return "DiemThiModel [maMonHoc=" + maMonHoc + ", maSinhVien=" + maSinhVien + ", diemQuaTrinh=" + diemQuaTrinh
                + ", diemGiuaKy=" + diemGiuaKy + ", diemCuoiKy=" + diemCuoiKy + "]";
    }
}