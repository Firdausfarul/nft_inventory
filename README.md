# Tugas 7

## Stateless Widget vs Stateful Widget

- **Stateless Widget:**
  - Tidak punya state.
  - Ideal untuk elemen UI yang tidak berubah berdasarkan interaksi pengguna.
  - Di-rebuild setiap kali ada perubahan di parent widget-nya.
  - Contoh: teks statis, ikon.

- **Stateful Widget:**
  - Punya/bisa menyimpan state.
  - Bisa merespons perubahan data atau interaksi pengguna.
  - Biasanya untuk widget yang interaktif
  - Punya `State` terpisah, memungkinkan state tidak berubah ketika di-rebuild.
  - Contoh: form input, slider, checkbox.

## Widget yang Digunakan dan Fungsinya

- **MaterialApp:** 
  - Widget root yang menyediakan framework material design.

- **Scaffold:** 
  - Menyediakan struktur dasar layout seperti appBar, body, floatingActionButton.

- **AppBar:** 
  - Menampilkan bar di bagian atas layar, biasanya berisi judul.

- **ElevatedButton.icon:** 
  - Tombol yang menonjol dengan ikon dan teks. 
  - Digunakan untuk membuat interaksi pengguna.

- **Icon:** 
  - Menampilkan ikon dari material design atau ikon kustom.

- **Text:** 
  - Menampilkan teks.

- **SnackBar:** 
  - Menampilkan pesan singkat di bagian bawah layar.

## Implementasi Checklist Secara Step-by-Step

1. menjalankan `flutter create` untuk membuat proyek baru.

2. Membuat `menu.dart` dan mengimpornya ke `main.dart`, pada `main` kita sisakan fungsi `main` dan class `MyApp` saja.

3. Membuat class baru `MenuPage` yang merupakan `StatelessWidget` dan meng-override fungsi `build`.

4. Menambahkan fungsi `showSnackBar` untuk menampilkan `SnackBar` ketika tombol ditekan.

5. Menuyusun scaffold pada `build` sesuai keinginan (Menambahkan appbar, menambahkan button, dkk)

6. Mengkustomisasi tiap widget (Mengubah warna tombol dan appbar), membuat `iconButton` untuk menampilkan `SnackBar` ketika diklik.
---

# Tugas 8

## Perbedaan `Navigator.push()` dan `Navigator.pushReplacement()`

1. **`Navigator.push()`:**
   - Menambahkan `Route` ke stack navigator.
   - Digunakan ketika ingin menavigasi ke halaman baru tanpa menghapus halaman saat ini dari stack. Misalnya, dari Home ke Product Form.
   - Ketika tombol back ditekan akan kembali ke halaman sebelumnya atau akan keluar aplikasi jika stack navigator kosong. Pada contoh di atas ketika kita di page Product Form dan menekan tombol back, kita akan kembali ke page Home.

2. **`Navigator.pushReplacement()`:**
   - Replace/Mengganti `Route` saat ini dengan yang baru di stack navigator.
   - Digunakan saat ingin mengganti halaman saat ini dengan halaman baru dan gak butuh opsi untuk kembali ke halaman sebelumnya. Misalnya, pas Login dan redirect ke Dashboard, kita tidak ingin kembali ke page Login ketika tombol back ditekan.
   - Ketika tombol back ditekan tidak akan kembali ke page Sebelumnya, melainkan akan kembali ke page sebelumnya yang ada di stack navigator atau keluar aplikasi jika stack kosong.

## Layout Widgets pada Flutter

1. **`Column` dan `Row`**
   - `Column` untuk menyusun widget secara vertikal, 
   - `Row` untuk menyusun widget secara horizontal.

2. **`Stack`**
   - `Stack` untuk meletakkan widget di atas widget lain.
   - Berguna untuk overlap widgets, seperti menempatkan teks di atas gambar.

3. **`Container`**
   - `Container` Menyediakan box model dengan padding, margin, dan dekorasi.
   - Untuk membuat tampilan yang membutuhkan dimensi atau dekorasi tertentu.

4. **`ListView`**
   - `Listview ` untuk Menampilkan daftar scrollable items.
   - Berguna untuk menampilkan daftar yang panjang.

5. **`GridView`**
   - `GridView` Menampilkan item dalam grid scrollable.
   - Efektif untuk menampilkan data dalam format grid, seperti galeri foto.

## Elemen Input pada Form

1. **`TextField`**
   - Untuk input teks, seperti nama, deskripsi. Juga bisa digunakan untuk input angka dengan nge-parse teks menjadi integer.

Pemilihan elemen didasarkan sesuai dengan yang digunakan saat tutorial.

## Penerapan Clean Architecture pada Aplikasi Flutter

Pada Aplikasi ini Flutter Clean Architecture yang digunakan hanyalah Memisah komponen-komponen aplikasi ke folder yang berbeda/refactor (Screen, Widget, dkk) seperti di tutorial.

## Implementasi Checklist Secara Step-by-Step

-[x] Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.

    Sudah, kurang lebih sama dengan tutorial, kita membuat page baru dan pada page baru itu kita menambahkan form TextArea untuk menambahkan item baru.

- [x] Memiliki sebuah tombol Save.
    
        Sudah, pada page tambah item baru kita menambahkan tombol save. dengan ElevatedButton

- [x] Setiap elemen input tidak boleh kosong. Setiap elemen input harus berisi data dengan tipe data atribut modelnya.


        Sudah, pada page tambah item baru kita menambahkan validator pada form input(tidak boleh kosong/input harus angka untuk yang IntegerField di model).

-[x] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.
 
        Sudah, pada shop card pada onTap / Ketika diklik kita tambahkan kode jika tombol yang diklik adalah tombol tambah item maka akan Navigation.push ke page tambah item baru.


- [x] Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.
 
        Sudah, pada drawer kita menambahkan 2 opsi yaitu Halaman Utama dan Tambah Item dengan List Tile.


- [x] Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.
     
            Sudah, onTap pada ListTile opsi halaman utama diisi dengan navigate push ke home.
 
Ketika memiih opsi (Tambah Item), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.

     
            Sudah, onTap pada ListTile opsi  Tambah item diisi dengan navigate push ke form tambah item baru.
  
- [x] Membuat sebuah halaman baru, yaitu halaman daftar item yang sudah dibuat dengan isi halamannya adalah setiap data produk yang sudah pernah dibuat.

    Sudah, halaman mirip dengan Homepage tapi card pada halaman ini kita menampilkan semua item yang sudah dibuat. Jadi ketika tombol save di form ditekan , data akan disimpan di variable list global dan ditampilkan di halaman ini.

- [x] Mengarahkan pengguna ke halaman tersebut jika menekan tombol Lihat Produk pada halaman utama atau drawer.

    Sudah, pada shop card pada onTap / Ketika diklik kita tambahkan kode jika tombol yang diklik adalah tombol lihat produk maka akan Navigation.push ke page lihat produk.