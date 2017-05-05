create database 2311003260_laruserbestur;
use 2311003260_laruserbestur;





drop table Lög;

create table Lög(
	ID int primary key, 	
	nafn varchar(50), 
	lengd double,
    texti text,
    diskur_id int,
    hof_id int,
    flyt_id int,
    foreign key (diskur_id) references Diskur(id),
    foreign key (hof_id) references Hofundur(id),
    foreign key (flyt_id) references Flytjandi(id)
    
);


drop table flytjandi;
create table Flytjandi(
	ID int primary key, 	
	nafn varchar(50), 
	fdagur int,
    ddagur int null,
    flokkur_id int,
    foreign key (flokkur_id) references Flokkur(ID) 

    
);
drop table Hofundur;
create table Hofundur(
	ID int primary key,
    Nafn varchar(50),
    fdagur int,
    ddagur int null
);
drop table flokkur;
create table Flokkur(
	id int primary key,
    Nafn varchar(50)
);
drop table Tegund;
create table Tegund(
	id int primary key,
    Nafn varchar(50)
);
drop table diskur;
create table Diskur(
	id int primary key,
    nafn varchar(50),
    utgafud int,
    tegund_id int,
    utgef_id int,
    foreign key(utgef_id) references Utgefandi(id)
);
drop table Utgefandi;
create table Utgefandi(
	id int primary key,
    nafn varchar(50)
);
insert into diskur(id,nafn,utgafud,tegund_id,utgef_id)
values
(1,"Viva la Vida or Death and All His Friends",2008,1,1),
(2,"A Night at the Opera",1975,1,3),
(3,"V",2014,2,2),
(4,"Payback Season OST",2015,4,14),
(5,"Metallica",1991,1,4),
(6,"Nevermind",1991,1,15),
(7,"Jazz",1978,1,4),
(8,"...Baby One More Time",1999,2,6),
(9,"Future",2017,6,9),
(10,"News of the World",1977,1,3),
(11,"This Is - Tropical House",2015,4,16),
(12,"Stoney",2016,6,8),
(13,"Evol",2016,7,9),
(14,"Psy 6 (Six Rules), Part 1",2012,2,10),
(15,"Out of Our Heads",1965,1,11),
(16,"Stripped",1995,1,17),
(17,"Pat Garrett & Billy the Kid",1973,1,12),
(18,"Let It Bleed",1969,1,11);


insert into Flytjandi(ID,nafn,fdagur,ddagur,flokkur_id)
values
(1,"Future",1983,null,1),
(2,"Adam Levine",1979,null,1),
(3,"Post Malone",1995,null,1),
(4,"PSY",1977,null,1),
(5,"Britney Spears",1981,null,1),
(6,"Aloe Blacc",1979,null,1),
(7,"Coldplay",1996,null,2),
(8,"Queen",1970,null,2),
(9,"Etta James",1938,2012,1),
(10,"Metallica",1981,null,2),
(11,"Nirvana",1967,1994,2),
(12,"Rolling Stones",1962,null,2),
(13,"Bob Dylan",1941,null,1),
(14,"Eric Clapton",1945,null,1);

insert into Flokkur(ID,nafn)
values
(1,"Solo"),
(2,"Band");

insert into Utgefandi(id,nafn)
values
(1,"Parlophone"),
(2,"Interscope"),
(3,"EMI"),
(4,"Electra"),
(5,"Capitol"),
(6,"JIVE"),
(7,"Lava"),
(8,"Repulic"),
(9,"Epic"),
(10,"YG"),
(11,"London"),
(12,"Colombia"),
(13,"Deca"),
(14,"Island Records"),
(15,"DGC"),
(16,"Universal Music Ireland"),
(17,"Rolling Stones records");

insert into Hofundur(ID,nafn,fdagur,ddagur)
values
(1,"Chris Martin",1977,null),
(2,"Mike Posner",1988,null),
(3,"Freddie Mercury",1946,1991),
(4,"Tim Bergling",1989,null),
(5,"James Hetfield",1963,null),
(6,"Kurt Cobain",1967,1994),
(7,"Max Martin",1981,null),
(8,"Future",1983,null),
(9,"Adam Levine",1979,null),
(10,"Post Malone",1995,null),
(11,"The Weekend",1990,null),
(12,"PSY",1977,null),
(13,"Keith Richards",1943,null),
(14,"Bob Dylan",1941,null),
(15,"David Dalton",1945,null);

