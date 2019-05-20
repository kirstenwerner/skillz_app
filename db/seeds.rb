# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


DATA = {
  :user_keys =>
    ["first_name", "last_name", "email", "password", "coach"],
  :users => [
    ["Kirsten", "Werner", "kirsten@mail.com", "password", true],
    ["Dave", "Werner", "dave@mail.com", "password", true],
    ["Nancy", "Meenen", "nancy@mail.com", "password", false],
    ["Sara", "Molina", "sara@mail.com", "password", false],
    ["Matt", "Molina", "matt@mail.com", "password", false],
    ["Rachel", "Tosic", "rachel@mail.com", "password", false]
  ],
  :skills_keys =>
    ["name", "description", "target", "demo"],
  :skills => [
    ["squats", "Establish a squat stance with your feet slightly wider than your hips and turned out 5 – 10 degrees. Take a breath in and squeeze your abdomen to brace your spine in a neutral position. Pull your shoulders back and down to stabilize your upper back, reach your arms forward for balance. Push your hips back, keeping shins vertical as far down as possible. Drive your knees out laterally by screwing your feet into the ground and pull yourself into the bottom position of the squat. / Be sure to only go as low as you can while still maintaining a neutral lumbar spine. / Continue to make an effort to drive your knees out by screwing the feet into the ground. Return to standing the same way you entered your squat. As you stand be sure to reclaim your normal standing position.", "hips", "https://vimeo.com/77933995"],

    ["barbell squat", "Start by finding a good grip on the bar with your hands just outside of your shoulders. You should be able to keep your wrists straight as you step under the bar. The bar should be situated below the top of the traps to avoid placing it on the cervical spine (neck). It shouldn’t be placed any lower than the back of meaty part of the shoulders. The placement further depends on where you can raise your elbows while keeping your chest up and wrists straight. This will not be the same position for everyone. Assume a squatting stance with your feet and take a deep breath. Stay in a neutral spinal position and create tension in the shoulders by raising the elbows and tightening the upper back. Right before lifting out of the rack squeeze your butt, bells and drive yourself upright. / Elbows, chest and head shouldn’t drop at any point! / After removing the bar from the rack step back from the rack and reset your feet to a good squatting stance. Begin the descent by re-bracing your butt and abs then lift your shoulders to stiffen the upper back. Keep your shins vertical and push your hips back. Knees should flare out as you descend. The squat ends when you cannot keep your torso up and spine neutral. / Keep your knees out, feet flat on the floor and remember to brace for every movement.", "hips", "https://vimeo.com/75358260"],

    ["barbell back squat", "Start by finding a good grip on the bar with your hands just outside of your shoulders. You should be able to keep your wrists straight as you step under the bar. The bar should be situated below the top of the traps to avoid placing it on the cervical spine (neck). It shouldn’t be placed any lower than the back of meaty part of the shoulders. The placement further depends on where you can raise your elbows while keeping your chest up and wrists straight. This will not be the same position for everyone. Assume a squatting stance with your feet and take a deep breath. Stay in a neutral spinal position and create tension in the shoulders by raising the elbows and tightening the upper back. Right before lifting out of the rack squeeze your butt, bells and drive yourself upright. / Elbows, chest and head shouldn’t drop at any point! / After removing the bar from the rack step back from the rack and reset your feet to a good squatting stance. Begin the descent by re-bracing your butt and abs then lift your shoulders to stiffen the upper back. Keep your shins vertical and push your hips back. Knees should flare out as you descend. The squat ends when you cannot keep your torso up and spine neutral. / Keep your knees out, feet flat on the floor and remember to brace for every movement.", "hips", "https://vimeo.com/75358260"],

    ["single leg squats", "", "hips", "https://vimeo.com/82232711"],

    ["deadlift", "Before performing a full Deadlift, make sure you can do a Rack Pull from above and below the knee. / Set up a barbell with full sized plates. Stand in a hip-width stance. Maintaining a neutral spine pull your hips back and lean over to the bar. You should find yourself with your shoulders over the bar and hips at a height between your shoulders and knees. Firmly grab the bar just outside of your legs keeping your shoulders down and back.
      Begin to lift the bar by driving your heels into the ground and standing up to a natural position. Be sure to pull the bar in tight to your body while standing keeping the bar against your legs. / Lower the bar by leaning forward and pulling your hips back, maintaing neutral spine and keeping the bar tight against your legs is essential. Ideally you will finish lowering the bar in the exact position you began the movement in. If not stand up and reset your position. / If you notice your knees keep shooting forward before the bar has passed them then you are not pulling your hips back or leaning forward.", "hips", "https://vimeo.com/72696342"],

    ["push-ups", "The push-up begins by walking yourself back into a plank with your arms extended, fingers straight forward and palms under your shoulder blades. The lower half of your body will have the heels and knees together as you squeeze your butt and abs to form a solid middle. Wrists, elbows and shoulders should be nicely stacked over each other before beginning the descent. Strongly rotate your palms outward and begin to drop. Remember to keep the elbows from flaring out by keeping the elbow stacked over the wrist as vertical as possible. Once your reach the bottom drive up strongly as you can without losing the tension in your butt or abs.", "push", "https://vimeo.com/75356879"],

    ["ring push-ups", "Begin by positioning the rings at roughly shoulder width and make sure both are even and secure. After you have a firm grip on the rings, walk yourself back into a plank with your arms extended in front and your heels and knees together. Squeeze your butt and abs to form a solid middle. Externally rotate your hands outward (thumbs should be near 11 and 1 o’clock). Wrists, elbows and shoulders should be nicely stacked over each other. / To better engage use the tops of your toes rather than the bottoms to balance on. / Once you’re ready to descend, keep your butt and belly squeezed while lowering, don’t let the middle sag whatsoever. As the elbows bend they need to stack over the wrists. At the very bottom the thumbs should be turned out, elbows stacked over wrists and an active core before resetting to the top. / Keep your hands turned out and drive yourself back to the beginning position. If anything comes apart, reset and start with a solid plank position.", "push", "https://vimeo.com/75071854"],

    ["ring deep push-ups", "Begin by positioning the rings at roughly shoulder width and make sure both are even and secure. After you have a firm grip on the rings, walk yourself back into a plank with your arms extended in front and your heels and knees together. Squeeze your butt and abs to form a solid middle. Externally rotate your hands outward (thumbs should be near 11 and 1 o’clock). Wrists, elbows and shoulders should be nicely stacked over each other. / To better engage use the tops of your toes rather than the bottoms to balance on. / Once you’re ready to descend, keep your butt and belly squeezed while lowering, don’t let the middle sag whatsoever. As the elbows bend they need to stack over the wrists. At the very bottom the thumbs should be turned out, elbows stacked over wrists and an active core before driving back to the top. / Keep tight throughout the movement and don’t let the shoulders or middle sag.", "push", "https://vimeo.com/73915019"],

    ["ring one arm push-ups", "", "push", ""],

    ["one arm push-ups", "Before attempting the Incline One Arm Push-up you should be able to perform: / Multiple reps of full push-ups on the ground / One arm plank / Incline Push-ups. / With a sturdy incline setup give yourself a wide stance with your legs. Place one arm in front of you supporting your weight on the floor. The pushing arm will operate exactly as it does in a normal pushup. Shoulders should be active and supporting the push arm. Elbow travels back and to the side without flaring out at any point in the movement. Lower yourself until the ground touches your chest. As you lower yourself down maintain a rigid body-line to prevent any twisting.", "push", "https://vimeo.com/75071852"],

    ["dip support", "Begin by finding the right distance to set your bars or dip handles. This can be achieved by simply standing with your arms to the side and rotating your palms to face behind you. From there the distance just outside of your pinky fingers is pretty close to ideal. / After finding the right width, grip the bars or handles firmly and push yourself up. Squeeze your butt and abs while pointing your toes and keeping them slightly forward of the hips. The shoulders should remain back and elbow pits forward at the top of the dip. Avoid crossing the ankles, moving into extension or bending your knees behind you." , "push", "https://vimeo.com/75356591"],

    ["dips", "Before working on dips it is beneficial to work on the push-up and its various progressions. Once you have in the area of 5-8 solid push-ups begin working on the Dip Support.", "push", "https://vimeo.com/103576824"],

    ["weighted dips", "Begin by finding the right distance to set your bars or dip handles. This can be achieved by simply standing with your arms to the side and rotating your palms to face behind you. From there the distance just outside of your pinky fingers is pretty close to ideal. Either hand the weight on a belt or pinch it between your knees. / After finding the right width, grip the bars or handles firmly and push yourself up. As you lower keep your elbows and wrists stacked above each other and elbows tight to your sides. Brace both the butt and the abs. Once there, drive yourself back to a solid dip support without arching your back or letting your elbows flare out. If the weight is too much and you cannot stop yourself from either arching your back or elbows flaring out.", "push", "https://vimeo.com/74993412"],

    ["ring dips", "Begin by gripping the rings firmly and push yourself up. Squeeze your butt and abs while pointing your toes and keeping them slightly forward of the hips. The shoulders should remain back and elbow pits forward at the top of the dip. Avoid crossing the ankles, moving into extension or bending your knees behind you. / Turn your wrists, arms and shoulders slightly out and squeeze your butt and abs. Legs will stay straight with toes pointed all the while slightly piked as you lower under control. Elbows will be stacked neatly above wrists with the forearms approximately perpendicular. Attempt to keep the thumbs out, belly tight, back flat and the shoulders pulled back tightly. / After reaching the bottom drive up and re-establish a good ring dip support position and begin again. Don’t lose tension in your belly or shoulders at the bottom or during the drive up.", "push", "https://vimeo.com/73739196"],

    ["ring deep dips", "", "push", ""],

    ["weighted ring dips", "Begin by finding the right distance to set your rings. Rings should be shoulder width apart and firmly secured. Attach the weight with either a belt or pinch it between your knees. / After finding the right width, grip rings and firmly and drive yourself up. As you lower keep your elbows and wrists stacked above each other and elbows tight to your sides. Brace both the butt and the abs. Once there, drive yourself back to a solid dip support without arching your back or letting your elbows flare out. If the weight is too much and you cannot stop yourself from either arching your back or elbows flaring out.", "push", "https://vimeo.com/73740185"],

    ["military press", "To start, set up for a Military Press with the feet firmly planted into the ground, butt and abs squeezed tight and the Barbell in a good rack position. The Barbell may rest on the tops of the shoulders or chest, but before you press the forearm need to be vertical and the shoulders pulled back into the sockets. / The torso should not leaned or be arched, especially in the lower back. In one movement drive the weight overhead. Keep the weight distributed through the feet and avoid either rocking backwards or forwards off of the toes or heels. / To return to the starting position, pull the bar back down while keeping the forearms vertical, abs and butt tightly squeezed.", "push", "https://vimeo.com/71937459"],

    ["pike wall handstand", "The Handstand Pike on wall is a great way to build shoulder strength. Be sure you can perform the following: / Plank / Handstand Pike on Ground / Handstand Pike on Box / With your hands flat on the floor carefully walk your feet up to the wall. Keep your legs bent and push your hips out over your shoulders. Press into the ground hard and pull your shoulder blades together pressing your head through your arms.", "push", "https://vimeo.com/71141153"],

    ["wall handstand", "Before attempting a full Handstand Wall Hold be sure you can perform the easier progression as well as a Wall Walk. / Slowly walk yourself into a handstand with your chest facing the wall. Your goal is not to get your body against the wall, but rather to press your head forward to open your shoulders. The object is to stack your hips and shoulders directly over your hands. / Once up focus on maintaining a tight midline and glute. Point your toes and squeeze your heals together. Make sure your arms are locked out and actively push your hands into the ground. Always save enough energy to walk out of the hold safely.", "push", "https://vimeo.com/75356873"],

    ["wall walk", "Before attempting a full Handstand Wall Hold be sure you can perform the easier progression as well as a Wall Walk. / Slowly walk yourself into a handstand with your chest facing the wall. Your goal is not to get your body against the wall, but rather to press your head forward to open your shoulders. The object is to stack your hips and shoulders directly over your hands. / Once up focus on maintaining a tight midline and glute. Point your toes and squeeze your heals together. Make sure your arms are locked out and actively push your hands into the ground. / Begin the weight transfer by shifting the weight to one side and driving hard through the shoulder while maintaining a tight midline. Use the opposite hand to balance and assist with the weight transfer. While the weight is transferred lift the hand and shift the hand position to the side then slide the entire midline over the new hand placement. Repeat the process and keep the midline firmly under control. / Always save enough energy to walk out of the hold safely.", "push", "https://vimeo.com/73747315"],

    ["free standing handstand", "This is an advanced movement. You should be able to perform the following with mastery before attempting: / Kick to Handstand Against Wall / Handstand Hold Against Wall / Stand in a lunge and reach for the ground in front of you. Drive the back leg over your head as you gently press off the ground with your leading leg. Push away from the floor with the leading leg. Maintain active shoulder position pulling your shoulder blades together and drive your head thru your arms. Maintain a rigid midline as you extend your legs overhead. / Alternatively you can squat on your toes with your hands in front of you. Drive your feet into the ground gently and press into the ground maintain an active shoulder position pulling your shoulder blades together and your head thru your arms. Maintain a rigid midline as you extend your legs overhead. / It will take time before you will be able to hold a free standing handstand. Search for a position of balance and maintain the best possible midline and active shoulder position.", "push", "https://vimeo.com/73747313"],

    ["wall headstand push-ups", "Before trying this make sure you can do the following: / Headstand Push-up Negative / Handstand Wall Hold / Kick to Handstand / Kick up to a Handstand Position with your heels against a wall. Lower your head to the ground making sure your elbows are tracking in front of you. Your head should travel towards the wall to a spot on the floor front of your hands. Once your head touches the ground press hard into the ground as your elbows begin to lock out press your head forward and pull your shoulder blades together. Focus on keeping your midline and gluts tight. / This is an advanced movement and requires hard work on the previous progressions.", "push", "https://vimeo.com/73835820"],

    ["free standing headstand push-ups", "", "push", ""],

    ["free standing handstand push-ups", "", "push", ""],

    ["assisted pull-up", "", "pull", "https://vimeo.com/83096090"],

    ["pull-ups", "Start in a dead hang position. Make sure your body is rigid. Initiate the movement by pulling your shoulder blades back and down towards your hips. Make sure your abs are on keeping your ribs from sticking out squeezing your butt. Pull the bar down towards your chest. Top of the movement is when your chin passes over the bar or ideally when your chest touches the bar. Lower yourself down until your elbows are locked out. If you are performing multiple reps try to keep your shoulders active, pulling them down towards your hips.", "pull", "https://vimeo.com/72079975"],

    ["one arm pull-ups", "", "pull", ""],

    ["chest to bar chin-ups", "", "pull", "https://vimeo.com/81734710"],

    ["weighted pull-ups", "The weighted pull-up is meant to be performed as a “strict” movement, without any kip or jump. You must be able to perform several good chest to bar pull-ups before adding weight to the movement. / Start in a dead hang position. Make sure your body is rigid. Initiate the movement by pulling your shoulder blades back and down towards your hips. Make sure your abs are on keeping your ribs from sticking out squeezing your butt. Pull the bar down towards your chest. Top of the movement is when your chin passes over the bar or ideally when your chest touches the bar. Lower yourself down until your elbows are locked out. If you are performing multiple reps try to keep your shoulders active, pulling them down towards your hips.", "pull", "https://vimeo.com/72080103"],

    ["muscle-ups", "", "pull", "https://vimeo.com/80962807"],

    ["archer ring pull-ups", "", "pull", ""],

    ["active bar hang", "The active hang begins with a good hook grip on the bar and pinky finger over the top. Don’t let the middle go soft by bracing. You’ll bring your body up by strongly pulling your shoulders back and down. As you return to a good starting position don’t let the shoulders go limp. Keep a little tension in them at all times.", "pull", "https://vimeo.com/73913442"],

    ["ring rows @ 30 percent", "The ring row starts very much like the pull-up or chin up. The feet will remain in contact with the floor. Begin by setting the rings at shoulder width. Actively grip the rings with either a false grip or a hook grip. Begin by laying back into an elevated position, approximately at 30 degrees from the floor, where you can hang from while the feet are still on the ground. / Start by squeezing your butt and then your abs to form a solid core. During the entire movement there should be no sagging in the middle. Rotate your hands, pull your elbows in tight and squeeze your shoulder blades together as you pull your armpits to the rings. / After pulling deep into the armpits, keep the tension in your body and return to the lowered position. The shoulders should not relax nor should the elbows flare out at any time.", "pull", "https://vimeo.com/74254290"],

    ["ring rows @ horizontal", "The ring row starts very much like the pull-up or chin up. The feet will remain in contact with the floor. Begin by setting the rings at shoulder width. Actively grip the rings with either a false grip or a hook grip. Begin by laying back into a position where you can hang from while the feet are still on the ground. / Start by squeezing your butt and then your abs to form a solid core. During the entire movement there should be no sagging in the middle. Rotate your hands, pull your elbows in tight and squeeze your shoulder blades together as you pull your armpits to the rings. / After pulling deep into the armpits, keep the tension in your body and return to the lowered position. The shoulders should not relax nor should the elbows flare out at any time.", "pull", "https://vimeo.com/74254293"],

    ["archer ring rows", "", "pull", "https://vimeo.com/81734709"],

    ["active rope hang", "", "pull", "https://vimeo.com/83096664"],

    ["rope pull-ups", "Grab the rope at a the highest point you can reach. Lift your legs and hang. Engage your lats and actively pull your shoulders down towards your hips and pull yourself up to your hands. Focus on driving your chest towards your hands while keeping the rope tight to your body. / Do not push off with your feet or jump. This is a very similar movement to the Pull-up on a bar, different grip position. Try to switch your grip, alternating which hand is on top.", "pull", "https://vimeo.com/75357152"],

    ["rope climb, 20ft", "", "pull", "https://vimeo.com/99441988"],

    ["L-sit rope climb, 20ft", "", "pull", ""],

    ["front lever hold", "", "pull", "https://vimeo.com/87718097"],

    ["back lever hold", "The Tuck Back Lever should be attempted carefully at first. In the beginning your goal is not to lift your legs off the ground, instead you should try to support as much of your bodyweight as possible on the rings. If this allows you to raise your legs off the ground then do so. If not, be patient and proceed carefully. / Start with the rings in front of you push them behind you and squat down so you can “hang” from the rings. Begin actively pulling your shoulders down towards your hips. Then push down on the rings driving them towards your hips. Your elbows should not bend at all. If you can start to lift your heels up, but keep your toes firmly planted on the ground. Do not try to kick yourself up, do not try to pick your feet up unless you can hold this position with minimal assistance from your feet for at least sixty seconds. / This is a difficult movement that takes time!", "pull", "https://vimeo.com/75072012"],

    ["bent over row", "Grab the bar and begin from a standing position. First, brace by squeezing your butt and then your abs then bend forward at the waist keeping your chest up. Bend the knees slightly and go only so far as you’re able to keep you back flat throughout the movement. Don’t allow the back to round as you push your hips back and pike at the waist. / Just as in the dip or push-up, think about stacking your elbows over your wrists and pull the bar straight up between your lower chest and the belly button. Finish the movement as you lower the bar back into the starting position.", "pull", "https://vimeo.com/72667572"],

    ["sit ups", "A good sit-up begins with tightening the belly and pulling first your shoulders up then the rest of the back off of the ground. It should be controlled and smooth all the way through. Once upright tighten again and lower under control. You shouldn’t end up arching your back at any time as your sit yourself up or down. / Don’t tug on your head if you place your hands behind your head", "core", "https://vimeo.com/75072175"],

    ["seated knees to chest", "Lay on your back with your legs extended out and your arms by your side. Brace hard through your abdomen pressing your low back into the ground. Once braced begin to sit up while simultaneously bringing your knees up to your chest with your legs bent.", "core", "https://vimeo.com/71179656"],

    ["seated V-ups", "The V-up or Pike consists of pulling the heels off the floor while contracting the core very strongly and raising the upper body off the floor at the same time. At the top position there will be a strong contraction of the abs while the body forms a “V”. The back will be flat, shoulders shouldn’t be elevated and all parts of the movement will be controlled. / If you are unable to keep your legs straight due to tight hamstrings you may want to switch to Bent Knee V-Ups", "core", "https://vimeo.com/75271400"],

    ["hanging knees to elbows", "", "core", "https://vimeo.com/80962806"],

    ["hanging straight leg raise", "", "core", "https://vimeo.com/81735027"],

    ["stall bar straight leg raise", "", "core", ""],

    ["L-sit", "Before attempting this you should be able to do the following: / Dip Support / L-Sit Knee Raise / L-Sit Pike / L-Sit Single Leg Extension / This skill requires dramatic abdominal and hip flexor strength. Tight hamstrings and lower back will make this significantly more difficult. / Using the parallel handles jump to a support position. Work hard to retract your shoulders and press down hard into the handles to keep your upper back from rounding out. Lift your knees to your chest and then extend your feet out in front. If you find yourself falling backwards as you extend your legs it is most likely due to tight hamstrings or low back forcing you to lean back in order to elevate your legs. However, it could be due to weak hip flexers.", "core", "https://vimeo.com/71176855"],

    ["rings L-sit", "Begin by finding the right distance to set your bars or dip handles. This can be achieved by simply standing with your arms to the side and rotating your palms to face behind you. From there the distance just outside of your pinky fingers is pretty close to ideal. / After finding the right width, grip the bars or handles firmly and push yourself up. Squeeze your butt and abs while pointing your toes and keeping them slightly forward of the hips. The shoulders should remain back and elbow pits forward at the top of the dip. Avoid crossing the ankles, moving into extension or bending your knees behind you. / Once you have a good ring support position start by keeping your chest up, elbow pits forward and shoulders pulled back before beginning to pull the toes up and forward. Squeeze your butt, abs and heels as you point your toes. Don’t let the shoulders creep forward!", "core", "https://vimeo.com/73837591"],

    ["knee ab roll-out", "The Half Ab Wheel Rollout from the knees begins by firmly gripping the Ab Wheel then squeezing your butt and abs before pushing the Ab Wheel forward. Strongly squeeze the butt, abs and shoulder blades tightly together and back. Do not let the lower back arch as you drive forward. Only go as far as you’re able to keep the spine neutral and shoulders tightly engaged. Once you reach the end of your range of motion and control, squeeze tighter through the abs and shoulders to pull it back to the starting position. / Do not let the lower back arch during the movement.", "core", "https://vimeo.com/73738457"],

    ["full ab roll-out", "The Half Ab Wheel Rollout from the feet begins by firmly gripping the Ab Wheel then squeezing your butt and abs before pushing the Ab Wheel forward. Strongly squeeze the butt, abs and shoulder blades tightly together and back. Do not let the lower back arch as you drive forward. Only go as far as you’re able to keep the spine neutral and shoulders tightly engaged. Once you reach the end of your range of motion and control, squeeze tighter through the abs and shoulders to pull it back to the starting position. / Do not let the lower back arch during the movement.", "core", "https://vimeo.com/73738459"],

    ["ring plank", "Begin by positioning the rings at roughly shoulder width and make sure both are even and secure. After you have a firm grip on the rings, walk yourself back into a plank with your arms extended in front and your heels and knees together. Squeeze your butt and abs to form a solid middle. Externally rotate your hands outward (thumbs should be near 11 and 1 o’clock). Wrists, elbows and shoulders should be nicely stacked in line. / To better engage use the tops of your toes rather than the bottoms to balance on.", "core", "https://vimeo.com/75271398"],

    ["tuck L-sit", "", "core", "https://vimeo.com/83096094"],

    ["overhead squat", "", "core", "https://vimeo.com/80963027"],

    ["kettlebell swings", "Find a stance about shoulder with apart, but wide enough to leave room for your kettlebell to clear your legs. / Deadlift the kettlebell to a normal standing position, brace your abdomen and pull your shoulders down and back to support a neutral spine. initiate the swing by driving your hips back and pushing the kettlebell slightly behind you and bending your torso forward from the hips. As soon as the kettlebell hits the apex of the back swing immediately drive your heels into the floor and open your hips to a normal standing position. This is what swings the kettlebell forward, there is absolutely no lifting done with the arms. Let the kettlebell swing only as high as it can with the momentum driven from your hips. Do not try to pull the weight up with your arms or shoulders. / As the kettlebell begins its decent allow it to swing freely behind you. Ideally this should bring you right back to the exact position of your last back swing where you will initiate the next swing. / Make sure that your shins are keeping vertical. If your Knees are driving forward you are likely not leaning forward enough. Your hips are literally pushing on your forearms to drive the weight up. There is a lot of timing and skill required to get the Kettlebell Swing, be patient and work hard.", "work", "https://vimeo.com/73429114"],

    ["1 kettlebell clean", "", "work", "https://vimeo.com/72559604"],

    ["2 kettlebell thruster", "", "work", "https://vimeo.com/97022855"],

    ["barbell thruster", "", "work", "https://vimeo.com/97022855"],

    ["1 kettlebell clean & jerk", "", "work", "https://vimeo.com/80963028"],

    ["2 kettlebell clean & jerk", "", "work", "https://vimeo.com/119417445"],

    ["500 meter row", "", "work", ""],

    ["1000 meter row", "", "work", ""],

    ["2000 meter row", "", "work", ""],

    ["2 mile run", "", "work", ""],

    ["5km run", "", "work", ""],

    ["400 meter run", "", "speed", ""],

    ["800 meter run", "", "speed", ""],

    ["1 mile run", "", "speed", ""],

    ["dumbell power snatch", "", "speed", "https://vimeo.com/85970892"],

    ["barbell power clean", "", "speed", "https://vimeo.com/77918739"],

    ["barbell clean", "", "speed", "https://vimeo.com/77918740"],

    ["barbell power snatch", "", "speed", "https://vimeo.com/85970892"],

    ["barbell snatch", "", "speed", "https://vimeo.com/96283126"]
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
