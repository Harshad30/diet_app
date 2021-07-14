import 'dart:ui';
import 'package:fitness_diet/model/lunchmod.dart';

import 'package:fitness_diet/seg/lunch.dart';
import 'package:flutter/material.dart';

class MealDetailScreen1 extends StatelessWidget {
  const MealDetailScreen1({Key? key, required this.lh, }) : super(key: key);

  
  final Lh lh;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff192061),
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xFF192041),
            expandedHeight: 350,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40))),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(40)),
                child: Image.asset(
                  lh.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    lh.mealTime.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 29,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    lh.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "${lh.kiloCalories} Kcal",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 30),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "INGRIDENTS :-",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 29,
                      color: const Color(0xFF40D876),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    for (int i = 0; i < lh.ingridents.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 4,
                          left: 20,
                        ),
                        child: Text(
                          lh.ingridents[i],
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "PREPARATION :-",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 29,
                      color: const Color(0xFF40D876),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 16, bottom: 32, left: 20, top: 10),
                  child: Text(
                    lh.preparation,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}