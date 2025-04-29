import 'package:flutter/material.dart';
import 'package:market_place/flowers/presentation/pages/flowers_page.dart';

class ImagesTile extends StatelessWidget {
  final String image;

  const ImagesTile({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FlowersPage(image: image),
          ),
        );
      },
      child: Hero(
        tag: image,
        child: Image.asset(
          image,
          width: 130,
        ),
      ),
    );
  }
}
