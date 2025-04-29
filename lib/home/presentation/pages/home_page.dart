import 'package:flutter/material.dart';
import 'package:market_place/home/presentation/widgets/images_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: ShaderMask(
              blendMode: BlendMode.dstOut,
              shaderCallback: (rect){
                return LinearGradient(
                  begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:[
                  Colors.transparent,
                  Colors.transparent,
                  Colors.grey.shade100,
                  Colors.grey.shade200,
                  Colors.grey,
                ],
                stops: [0, 0.62, 0.70, 0.85, 1]).createShader(rect);
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    ImagesList(
                      startIndex: 1,
                      duration: 25,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImagesList(
                      startIndex: 5,
                      duration: 45,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImagesList(
                      startIndex: 11,
                      duration: 65,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImagesList(
                      startIndex: 13,
                      duration: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 60,
              left: 24,
              right: 24,
              child: Container(
                height: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Art with Flowers",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text("Check out this raffle for you guys only! New flowers minted show some love",
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.2
                    ),),
                    Spacer(),
                    Container(
                      width: 140,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.yellow
                      ),
                      child: Text("Discover",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
