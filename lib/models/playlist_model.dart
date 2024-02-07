import 'package:music_player/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUr;

  Playlist({required this.title, required this.songs, required this.imageUr});

  static List<Playlist> playlists = [
    Playlist(
      title: 'Hiphop R&B Mix',
      songs: Song.songs,
      imageUr:
          'https://images.unsplash.com/photo-1707093963143-5c5e48186bab?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8',
    ),
    Playlist(
      title: 'Hiphop R&B Mix',
      songs: Song.songs,
      imageUr:
          'https://images.unsplash.com/photo-1707093963143-5c5e48186bab?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8',
    ),
  ];
}
