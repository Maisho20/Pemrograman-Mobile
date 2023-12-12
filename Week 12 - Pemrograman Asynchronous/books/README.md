# Praktikum 1: Mengunduh Data dari Web Service (API)

**1. Buat Project Baru<br>**
Buatlah sebuah project flutter baru dengan nama **books** di folder **src week-12** repository GitHub Anda. Kemudian Tambahkan dependensi `http` dengan mengetik perintah berikut di terminal.

```flutter
   flutter pub add http
```

**2. Cek file pubspec.yaml<br>**
Jika berhasil install plugin, pastikan plugin `http` telah ada di file `pubspec` ini seperti berikut.

![Alt text](image.png)

**3. Buka file main.dart<br>**
Ketiklah kode seperti berikut ini.

> **Soal 1**<br>
> Tambahkan nama panggilan Anda pada `title app` sebagai identitas hasil pekerjaan Anda.
>
> ```dart
> import 'dart:async';
> import 'package:flutter/material.dart';
> import 'package:http/http.dart';
> import 'package:http/http.dart' as http;
>
> void main() {
>  runApp(const MyApp());
> }
>
> class MyApp extends StatelessWidget {
>  const MyApp({Key? key}) : super(key: key);
>
>  @override
>  Widget build(BuildContext context) {
>    return MaterialApp(
>      title: 'Future demo Baha', #menambahkan nama pada title
>      theme: ThemeData(
>          primarySwatch: Colors.blue,
>          visualDensity: VisualDensity.adaptivePlatformDensity),
>      home: const FuturePage(),
>    );
>  }
> }
>
> class FuturePage extends StatefulWidget {
>  const FuturePage({Key? key}) : super(key: key);
>
>  @override
>  State<FuturePage> createState() => _FuturePageState();
> }
>
> class _FuturePageState extends State<FuturePage> {
>
>  String result = '';
>  @override
>  Widget build(BuildContext context) {
>    return Scaffold(
>      appBar: AppBar(
>        title: const Text('Back from Future Demo'),
>      ),
>      body: Center(
>        child: Column(children: [
>          const Spacer(),
>          ElevatedButton(
>            child: const Text('GO!'),
>            onPressed: () {},
>          ),
>          const Spacer(),
>          Text(result),
>          const Spacer(),
>          const CircularProgressIndicator(),
>          const Spacer(),
>        ]),
>      ),
>    );
>  }
> }
> ```

**4. Tambah method getData()<br>**
Tambahkan method ini ke dalam `class_FuturePageState` yang berguna untuk mengambil data dari API Google Books.

```dart
Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const Path = '/books/v1/volumes/omd3EAAAQBAJ';
    Uri url = Uri.https(authority, Path);
    return http.get(url);
}
```

> **Soal 2**
>
> - Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut
>   ![Alt text](image-1.png)
> - Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil.
>   ![Alt text](image-2.png)

**5. Tambah kode di ElevatedButton<br>**
Tambahkan kode pada `onPressed` di `ElevatedButton` seperti berikut.

> **Soal 3**
>
> - Jelaskan maksud kode langkah 5 tersebut terkait `substring` dan `catchError!`<br> **Jawab:<br>**
>   - `.catchError((_) {...})`: pada code diatas akan dieksekusi jika terjadi kesalahan saat proses pengambilan data. Pada contoh ini, kita mengatur teks yang akan ditampilkan menjadi 'An error occurred!' apabila terjadi kesalahan.
>   - `substring()`: pada code diatas digunakan untuk membatasi panjang karakter yang ditampilkan pada layar. Pada contoh ini, substring mengambil karakter pertama sampai karakter ke-450 dari data yang telah diterima. Hal ini dilakukan agar teks yang ditampilkan pada layar tidak terlalu panjang dan mudah dibaca oleh pengguna.
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".<br> > <img src="flutter_01.png" width=50%>

---

# Praktikum 2: Menggunakan await/async untuk menghindari callbacks

