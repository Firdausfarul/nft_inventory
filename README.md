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

