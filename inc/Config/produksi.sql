-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-11-27 09:06:58.566

-- tables
-- Table: Bahan
CREATE TABLE Bahan (
    id_bahan int NOT NULL,
    jumlah_bahanbaku int NOT NULL,
    id_barang int NOT NULL,
    id_bahanbaku int NOT NULL,
    CONSTRAINT Bahan_pk PRIMARY KEY (id_bahan)
);

-- Table: Barang
CREATE TABLE Barang (
    id_barang int NOT NULL,
    nama_barang varchar(20) NOT NULL,
    CONSTRAINT Barang_pk PRIMARY KEY (id_barang)
);

-- Table: Realisasi
CREATE TABLE Realisasi (
    id_realisasi int NOT NULL,
    realisasi varchar(20) NOT NULL,
    lolos_qc Varchar(20) NOT NULL,
    tanggal timestamp NOT NULL,
    id_target int NOT NULL,
    id_barang int NOT NULL,
    id_bahan int NOT NULL,
    CONSTRAINT Realisasi_pk PRIMARY KEY (id_realisasi)
);

-- Table: Target
CREATE TABLE Target (
    id_target int NOT NULL,
    target_stock varchar(10) NOT NULL,
    id_barang int NOT NULL,
    CONSTRAINT Target_pk PRIMARY KEY (id_target)
);

-- Table: mesin
CREATE TABLE mesin (
    id_mesin int NOT NULL,
    seri_mesin int NOT NULL,
    nama_mesin int NOT NULL,
    tahun int NOT NULL,
    status int NOT NULL,
    CONSTRAINT mesin_pk PRIMARY KEY (id_mesin)
);

-- Table: stock_jadi
CREATE TABLE stock_jadi (
    id_stock int NOT NULL,
    terjual varchar(10) NULL,
    sisa varchar(10) NULL,
    tanggal timestamp NOT NULL,
    Barang_id_barang int NOT NULL,
    CONSTRAINT stock_jadi_pk PRIMARY KEY (id_stock)
);

-- Table: stock_supply
CREATE TABLE stock_supply (
    id_bahanbaku int NOT NULL,
    nama_bahanbaku varchar(20) NOT NULL,
    jumlah varchar(20) NULL,
    harga Varchar(20) NOT NULL,
    CONSTRAINT stock_supply_pk PRIMARY KEY (id_bahanbaku)
);

-- Table: user
CREATE TABLE user (
    id_user int NOT NULL,
    username varchar(10) NOT NULL,
    pass varchar(10) NOT NULL,
    level varchar(10) NOT NULL,
    CONSTRAINT user_pk PRIMARY KEY (id_user)
);

-- foreign keys
-- Reference: Bahan_Barang (table: Bahan)
ALTER TABLE Bahan ADD CONSTRAINT Bahan_Barang FOREIGN KEY Bahan_Barang (id_barang)
    REFERENCES Barang (id_barang);

-- Reference: Bahan_stock_supply (table: Bahan)
ALTER TABLE Bahan ADD CONSTRAINT Bahan_stock_supply FOREIGN KEY Bahan_stock_supply (id_bahanbaku)
    REFERENCES stock_supply (id_bahanbaku);

-- Reference: Realisasi_Bahan (table: Realisasi)
ALTER TABLE Realisasi ADD CONSTRAINT Realisasi_Bahan FOREIGN KEY Realisasi_Bahan (id_bahan)
    REFERENCES Bahan (id_bahan);

-- Reference: Realisasi_Barang (table: Realisasi)
ALTER TABLE Realisasi ADD CONSTRAINT Realisasi_Barang FOREIGN KEY Realisasi_Barang (id_barang)
    REFERENCES Barang (id_barang);

-- Reference: Realisasi_Target (table: Realisasi)
ALTER TABLE Realisasi ADD CONSTRAINT Realisasi_Target FOREIGN KEY Realisasi_Target (id_target)
    REFERENCES Target (id_target);

-- Reference: Target_Barang (table: Target)
ALTER TABLE Target ADD CONSTRAINT Target_Barang FOREIGN KEY Target_Barang (id_barang)
    REFERENCES Barang (id_barang);

-- Reference: stock_jadi_Barang (table: stock_jadi)
ALTER TABLE stock_jadi ADD CONSTRAINT stock_jadi_Barang FOREIGN KEY stock_jadi_Barang (Barang_id_barang)
    REFERENCES Barang (id_barang);

-- End of file.