**1. Buka file main.dart<br>**
Tambahkan tiga method berisi kode seperti berikut di dalam `class _FuturePageState`.

```dart
Future<int> returnOneAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 1;
}

Future<int> returnTwoAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 2;
}

Future<int> returnThreeAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 3;
}
```

**2. Tambah method count()<br>**
Lalu tambahkan lagi method ini di bawah ketiga method sebelumnya.

```dart
  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }
```

**3. Panggil count()<br>**
Lakukan comment kode sebelumnya, ubah isi kode **onPressed()** menjadi seperti berikut.

```dart
ElevatedButton(
  child: const Text('GO!'),
  onPressed: () {
    count();
  },
),
```

**4. Run<br>**
Akhirnya, **run** atau tekan **F5** jika aplikasi belum running. Maka Anda akan melihat seperti gambar berikut, hasil angka 6 akan tampil setelah delay 9 detik.<br>
<img src="flutter_02.png" width=50%>

> **Soal 4**
>
> - Jelaskan maksud kode langkah 1 dan 2 tersebut!<br> > **Jawab<br>**
>
> - **Code 1**
>
> ```dart
> Future<int> returnOneAsync() async {
>  await Future.delayed(const Duration(seconds: 3));
>  return 1;
> }
>
> Future<int> returnTwoAsync() async {
>  await Future.delayed(const Duration(seconds: 3));
>  return 2;
> }
>
> Future<int> returnThreeAsync() async {
>  await Future.delayed(const Duration(seconds: 3));
>  return 3;
> }
> ```
>
> Tiga fungsi diatas melakukan tugas yang sama, yaitu mengembalikan sebuah angka tertentu setelah beberapa saat.
>
> - Fungsi `returnOneAsync()` mengembalikan angka 1 setelah 3 detik.
> - Fungsi `returnTwoAsync()` mengembalikan angka 2 setelah 3 detik.
> - Fungsi `returnThreeAsync()` mengembalikan angka 3 setelah 3 detik.
> - **Code 2**
>
> ```dart
> Future count() async {
>  int total = 0;
>  total = await returnOneAsync();
>  total += await returnTwoAsync();
>  total += await returnThreeAsync();
>  setState(() {
>    result = total.toString();
>  });
> }
> ```
>
> Fungsi `count()` menggunakan Future dan async-await untuk menjalankan proses secara asynchronous. Fungsi ini dimulai dengan menginisialisasi variabel total ke 0.<br><br>
> Setelah itu, fungsi memanggil returnOneAsync(), returnTwoAsync(), dan returnThreeAsync() secara asynchronous menggunakan await. Hal ini berarti bahwa proses di bawah ini tidak akan memblokir proses utama, yang mengartikan bahwa aplikasi dapat melanjutkan eksekusi proses lainnya sementara proses ini berjalan.
>
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4".<br> > <img src="soal 4.gif" width=50%>

---

# Praktikum 3: Menggunakan Completer di Future

**1. Buka main.dart<br>**
Pastikan telah impor package async berikut.

```dart
import 'package:async/async.dart';
```

**2. Tambahkan variabel dan method<br>**
Tambahkan variabel late dan method di `class _FuturePageState` seperti ini.

```dart
late Completer completer;

Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
}

Future calculate() async {
  await Future.delayed(const Duration(seconds : 5));
  completer.complete(42);
}
```

**3. Ganti isi kode onPressed()<br>**
Tambahkan kode berikut pada fungsi `onPressed()`. Kode sebelumnya bisa Anda comment.

**4. Run<br>**
Terakhir, **run** atau tekan **F5** untuk melihat hasilnya jika memang belum running. Bisa juga lakukan **hot restart** jika aplikasi sudah running. Maka hasilnya akan seperti gambar berikut ini. Setelah 5 detik, maka angka 42 akan tampil.<br>
<img src="flutter_03.png" width=50%>

