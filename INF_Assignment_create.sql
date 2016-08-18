-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-07-29 13:36:39.111

-- tables
-- Table: Chitiethoadon
CREATE TABLE Chitiethoadon (
    MaSP char(10)  NOT NULL,
    MaHD char(10)  NOT NULL,
    SoLuong char(10)  NOT NULL,
    DonGia money  NOT NULL,
    CONSTRAINT Chitiethoadon_pk PRIMARY KEY  (MaSP)
);

-- Table: Hoa_don
CREATE TABLE Hoa_don (
    MaHD char(10)  NOT NULL,
    NgayLap datetime  NOT NULL,
    MaKH char(10)  NOT NULL,
    CONSTRAINT Hoa_don_pk PRIMARY KEY  (MaHD)
);

-- Table: Khach_hang
CREATE TABLE Khach_hang (
    MaKH char(10)  NOT NULL,
    TenKH nvarchar(200)  NOT NULL,
    DiaChi nvarchar(200)  NOT NULL,
    SoDT char(11)  NOT NULL,
    CONSTRAINT Khach_hang_pk PRIMARY KEY  (MaKH)
);

-- Table: Loai_SP
CREATE TABLE Loai_SP (
    MaLSP char(10)  NOT NULL,
    TenSP nvarchar(200)  NOT NULL,
    CONSTRAINT Loai_SP_pk PRIMARY KEY  (MaLSP)
);

-- Table: San_pham
CREATE TABLE San_pham (
    MaSP char(10)  NOT NULL,
    TenSP nvarchar(200)  NOT NULL,
    SoLuong char(10)  NOT NULL,
    MaLSP char(10)  NOT NULL,
    AnhSP image  NOT NULL,
    MoTa nvarchar(200)  NOT NULL,
    CONSTRAINT San_pham_pk PRIMARY KEY  (MaSP)
);

-- foreign keys
-- Reference: Chitiethoadon_Hoa_don (table: Chitiethoadon)
ALTER TABLE Chitiethoadon ADD CONSTRAINT Chitiethoadon_Hoa_don
    FOREIGN KEY (MaHD)
    REFERENCES Hoa_don (MaHD);

-- Reference: Chitiethoadon_San_pham (table: Chitiethoadon)
ALTER TABLE Chitiethoadon ADD CONSTRAINT Chitiethoadon_San_pham
    FOREIGN KEY (MaSP)
    REFERENCES San_pham (MaSP);

-- Reference: Hoa_don_Khach_hang (table: Hoa_don)
ALTER TABLE Hoa_don ADD CONSTRAINT Hoa_don_Khach_hang
    FOREIGN KEY (MaKH)
    REFERENCES Khach_hang (MaKH);

-- Reference: San_pham_Loai_SP (table: San_pham)
ALTER TABLE San_pham ADD CONSTRAINT San_pham_Loai_SP
    FOREIGN KEY (MaLSP)
    REFERENCES Loai_SP (MaLSP);

-- End of file.

