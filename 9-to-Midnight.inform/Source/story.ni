"9-to-Midnight" by Evan Thomson

Include Basic Screen Effects by Emily Short.

The time of day is 9 pm.
When play begins: now the right hand status line is "[time of day]".
Your Room is a room. "Posters of all your favorite anime cover the walls. In one corner is a bookshelf holding your collection of authentic Japanese Mangas, with action figures covering the top surface. Your RGB gaming machine sits on your desk, with mouse and keyboard setup perfectly in front of it. [if we have not examined your door][description of your door][end if] From downstairs you can hear people chattering, and the thumping of some shitty pop music.  Your roomate Chad is throwing another frat party.".

The on upper floor is a truth state that varies. The on upper floor is usually true.
The can punch is a truth state that varies. The can punch is usually false.
Start fight is a time that varies. Start fight is usually 11:59 am.

The Asuna body pillow is a thing. The Body Pillow is in your room.
Instead of examining the player:
	say "You are Jeremy, a 3rd year in college. A bit overweight, but your beard is coming in nicely and you dress sharply."
The Katana is a thing. The Katana is in your room.
instead of examining the katana:
	say "it's an authentic Hanzo sword from the early 16th century, folded over 1000 times by master craftsmen until the perfect composition was reached."
Instead of taking the katana:
	say "Probably shouldn't bring the katana out to the party."
Instead of examining the Body Pillow:
	say "Your (current) waifu. You gaze into her soft, hazel eyes longingly but know now is not the time."
Your computer is scenery. Your computer is in your room.
The computer on is a truth state that varies. the computer on is usually false.
Understand "use computer" as using computer. using computer is an action applying to nothing.
Carry out using computer:
	now computer on is true;
	increase the time of day by 1 minute;
	say "You sit down at your desk, and turn your computer on. Your desktop pic is the beatiful Asuna. But should you watch the latest episode of 'Nanatsu no Taizai: Imashime no Fukkatsu' or play some vidya?".
Understand "play some/-- vidya/video games/--" as play some vidya. play some vidya is an action applying to nothing.
Carry out play some vidya:
	increase the time of day by 30 minutes;
	say "You load up Sakura Agent to try to finish your play through. The story was really getting good when you last left off".
Understand "use katana" or "practice katana" or "swing katana" as use katana. use katana is an action applying to nothing.
Carry out use katana:
	increase the time of day by 4 minutes;
	say "You give your katana a couple of practice swings. While the others are out partying, you study the blade."
Understand "watch anime/latest episode/--" as watch anime. watch anime is an action applying to nothing.
Carry out watch anime:
	increase the time of day by 30 minutes;
	say "You try to watch the latest episode but you can only find the dubbed version, and refuse to watch this westernized garbage. You instead start to rewatch Sword Art Online, probably the greatest anime of all time.".
	
The Upstairs Hall is a room. "[if can punch is false]In the big hallway outside your room, there's already a number of people upstiars chatting. You don't know any of them, are hesitant to strike up a conversation. At the east end of the hallway is the balcony overlooking the living room on the floor below. On the northwest side of the hallway is the door to your bathroom, and on the northeast side is the door back to the sanctuary of your room. Southeast and southwest of the hallway are doors to Chad and your other housemate's rooms. At the other end of the hallway there are stairs leading down to the living room.[end if][if can punch is true] CHAAAAAAAAAAAAAAAAAAD [end if]".

Your door is a door. Your door is south of your room, and northeast of the upstairs hall. The description of your door is "Your door is on the south end of your room, with Sword Art Online poster hanging on it.".
Chads room is a room.
Other roomates room is a room.
Upstairs bathroom is a room.
A staircase is a kind of door. A staircase is always open. A staircase is never openable.
The main staircase is a staircase. The main staircase is below the upstairs hall, and above the living room.
After going to the living room:
	now on upper floor is false;
	continue the action.
After going to the upstairs hall:
	now on upper floor is true;
	continue the action.
Upstairs bathroom door is a door. upstairs bathroom door is northwest of the upstairs hall, and south of the upstairs bathroom.
Chads door is a locked door. Chads door is southwest of the upstairs hall, and north of chads room.
Other roomates door is a locked door. other roomates door is southeast of the upstairs hall, and north of other roomates room.

