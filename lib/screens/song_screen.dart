import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/models/song_model.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({super.key});

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();
    Song song = Song.songs[0];

    @override
    initState() {
      super.initState();
      audioPlayer.setAudioSource(ConcatenatingAudioSource(
          children: [AudioSource.uri(Uri.parse('asset:///${song.url}'))]));
    }

    @override
    void dispose() {
      audioPlayer.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            song.coverUrl,
            fit: BoxFit.cover,
          ),
          const BackgroundFilter(),
        ],
      ),
    );
  }
}

class BackgroundFilter extends StatelessWidget {
  const BackgroundFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.0),
            ],
            stops: const [
              0.0,
              0.4,
              0.6
            ]).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.deepPurple.shade200, Colors.deepPurple.shade800],
      ))),
    );
  }
}
