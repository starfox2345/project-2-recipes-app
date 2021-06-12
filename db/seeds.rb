Recipe.find_or_create_by(name:"Ham and Cheese", ingredient:"Ham, Cheese, Bread", calorie: 352, cook_time: 11)
Recipe.find_or_create_by(name:"Lo Mein", ingredient:"Thick noodle, soy sauce", calorie: 300, cook_time: 15)

User.find_or_create_by(name:"Steve", favorite_recipe: "Ham and Cheese")
User.find_or_create_by(name:"Marsha", favorite_recipe: "Lo Mein")

