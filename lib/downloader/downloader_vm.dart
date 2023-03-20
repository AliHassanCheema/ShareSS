import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class DownLoaderViewModel extends BaseViewModel {
  var yt = YoutubeExplode();
  TextEditingController controller = TextEditingController();
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  bool isLoading = false;

  onDownloadVideo() async {
    var yt = YoutubeExplode();
    var streamInfo = await yt.videos.streamsClient.getManifest('gSIcX5M_Img');

    print(streamInfo.video);

    // Close the YoutubeExplode's http client.
    yt.close();
  }

  onGet(videoStream, audioStream) async {}
}
