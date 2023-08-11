import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Film {
  final String judul;
  final List<String> genre;
  final String tanggalRilis;
  final double rating;
  final String gambarPath;
  final String sinopsis;

  Film({
    required this.judul,
    required this.genre,
    required this.tanggalRilis,
    required this.rating,
    required this.gambarPath,
    required this.sinopsis,
  });
}

class FilmList extends StatelessWidget {
  final List<Film> films;

  FilmList({required this.films});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Film'),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView.builder(
        itemCount: films.length,
        itemBuilder: (context, index) {
          final film = films[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(film.gambarPath, fit: BoxFit.fitWidth),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          film.judul,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('Genre: ${film.genre.join(", ")}'),
                        Text('Tanggal Rilis: ${film.tanggalRilis}'),
                        Text(
                          'Rating: ${film.rating}',
                          style: TextStyle(
                            color: Colors.amber[600],
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _tampilkanSinopsis(context, film);
                    },
                    child: Text('Sinopsis'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _tampilkanSinopsis(BuildContext context, Film film) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(film.judul),
          content: SingleChildScrollView(
            child: Text(
              '${film.sinopsis}',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Tutup'),
            ),
          ],
        );
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilmList(
        films: [
          Film(
            judul: 'The First: Slam Dunk',
            genre: ['Anime', 'Sports', 'Comedy'],
            tanggalRilis: 'February 22, 2023',
            rating: 8.4,
            gambarPath: 'assets/slamdunk.jpg',
            sinopsis: 'Tim basket SMA Shohoku dengan Takenori Akagi sebagai kapten tim adalah tim lemah yang selalu kalah di ronde pertama. Akan tetapi, dengan kedatangan Hanamichi Sakuragi, Ryota Miyagi, Kaede Rukawa, dan Hisashi Mitsui ke dalam tim, membuat mereka mampu tembus ke level nasional. Diambil dari sudut pandang Ryota Miyagi, film ini menceritakan tentang Ryota yang merasa hilang arah setelah kakaknya, Sota, meninggal akibat kecelakaan laut. Dari kehilangan yang dialaminya, Ryota tidak mampu melangkah maju. Namun, melalui rasa trauma tersebut Ryota sadar bahwa basket adalah alasannya untuk terus hidup. Ryota juga dihadapkan oleh konflik perasaan: apakah dengan bermain basket seperti sang kakak, maka ia menyakiti perasaan ibunya?',
          ),
          Film(
            judul: 'Dragon Ball Super: Super Hero',
            genre: ['Anime', 'Action', 'Super Hero'],
            tanggalRilis: 'August 26, 2023',
            rating: 7.1,
            gambarPath: 'assets/dragonball.jpg',
            sinopsis: 'ada sebuah organisasi jahat bernama Tentara Pita Merah yang pernah dikalahkan oleh Goku di masa lalu. Namun, anak dari Komandan Red, Magenta, bersama dengan Carmine, tangan kanannya, berusaha menghidupkan kembali Tentara Pita Merah. Mereka mencari Dr. Hedo, cucu dari ilmuwan yang kabur setelah kekalahan Tentara Pita Merah, untuk menciptakan Android kuat bernama Gamma 1 dan Gamma 2. Tujuan mereka adalah melawan Z-Fighters. Sementara itu, Goku dan Vegeta sedang dalam pelatihan dengan Whis, dan Piccolo sedang mendampingi Gohan dan Pan. Piccolo kemudian menyusup ke markas Tentara Pita Merah dan mengetahui rencana jahat mereka, serta rencana Dr. Hedo untuk menciptakan Cell Max, Bio-Android yang sangat berbahaya.',
          ),
          Film(
            judul: 'The Batman',
            genre: ['Super Hero', 'Mystery', 'Action'],
            tanggalRilis: 'February 22, 2023',
            rating: 7.8,
            gambarPath: 'assets/batman.jpg',
            sinopsis: 'cerita asal usul baru tentang Dark Knight, Batman. Dalam film ini, kita melihat Bruce Wayne (Batman) dalam tahap awal perjalanannya sebagai seorang pahlawan super di Kota Gotham. Dia menghadapi sejumlah penjahat ikonik, termasuk musuh bebuyutannya, The Riddler (Edward Nashton). Selain itu, kita juga akan melihat aspek detektif dari karakter Batman dan bagaimana dia membangun mitosnya sebagai pelindung kota yang gelap dan korup. Dalam perjalanannya, Bruce Wayne harus mengatasi masa lalu kelamnya dan menemukan identitasnya sebagai simbol harapan di tengah kegelapan.',
          ),
          Film(
            judul: 'Spider-Man: No Way Home',
            genre: ['Action', 'Adventure', 'Fantasy'],
            tanggalRilis: 'December 13, 2021',
            rating: 8.2,
            gambarPath: 'assets/spider.jpg',
            sinopsis: 'mengisahkan Peter Parker yang berusaha membatalkan pengungkapan identitas Spider-Man dan tanpa sengaja membuka retakan di multiverse. Bersama Spider-Men dari alam semesta lain, mereka menghadapi ancaman dari penjahat multiverse dan berusaha memperbaiki kerusakan ini untuk menyelamatkan dunia mereka.',
          ),
          Film(
            judul: 'Suzume no Tojimari',
            genre: ['Anime', 'Action', 'Adventure'],
            tanggalRilis: 'March 8, 2023',
            rating: 7.7,
            gambarPath: 'assets/suzume.jpg',
            sinopsis: 'menceritakan seorang gadis berusia 17 tahun bernama Suzume membantu seorang pemuda misterius menutup pintu dari sisi luar. Hal ini dilakukan untuk mencegah bencana di seluruh Jepang. Perjalanan Suzume dimulai di sebuah kota yang tenang di Kyushu yang terletak di Barat daya Jepang. Ia bertemu dengan seorang pria muda yang menanyakan sebuah pintu, "Apakah ada pintu di sekitar sini?". Suzume kemudian menemukan satu pintu lapuk yang berdiri tegak di tengah reruntuhan. Suzume meraih kenopnya dan membukanya. Pintu-pintu itu mulai terbuka satu demi satu di seluruh Jepang, melepaskan kehancuran pada siapa pun yang berada di dekatnya. Suzume harus menutup portal ini untuk mencegah bencana lebih lanjut. Apakah Suzume akan berhasil?',
          ),
        ],
      ),
    );
  }
}