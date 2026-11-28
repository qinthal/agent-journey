#SOAL: jumlah BARIS dan KOLOM, NAMA KOLOM, 5 BARIS PERTAMA
import pandas as pd
store = pd.read_csv('data/superstore.csv', encoding='latin-1')

print("Jumlah Baris:", store.shape[0])
print("Jumlah Kolom:", store.shape[1])
print()
print("nama kolom:", list(store.columns))
print()
print("5 baris pertama:")
print(store.head(5))

#Q1: TOTAL SALES dan TOTAL PROFIT seluruh data
total_sales = store['Sales'].sum()
total_profit = store['Profit'].sum()
print()
print("Total Sales:", round(total_sales, 2))
print("Total Profit:", round(total_profit, 2)) 
print()

#Q2: MARGIN PROFIT KESELURUHAN
margin = (total_profit * 100.00 / total_sales)
print("Margin Profit:", round(margin, 2), '%')
