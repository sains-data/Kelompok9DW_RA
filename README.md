# 🏫💡 Data Warehouse Sekolah Dasar Bombardilo Crocodilo

Repositori ini berisi proyek pembangunan sistem **Data Warehouse (DW)** untuk mendukung pengelolaan data akademik dan administrasi di **Sekolah Dasar Bombardilo Crocodilo**.

🛠️ Dibuat oleh: **Kelompok 9 - RA**  
🎓 Program Studi Sains Data, ITERA  
📅 Tahun: 2025

---

## 1. 🔎 Ringkasan Proyek dan Latar Belakang

Pengelolaan data di sekolah masih bergantung pada catatan manual dan spreadsheet terpisah. Ini menyulitkan pelaporan ke Dinas Pendidikan serta pemantauan kinerja siswa.  
Melalui sistem Data Warehouse, informasi penting seperti nilai, kehadiran, dan profil siswa akan terintegrasi dan siap dianalisis menggunakan tools visualisasi dan query SQL.

---

## 2. 🎯 Tujuan dan Ruang Lingkup Sistem

**Tujuan:**
- Mengintegrasikan data dari berbagai sumber menjadi satu sistem DW.
- Menyediakan sistem pelaporan dan analisis akademik.
- Meningkatkan efisiensi pelaporan dan pemantauan.

**Ruang Lingkup:**
- Nilai akademik siswa
- Informasi guru & mata pelajaran
- Kehadiran & status kelulusan

---

## 3. 🧰 Metodologi

### Pendekatan:
Model **Waterfall** dengan tahapan:
1. Misi 1 – Analisis kebutuhan dan stakeholder
2. Misi 2 – Desain konseptual (Star Schema)
3. Misi 3 – Desain logikal & fisikal, proses ETL
4. Misi 4 – Implementasi & evaluasi

### Tools:
- SQL (MySQL/PostgreSQL)
- Python (ETL dengan Pandas)
- Excel/CSV
- BI Tools (Power BI / Excel)

---

## 4. 📋 Analisis Kebutuhan (Misi 1)

**Stakeholder:**
- Kepala Sekolah
- Kurikulum
- Administrasi
- Kesiswaan
- Dinas Pendidikan

**Kebutuhan:**
- Pelacakan nilai siswa per semester.
- Pemantauan kehadiran dan kegiatan siswa.
- Laporan untuk pihak eksternal.

---

## 5. 🧩 Desain Konseptual, Logikal, dan Fisik

### 🌟 Star Schema

```mermaid
erDiagram
    fakta_nilai_siswa ||--o{ dimensi_siswa : "id_siswa"
    fakta_nilai_siswa ||--o{ dimensi_matapelajaran : "id_matpel"
    fakta_nilai_siswa ||--o{ dimensi_guru : "id_guru"

    fakta_nilai_siswa {
        string id_nilai
        string id_siswa
        string id_matapelajaran
        string id_guru
        int nilai_ujian
        int nilai_tugas
        float nilai_rata_rata
        string status_kelulusan
    }

    dimensi_siswa {
        string id_siswa
        string nama_siswa
        string nisn
        string jenis_kelamin
        string kelas
        int tahun_masuk
        string nama_orangtua
    }

    dimensi_matapelajaran {
        string id_matpel
        string nama_matpel
        string kategori
        int tingkat
        int kkm
    }

    dimensi_guru {
        string id_guru
        string nama_guru
        string nip
        string bidang_ajar
        string status
        int tahun_mengajar
        string pendidikan
    }
```

---

## 6. 🏗️ Arsitektur Sistem

```mermaid
flowchart TD
    subgraph "Sumber Data"
        A1[Buku Induk Siswa]
        A2[Daftar Hadir]
        A3[Buku Nilai]
    end

    A1 --> B[Proses ETL via SQL]
    A2 --> B
    A3 --> B

    B --> C[Data Warehouse
Star Schema Model]

    subgraph "Fakta & Dimensi"
        C1[FAKTA: Fakta_Nilai_Siswa
Nilai
Status Kelulusan]
        C2[DIM_Siswa
Nama
NISN
Kelas]
        C3[DIM_Matpel
Kategori
KKM]
        C4[DIM_Guru
NIP
Status
Pendidikan]
    end

    C --> C1
    C1 --> C2
    C1 --> C3
    C1 --> C4

    C1 --> D[View: View_Kinerja_Siswa_Kelulusan]

    D --> E[Laporan, Visualisasi & Analitik]

```

---

## 7. ⚙️ Proses Implementasi

### Contoh Query SQL:

```sql
CREATE TABLE Dimensi_Siswa (
  ID_Siswa VARCHAR(10) PRIMARY KEY,
  Nama_Siswa VARCHAR(100),
  NISN VARCHAR(20),
  Jenis_Kelamin CHAR(1),
  Kelas VARCHAR(10),
  Tahun_Masuk INT,
  Nama_Orangtua VARCHAR(100)
);

CREATE TABLE Fakta_Nilai_Siswa (
  ID_Nilai VARCHAR(10) PRIMARY KEY,
  ID_Siswa VARCHAR(10),
  ID_MataPelajaran VARCHAR(10),
  ID_Guru VARCHAR(10),
  Nilai_Ujian INT,
  Nilai_Tugas INT,
  Nilai_Rata_Rata DECIMAL(5,2),
  Status_Kelulusan VARCHAR(20),
  FOREIGN KEY (ID_Siswa) REFERENCES Dimensi_Siswa(ID_Siswa)
);
```

### Proses ETL:

- **Extract**: Ambil data dari file Excel (Buku Induk, Absensi, Nilai)
- **Transform**: Bersihkan data, hitung nilai rata-rata, validasi status
- **Load**: Muat ke dalam tabel di SQL DBMS

📂 Dataset: [bit.ly/DatasetSQL_DW_Kel9_RA](https://bit.ly/DatasetSQL_DW_Kel9_RA)

---

## 8. ✅ Hasil Implementasi

- Query agregasi berhasil menampilkan rata-rata per status kelulusan
- View berhasil menampilkan ringkasan siswa lulus dan tidak lulus
- Struktur data terhubung antar dimensi dengan baik

---

## 9. 📉 Evaluasi

**Berhasil:**
- Star Schema & ETL dapat berjalan dengan dummy data
- Efisiensi query meningkat dengan indexing & partisi

**Kendala:**
- Data real belum digunakan
- Visualisasi dashboard belum terimplementasi

---

## 10. 🔮 Rencana Pengembangan

- Tambahan fitur autentikasi pengguna (admin, guru, kepala sekolah)
- Integrasi dashboard interaktif dengan Power BI / Streamlit
- Penambahan fakta baru: kehadiran siswa, pelanggaran, kegiatan

---

## 11. 👥 Tim Proyek

**Kelompok 9 - RA**  
📍 Program Studi Sains Data, ITERA

| Nama                          | NIM         | Peran       |
|-------------------------------|-------------|-------------|
| Dhea Amelia Putri             | 122450004   | Anggota     |
| Marleta Cornelia Leander     | 122450092   | Anggota     |
| Berliyana Kesuma Hati        | 121450086   | Anggota     |
| Najla Juwairia               | 122450037   | Anggota     |
| **Nurul Alfajar Gumel** ⭐    | 122450127   | Ketua Tim   |
| Tarisah                      | 121450141   | Anggota     |

---

_“Data bukan hanya angka. Ia adalah cerminan kualitas pendidikan.”_

Terima kasih telah membaca! 🎓📈
