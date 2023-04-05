const Loop = (jumlah) => {
  for (let i = 1; i <= jumlah; i++) {
    if (i % 3 === 0 && i % 5 === 0) {
      console.log("Roots Hebat");
    } else if (i % 3 === 0) {
      console.log("Roots");
    } else if (i % 5 === 0) {
      console.log("Hebat");
    } else {
      console.log(i);
    }
  }
};

console.log(Loop(100));
