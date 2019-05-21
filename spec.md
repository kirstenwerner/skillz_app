# Specifications for the Rails Assessment

##Specs:
- [x] Using Ruby on Rails for the project

- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    ### user, workout, skill models all contain has_many relationships
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    ### workout_skill and workout_user contain belong_to relationships
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    ### user, workout, skill models all contain has_many through relationships
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    ### user <-> workout and skill <-> workout are many-to-many relationships
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    ### workout_skills has attribute "work" for the coach to prescribe the amount of skill to be done in the workout
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    ### skills has name and target validations
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    ### Skill.for_target URL: /skills/index, Workout.today URL: /
- [x] Include signup (how e.g. Devise)
    ### devise
- [x] Include login (how e.g. Devise)
    ### devise
- [x] Include logout (how e.g. Devise)
    ### devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
    ### devise/omniauth
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
    ### URL athlete/:id/workout/:id
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    ### URL coach/:coach_id/workouts/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
    ### URL coach/:coach_id/workouts/new


## Confirm:
- [x] The application is pretty DRY

- [x] Limited logic in controllers

- [x] Views use helper methods if appropriate

- [x] Views use partials if appropriate
