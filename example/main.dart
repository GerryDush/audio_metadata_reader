import 'dart:io';
import 'dart:typed_data';

import 'package:audio_metadata_reader/audio_metadata_reader.dart';

void main() {
  final track = File("Free Loop - Daniel Powter.mp3");

  // Returns a condensate
  // Getting the image of a track can be heavy and slow the reading
  AudioMetadata metadata = readMetadata(track, getImage: true);

  print(metadata);

  // etc...

  // If you need ALL the metadata of a file (eg. MP3 has bpm)
  // Later you need to check the type of the metadata with a switch
  // ignore: unused_local_variable
  final allMetadata = readAllMetadata(track, getImage: true);

  print("Now we are going to rewrite the metadata");

  // Use the switch if you want to update metadata for a specific format
  updateMetadata(
    track,
    (metadata) {
      metadata.setLyrics("I'm singing fuck");
    },
  );

  print('====================');
  metadata = readMetadata(track, getImage: true);

  print(metadata);
  print('lyric: ${metadata.lyrics}');
}


