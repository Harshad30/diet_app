import 'package:fitness_diet/model/meal.dart';
import 'package:fitness_diet/ui/pages/profile.dart';
import 'package:flutter/material.dart';

class Diet extends StatefulWidget {
  const Diet({
    Key? key,
  }) : super(key: key);

  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                InkWell(
                  child: Container(
                    width: 150,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.red,
                          // decoration: BoxDecoration(
                          //   color: Colors.cyan,
                          //   image: DecorationImage(
                          //     image: AssetImage("assets/panner.jpg"),
                          //     fit: BoxFit.cover,
                          //   ),
                          // ),
                          
                        ),
                        //Image.asset("assets/panner.jpg"),
                        Text("Burger"),
                        Text("652 Kcl"),
                        Text("10 min"),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                ),
                // InkWell(
                //   child: Container(
                //     width: 150,
                //     height: 200,
                //     child: Column(
                //       children: [
                //         Image.asset("assets/panner.jpg"),
                //         Text("Burger"),
                //         Text("652 Kcl"),
                //         Text("10 min"),
                //       ],
                //     ),
                //   ),
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => ProfileScreen()));
                //   },
                // ),
                // InkWell(
                //   child: Container(
                //     width: 150,
                //     height: 200,
                //     child: Column(
                //       children: [
                //         Image.asset("assets/panner.jpg"),
                //         Text("Burger"),
                //         Text("652 Kcl"),
                //         Text("10 min"),
                //       ],
                //     ),
                //   ),
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => ProfileScreen()));
                //   },
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
