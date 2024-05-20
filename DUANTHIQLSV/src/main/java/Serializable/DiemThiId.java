package Serializable;

import java.io.Serializable;
import java.util.Objects;

public class DiemThiId implements Serializable {

	private String maMonHoc;
    private String maSinhVien;

    // Default constructor
    public DiemThiId() {}

    // Parameterized constructor
    public DiemThiId(String maMonHoc, String maSinhVien) {
        this.maMonHoc = maMonHoc;
        this.maSinhVien = maSinhVien;
    }

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

    // hashCode and equals
    @Override
    public int hashCode() {
        return Objects.hash(maMonHoc, maSinhVien);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DiemThiId that = (DiemThiId) o;
        return Objects.equals(maMonHoc, that.maMonHoc) &&
               Objects.equals(maSinhVien, that.maSinhVien);
    }
}
