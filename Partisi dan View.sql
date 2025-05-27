-- PARTISI 
PARTITION BY LIST (Status_Kelulusan) ( 
PARTITION p_lulus VALUES IN ('Lulus'), 
PARTITION p_tidak_lulus VALUES IN ('Tidak Lulus') 
); -- VIEW 
CREATE VIEW View_Kinerja_Siswa_Kelulusan AS 
SELECT 
Status_Kelulusan, 
AVG(Nilai_Ujian) AS RataRata_Ujian, 
AVG(Nilai_Tugas) AS RataRata_Tugas, 
AVG(Nilai_Rata_Rata) AS RataRata_Akhir, 
COUNT(*) AS Jumlah_Nilai 
FROM Fakta_Nilai_Siswa 
GROUP BY Status_Kelulusan 
ORDER BY Status_Kelulusan;