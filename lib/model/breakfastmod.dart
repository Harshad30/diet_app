class Bf {
  final String mealTime, name, imagePath, kiloCalories, timeTaken;
  final String preparation;
  final List ingridents;

  Bf({
    required this.preparation,
    required this.ingridents,
    required this.mealTime,
    required this.name,
    required this.imagePath,
    required this.kiloCalories,
    required this.timeTaken,
  });
}

final bfs = [
  Bf(
      mealTime: "breakfast",
      name: "Sprouts",
      kiloCalories: "271",
      timeTaken: "10",
      imagePath: "assets/sprouts.jpg",
      ingridents: [
        "• 2 cups of sprouted moong beans",
        "• 1 small or medium sized onion, finely chopped,"
            "• 1 medium sized tomato, finely chopped",
        "• 1 green chilli (optional), finely chopped",
        "• 1/4 tsp red chilli powder",
        "• 1/2 tsp chaat masala (optional)",
        "• 1 tsp lemon juice or as required",
        "• 1 boiled potato or sweet potato (optional)",
        "• A few coriander leaves and lemon slices for garnishing",
        "• Rock salt or black salt as required],",
      ],
      preparation: ''' Rinse the sprouted moong beans in water.
 You can either steam them or boil them till they are completely cooked.
 Strain the cooked sprouts.
 Mix all the ingredients except the salt and lemon juice in a bowl.
 Season with salt and add a few drops of lemon juice. Garnish with lemon slices and coriander leaves.
 Serve immediately.'''),
  Bf(
    mealTime: "Lunch",
    name: "Healty Panner",
    kiloCalories: "615",
    timeTaken: "15",
    imagePath: "assets/panner.jpg",
    ingridents: [
      "250 gm paneer",
      "1 finely chopped onion",
      "1/2 teaspoon garlic paste",
      "1/4 teaspoon turmeric",
      "1 tablespoon ghee",
      "1/2 teaspoon red chilli powder",
      "2 chopped tomato",
      "1/2 teaspoon ginger paste",
      "1 tablespoon finely chopped coriander leaves",
      "1/4 teaspoon garam masala powder",
      "salt as required",
      "1/2 teaspoon cumin powder",
    ],
    preparation: '''Step 1 Saute ginger-garlic paste, onion & tomatoes
Heat oil in a pan. Add the ginger-garlic paste and stir-fry for 30 seconds. Add the onions and saute until golden. Add tomatoes and cook, stirring from time to time, for 2 minutes.

Step 2 Add spices & peas
Add turmeric powder, cumin powder, red chilli powder, garam masala powder, salt and mix well.

Step 3 Reduce the flame & add paneer cubes
Add the paneer cubes. Reduce flame and stir well. Simmer or 2 to 3 minutes. Add coriander leaves and remove them from the flame.

Step 4 Remove from flame & keep the lid covered for 10 minutes
Cover the pan with a lid and keep aside for 10 minutes. Stir well. Serve hot!''',
  ),
  Bf(
      mealTime: "Dinner",
      name: "Low Carb Rice",
      kiloCalories: "450",
      timeTaken: "17",
      imagePath: "assets/rice.jpg",
      ingridents: [
        "Rinse the sprouted moong beans in water.",
        "You can either steam them or boil them till they are completely cooked.",
        "Strain the cooked sprouts.",
        "Mix all the ingredients except the salt and lemon juice in a bowl.",
        "Season with salt and add a few drops of lemon juice. Garnish with lemon slices and coriander leaves.",
        " Serve immediately.",
      ],
      preparation: '''Rinse the sprouted moong beans in water.
• You can either steam them or boil them till they are completely cooked.
• Strain the cooked sprouts.
• Mix all the ingredients except the salt and lemon juice in a bowl.
• Season with salt and add a few drops of lemon juice. Garnish with lemon slices and coriander leaves.
• Serve immediately.,'''),
];
