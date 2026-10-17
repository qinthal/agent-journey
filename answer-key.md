# Answer Key - Superstore

Sumber data: Kaggle, dataset "Superstore" (file tidak diunggah ke repo).
Aturan: tahun dihitung dari Order Date; Discount berupa desimal (0,2 = 20%)

| No | Pertanyaan | Jawaban | Definisi / cara |
|---|---|---|---|
| 1 | Total Sales dan total Profit seluruh data | Total Sales: $2.297.200,86; Total Profit: $286.397,02. | pivot: masukan sales sum dan profit sum ke value |
| 2 | Profit margin keseluruhan (%) | 12,47% | total profit / total sales, ubah number format ke % |
| 3 | Region dengan total Sales tertinggi | West, dengan $725.457,82. | pivot: masukan region ke row, sum sales ke value, lalu sort dari tertinggi |
| 4 | Category dengan profit margin terendah | Furniture, dengan margin 2,49%. | pivot: masukkan category ke rows, sales sum dan profit sum ke value, lalu total profit/total sales per kategori |
| 5 | Tiga Sub-Category dengan total Profit terendah | Tables: –$17.725,48; Bookcases: –$3.472,56; Supplies: –$1.189,10 | pivot: masukan sub-category ke row, sum of profit ke value, sort dari ter rendah, ambil 3 ter rendah |
| 6 | Total Sales per tahun + tahun tertinggi | 2017: $733.215,26(tertinggi); 2016: $609.205,59; 2015: $470.532,50; 2014: $484.247,49. | pivot: masukkan tahun ke rows, sales sum ke value, sort dari tertinggi |
| 7 | Bulan dengan Sales tertinggi di tahun terakhir | November, sebesar $118.447,82. | Buat kolom Tahun = YEAR(Order Date) dan Bulan = MONTH(Order Date). Pivot: Tahun + Bulan di Rows, Sum of Sales di Values; ambil bulan dengan Sales terbesar di tahun terakhir (tahun terbesar di Order Date). |
| 8 | Jumlah order unik | 5.009 order. | COUNTA + UNIQUE, dari kolom ORDER ID |
| 9 | AOV | $458,61 per order. | total sales / order id unik |
| 10 | Rata-rata lama kirim per Ship Mode (hari) | Same Day: 0,04; First Class: 2,18; Second Class: 3,24; Standard Class: 5,01 | buat kolom Lama Kirim =(Ship Date)-(Order Date). pivot: Ship Mode di rows, AVERAGE Lama Kirim di value. |
| 11 | Customer dengan total Sales tertinggi | Sean Miller (SM-20320), dengan total $25.043,05. | pivot: masukkan customer id dan name ke rows, sum of sales ke value, urutkan dari terbesar, lalu jangan tampilkan subtotal |
| 12 | Rata-rata Profit per baris: Discount > 20% vs Discount = 0 | discount>20%: -$97,18; tanpa diskon: $66,90. | AVERAGEIFS kolom Profit dengan syarat Discount > 0,2 (20%); lalu AVERAGEIFS dengan syarat Discount = 0 |

Tes Claude (17 Okt): 12/12 — kesalahan utama: tidak ada
