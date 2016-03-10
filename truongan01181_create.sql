-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:50:02.339




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV char(10)  NOT NULL,
    TenNV nchar(30)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh bit  NOT NULL,
    Email char(50)  NOT NULL,
    Mucluong money  NOT NULL,
    MaPhong char(10)  NOT NULL,
    TPhongban_MaPhong char(10)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong char(10)  NOT NULL,
    Tenphong nchar(50)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (TPhongban_MaPhong)
    REFERENCES TPhongban (MaPhong)
;





-- End of file.

