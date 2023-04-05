const jumlah = 10;

let a = 0,
  b = 1,
  c,
  hasil = [a, b];

for (let i = 2; i < jumlah; i++) {
  c = a + b;
  a = b;
  b = c;
  hasil.push(c);
}

console.log(hasil);