insert into Tegund(id,nafn)
values
(1,"Rokk"),
(2,"Popp"),
(3,"Jazz"),
(4,"EDM"),
(5,"Metal"),
(6,"HipHop"),
(7,"Trap");




insert into Lög(ID,nafn,lengd,texti,diskur_id,hof_id,flyt_id)
values
(1,"Viva La vida",4.01,"I used to rule the world
Seas would rise when I gave the word
Now in the morning I sleep alone
Sweep the streets I used to own

I used to roll the dice
Feel the fear in my enemy's eyes
Listened as the crowd would sing
Now the old king is dead long live the king
One minute I held the key
Next the walls were closed on me
And I discovered that my castles stand
Upon pillars of salt and pillars of sand

I hear Jerusalem bells a-ringing
Roman cavalry choirs are singing
Be my mirror, my sword and shield
My missionaries in a foreign field
For some reason I can't explain
Once you'd gone there was never
Never an honest word
And that was when I ruled the world

It was a wicked and wild wind
Blew down the doors to let me in
Shattered windows and the sound of drums
People couldn't believe what I'd become
Revolutionaries wait
For my head on a silver plate
Just a puppet on a lonely string
Oh who would ever want to be king?

I hear Jerusalem bells a-ringing
Roman cavalry choirs are singing
Be my mirror, my sword and shield
My missionaries in a foreign field
For some reason I can't explain
I know St Peter won't call my name
Never an honest word
But that was when I ruled the world

Oh oh oh oh ohh oh [x5]

Hear Jerusalem bells a-ringing
Roman cavalry choirs are singing
Be my mirror, my sword and shield
My missionaries in a foreign field
For some reason I can't explain
I know St Peter won't call my name
Never an honest word
But that was when I ruled the world",1,1,7),




(2,"Bohemian Rhapsody",5.57,"Is this the real life? Is this just fantasy?
Caught in a landslide, no escape from reality
Open your eyes, look up to the skies and see
I'm just a poor boy, I need no sympathy
Because I'm easy come, easy go, little high, little low
Any way the wind blows doesn't really matter to me, to me
Mama, just killed a man
Put a gun against his head
Pulled my trigger, now he's dead
Mama, life had just begun
But now I've gone and thrown it all away
Mama, ooh, didn't mean to make you cry
If I'm not back again this time tomorrow
Carry on, carry on as if nothing really matters
Too late, my time has come
Sends shivers down my spine, body's aching all the time
Goodbye, everybody, I've got to go
Gotta leave you all behind and face the truth
Mama, ooh, I don't want to die
I…",2,3,8 ),





(3,"Sugar",3.55,"I'm hurting, baby, I'm broken down
I need your loving, loving
I need it now
When I'm without you
I'm something weak
You got me begging, begging
I'm on my knees
I don't wanna be needing your love
I just wanna be deep in your love
And it's killing me when you're away, ooh, baby,
'Cause I really don't care where you are
I just wanna be there where you are
And I gotta get one little taste
Your sugar
Yes, please
Won't you come and put it down on me?
I'm right here, 'cause I need
Little love, a little sympathy
Yeah, you show me good loving
Make it alright
Need a little sweetness in my life
Your sugar
Yes, please
Won't you come and put it down on me?
My broken pieces
You pick them up
Don't leave me hanging, hanging
Come give me some
When I'm without ya
I'm so insecure
You are…",3,9,2),

(4,"Levels",5.37,"Oh, sometimes
I get a good feeling, yeah
Get a feeling that I never, never, never, never had before, no no
I get a good feeling, yeah
Oh, sometimes
I get a good feeling, yeah
Get a…",4,4,9),

(5,"Enter Sandman",5.32,"Say your prayers little one
Don't forget, my son
To include everyone
Tuck you in, warm within
Keep you free from sin
'Till the sandman he comes
Sleep with one eye open
Gripping your pillow tight
Exit, light
Enter, night
Take my hand
We're off to never-never land
Somethings wrong, shut the light
Heavy thoughts tonight
And they aren't of Snow White
Dreams of war, dreams of liars
Dreams of dragon's fire
And of things that will bite
Sleep with one eye open
Gripping your pillow tight
Exit, light
Enter, night
Take my hand
We're off to never-never land
Now I lay me down to sleep
Now I lay me down to sleep
I pray the Lord my soul to keep
I pray the Lord my soul to keep
If I die before I wake
If I die before I wake
I pray the lord my soul to take
I pray…",5,5,12),

(6,"Smells Like Teen Spirit",5.01,"Load up on guns
Bring your friends
It's fun to lose and to pretend
She's overboard, self assured
Oh no I know, a dirty word
Hello, hello, hello, how low [x3]
Hello, hello, hello
With the lights out, it's less dangerous
Here we are now, entertain us
I feel stupid and contagious
Here we are now, entertain us
A mulatto, an Albino
A mosquito, my libido, yeah
Hey, yay
I'm worse at what I do best
And for this gift, I feel blessed
Our little group has always been
And always will until the end
Hello, hello, hello, how low [x3]
Hello, hello, hello
With the lights out, it's less dangerous
Here we are now, entertain us
I feel stupid and contagious
Here we are now, entertain us
A mulatto, an Albino
A mosquito, my libido, yeah
Hey, yay
And I forget just why I taste
Oh yeah,…",6,6,11),

(7,"Bicycle Race",3.01,"Bicycle bicycle bicycle
I want to ride my bicycle bicycle bicycle
I want to ride my bicycle
I want to ride my bike
I want to ride my bicycle
I want to ride it where I like
You say black I say white
You say bark I say bite
You say shark I say hey man
Jaws was never my scene
And I don't like Star Wars
You say Rolls I say Royce
You say God give me a choice
You say Lord I say Christ
I don't believe in Peter Pan
Frankenstein or Superman
All I wanna do is
Bicycle bicycle bicycle
I want to ride my bicycle bicycle bicycle
I want to ride my bicycle
I want to ride my bike
I want to ride my bicycle
I want to ride my bicycle races are coming your way
So forget all your duties oh yeah
Fat bottomed girls they'll be riding today
So look out for those beauties oh yeah
On your…",7,3,8),

(8,"...Baby One More Time",3.31,"Oh, baby, baby
Oh, baby, baby
Oh, baby, baby
How was I supposed to know
That something wasn't right here?
Oh, baby, baby
I shouldn't have let you go
And now you're out of sight, yeah
Show me how you want it to be
Tell me, baby,
'Cause I need to know now, oh, because...
My loneliness is killing me (and I)
I must confess, I still believe (still believe)
When I'm not with you I lose my mind
Give me a sign
Hit me, baby, one more time
Oh, baby, baby
The reason I breathe is you
Boy, you got me blinded
Oh, baby, baby
There's nothing that I wouldn't do
It's not the way I planned it
Show me how you want it to be
Tell me, baby,
'Cause I need to know now, oh, because...
My loneliness is killing me (and I)
I must confess, I still believe (still believe)
When I'm…",8,7,5),

(9,"Mask Off",3.23,"Call it how it is
Hendrix
I promise, I swear I swear
Spit it
Yo
Percocets
Molly, Percocets
Percocets
Molly, Percocets
Rep the set
Gotta rep the set
Chase a check
Never chase a bitch
Mask on 
Fuck it, mask off
Mask on
Fuck it, mask off
Percocets
Molly, Percocets
Chase a check
Never chase a bitch
Two cups
Toast up with the gang
From food stamps
To a whole nother domain
Out the bottom
I’m a living proof
They compromising
Half a million on the coupe
Drug houses
Looking like Peru
Graduated
I was overdue
Pink molly
I can barely move
Ask about me
I’m going bust a move
Rick James
33 chains
Old Chanel
Crusing Biscayne
Top off
That’s a liability
Hit the gas
Boosting my adrenaline
Percocets
Molly, Percocets
Percocets
Molly, Percocets
Rep the set
Gotta rep the set
Chase a check
Never chase a bitch
Mask…",9,8,1),

(10,"We Are The Champions",2.59,"Ding a dang dong we're the champions
We are the champions, my friends
And we'll keep on fighting till the end
We are the champions, we are the champions
No time for losers 'cause we are the champions
Of the world
Ding a dang dong we're the champions
Ding, ding, ding
Pum, pum, pum
Ding a dang dong let's rock that sound
(Ding, ding)
Everybody hear what's going down
(Pum, pum)
Ding a dang dong we've reached the top
(Ding, ding)
Time and again from the penalty spot
(Pum, pum, pum)
Ding a dang dong in the stadium
(Ding a dang dong, ding a dang dong)
'Cause it's a goal, we have won
(Ding a dang dong for the champions)
We are…",10,3,8),

(11,"Wake Me Up",4.09,"Feeling my way through the darkness
Guided by a beating heart
I can't tell where the journey will end
But I know where to start
They tell me I'm too young to understand
They say I'm caught up in a dream
Well life will pass me by if I don't open up my eyes
Well that's fine by me
So wake me up when it's all over
When I'm wiser and I'm older
All this time I was finding myself
And I didn't know﻿ I was lost
So wake me up when it's all over
When I'm wiser and I'm older
All this time I was finding myself
And I didn't know﻿ I was lost
I tried carrying the weight of the world
But I only have two hands
I hope I get the chance to travel the world
But I don't have any plans
I wish that I could stay forever this young
Not afraid to close my eyes
Life's a…",4,4,6),

(12,"Animals",3.51,"Baby I'm preying on you tonight
Hunt you down eat you alive
Just like animals
Animals
Like animals-mals
Maybe you think that you can hide
I can smell your scent for miles
Just like animals
Animals
Like animals-mals
Baby I'm
So what you trying to do to me
It's like we can't stop, we're enemies
But we get along when I'm inside you, eh
You're like a drug that's killing me
I cut you out entirely
But I get so high when I'm inside you
Yeah you can start over you can run free
You can find other fish in the sea
You can pretend it's meant to be
But you can't stay away from me
I can still hear you making that sound
Taking me down rolling on the ground
You can pretend that it was me
But no, oh
Baby I'm preying on you tonight
Hunt you down eat you alive
Just like animals
Animals…",3,9,2),

(13,"Congratulation",3.40,"My mama called, seen you on TV, son
Said shit done changed ever since we was on
I dreamed it all ever since I was young
They said I wouldn't be nothing
Now they always say congratulations
Worked so hard, forgot how to vacation
They ain't never had the dedication
People hatin', say we changed and look we made it
Yeah, we made it
They was never friendly, yeah
Now I'm jumping out the Bentley, yeah
And I know I sound dramatic, yeah
But I know I had to have it, yeah
For the money, I'm a savage, yeah
I be itching like I had it, yeah
I'm surrounded 20 bad bitches, yeah
But they didn't know me last year, yeah
Everyone wanna act like they important
(Yeah-yeah-yeah, yeah-yeah-yeah)
But all that mean nothing when I saw my dog
(Yeah-yeah-yeah, yeah-yeah-yeah)
Everyone…",12,10,3),

(14,"Low Life",5.13,"High, high, getting high
Everybody getting high 
Getting high
High
I just took some molly, what else? 
Got some bitch from Follies with us 
She gonna fuck the squad, what else? 
I'mma fuck her broads, what else? 
Bitch from Pakistan, what up? 
Ferraris and them Lambs, what else? 
'Bout to fuck this club up, what else? (Get, get) 
Metro Boomin' want some more nigga
I turn the Ritz into a poor house 
It's like eviction number four now 
Go 'head and ash it on the floor now 
Girl go ahead and show me how you go down 
And I feel my whole body peaking 
And I'm fucking anybody with they legs wide 
Getting faded with some bitches from the West Side 
East coast, nigga repping North Side 
Never waste a hoe's time, bitch I'm on my own time 
Fuck a nigga co-sign
Always… ",13,11,1),

(15,"Gangnam Style",3.39,"오빤 강남스타일
강남스타일
낮에는 따사로운 인간적인 여자
커피 한잔의 여유를 아는 품격 있는 여자
밤이 오면 심장이 뜨거워지는 여자
그런 반전 있는 여자
나는 사나이
낮에는 너만큼 따사로운 그런 사나이
커피 식기도 전에 원샷 때리는 사나이
밤이 오면 심장이 터져버리는 사나이
그런 사나이
아름다워 사랑스러워
그래 너 hey 그래 바로 너 hey
아름다워 사랑스러워
그래 너 hey 그래 바로 너 hey
지금부터 갈 때까지 가볼까
오빤 강남스타일
강남스타일 오-오-오-오 오빤강남스타일
강남스타일 오-오-오-오 오빤강남스타일
Eh, sexy lady
오-오-오-오 오빤 강남스타일
Eh, sexy lady
오-오-오-오
정숙해 보이지만 놀 땐 노는 여자
이때다 싶으면 묶었던 머리 푸는 여자
가렸지만 웬만한 노출보다 야한 여자
그런 감각적인 여자
나는 사나이
점잖아 보이지만 놀 땐 노는 사나이
때가 되면 완전 미쳐버리는 사나이
근육보다 사상이 울퉁불퉁한 사나이
그런 사나이
아름다워 사랑스러워
그래 너 hey 그래 바로 너 hey
아름다워 사랑스러워
그래 너 hey 그래 바로 너 hey
지금부터 갈 데까지 가볼까
오빤 강남 스타일
강남스타일 오-오-오-오…",14,12,4),

(16,"(I Can't Get No) Satisfaction",3.44,"I can't get no satisfaction, I can't get no satisfaction
'Cause I try and I try and I try and I try
I can't get no, I can't get no
When I'm drivin' in my car, and the man come on the radio
He's tellin' me more and more about some useless information
Supposed to fire my imagination
I can't get no, oh, no, no, no, hey, hey, hey
That's what I say
I can't get no satisfaction, I can't get no satisfaction
'Cause I try and I try and I try and I try
I can't get no, I can't get no
When I'm watchin' my tv and a man comes on and tell me
How white my shirts can be
But, he can't be a man 'cause he doesn't smoke
The same cigarettes as me
I can't get no, oh, no, no, no, hey, hey, hey
That's what I say
I can't get no satisfaction, I can't get girl reaction
'Cause I…",15,13,12),

(17,"Like a Rolling Stone",6.13,"Once upon a time you dressed so fine
Threw the bums a dime in your prime, didn't you?
People call say 'beware doll, you're bound to fall'
You thought they were all kidding you
You used to laugh about
Everybody that was hanging out
Now you don't talk so loud
Now you don't seem so proud
About having to be scrounging your next meal
How does it feel, how does it feel?
To be without a home
Like a complete unknown, like a rolling stone
Ahh you've gone to the finest schools, alright Miss Lonely
But you know you only used to get juiced in it
Nobody's ever taught you how to live out on the street
And now you're gonna have to get used to it
You say you never compromise
With the mystery tramp, but now you realize
He's not selling any alibis
As you…",16,14,13),

(18,"Knockin' On Heavens Door",2.32,"Mama take this badge from me
I can't use it anymore
It's getting dark too dark to see
Feels like I'm knockin' on heaven's door
Knock-knock-knockin' on heaven's door
Knock-knock-knockin' on heaven's door
Knock-knock-knockin' on heaven's door
Knock-knock-knockin' on heaven's door, eh yeah
Mama put my guns in the ground
I can't shoot them anymore
That cold black cloud is comin' down
Feels like I'm knockin' on heaven's door
Knock-knock-knockin' on heaven's door
Knock-knock-knockin' on heaven's door
Knock-knock-knockin' on heaven's door
Knock-knock-knockin' on heaven's door
Knock-knock-knockin' on heaven's door
Knock-knock-knockin' on heaven's door
Knock-knock-knockin' on heaven's door
Knock-knock-knockin' on…",17,14,13),

(19,"You Can't Always Get What You Want",4.50,"I saw her today at the reception 
A glass of wine in her hand 
I knew she was gonna meet her connection 
At her feet was footloose man
You can't always get what you want 
You can't always get what you want 
You can't always get what you want 
But if you try sometimes well you might find 
You get what you need
I went down to the demonstration 
To get my fair share of abuse 
Singing, We're gonna vent our frustration 
If we don't we're gonna blow a 50-amp fuse
You can't always get what you want 
You can't always get what you want 
You can't always get what you want 
But if you try sometimes well you just might find 
You get what you need
I went down to the Chelsea drugstore 
To get your prescription filled 
I was standing in line with Mr. Jimmy 
And man,…",18,13,12),

(20,"Violet Hill",3.49,"Was a long and dark December
From the rooftops I remember
There was snow
White snow
Clearly I remember
From the windows they were watching
While we froze down below
When the future's architecture
By a carnival of idiots on show
You'd better lie low
If you love me
Won't you let me know?
Was a long and dark December
When the banks became cathedrals
And the fog
Became God
Priests clutched onto bibles
Hollowed out to fit their rifles
And the cross was held aloft
Bury me in armor
When I'm dead and hit the ground
My nerves are poles that unfroze
If you love me
Won't you let me know?
I don't want to be a soldier
Who…",1,1,7);

#a
select diskur.nafn,Lög.nafn from diskur
inner join Lög
on Lög.diskur_id = diskur.id
where diskur.nafn = "V";
#b
select flytjandi.nafn,Lög.nafn from flytjandi
inner join Lög
on Lög.flyt_id = flytjandi.id
where flytjandi.nafn = "Queen";
#c
select Tegund.nafn,Lög.nafn,diskur.nafn from diskur
inner join Lög
on Lög.diskur_id = diskur.id
inner join Tegund
on Tegund.id = diskur.tegund_id
where Tegund.nafn = "Rokk";
#d
select nafn,lengd from Lög
where lengd > 5;
#e
select nafn,utgafud from diskur
where utgafud > 2010;
#f
select diskur.nafn,flytjandi.nafn,diskur.utgafud,utgefandi.nafn from diskur
inner join Lög
on Lög.diskur_id = diskur.id
inner join flytjandi
on flytjandi.id = Lög.flyt_id
inner join utgefandi
on utgefandi.id = diskur.utgef_id
order by utgefandi.nafn ASC
limit 2;
#g
select Lög.nafn,Lög.lengd,flytjandi.nafn,utgefandi.nafn from Lög
inner join flytjandi
on flytjandi.id = Lög.flyt_id
inner join diskur
on diskur.id = Lög.diskur_id
inner join utgefandi
on utgefandi.id = diskur.utgef_id
order by Lög.lengd DESC
limit 5;
#h
select Tegund.nafn,count(Lög.nafn) from Lög
inner join diskur
on diskur.id = Lög.diskur_id
inner join tegund
on tegund.id = diskur.tegund_id
group by tegund.nafn
order by count(Lög.nafn) DESC
limit 2;
#i
select utgefandi.nafn,count(diskur.nafn) from diskur
inner join utgefandi
on diskur.utgef_id = utgefandi.id
group by utgefandi.nafn
order by count(diskur.nafn)
limit 1;
#j
select diskur.nafn,tegund.nafn,utgefandi.nafn,diskur.utgafud from diskur
inner join tegund 
on tegund.id = diskur.tegund_id
inner join utgefandi
on utgefandi.id = diskur.utgef_id
where diskur.utgafud between 1998 and  2017
group by utgefandi.nafn;
#k
select count(nafn) as 'Sem byrja a A' from Lög
where nafn like "A%";

select count(nafn) as 'Sem hafa s i nafni' from Lög
where nafn like "%s%";
#l
select nafn,2017-fdagur as 'aldur' from flytjandi;
#m
select avg(lengd) from Lög;
#n
select flytjandi.nafn,count(Lög.nafn) from Lög
inner join flytjandi
on flytjandi.id = Lög.flyt_id
group by flytjandi.nafn
having count(Lög.nafn) > 4;
#o
select flytjandi.fdagur,flytjandi.nafn,Lög.nafn from Lög
inner join flytjandi
on flytjandi.id = Lög.flyt_id
order by flytjandi.fdagur
limit 1;


#Okkar fyrirspurnir
select diskur.nafn,utgefandi.nafn from diskur
inner join utgefandi 
on utgefandi.id = diskur.utgef_id;

select Lög.nafn,flytjandi.nafn,hofundur.nafn from Lög
inner join flytjandi
on flytjandi.id = Lög.flyt_id
inner join hofundur
on hofundur.id = Lög.hof_id;

select diskur.nafn,count(Lög.nafn) from Lög
inner join diskur
on diskur.id = Lög.diskur_id
group by diskur.nafn
order by count(Lög.nafn) DESC;

select flytjandi.nafn,flokkur.nafn from flytjandi
inner join flokkur
on flokkur.id = flytjandi.flokkur_id;

select Lög.nafn,Lög.lengd,flytjandi.nafn from Lög
inner join flytjandi
on flytjandi.id = Lög.flyt_id
order by Lög.lengd
limit 3;

select Lög.nafn,tegund.nafn from Lög
inner join diskur
on diskur.id = Lög.diskur_id
inner join tegund
on tegund.id = diskur.tegund_id
where Lög.nafn like "v%";

select diskur.nafn as 'Diskur',tegund.nafn as 'Tegund',utgefandi.nafn as 'Utgefandi',hofundur.nafn as 'Höfundur',flytjandi.nafn as 'Flytjandi',flokkur.nafn as 'Flokkur' from Lög
inner join flytjandi
on flytjandi.id = Lög.flyt_id
inner join hofundur
on hofundur.id = Lög.hof_id
inner join flokkur
on flokkur.id = flytjandi.flokkur_id
inner join diskur
on diskur.id = Lög.diskur_id
inner join tegund
on tegund.id = diskur.tegund_id
inner join utgefandi
on utgefandi.id = diskur.utgef_id;


