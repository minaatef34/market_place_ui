import 'package:flutter/material.dart';
import 'package:market_place/shared/fade_animation.dart';
import 'package:market_place/flowers/presentation/widgets/blur_container.dart';

class FlowersPage extends StatelessWidget {
  const FlowersPage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(
                tag: image,
                child: Image.asset(image),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: FadeAnimation(
                  intervalEnd: 0.1,
                  child: BlurContainer(
                    child: Container(
                      width: 140,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Digital Flowers Art", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12
                      ),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: FadeAnimation(
              intervalStart: 0.3,
                child: Text("Flower #271", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: FadeAnimation(
              intervalStart: 0.35,
                child: Text("Owned by Gennady", style: TextStyle(color: Colors.grey),)),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: FadeAnimation(
              intervalStart: 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("3d 5h 23m", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 5,),
                      Text("Remaining Time", style: TextStyle(
                       color: Colors.grey
                      ),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("10.1 ETH", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 5,),
                      Text("Highest Bid", style: TextStyle(
                       color: Colors.grey
                      ),)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          FadeAnimation(
            intervalStart: 0.6,
            child: Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: FadeAnimation(
                intervalStart: 0.8,
                  child: Text("Place Bid", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),

            ),
          ),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}
