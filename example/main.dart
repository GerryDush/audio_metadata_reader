import 'dart:io';
import 'dart:typed_data';

import 'package:audio_metadata_reader/audio_metadata_reader.dart';
import 'package:audio_metadata_reader/src/parser.dart';
import 'package:webdav_client/webdav_client.dart' as webdav;

final client = webdav.newClient(
  "https://xxx.xxx.xx/dav",
  user: 'xxx',
  password: 'xxxxxx',
);

void main() async {
  final dirs = await client.readDir('/public/Music');
  int i = 0 ;
  int j = 0 ;
  dirs.forEach((v) {
    readMetadataWebDav(client, v.path!, getImage: true).then((res) {
        // print(res);
        i++;
        print(i);
      }).catchError((v){
        print(v);
      });
      j++;
      print('j: $j');
  });
}