> **Soal 5**
>
> - Jelaskan maksud kode langkah 2 tersebut!<br>
>   Jawab:<br>
>   Fungsi `getNumber()` menggunakan Future dan async-await untuk menjalankan proses secara asynchronous. Fungsi ini dimulai dengan menginisialisasi objek Completer dengan data tipe integer.<br><br>
>   Setelah itu, fungsi memanggil fungsi `calculate()` secara asynchronous menggunakan await. Proses ini dilakukan setelah sekian waktu dengan menggunakan fungsi `Future.delayed()`. Lalu, fungsi `calculate()` menggunakan metode `complete()` dari objek Completer untuk mengembalikan nilai 42.
>
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 5".<br> <img src="soal 5.gif" width=50%>
>
> **5. Ganti method calculate()<br>**
> Gantilah isi code method `calculate()` seperti kode berikut, atau Anda dapat membuat `calculate2()`
>
> ```dart
>  Future calculate() async {
>    try {
>      await Future.delayed(const Duration(seconds: 5));
>      completer.complete(42);
>    } catch (_) {
>      completer.completeError({});
>   }
>  }
> ```

**6. Pindah ke onPressed()<br>**
Ganti menjadi kode seperti berikut.

```dart
getNumber().then((value) {
  setState(() {
    result = value.toString();
  });
}).catchError((e) {
  result = 'An error occurred';
});
```

> **Soal 6**
>
> - Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!<br> **Jawab<br>**
>
> - **Code 1**
>
> ```dart
>  Future calculate() async {
>    try {
>      await Future.delayed(const Duration(seconds: 5));
>      completer.complete(42);
>    } catch (_) {
>      completer.completeError({});
>    }
>  }
> ```
>
> - Fungsi `calculate` diatas akan mengembalikan sebuah objek `Future` yang berisi nilai `42` setelah selesai menunggu waktu yang ditentukan. Jika terjadi kesalahan saat eksekusi, maka objek `Future` tersebut akan mengalami kesalahan dan mengirimkan objek error kosong.
>
> - kode diatas akan mengeksekusi fungsi `getNumber()`, mengatur ulang komponen widget apabila promise terpenuhi, dan mengatur ulang komponen widget menjadi teks kesalahan apabila promise tergagal.
>   <br><br><br>
>
> - **Code 2**
>
> ```dart
> getNumber().then((value) {
>  setState(() {
>    result = value.toString();
>  });
>  }).catchError((e) {
>  result = 'An error occurred';
> });
> ```
>
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 6".<br> <img src="soal 6.gif" width=50%>

---

# Praktikum 4: Memanggil Future secara paralel

**1. Buka file main.dart<br>**
Tambahkan method ini ke dalam `class _FuturePageState`

```dart
void returnFG() {
  FutureGroup<int> futureGroup = FutureGroup<int>();
  futureGroup.add(returnOneAsync());
  futureGroup.add(returnTwoAsync());
  futureGroup.add(returnThreeAsync());
  futureGroup.close();
  fututreGroup.future.then((List<int> value) {
    int total = 0;
    for (var element in value) {
      total += element;
    }
    setState(() {
      result = total.toString();
    });
  });
}
```

**2. Edit onPressed()<br>**
Anda bisa hapus atau comment kode sebelumnya, kemudian panggil method dari langkah 1 tersebut.

```dart
onPressed: () {
  returnFG();
},
```

**3. Run<br>**
Anda akan melihat hasilnya dalam 3 detik berupa angka 6 lebih cepat dibandingkan praktikum sebelumnya menunggu sampai 9 detik.

> **Soal 7**
>
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan **"W12: Soal 7"**.<br> <img src="soal 7.gif" width=50%>

**4. Ganti variabel futureGroup<br>**
Anda dapat menggunakan FutureGroup dengan Future.wait seperti kode berikut.

```dart
final futures = Future.wait<int>([
  returnOneAsync(),
  returnTwoAsync(),
  returnThreeAsync(),
]);
```

