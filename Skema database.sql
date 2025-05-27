-- Tabel DIMENSI SISWA 
CREATE TABLE Dimensi_Siswa ( 
    ID_Siswa VARCHAR(10) PRIMARY KEY, 
    Nama_Siswa VARCHAR(100), 
    NISN VARCHAR(20), 
    Jenis_Kelamin CHAR(1), 
    Kelas VARCHAR(10), 
    Tahun_Masuk INT, 
    Nama_Orangtua VARCHAR(100) 
); 
 -- Tabel DIMENSI MATA PELAJARAN  
CREATE TABLE Dimensi_MataPelajaran ( 
    ID_MatPel VARCHAR(10) PRIMARY KEY, 
    Nama_MatPel VARCHAR(100), 
    Kategori VARCHAR(50), 
    Tingkat INT, 
    KKM INT 
); 
 -- Tabel DIMENSI GURU  
CREATE TABLE Dimensi_Guru ( 
    ID_Guru VARCHAR(10) PRIMARY KEY, 
    Nama_Guru VARCHAR(100), 
    NIP VARCHAR(20), 
    Bidang_Ajar VARCHAR(100), 
    Status VARCHAR(50), 
    Tahun_Mengajar INT, 
    Pendidikan VARCHAR(100) 
); 
 -- Tabel FAKTA NILAI SISWA 
CREATE TABLE Fakta_Nilai_Siswa ( 
    ID_Nilai VARCHAR(10) PRIMARY KEY, 
ID_Siswa VARCHAR(10), 
ID_MataPelajaran VARCHAR(10), 
ID_Guru VARCHAR(10), 
Nilai_Ujian INT, 
Nilai_Tugas INT, 
Nilai_Rata_Rata DECIMAL(5,2), 
Status_Kelulusan VARCHAR(20), -- Foreign Keys 
FOREIGN KEY (ID_Siswa) REFERENCES Dimensi_Siswa(ID_Siswa), 
FOREIGN KEY (ID_MataPelajaran) REFERENCES 
Dimensi_MataPelajaran(ID_MatPel), 
FOREIGN KEY (ID_Guru) REFERENCES Dimensi_Guru(ID_Guru) 
);