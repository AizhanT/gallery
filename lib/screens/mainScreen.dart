import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/secondScreen.dart';
import '../api_request.dart';
import '../model.dart';

class PhotosList extends StatelessWidget {
  PhotosList({Key? key, required this.photos}) : super(key: key);

  final List<LoadData> photos;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 30,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 6,
        crossAxisCount: 2,
        crossAxisSpacing: 6,
      ),
      itemBuilder: (context, i) {
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    FullImageView(url: urlData[i]['urls']['full']),
              )),
          child: Hero(
              tag: 'full',
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(urlData[i]['urls']['full']))),
              )),
        );
      },
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
