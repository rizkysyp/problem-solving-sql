/*Berikut adalah algoritma berserta contoh implementasi untuk membuat program kalimat terbalik

1. Buat variabel dengan nama "kalimat" untuk nantinya diberikan nilai kalimat yang ingin kita balik
2. Buat variabel dengan nama "kata" yang berisikan  built in function split, untuk memisahkan setiap kata
pada kalimat menjadi sebuah array
3. Buat variabel dengan nama "kataTerbalik" yang berisikan built in function reverse untuk membalik urutan
element pada array dari variabel "kata"
4. Buat variabel dengan nama "kalimatTerbalik" yang berisikan built in function join,untuk menggabungkan setiap
elemen pada variabel "kataTerbalik"
5. Tampilkan variabel "kalimatTerbalik" pada console.log
*/

const kalimat = "saya belajar javascript";
const kata = kalimat.split(" ");
const kataTerbalik = kata.reverse();
const kalimatTerbalik = kataTerbalik.join(" ");
console.log(kalimatTerbalik);
