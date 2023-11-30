-- 1.Deskripsi struktur tabel products
CREATE TABLE products (
id VARCHAR(6) NOT NULL,
nama_produk VARCHAR(50) NOT NULL,
harga VARCHAR(10) NOT NULL,
stok VARCHAR(7) NOT NULL);
DESCRIBE products;

-- 2.Perintah menambahkan produk
INSERT INTO products (id,nama_produk,harga,stok)
VALUES ('P001','Laptop Asus','12000000','50'),
('P002','TV Polytron','11000000','57'),
('P003','Laptop Toshiba','15000000','66'),
('P004','AC LG','12600000','71'),
('P005','TV Samsung','16000000','29'),
('P006','Kulkas Sharp','1700000','8');

-- 3.Perintah mendapatkan daftar produk yang memiliki harga di atas rata-rata 
SELECT AVG(harga) FROM products;
SELECT * FROM products where harga > 13320000;

-- 4.Pernyataan sql untuk mengubah stok produk dengan id 'P003' menjadi 75
UPDATE products
SET stok = '75'
WHERE id = 'P003';

-- 5.Hitung jumlah produk di setiap kategori
SELECT SUM(stok) AS total_stok FROM products;

-- 6.Tampilkan produk yang memiliki stok di atas 20 dan harga di bawah 15000000
SELECT * FROM products where stok > 20 AND harga < 15000000 ;

-- 7.Cara mengurutkan harga produk dari yang termurah hingga termahal
SELECT * FROM products ORDER BY harga ASC ;

-- 8.Jika menjalankan DELETE FROM products WHERE stok < 10; beserta penjelasan
DELETE FROM products WHERE stok < 10; 
 -- \\ jika di jalankan maka produk yang mempunyai stok kurang dari 10 akan terhapus. //

-- 9.Kuery hitung total nilai (harga * quantity)
SELECT (harga * stok) AS total_stok FROM products;

-- 10.Tambahkan kolom discount
ALTER TABLE products
ADD COLUMN discount DECIMAL(5,2);

