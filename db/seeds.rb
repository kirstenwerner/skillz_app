# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


DATA = {
  :user_keys =>
    ["first_name", "last_name", "email", "password", "age", "weight", "coach"],
  :users => [
    ["Kirsten", "Werner", "kirsten@mail.com", "password", 32, 175, true],
    ["Dave", "Werner", "dave@mail.com", "password", 58, 185, true],
    ["Nancy", "Meenen", "nancy@mail.com", "password", 50, 145, false],
    ["Sara", "Molina", "sara@mail.com", "password", 32, 180, false],
    ["Matt", "Molina", "matt@mail.com", "password", 35, 200, false],
    ["Rachel", "Tosic", "rachel@mail.com", "password", 20, 110, false]
  ],
  :skills_keys =>
    ["name", "target"],
  :skills => [
    ["squats", "hips"],
    ["barbell squat", "hips"],
    ["barbell back squat", "hips"],
    ["single leg squats", "hips"],
    ["deadlift", "hips"],
    ["push-ups", "push"],
    ["ring push-ups", "push"],
    ["ring deep push-ups", "push"],
    ["ring one arm push-ups", "push"],
    ["one arm push-ups"],
    ["dip support", "push"],
    ["dips", "push"],
    ["weighted dips", "push"],
    ["ring dips", "push"],
    ["ring deep dips"],
    ["weighted ring dips", "push"],
    ["military press", "push"],
    ["pike wall handstand", "push"],
    ["wall handstand", "push"],
    ["wall walk", "push"],
    ["free standing handstand", "push"],
    ["wall headstand push-ups", "push"],
    ["free standing headstand push-ups", "push"],
    ["free standing handstand push-ups", "push"],
    ["assisted pull-up", "pull"],
    ["pull-ups", "pull"],
    ["one arm pull-ups", "pull"],
    ["chest to bar chin-ups", "pull"],
    ["weighted pull-ups", "pull"],
    ["muscle-ups", "pull"],
    ["archer ring pull-ups", "pull"],
    ["active bar hang", "pull"],
    ["ring rows @ 30 percent", "pull"],
    ["ring rows @ horizontal", "pull"],
    ["archer ring rows", "pull"],
    ["active rope hang", "pull"],
    ["rope pull-ups", "pull"],
    ["rope climb, 20ft", "pull"],
    ["L-sit rope climb, 20ft", "pull"],
    ["front lever hold", "pull"],
    ["back lever hold", "pull"],
    ["bent over row", "pull"],
    ["sit ups", "core"],
    ["seated knees to chest", "core"],
    ["seated V-ups", "core"],
    ["hanging knees to elbows", "core"],
    ["hanging straight leg raise", "core"],
    ["stall bar straight leg raise", "core"],
    ["L-sit", "core"],
    ["rings L-sit", "core"],
    ["knee ab roll-out", "core"],
    ["full ab roll-out", "core"],
    ["ring plank", "core"],
    ["tuck L-sit", "core"],
    ["overhead squat", "core"],
    ["kettlebell swings", "work"],
    ["1 kettlebell clean", "work"],
    ["2 kettlebell thruster", "work"],
    ["barbell thruster", "work"],
    ["1 kettlebell clean & jerk", "work"],
    ["2 kettlebell clean & jerk", "work"],
    ["500 meter row", "work"],
    ["1000 meter row", "work"],
    ["2000 meter row", "work"],
    ["2 mile run", "work"],
    ["2.5 mile run", "work"],
    ["5km run", "work"],
    ["400 meter run", "speed"],
    ["800 meter run", "speed"],
    ["1 mile run", "speed"],
    ["dumbell power snatch", "speed"],
    ["barbell power clean", "speed"],
    ["barbell clean", "speed"],
    ["barbell power snatch", "speed"],
    ["barbell snatch", "speed"]
  ]
}


def main
  make_users
  make_skills
end

def make_users
  DATA[:users].each do |user|
    new_user = User.new
    user.each_with_index do |attribute, i|
      new_user.send(DATA[:user_keys][i]+"=", attribute)
    end
    new_user.save
  end
end

def make_skills
  DATA[:skills].each do |skill|
    new_skill = Skill.new
    skill.each_with_index do |attribute, i|
      new_skill.send(DATA[:skills_keys][i] + "=", attribute)
    end
    new_skill.save 
  end
end

main
