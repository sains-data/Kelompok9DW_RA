# 🏫💡 Data Warehouse Sekolah Dasar Bombardilo Crocodilo

Selamat datang di repositori proyek **Data Warehouse** untuk Sekolah Dasar *Bombardilo Crocodilo*! 🎒📚  
Proyek ini merupakan bagian dari tugas mata kuliah *Pergudangan Data* oleh **Kelompok 9 - RA** di **Institut Teknologi Sumatera (ITERA)**.

> Sistem ini bertujuan menyatukan data akademik, kehadiran, dan administrasi siswa dalam satu platform terstruktur untuk membantu sekolah dalam mengambil keputusan yang lebih baik dan cepat. 📈

---

## 🚀 Ringkasan Proyek

| 🔍 Misi | 🎯 Tujuan | 📁 File |
|--------|----------|---------|
| **Misi 1** | Identifikasi kebutuhan bisnis & stakeholder sekolah | [📄 Tugas Misi 1](https://drive.google.com/file/d/1sAMgW4S-swRfxVZtu5HGwNi2iIXlzt_3/view?usp=drive_link) |
| **Misi 2** | Desain konseptual Star Schema dan struktur DW | [📄 Tugas Misi 2](https://drive.google.com/file/d/1xPL2LDic8q7QDZEgqZd6saUF2DF3MKmX/view?usp=drive_link) |
| **Misi 3** | Implementasi logikal, fisikal, dan proses ETL | [📄 Tugas Misi 3](https://drive.google.com/file/d/1OQJiCMFjdHNHARC1laVSuNWa_gBYHv50/view?usp=drive_link) |

📊 Dataset SQL: [Klik di sini](https://bit.ly/DatasetSQL_DW_Kel9_RA)

---

## 🧩 Arsitektur & Skema Data

### ⭐ Star Schema

- **Fakta:** Nilai siswa
- **Dimensi:** Siswa, Guru, Mata Pelajaran, Waktu
- Mendukung analisis: nilai rata-rata per guru, per semester, hingga status kelulusan siswa.

📌 Cocok untuk pelaporan ke Dinas Pendidikan, evaluasi guru, dan monitoring siswa.

### 🛠️ ETL & Pipeline

- **Extract**: Data dari Buku Induk, Absensi, dan Nilai.
- **Transform**: Standarisasi format, hitung rata-rata, validasi status kelulusan.
- **Load**: Data dimuat ke tabel dimensi dan fakta, dioptimalkan dengan **index** dan **partisi**.

> Implementasi dilakukan menggunakan SQL & Python 🐍

---

## 🧠 Insight dari Proyek

✅ Integrasi data yang awalnya tersebar di Excel & buku fisik  
✅ Analisis cepat nilai dan kehadiran siswa per guru  
✅ Automasi laporan akademik ke Dinas Pendidikan  
✅ Dasar awal pengembangan **dashboard BI** di masa depan

---

## 👥 Tim Pengembang – Kelompok 9 RA

| Nama | NIM |
|------|-----|
| Dhea Amelia Putri | 122450004 |
| Marleta Cornelia Leander | 122450092 |
| Berliyana Kesuma Hati | 121450086 |
| Najla Juwairia | 122450037 |
| **Nurul Alfajar Gumel** | **122450127** |
| Tarisah | 121450141 |

---

## 📌 Teknologi yang Digunakan

- **SQL** untuk pembuatan tabel, view, dan indexing
- **Python (Pandas)** untuk proses ETL
- **Spreadsheet & CSV** sebagai sumber data awal
- **Model: Star Schema** (multidimensi, ringkas, scalable)

---

## 🏁 Kesimpulan

Dengan pendekatan multidimensi dan strategi ETL yang sistematis, proyek ini berhasil merancang solusi data warehouse sederhana yang mampu menangani permasalahan data di lingkungan sekolah dasar.

> 💬 *“Data bukan hanya sekadar angka, tapi cerminan kualitas pendidikan.”*

---

### 📎 Lisensi

Proyek ini dibuat untuk tujuan akademik dan edukasi. Silakan gunakan dan kembangkan dengan mencantumkan kredit pada kelompok penyusun.