[[ Downstairs]]
Downstairs is a scene.
Downstairs begins when the player is in the living room for the first time. Downstairs ends when the time of day is at least 45 minutes after enter party.
enter party is a time that varies.
When downstairs begins:
	Now enter party is the time of day;
	Say "There is far too many people for this house in the downstairs. You could hear the ruckus they were making from upstairs, but now the music is really pounding your ear drums."
Every turn during downstairs:
	If the time of day is at least 44 minutes after enter party:
		pillow sequence;
		Now can punch is true;
		Move the player to the Upstairs Hall;
		Move Chad to the Upstairs Hall;
		Now start fight is the time of day.
Every turn:
	If can punch is true:
		If the time of day is at least 1 minute after start fight:
			say "[start fight], [time of day].";
			say "They slice Asuna in half, and feathers burst out fluttering around the room. Through the mass of feathers you can see the katana fly out of the drunken oaf's hand, fliping above the crowd for a brief moment before falling down directly into the skull of one of the party goers."
To pillow sequence:
	if on upper floor is true:
		say "You look up, and over the heads of the crowd on the balcony, you can see Ms. Asuna being waved over the balcony. You can only assume its Chad trying to make fun of you in front of his frat bros. They must have grabbed it while you went downstairs.You can hear people down below cheering and jeering, infuriating you. A person next to Chad starts waving your Katana about, making passes at Asuna's precious body.";
		say "In a rage, you push your way past the drunk idiots in the hallway to confront chad.";
	otherwise:
		say "You suddenly hear your dumbass roomate Chad yell from the upstairs balcony 'Yo Dudes! Look what I found!'";
		say "He's waving Ms. Asuna's body over the balcony while everyone jeers and laughs. They must have grabbed it while you went downstairs. One of his friends has your katana, and is brandishing it at Asuna in a frightening manner.";
		say "In a rage, you run up the stairs, pushing past drunk party goers and spilling drinks. As you reach the balcony at the end of the hall, you see the two preparing to slice Asuna in half."

Understand "punch Chad/chad/him/guy" or "hit chad/Chad/him/guy" as punch chad. Punch chad is an action applying to nothing.
Check punch chad:
	if can punch is false:
		say "That wouldn't be good for roomate relations." instead.
Carry out punch chad:
	say "You charge forward, and swing your fist with all your might at chads face. Lucky for him, he manages to duck away just in time or he would have been decimated. By the time you recoil your punch,  the guy with your katana grabs you from behind, and Chad punches you in the stomach. With your quick thinking, you realize there's two options, kick the friend in the nuts or try to wriggle free."

Understand "tackle chad/Chad/him/guy" as tackle chad. tackle chad is an action applying to nothing.
Check tackle chad:
	if can punch is false:
		say "He's way bigger than you, it's probably a bad idea." instead.
Carry out tackle chad:
	say "You charge forward, going for a double leg take down. Chad elbows you in the back, causing you to lose your grip and the oaf with the katana grabs you.  While the oaf is subduing you, Chad punches you in the stomach. With your quick thinking, you realize there's two options, kick the friend in the nuts or try to wriggle free."

Understand "kick the/-- friend/guy/katana/nuts in/-- the/-- nuts/groin/--" as kick friend. kick friend is an action applying to nothing.
Check kick friend:
	if can punch is false:
		say "That's a bit rude." instead.
Carry out kick friend:
	say "You launch your hardest heel kick you can straight into the asshole's groin. He doubles over, releasing you and dropping the katana. The katana bounces once on the balcony railing, and flies over the edge. It falls and lands straight in the head of one of the party goers."

Understand "wriggle free/--" as wriggle free. wriggle free is an action applying to nothing.
Check wriggle free:
	if can punch is false:
		say "There's nothing to wriggle free from." instead.
Carry out wriggle free:
	say "As Chad comes in for another punch, you drop low, and try to pull free from the mongrel behind you. Chad wasn't expecting this, and his punch connects with his asshole friend's abs, forcing him to double over. In his pain he loses grip of the katana, dropping it. The katana bounces once on the balcony railing, and flies over the edge. It falls and lands straight in the head of one of the party goers."

Living Room is a room. "You enter the living room. There is a kitchen to the east and a bathroom to the south. There are also stairs going to the second floor to the west."

