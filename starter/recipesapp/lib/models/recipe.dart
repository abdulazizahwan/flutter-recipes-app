import 'package:flutter/material.dart';

class Recipe {
  Recipe(
      {this.recipeName = '',
      this.recipeImage = '',
      this.recipeMaker = '',
      this.startColor,
      this.endColor});

  String recipeName;
  String recipeImage;
  String recipeMaker;
  Color? startColor;
  Color? endColor;
}

var recipes = [
  Recipe(
    recipeName: 'Vegan Apricot Tart',
    recipeImage: 'img-vegan-apricot-tart.jpeg',
    recipeMaker: 'Foodie Yuki',
    startColor: const Color(0xFFF37552),
    endColor: const Color(0xFFF58B5A),
  ),
  Recipe(
    recipeName: 'Chorizo & mozzarella gnocchi bake',
    recipeImage: 'img-gnocchi.webp',
    recipeMaker: 'Marianne Turner',
    startColor: const Color(0xFF621e14),
    endColor: const Color(0xFFd13b10),
  ),
  Recipe(
    recipeName: 'Easy butter chicken',
    recipeImage: 'img-butter-chicken.webp',
    recipeMaker: 'Jennifer Joyce',
    startColor: const Color(0xFFe18b41),
    endColor: const Color(0xFFc7c73d),
  ),
  Recipe(
    recipeName: 'Easy classic lasagne',
    recipeImage: 'img-classic-lasange.webp',
    recipeMaker: 'Angela Boggiano',
    startColor: const Color(0xFFaf781d),
    endColor: const Color(0xFFd6a651),
  ),
  Recipe(
    recipeName: 'Easy teriyaki chicken',
    recipeImage: 'img-easy-teriyaki.webp',
    recipeMaker: 'Esther Clark',
    startColor: const Color(0xFF9a9d9a),
    endColor: const Color(0xFFb9b2b5),
  ),
  Recipe(
    recipeName: 'Easy chocolate fudge cake',
    recipeImage: 'img-chocolate-fudge-cake.webp',
    recipeMaker: 'Member recipe by misskay',
    startColor: const Color(0xFF2e0f07),
    endColor: const Color(0xFF653424),
  ),
  Recipe(
    recipeName: 'One-pan spaghetti with nduja, fennel & olives',
    recipeImage: 'img-one-pan-spaghetti.webp',
    recipeMaker: 'Cassie Best',
    startColor: const Color(0xFF8b1d07),
    endColor: const Color(0xFFee882d),
  ),
  Recipe(
    recipeName: 'Easy pancakes',
    recipeImage: 'img-easy-pancake.webp',
    recipeMaker: 'Cassie Best',
    startColor: const Color(0xFFa1783c),
    endColor: const Color(0xFFf3dc37),
  ),
  Recipe(
    recipeName: 'Easy chicken fajitas',
    recipeImage: 'img-chicken-fajitas.webp',
    recipeMaker: 'Steven Morris',
    startColor: const Color(0xFF3e4824),
    endColor: const Color(0xFF5da6a6),
  ),
  Recipe(
    recipeName: 'Easy vegetable lasagne',
    recipeImage: 'img-easy-vegetable-lasagne.webp',
    recipeMaker: 'Emma Lewis',
    startColor: const Color(0xFF914322),
    endColor: const Color(0xFFbf802f),
  ),
  Recipe(
    recipeName: 'Thai fried prawn & pineapple rice',
    recipeImage: 'img-thai-fried-prawn.webp',
    recipeMaker: 'Good Food Team',
    startColor: const Color(0xFF5b8e38),
    endColor: const Color(0xFF94bf77),
  ),
];
