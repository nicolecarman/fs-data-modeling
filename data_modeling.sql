CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  email VARCHAR (255),
  password VARCHAR(255)
);


CREATE TABLE recipes (
  recipes_id SERIAL PRIMARY KEY,
  user_id INTEGER,
  list_id INTEGER,
  occasion_id INTEGER,
  recipe_name VARCHAR(255),
  recipe_ingredients VARCHAR(255),
  recipe_instructions VARCHAR(255),
  private BOOLEAN
);

CREATE TABLE grocery_lists (
  list_id SERIAL PRIMARY KEY,
  user_id INTEGER,
  recipe_id INTEGER,
  list_name VARCHAR(255),
  list_ingredients VARCHAR(255)
);


CREATE TABLE occasions (
  occasion_id SERIAL PRIMARY KEY,
  user_id INTEGER,
  recipe_id INTEGER,
  occasion_name VARCHAR(255)
);



INSERT INTO users (email, password)
	VALUES ('neatemail@ilovecats.com', 'niftypassword'),
  			('coolemail@ilovecats.com', 'creativepassword'),
            ('fancyemail@ilovecats.com', 'unbreakablepassword');



INSERT INTO recipes (user_id, list_id, occasion_id, recipe_name, recipe_ingredients, recipe_instructions, private)
	VALUES (1, NULL, NULL, 'tasty recipe', 'pasta, sauce', 'thorough instructions here', FALSE),
  			(2, NULL, NULL, 'zesty recipe', 'chicken, cajun spices', 'thorough instructions here', FALSE),
            (3, NULL, NULL, 'fishy recipe', 'salt, tuna', 'thorough instructions here', TRUE);



INSERT INTO grocery_lists (user_id, recipe_id, list_name, list_ingredients)
	VALUES (1, NULL, 'nifty list', 'mayo, lettuce, ground beef'),
  			(2, NULL, 'helpful list', 'ground beef, taco seasoning'),
            (3, NULL, 'thorough list', 'tuna, relish', 'salt, tuna');



INSERT INTO occasions (user_id, recipe_id, occasion_name)
	VALUES (1, NULL, 'John birthday'),
  			(2, NULL, 'Thanksgiving'),
            (3, NULL, 'Sam baby shower');