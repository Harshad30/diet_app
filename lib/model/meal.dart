class Meal {
  final String mealTime, name, imagePath, kiloCalories, timeTaken;

  Meal({
    required this.mealTime,
    required this.name,
    required this.imagePath,
    required this.kiloCalories,
    required this.timeTaken,
  });
}

final meals = [
  Meal(
    mealTime: "breakfast",
    name: "Sprouts",
    kiloCalories: "271",
    timeTaken: "10",
    imagePath: "assets/sprouts.jpg",
  ),
  Meal(
    mealTime: "Lunch",
    name: "Healty Panner",
    kiloCalories: "615",
    timeTaken: "15",
    imagePath: "assets/panner.jpg",
  ),
  Meal(
    mealTime: "Dinner",
    name: "Low Carb Rice",
    kiloCalories: "450",
    timeTaken: "17",
    imagePath: "assets/rice.jpg",
  ),
];
