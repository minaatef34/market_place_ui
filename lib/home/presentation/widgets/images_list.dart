import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:market_place/home/presentation/widgets/images_tile.dart';

class ImagesList extends StatefulWidget {
  final int startIndex;
  final int duration;
  const ImagesList({super.key, required this.startIndex, this.duration = 0});

  @override
  State<ImagesList> createState() => _ImagesListState();
}

class _ImagesListState extends State<ImagesList> {
  late ScrollController scrollController;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener((){
      if(scrollController.position.atEdge){
        autoScroll();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_){
      autoScroll();
    });
  }
  autoScroll(){
    final currentScrollPosition = scrollController.offset;
    final scrollEndPosition = scrollController.position.maxScrollExtent;
    scheduleMicrotask((){scrollController.animateTo(
      currentScrollPosition == scrollEndPosition ? 0 : scrollEndPosition,
    duration: Duration(seconds: widget.duration), curve: Curves.linear);});
  }
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.95 * pi,
      child: SizedBox(
        height: 130,
        child: ListView.builder(
          controller: scrollController,
          itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context , int index){
          return ImagesTile(image: "assets/images/${widget.startIndex + index}.jpg",);
        }),
      ),
    );
  }
}
