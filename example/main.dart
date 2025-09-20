import 'dart:io';
import 'dart:typed_data';

import 'package:audio_metadata_reader/audio_metadata_reader.dart';

void main() {
  final track = File("9357CBDA-A004-4836-82B1-ABF03ADBC656.flac");

  // Returns a condensate
  // Getting the image of a track can be heavy and slow the reading
  AudioMetadata metadata = readMetadata(track, getImage: true);

  // print(metadata);

}


