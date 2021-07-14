import 'package:fitness_diet/model/breakfastmod.dart';
import 'package:fitness_diet/model/meal.dart';
import 'package:fitness_diet/ui/pages/mealdetailscreen.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl_standalone.dart';

class BreakFast extends StatelessWidget {
  const BreakFast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final today = DateTime.now();
    return Scaffold(
      backgroundColor: const Color(0xff192060),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xff192041),
          iconSize: 45,
          selectedIconTheme: IconThemeData(color: const Color(0xFFE9E9E9)),
          unselectedIconTheme: IconThemeData(color: Colors.white54),
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Icon(Icons.home),
                ),
                // ignore: deprecated_member_use
                title:
                    Text("Home", style: const TextStyle(color: Colors.white))),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Icon(Icons.search),
                ),
                // ignore: deprecated_member_use
                title: Text("Search",
                    style: const TextStyle(color: Colors.white))),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Icon(Icons.person),
                ),
                // ignore: deprecated_member_use
                title: Text("Profile",
                    style: const TextStyle(color: Colors.white))),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(45)),
              child: Container(
                color: const Color(0xff192041),
                padding: const EdgeInsets.only(
                  top: 55,
                  left: 32,
                  right: 16,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMM").format(today)}",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFE9E9E9),
                          fontSize: 25,
                        ),
                      ),
                      subtitle: Row(children: [
                        Text(
                          "Total Calories ",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          " For BreakFast",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: const Color(0xFF40D876),
                          ),
                        ),
                      ]),
                      // trailing:
                      //     ClipOval(child: Image.asset("assets/ppost.png")),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        _RadialProgress(
                          width: width * 0.4,
                          height: width * 0.4,
                          progress: 0.7,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _ingredientProgress(
                              ingredient: "protein",
                              leftAmount: 72,
                              progres: 0.3,
                              progressColor: Colors.green,
                              width: width * 0.36,
                            ),
                            _ingredientProgress(
                              ingredient: "Carbs",
                              leftAmount: 252,
                              progres: 0.2,
                              progressColor: Colors.red,
                              width: width * 0.36,
                            ),
                            _ingredientProgress(
                              ingredient: "protein",
                              leftAmount: 61,
                              progres: 0.1,
                              progressColor: Colors.yellow,
                              width: width * 0.36,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: height * 0.37,
              right: 0,
              left: 0,
            ),
            color: const Color(0xff192060),
            height: height * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                    left: 32,
                    right: 16,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "BreakFast ",
                        style: const TextStyle(
                          color: const Color(0xFF40D876),
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Option ",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 32,
                      ),
                      for (int i = 0; i < meals.length; i++)
                        _MEalCard(
                          bf: bfs[i],
                        )
                    ],
                  ),
                )),
                SizedBox(
                  height: 40,
                ),
                // Expanded(
                //   child: Container(
                //     margin: const EdgeInsets.only(
                //       bottom: 10,
                //       left: 32,
                //       right: 32,
                //     ),
                //     decoration: BoxDecoration(
                //         borderRadius:
                //             BorderRadiusDirectional.all(Radius.circular(30)),
                //         gradient: LinearGradient(
                //           begin: Alignment.topCenter,
                //           end: Alignment.bottomCenter,
                //           colors: [
                //             Colors.deepPurpleAccent,
                //             Colors.deepPurpleAccent.shade700,
                //           ],
                //         )),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ingredientProgress extends StatelessWidget {
  const _ingredientProgress(
      {Key? key,
      required this.ingredient,
      required this.leftAmount,
      required this.progres,
      required this.progressColor,
      required this.width})
      : super(key: key);

  final String ingredient;
  final int leftAmount;
  final double progres, width;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ingredient.toUpperCase(),
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Container(
                  height: 10,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.all(
                      (Radius.circular(5)),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                  width: width * progres,
                  decoration: BoxDecoration(
                    color: progressColor,
                    borderRadius: BorderRadius.all(
                      (Radius.circular(5)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "${leftAmount}g left",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _RadialProgress extends StatelessWidget {
  const _RadialProgress(
      {Key? key,
      required this.height,
      required this.width,
      required this.progress})
      : super(key: key);

  final double height, width, progress;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(progress: 0.7),
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "1731",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: "\n",
                ),
                TextSpan(
                  text: "Kcal",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                TextSpan(text: "\n"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RadialPainter extends CustomPainter {
  final double progress;

  _RadialPainter({required this.progress});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double relativeProgress = 360 * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: size.width / 2),
      math.radians(-90),
      math.radians(-relativeProgress),
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _MEalCard extends StatelessWidget {
  const _MEalCard({
    Key? key,
    required this.bf,
  }) : super(key: key);

  final Bf bf;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 10,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MealDetailScreen(bf: bf)));
        },
        child: Material(
          color: const Color(0xff192041),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                //images
                fit: FlexFit.tight,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Image.asset(
                    bf.imagePath,
                    width: 190,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Flexible(
                //All texts
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        bf.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          color: const Color(0xFF40D876),
                        ),
                      ),
                      Text(
                        "${bf.kiloCalories} kcal",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 25,
                            color: Colors.white70,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "${bf.timeTaken} min",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
