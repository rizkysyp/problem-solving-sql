function mergeSortedArrays(arr1, arr2) {
  const mergedArray = [];
  let i = 0;
  let j = 0;

  while (i < arr1.length && j < arr2.length) {
    if (arr1[i] <= arr2[j]) {
      mergedArray[mergedArray.length] = arr1[i];
      i++;
    } else {
      mergedArray[mergedArray.length] = arr2[j];
      j++;
    }
  }

  // Tambahkan elemen yang belum terpilih
  while (i < arr1.length) {
    mergedArray[mergedArray.length] = arr1[i];
    i++;
  }

  while (j < arr2.length) {
    mergedArray[mergedArray.length] = arr2[j];
    j++;
  }

  return mergedArray;
}

console.log(mergeSortedArrays([], []));

/* 
Jawaban Untuk Pertanyaan

A. jika memasukan array kosong, ya nanti hasilnya array akan kosong
B. - Apakah hasil gabungan dari kedua array sudah terurut?
   - Apakah hasil gabungan dari kedua array yang diinput sama persis?
   - Apakah tetap bisa mendapatkan hasil sorted array walau hanya variabel arr1 yang diinput?
*/
