Recipe.find_or_create_by(name:"Ham and Cheese", calories: 352, cook_time: 11)
Recipe.find_or_create_by(name:"Lo Mein", calories: 300, cook_time: 15)

User.find_or_create_by(name:"Steve", favorite_recipe: "Ham and Cheese")
User.find_or_create_by(name:"Marsha", favorite_recipe: "Lo Mein")

Ingredient.find_or_create_by(name:"Bread, mayonnaise, mustard, honey, Swiss Cheese, Sliced Pickles")
Ingredient.find_or_create_by(name:"Egg noodles, Olive Oil, minced garlic, sliced cremini mushrooms, Julienned Red Bell Pepper, Julienned carrot, snow peas, baby spinach, soy sauce, sugar, sesame oil, ground ginger, sriracha")