There is a table in the Living Room. 
The description of table is "The table is covered in beer pong supplies. Looks like there was a game here recently. Maybe you should join a game later, but why bother with such trivial and base games. If only people of this generation played real games like Hunie Cam Studio.".

The Kitchen is a room. "In the kitchen you find a couple bowls of punch or other presumably alcoholic drinks. There's cups nearby for people to serve themselves There are also cans of beer nearby but beers are so cliche. A few people you've never seen before are hanging out in the kitchen, presumably to be closer to the alcohol." 
Fruit Punch is in the kitchen. The fruit punch can be drunk.
The description of fruit punch is "Looks pretty nasty. Who knows what someone might have thrown in there.".
Understand "drink fruit/-- punch" as drinking.
Instead of drinking the punch:
	increase the time of day by 15 minutes;
	say "You pour your self a cup, and down it. Its strong, and the flavor is awful. But if you're gonna talk to people, you'll need some alcohol in your system. People generally like you a lot more when your drunk."

Jen is in the Living Room. Jen is a person.
The description of Jen is "Jen is one of Chad's friends, and its probably not worth your time talking to her.".

Table of Jen Responses
Topic		Response
"School"		"OMG My proffessors are killing me with my finals, so happy that it is almost winter break though![line break]"
"Jen"		"Hi! We are in a few of the same classes right? I feel like I recognize you.[line break]"
"Chad"		"Yea I don't like him too much either. My friend dated him for a bit, but they broke up 'cause he was a douche. [line break]"
"Party"		"Its not so bad. I mean, a bunch of frat bros but I know a few others here and it can be fun to watch the apes go through their rudimentary motions.[line break]"
"anime"		"I've seen a couple. My favorite is One Punch Man, I love that one![line break]"
"video games"		"No, I don't really play any.[line break]"
"One Punch"		"I'm so hyped for season 3 coming out soon.[line break]"

After asking Jen about a topic listed in the table of Jen Responses:
	increase the time of day by 5 minutes;
	say "[Response Entry]".

Jess is in the Kitchen. Jess is a person.

Table of Jess Responses
Topic		Response
"School"		"lol, like you think I care about school? I dont give a fuck about school man.[line break]"
"Chad"		"Chad's so cool. He's always able to hook me and my friends up with alcohol.[line break]"
"anime"		"Dude, aren't those just Chinese children's cartoons?[line break]"
"video games"		"Not since I was like 8, dude.[line break]"
"alcohol"		"Have you tried the punch yet? Its a good mix, and STRONG, too.[line break]"
"Party"		"Yo this shit is LIT! I just saw a dude chug an entire forty! [line break]"

After asking Jess about a topic listed in the table of Jess Responses:
	increase the time of day by 5 minutes;
	say "[Response Entry]".

Josh is in the Living Room. Josh is a person.
The description of Josh is "You're pretty sure you've seen Josh around school a couple times before. He doesn't seem too bad, maybe he'd be interested in talking about Inuyasha.".

Table of Josh Responses
Topic		Response
"Chad"		"Chad's cool. We have a couple classes together.[line break]"
"Party"		"I wasn't gonna come, but I though I'd just show up and see whats happening.[line break]"
"anime"		"I watched DBZ when I was a kid, that shit was dope.[line break]"
"video games"		"Yea man, I play a little League now and then.[line break]"
"Inuyasha"		"No ablo espanolo[line break]"
"DBZ"		"Don't tell anyone else here or they'll think I'm a nerd, but I've seen every episode.[line break]"
"League"		"I'm pretty good actually, I just hit gold the other day.[line break]"

After asking Josh about a topic listed in the table of Josh Responses:
	increase the time of day by 5 minutes;
	say "[Response Entry]".
	
Chad is in Chad's Room. Chad is a man.
At 9:24 pm:
	Say "You can hear Chad yelling as he slides down the balcony into the living room.";
	Move Chad to the living room.
A frat guy is in the Kitchen. Frat guy is a man. [or something]
The description of frat guy is "This guy looks like he is in the same frat as Chad, your roomate. Why doesn't he have his shirt on? Is he really that tactless as to just display his nipples in front of everyone? Disgusting."
The Kitchen is east of the living room.

The downstairs bathroom is a room. "You manage to slip into the bathroom as someone else is leaving. It's barely [time of day], and the bathroom is already a wreck. Why can't anyone clean up after themselves."
The downstairs Bathroom is south of the living room.