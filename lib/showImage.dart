import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ShowImage extends StatelessWidget {
  String _url;

  ShowImage(String url) {
    this._url = url;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new PhotoView(
      imageProvider: NetworkImage(this._url),
      minScale: PhotoViewComputedScale.contained,
      maxScale: 4.0,
      backgroundDecoration: new BoxDecoration(color: Colors.white),
    ));
  }
}
