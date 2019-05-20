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
    ["name", "description", "target", "demo"],
  :skills => [
    ["squats", "Establish a squat stance with your feet slightly wider than your hips and turned out 5 – 10 degrees. Take a breath in and squeeze your abdomen to brace your spine in a neutral position. Pull your shoulders back and down to stabilize your upper back, reach your arms forward for balance. Push your hips back, keeping shins vertical as far down as possible. Drive your knees out laterally by screwing your feet into the ground and pull yourself into the bottom position of the squat. / Be sure to only go as low as you can while still maintaining a neutral lumbar spine. / Continue to make an effort to drive your knees out by screwing the feet into the ground. Return to standing the same way you entered your squat. As you stand be sure to reclaim your normal standing position.", "hips", "https://vimeo.com/77933995"],

    ["barbell squat", "Start by finding a good grip on the bar with your hands just outside of your shoulders. You should be able to keep your wrists straight as you step under the bar. The bar should be situated below the top of the traps to avoid placing it on the cervical spine (neck). It shouldn’t be placed any lower than the back of meaty part of the shoulders. The placement further depends on where you can raise your elbows while keeping your chest up and wrists straight. This will not be the same position for everyone. Assume a squatting stance with your feet and take a deep breath. Stay in a neutral spinal position and create tension in the shoulders by raising the elbows and tightening the upper back. Right before lifting out of the rack squeeze your butt, bells and drive yourself upright. / Elbows, chest and head shouldn’t drop at any point! / After removing the bar from the rack step back from the rack and reset your feet to a good squatting stance. Begin the descent by re-bracing your butt and abs then lift your shoulders to stiffen the upper back. Keep your shins vertical and push your hips back. Knees should flare out as you descend. The squat ends when you cannot keep your torso up and spine neutral. / Keep your knees out, feet flat on the floor and remember to brace for every movement." "hips", "https://vimeo.com/75358260"],

    ["barbell back squat", "Start by finding a good grip on the bar with your hands just outside of your shoulders. You should be able to keep your wrists straight as you step under the bar. The bar should be situated below the top of the traps to avoid placing it on the cervical spine (neck). It shouldn’t be placed any lower than the back of meaty part of the shoulders. The placement further depends on where you can raise your elbows while keeping your chest up and wrists straight. This will not be the same position for everyone. Assume a squatting stance with your feet and take a deep breath. Stay in a neutral spinal position and create tension in the shoulders by raising the elbows and tightening the upper back. Right before lifting out of the rack squeeze your butt, bells and drive yourself upright.
      Elbows, chest and head shouldn’t drop at any point! / After removing the bar from the rack step back from the rack and reset your feet to a good squatting stance. Begin the descent by re-bracing your butt and abs then lift your shoulders to stiffen the upper back. Keep your shins vertical and push your hips back. Knees should flare out as you descend. The squat ends when you cannot keep your torso up and spine neutral. / Keep your knees out, feet flat on the floor and remember to brace for every movement." "hips", "https://vimeo.com/75358260"],

    ["single leg squats", "", "hips", "https://vimeo.com/82232711"],

    ["deadlift", "Before performing a full Deadlift, make sure you can do a Rack Pull from above and below the knee. / Set up a barbell with full sized plates. Stand in a hip-width stance. Maintaining a neutral spine pull your hips back and lean over to the bar. You should find yourself with your shoulders over the bar and hips at a height between your shoulders and knees. Firmly grab the bar just outside of your legs keeping your shoulders down and back.
      Begin to lift the bar by driving your heels into the ground and standing up to a natural position. Be sure to pull the bar in tight to your body while standing keeping the bar against your legs. / Lower the bar by leaning forward and pulling your hips back, maintaing neutral spine and keeping the bar tight against your legs is essential. Ideally you will finish lowering the bar in the exact position you began the movement in. If not stand up and reset your position. / If you notice your knees keep shooting forward before the bar has passed them then you are not pulling your hips back or leaning forward.""hips", "https://vimeo.com/72696342"],

    ["push-ups", "The push-up begins by walking yourself back into a plank with your arms extended, fingers straight forward and palms under your shoulder blades. The lower half of your body will have the heels and knees together as you squeeze your butt and abs to form a solid middle. Wrists, elbows and shoulders should be nicely stacked over each other before beginning the descent. Strongly rotate your palms outward and begin to drop. Remember to keep the elbows from flaring out by keeping the elbow stacked over the wrist as vertical as possible. Once your reach the bottom drive up strongly as you can without losing the tension in your butt or abs.", "push", "https://vimeo.com/75356879"],

    ["ring push-ups", "Begin by positioning the rings at roughly shoulder width and make sure both are even and secure. After you have a firm grip on the rings, walk yourself back into a plank with your arms extended in front and your heels and knees together. Squeeze your butt and abs to form a solid middle. Externally rotate your hands outward (thumbs should be near 11 and 1 o’clock). Wrists, elbows and shoulders should be nicely stacked over each other. / To better engage use the tops of your toes rather than the bottoms to balance on. / Once you’re ready to descend, keep your butt and belly squeezed while lowering, don’t let the middle sag whatsoever. As the elbows bend they need to stack over the wrists. At the very bottom the thumbs should be turned out, elbows stacked over wrists and an active core before resetting to the top. / Keep your hands turned out and drive yourself back to the beginning position. If anything comes apart, reset and start with a solid plank position.", "push", "https://vimeo.com/75071854"],

    ["ring deep push-ups", "", "push", ""],

    ["ring one arm push-ups", "", "push", ""],

    ["one arm push-ups", "", "push", ""],

    ["dip support", "Begin by finding the right distance to set your bars or dip handles. This can be achieved by simply standing with your arms to the side and rotating your palms to face behind you. From there the distance just outside of your pinky fingers is pretty close to ideal. / After finding the right width, grip the bars or handles firmly and push yourself up. Squeeze your butt and abs while pointing your toes and keeping them slightly forward of the hips. The shoulders should remain back and elbow pits forward at the top of the dip. Avoid crossing the ankles, moving into extension or bending your knees behind you." , "push", "https://vimeo.com/75356591"],

    ["dips", "push"],

    ["weighted dips", "push"],

    ["ring dips", "push"],

    ["ring deep dips", "push"],

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