> **Soal 8**
>
> - Jelaskan maksud perbedaan kode langkah 1 dan 4! <br> **Jawab<br>**
>   Perbedaan utama antara kedua kode di atas terletak pada bagaimana mereka mengelola sebuah koleksi `Future<int>`.
>   - Pada Code 1, kita menggunakan `FutureGroup<int>` yang merupakan bagian dari paket `async`. Fungsi `FutureGroup` memungkinkan kita untuk mengumpulkan banyak `Future<int>` dan menunggu semua `Future` yang terkumpul untuk selesai. Selain itu, `FutureGroup` juga mengelola alokasi memori secara otomatis dengan cara menutup grup `Future` ketika tidak lagi diperlukan.<br>Kode Code 1 menciptakan sebuah `FutureGroup` baru, menambahkan tiga `Future<int>` yang dihasilkan oleh `returnOneAsync`, `returnTwoAsync`, dan `returnThreeAsync`, lalu menunggu semua `Future` tersebut untuk selesai.<br><br>
>   - Pada Code 2, kita menggunakan `Future.wait<int>`, yang merupakan sebuah metode statis pada kelas `Future`. Metode ini menerima sebuah `List<Future<int>>` dan mengembalikan sebuah `Future<List<int>>` yang akan selesai jika semua `Future` dalam `List` telah selesai.<br>Kode Code 2 menggunakan metode `Future.wait` untuk menunggu semua tiga `Future<int>` yang dihasilkan oleh `returnOneAsync`, `returnTwoAsync`, dan `returnThreeAsync` untuk selesai.

---

# Praktikum 5: Menangani Respon Error pada Async Code

**1. Buka file main.dart<br>**
Tambahkan method ini ke dalam `class _FuturePageState`

```dart
Future returnError() async {
  await Future.delayed(const Duration(seconds: 2));
  throw Exception('Something went wrong!');
}
```

**2. ElevatedButton<br>**
Ganti dengan kode berikut

```dart
returnError().then((value) {
  setState(() {
    result = 'Success';
  });
}).catchError((onError) {
    setState(() {
      result = onError.toString();
    });
}).whenComplete(() => print('Completed'));
```

**3. Run<br>**
Lakukan run dan klik tombol **GO!** maka akan menghasilkan seperti gambar berikut.<br>
<img src="flutter_05.png" width=50%>

Pada bagian debug console akan melihat teks `Complete` seperti berikut.
<img src="image-3.png" width=85%>

> **Soal 9**
>
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan **"W12: Soal 9"**.<br> <img src="soal 9.gif" width=50%>

**4. Tambah method handleError()<br>**
Tambahkan kode ini di dalam `class _FutureStatePage`

```dart
Future handleError() async {
  try {
    await returnError();
  } catch (error) {
    setState(() {
      result = error.toString();
    });
  } finally {
    print('Completed');
  }
}
```

> **Soal 10**
>
> - Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!<br> **Hasilnya adalah** <br> <img src="soal 10.gif" width=50%>
>
> **Penjelasan**
>
> - Pada langkah 1, fungsi `returnError` hanya menunda beberapa saat lalu menghasilkan sebuah `Exception`. Namun, dalam praktiknya, fungsi seperti ini mungkin mengakses sumber daya eksternal (seperti jaringan atau pangkalan data) yang mungkin tidak tersedia atau bermasalah. Dalam hal ini, penanganan kesalahan `(try-catch)` pada fungsi `returnError` sangat penting.
> - Pada langkah 4, fungsi `handleError` mencoba untuk memanggil fungsi `returnError` yang mungkin menghasilkan kesalahan. Fungsi ini melakukan hal ini dalam blok `try`, yang berarti jika ada kesalahan, maka akan langsung masuk ke blok `catch`. Di dalam blok `catch`, kode ini menghandle kesalahan dengan mencetak kesalahan pada konsol dan memperbarui status aplikasi menggunakan `setState`.
