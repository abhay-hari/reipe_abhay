
import 'package:flutter/material.dart';

class Ingredientsdetails{
  late int index;
  late String details;
  Ingredientsdetails({required this.index, required this.details});


}
List<Ingredientsdetails> contents=[
  Ingredientsdetails(
      index: 1,
      details: "4 breast half, bone and skin removed (blank)s skinless, boneless chicken breast halves"),
  Ingredientsdetails(
      index: 2,
      details: "1 teaspoon all-purpose flour"),
  Ingredientsdetails(
      index: 3,
      details: "2 cups chicken stock"),
  Ingredientsdetails(
      index: 4, details: "2 tablespoons paprika"),
  Ingredientsdetails(
      index: 5,
      details: "1½ tablespoons vegetable oil"),
  Ingredientsdetails(
      index: 6,
      details: "1 cup chopped onion"),
  Ingredientsdetails(
      index: 7,
      details: "1½ tablespoons butter"),
  Ingredientsdetails(
      index: 8, details: "container sour cream"),
  Ingredientsdetails(
      index: 9,
      details: "½ teaspoon salt 1 (8 ounce) "),


];
class DirectionsDetails {
  late String step;
  late String details;
  DirectionsDetails({required this.step , required this.details});
}
List<DirectionsDetails> direction=[
  DirectionsDetails(
      step:" Step 1",
      details: "Coat the chicken with egg white:In a bowl, combine the chicken with the egg white, salt and cornstarch. Stir to coat the chicken evenly. Let sit for 15 minutes at room temperature or up to overnight in the refrigerator."),
  DirectionsDetails(
      step: 'Step 2',
      details: "Make the sweet and sour sauce: Whisk together the pineapple juice, vinegar, ketchup, salt, and brown sugar."),
  DirectionsDetails(
      step: 'Step 3',
      details: "Stir-fry the chicken over high heat: Heat a large frying pan or wok over high heat until a bead of water instantly sizzles and evaporates. Pour in 1 tablespoon of cooking oil and swirl to coat. It's important that the pan is very hot."),
  DirectionsDetails(
      step: 'Step 4',
      details: "Add the chicken and spread the pieces out in one layer. Let the chicken fry, untouched for 1 minute, until the bottoms are browned"),
  DirectionsDetails(
      step: 'Step 5',
      details: "Flip and fry the other side for 1 minute. The chicken should still be pinkish in the middle. Dish out the chicken onto a clean plate, leaving as much oil in the pan as possible."),
  DirectionsDetails(
      step: 'Step 6',
      details: "Stir-fry the bell pepper and ginger: Reduce the heat to medium and add the remaining 1 teaspoon of cooking oil. Let the oil heat up before adding the bell pepper chunks and ginger. Fry for 1 minute."),
  DirectionsDetails(
      step: 'Step 7',
      details: "Let simmer for 1 to 2 minutes, until the chicken is cooked through. Timing depends on how thick you've cut your chicken. The best way to tell if the chicken is done is to take a piece out and cut into it. If it's pink, add another minute to the cooking."),
  DirectionsDetails(
      step: 'Step 8',
      details: "Serve hot with steamed white or brown rice."),
];
class ReviewDetails {
  late String name;
  late String review;
  late dynamic color;
ReviewDetails({required this.name, required this.review, required this.color});
}
List<ReviewDetails> details = [
  ReviewDetails(
      name: 'jiggler',
      review: "This curry is great but it does need a bit of heat so definitely add the chilli's❤️😋",
      color: Colors.indigo,

  ),
  ReviewDetails(
    name: 'Aleyutta',
    review: 'the recipe calls for 400g plum tomatoes to be pureed. Would bottled passata work in its place?',
    color: Colors.blue,

  ),
  ReviewDetails(
    name: 'Jansy',
    review: 'This dish has been very delicious. Thanks to who ever put this dish together❤️      ',
    color: Colors.green,

  ),
  ReviewDetails(
    name: 'Momo',
    review: 'really good, very enjoyable👍🏻',
    color: Colors.yellow,

  ),
  ReviewDetails(
    name: 'Jan Procházka',
    review: 'I will definitely be back!',
    color: Colors.grey,

  ),
  ReviewDetails(
    name: 'Bryan C',
    review: 'The Food is Excellent.',
    color: Colors.red,

  ),
  ReviewDetails(
    name: 'Jesse T',
    review: 'Absolutely Delicious!!',
    color: Colors.cyan,

  ),
  ReviewDetails(
    name: 'Paul B',
    review: 'Amazing Food.',
    color: Colors.black,

  ),





];
