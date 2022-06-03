import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class FullImageView extends StatelessWidget {
  var url;

  FullImageView({this.url});

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'full',
        child: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
        ));
  }
}