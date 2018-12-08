DROP DATABASE IF EXISTS revservice;

CREATE DATABASE revservice;

USE revservice;

CREATE TABLE activities (
  activity_id int NOT NULL AUTO_INCREMENT,
  body varchar(100),
  PRIMARY KEY (activity_id)
) ENGINE=InnoDB;

CREATE TABLE reviews (
  review_id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  trail_id int NOT NULL,
  description varchar(500),
  rating int NOT NULL,
  date varchar(20),
  act_id int NOT NULL,
  FOREIGN KEY (act_id) REFERENCES activities(activity_id),
  PRIMARY KEY (review_id)
) ENGINE=InnoDB;

INSERT INTO activities (body) VALUES ('Backpacking');
INSERT INTO activities (body) VALUES ('Birding');
INSERT INTO activities (body) VALUES ('Camping');
INSERT INTO activities (body) VALUES ('Cross Country Skiing');
INSERT INTO activities (body) VALUES ('Hiking');
INSERT INTO activities (body) VALUES ('Horseback Riding');
INSERT INTO activities (body) VALUES ('Mountain Biking');
INSERT INTO activities (body) VALUES ('Nature Trips');
INSERT INTO activities (body) VALUES ('Off Road Driving');
INSERT INTO activities (body) VALUES ('Paddle Sports');
INSERT INTO activities (body) VALUES ('Road Biking ');
INSERT INTO activities (body) VALUES ('Rock Climbing');
INSERT INTO activities (body) VALUES ('Scenic Driving');
INSERT INTO activities (body) VALUES ('Snow Shoeing');
INSERT INTO activities (body) VALUES ('Skiing');
INSERT INTO activities (body) VALUES ('Walking');

INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (24, 1, 5, "We got to hike the trail at sunset and got some amazing pictures. The view was worth every step!", "10/22/2016", 1);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (80, 1, 1, "Incredible wild trail and one of the best parts of San Francisco.", "2/17/2018", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (80, 1, 1, "Fun and easy hike. Gets crowded on Saturday especially when the weather is nice. Will do it again since it is just minutes away from my home.", "4/9/2016", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (58, 1, 5, "It was pretty and an easy urban hike.", "2/17/2016", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (56, 1, 3, "easy hike with great views!", "3/17/2017", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (15, 1, 5, "We got to hike the trail at sunset and got some amazing pictures. The view was worth every step!", "8/3/2016", 1);
INSERT INTO reviews (user_id, trail_id, rating, description, date,act_id) VALUES (18, 1, 3, "I feel like I am on top of the world when I am here...even though I am at sea level....but who is really keeping track of the elevation, except me. I guess I am the only one.  I need to get out more.  Ping me if anyone wants to hang out, I ampretty much always avaialable.", "11/23/2017", 14);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (12, 2, 2, "We got to hike the trail at sunset and got some amazing pictures. The view was worth every step!", "6/15/2017", 9);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (55, 2, 1, "Easy loop, great view, best to go on a weekday though if you can.", "10/19/2016", 1);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (11, 2, 4, "Beautiful views! Caught a gorgeous sunset towards the end of the hike. Includes some challenging stairs and climbing that could be an issue for some. Trail was a little crowded and loud at times, but the views were so worth it.", "8/23/2017", 11);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES(51, 2, 4, "Awesome views of the ocean and golden gate. Downside is how much foot traffic there is.", "11/16/2018", 9);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (89, 2, 5, "7 AM on a Saturday. Nice andquiet. Hope to enjoy the sights at a walking pace later.", "5/7/2017", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (45, 2, 5, "Picturesque trail thru Chinatown past pier 39. Easy trail to follow withthe medallions in sidewalk. 3hrs including some shopping and a stop at the beach.", "6/22/2016", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (65, 2, 4, "Mostly paved, along roads. Starts strong, withviews and wooded paths, but peters out quickly", "7/27/2016", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (25, 2, 1, "One of my favorite trails in the city and a major reason why I love living here. The views are stunning. Well worth the effort.", "6/28/2018", 1);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (40, 2, 5, "easy hike with great views!", "2/23/2017", 7);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (63, 2, 2, "I feel like I am on topof the world when I am here...even though I am at sea level....but who is reallykeeping track of the elevation, except me. I guess I am the only one.  I need toget out more.  Ping me if anyone wants to hang out, I ampretty much always avaialable.", "6/25/2017", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (5, 3, 1, "I proposed but she laughed in my face.  Itis all good though, there was a bar nearby", "4/9/2016", 9);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (36, 3, 2, "Incredible wild trail and one of the best parts of San Francisco.", "7/26/2016", 2);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (30, 3, 1, "easy hike with great views!", "4/6/2018", 2);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (70, 3, 5, "I proposed but she laughed in my face.  It is all good though, there was a bar nearby", "10/5/2018", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date,act_id) VALUES (30, 3, 2, "So fortunate to have caught it on a clear day. Easily one of the most beautiful urban hikes I have seen. Parking was a breeze at the visitors center.", "9/13/2016", 8);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (30, 4, 4, "I lost my watch but it really did not bother me at all.  I was lost in the beauty", "5/20/2018", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (88, 4, 3, "Beautiful views! Caught a gorgeous sunset towards the end of the hike. Includes some challenging stairs and climbing that could be an issue for some. Trail was a little crowded and loud at times, but the views were so worth it.", "1/14/2016", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (89, 4, 3, "Easy loop, great view, best to go on a weekday though if you can.", "10/1/2017", 6);
INSERT INTO reviews (user_id, trail_id, rating, description,date, act_id) VALUES (80, 4, 1, "Beautiful place", "3/29/2018", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (13, 4, 1, "Fun and easy hike. Gets crowded on Saturday especially when the weather is nice.Will do it again since it is just minutes away from my home.", "2/29/2016", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES(46, 5, 2, "Beautiful place", "10/10/2017", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (65, 5, 2, "I lost my watch but it really did not bother me at all.  I was lost in the beauty", "4/21/2016", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (35, 5, 3, "It was pretty and an easy urban hike.", "11/28/2018", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (82, 5, 1, "Incredible wild trail and one of the best parts of San Francisco.", "11/23/2017", 15);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (7, 5, 5, "It was pretty and an easy urban hike.", "2/18/2018", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES(34, 5, 4, "Hole in the wall coffee a good mid-trail break with a end of trail bread chowder bowl at Nicks a bonus", "1/29/2018", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (53, 5, 1, "Mostly paved, along roads. Starts strong, with views and wooded paths, but peters out quickly","2/4/2018", 15);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (40, 5, 3, "I proposed but she laughed in my face.  It is all good though, there was a bar nearby", "4/6/2018", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (46, 5, 3, "So fortunate to have caught it on a clear day. Easily one of the most beautiful urban hikes I have seen. Parking was a breeze at the visitors center.", "11/28/2018", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (21, 5, 2, "easy hike with great views!", "2/17/2018", 15);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (85, 5, 2, "One of my favorite trails in the city and a major reason why I love living here. The views are stunning. Well worth the effort.", "11/2/2016", 2);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (42, 6, 1, "Mostly paved,along roads. Starts strong, with views and wooded paths, but peters out quickly", "3/11/2016", 7);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (12, 6, 2, "I proposed but she laughed in my face.  It is allgood though, there was a bar nearby", "10/9/2016", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (38, 6, 2, "Beautiful place", "5/14/2018", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (68, 6, 4, "Great for an easy city trek!", "6/16/2018",7);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (44, 6, 5, "Awesome views of the ocean and golden gate. Downside is how much foot traffic there is.", "5/19/2018", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (96, 6, 4, "Sickest Time I ever hadin my life, I wanna burst", "1/14/2016", 8);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (84, 6, 2, "Fun and easy hike. Gets crowded on Saturday especially when the weather is nice. Will do it again sinceit is just minutes away from my home.", "5/17/2017", 2);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (40, 6, 1, "I rememberhiking here 40 years ago ... only tiny dirt trails. How time changes. Beautiful nevertheless", "5/11/2016", 8);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (56, 7, 3, "Hole in the wall coffee a good mid-trail break with a end of trail bread chowder bowl at Nicks a bonus", "6/25/2017",5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (63, 7, 4, "Beautiful views! Caught a gorgeous sunset towards the end of the hike. Includes some challenging stairs and climbing that could be an issue for some. Trail was a little crowded and loud at times, but the views were so worth it.", "2/7/2016", 15);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (45, 7, 1, "Nice walk in the woods.", "2/13/2017", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (25, 7, 3, "So fortunate to have caught it on a clear day. Easily one of the most beautiful urban hikes I have seen. Parking was a breeze at the visitors center.", "5/20/2017", 7);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (32, 7, 3, "PM me and I will give you the sickest mixtape ever to run here with.  Do they even say mixtape anymore?  Does not  matter.  You willlove it, I swear", "3/26/2017", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (54, 7, 5, "One of my favorite trails in the city and a major reason why I love living here. The views are stunning. Well worth the effort.", "3/8/2018", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (22, 7, 1, "I lost my watch but it really didnot bother me at all.  I was lost in the beauty", "5/4/2018", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (76, 7, 5, "Fun and easy hike. Gets crowded on Saturday especially when the weather is nice. Will do it again since it is just minutes away from my home.", "7/2/2018", 8);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (8, 8, 4, "Nice walk in the woods.", "9/4/2018", 14);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (84, 8, 3, "One of my favorite trails in the city and a major reason why I love living here. The views are stunning. Well worth the effort.", "6/1/2018", 11);
INSERT INTO reviews (user_id,trail_id, rating, description, date, act_id) VALUES (91, 8, 4, "PM me and I will give you the sickest mixtape ever to run here with.  Do they even say mixtape anymore?  Does not  matter.  You will love it, I swear", "4/28/2018", 7);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (78, 8, 1, "7 AM on a Saturday. Nice and quiet. Hope to enjoy the sights at a walking pacelater.", "4/25/2017", 8);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (73, 8, 1, "Sickest Time I ever had in my life, I wanna burst", "1/6/2016", 2);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (77, 8, 1, "I lost my watch but it really did not bother me at all.  I was lost in the beauty", "11/29/2016", 3);
INSERT INTO reviews(user_id, trail_id, rating, description, date, act_id) VALUES (18, 8, 2, "7 AM ona Saturday. Nice and quiet. Hope to enjoy the sights at a walking pace later.", "3/11/2017", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (4, 8, 3, "Incredible wild trail and one of the best parts of San Francisco.", "9/17/2017", 7);
INSERT INTO reviews (user_id, trail_id, rating,description, date, act_id) VALUES (62, 8, 2, "Hole in the wall coffee a good mid-trail break with a end of trail bread chowder bowl at Nicks a bonus", "1/18/2016", 14);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id)VALUES (59, 8, 5, "One of the most beautiful views.", "3/29/2018", 14);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (22, 8,3, "Easy loop, great view, best to go on a weekday though if you can.", "7/25/2016", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (57, 9, 2, "I lost my watch but it really did not bother me at all.  Iwas lost in the beauty", "9/13/2016", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (75, 9, 5, "Picturesque trail thru Chinatown past pier 39. Easy trail to follow with the medallions in sidewalk. 3hrsincluding some shopping and a stop at the beach.", "7/10/2017", 7);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (55, 9, 3, "Mostly paved, along roads. Starts strong, with views and wooded paths, but peters out quickly", "8/7/2018", 13);
INSERT INTO reviews (user_id, trail_id, rating,description, date, act_id) VALUES (45, 9, 2, "PM me and I will give you the sickest mixtape ever to run here with.  Do they even say mixtape anymore?  Does not  matter.  You will love it, I swear", "4/18/2017", 3);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (20, 9, 3, "Incredible wildtrail and one of the best parts of San Francisco.", "6/10/2016", 8);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (33, 9, 2,"Mostly paved, along roads. Starts strong, with views and wooded paths, but peters out quickly", "7/7/2018", 5);
INSERT INTO reviews (user_id, trail_id, rating,description, date, act_id) VALUES (18, 9, 2, "Fun and easy hike. Gets crowded on Saturday especially when the weather is nice. Will do it again since it is just minutes away from my home.", "7/11/2017", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (24, 9, 5, "Hole in the wall coffee a good mid-trail break with a end of trail bread chowder bowl at Nicks a bonus", "10/15/2017", 1);
INSERT INTO reviews (user_id, trail_id, rating, description,date, act_id) VALUES (40, 9, 2, "PM me and I will give you the sickest mixtape ever to run here with.  Do they even say mixtape anymore?  Does not  matter.  You will love it, I swear", "2/17/2016", 10);
INSERT INTO reviews (user_id, trail_id,rating, description, date, act_id) VALUES (31, 9, 5, "I proposed but she laughed in my face.  It is all good though, there was a bar nearby", "8/1/2017", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (21, 9, 5, "7 AM on a Saturday. Nice and quiet. Hope to enjoy the sights at a walking pace later.", "7/8/2017", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (28, 9, 2, "Awesome views of the ocean and golden gate. Downside is how much foot traffic there is.", "3/13/2017", 8);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (28, 9,1, "I feel like I am on top of the world when I am here...even though I am at sea level....but who is really keeping track of the elevation, except me. I guess Iam the only one.  I need to get out more.  Ping me if anyone wants to hang out, I ampretty much always avaialable.", "11/14/2017", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (34, 9, 3, "I remember hiking here 40 years ago ... only tiny dirt trails. How time changes. Beautiful nevertheless", "10/11/2016", 15);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (10, 10, 2, "PM me and I will give you the sickest mixtape ever to run here with.  Do they even say mixtape anymore?  Does not  matter.  You will love it, I swear", "10/15/2018", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (37, 10, 2, "Reminds me ofthat place in Barcelona.  The place with all the sunshine.", "10/17/2017", 1);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (16, 10, 2, "Beautiful place", "8/8/2016", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (94, 10, 1, "7 AM on a Saturday. Nice and quiet. Hope to enjoy the sights at a walking pace later.", "3/15/2018", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (88, 10, 4, "Great for an easy city trek!", "5/5/2017", 1);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (63, 10, 4, "Iremember hiking here 40 years ago ... only tiny dirt trails. How time changes. Beautiful nevertheless", "2/19/2018", 15);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (35, 11, 5, "Hole in the wall coffee agood mid-trail break with a end of trail bread chowder bowl at Nicks a bonus", "4/23/2016", 2);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (2, 11, 2, "Yes, a lovely area. I used to play volleyball near it. On the edge of the green.", "4/3/2016", 3);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (50, 11, 3, "Nice walk in the woods.", "9/22/2017", 1);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (35, 11, 4, "Fun and easy hike. Gets crowded on Saturday especially when the weather is nice. Will do it again since it is just minutes away from my home.", "3/17/2016", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (83, 11, 3, "easy hike with great views!", "9/15/2016", 9);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (17, 11, 5, "I proposed but she laughed in my face.  It is all good though, there was a bar nearby", "1/24/2017", 11);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (85, 12, 2, "easy hike with great views!", "6/5/2018", 7);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (83, 12, 2, "It was pretty and an easy urban hike.", "10/13/2018", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (99, 12, 4, "So fortunate to have caught it on a clearday. Easily one of the most beautiful urban hikes I have seen. Parking was a breeze at the visitors center.", "8/23/2018", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (49, 12, 4, "Sickest Time I everhad in my life, I wanna burst", "7/2/2018", 6);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (4, 12, 1, "One of my favorite trails in the city and a major reason why I love living here. The views are stunning. Well worth the effort.", "1/16/2018", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (50, 12, 5, "7 AM on a Saturday. Nice and quiet. Hope to enjoy the sights at a walking pace later.", "8/7/2018", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (56, 13, 5, "I remember hiking here 40 years ago ... only tiny dirt trails. How time changes. Beautiful nevertheless", "9/6/2017", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (58, 13, 1, "Nice walk in the woods.", "7/14/2017", 15);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (62, 13, 3, "So fortunate to have caught it on a clear day. Easily one of the most beautiful urban hikes I have seen. Parkingwas a breeze at the visitors center.", "6/11/2018", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (36, 13, 5, "Nice walk in the woods.", "4/26/2017", 6);
INSERT INTO reviews (user_id, trail_id, rating,description, date, act_id) VALUES (59, 13, 2, "Awesome views of the ocean and golden gate. Downside is how much foot traffic there is.", "8/12/2016", 8);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (87, 13, 4, "Incredible wild trail and one of the best parts of San Francisco.", "5/17/2016", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (33, 13, 4, "Picturesque trail thru Chinatown past pier 39. Easy trail to follow with the medallions in sidewalk. 3hrs including some shopping and a stop at the beach.", "8/3/2016", 9);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (20, 13, 1, "PM me and I will give you the sickest mixtape ever to run here with.  Do they even say mixtape anymore?  Does not  matter.  You will love it, I swear", "1/27/2016", 14);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (7, 14, 5, "So fortunate to have caught it on a clear day. Easily one of the most beautiful urban hikesI have seen. Parking was a breeze at the visitors center.", "7/14/2017", 7);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (49, 14, 3, "I proposed but she laughed in my face.  It is all good though, there was a bar nearby", "3/15/2018", 14);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (56, 14, 3, "Nice walk in the woods.", "4/21/2016", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (92, 14, 1, "I proposed but she laughed in my face.  It is all goodthough, there was a bar nearby", "7/4/2016", 7);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (42, 14, 4, "Picturesque trailthru Chinatown past pier 39. Easy trail to follow with the medallions in sidewalk. 3hrs including some shopping and a stop at the beach.", "1/11/2017", 2);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (8, 14, 5, "Reminds me of that place in Barcelona.  The place with all the sunshine.", "4/12/2017", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (95, 14, 3, "Fun and easy hike. Gets crowded on Saturday especially when the weather is nice. Will do it again since it is just minutes away from my home.", "3/5/2016", 9);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (66, 14, 5, "Beautiful views! Caught a gorgeous sunset towards the end of the hike. Includes some challenging stairs and climbing that could be an issue for some. Trail was a little crowded and loud at times, but the views were so worth it.", "7/19/2018", 3);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (57, 14, 2, "We got to hike thetrail at sunset and got some amazing pictures. The view was worth every step!", "7/6/2016", 11);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (13, 15, 1, "I remember hiking here 40 years ago ... only tiny dirt trails. How time changes. Beautiful nevertheless", "5/23/2018", 14);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (4, 15, 3, "I lost my watch but it really did not bother me at all.  I was lost in the beauty", "1/2/2016", 14);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (21, 15, 5, "Awesome views of the ocean and golden gate. Downside is how much foot traffic there is.", "11/12/2016", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (92, 15, 5, "Yes, a lovely area. I used to play volleyball near it. On the edge of the green.", "5/24/2017", 15);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (77, 15, 4, "Picturesque trail thru Chinatown past pier 39.Easy trail to follow with the medallions in sidewalk. 3hrs including some shopping and a stop at the beach.", "11/15/2017", 9);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (50, 15, 3, "Great for an easy city trek!", "8/23/2018", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (96, 16, 2, "Easy loop, great view, best to go on aweekday though if you can.", "11/3/2017", 3);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (48, 16, 2, "Sickest Time I ever had in my life, I wanna burst", "4/25/2018", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (29, 16, 2, "It was pretty and an easy urban hike.", "6/20/2016", 9);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (58, 16, 3, "I remember hiking here 40 years ago ... only tiny dirt trails. How time changes. Beautiful nevertheless", "5/17/2017", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (87, 16, 2, "Reminds me of that place in Barcelona.  The place with all the sunshine.", "9/21/2017", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (21, 17, 2, "PM me and I will give you the sickest mixtape ever to run here with.  Do they even say mixtape anymore?  Does not  matter.  You will love it, I swear", "1/11/2016", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (90, 17, 1, "7 AM on a Saturday. Nice and quiet. Hope to enjoy the sights at a walking pace later.", "6/28/2018", 3);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (54, 17, 5, "Reminds me of that place in Barcelona.  The place with all the sunshine.", "9/8/2017", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (99, 17, 4, "PM me and I will give you the sickest mixtape ever to run here with.  Do they even say mixtape anymore?Does not  matter.  You will love it, I swear", "6/29/2018", 14);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (85, 17, 5, "Awesome views of the ocean and golden gate. Downside is how much foot traffic there is.", "11/12/2018", 11);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (7, 17, 3, "Incredible wild trail and one of the bestparts of San Francisco.", "2/19/2016", 3);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (82, 17, 4, "Incredible wild trail and one of the best parts of San Francisco.", "3/13/2016", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (51, 17, 4, "Holein the wall coffee a good mid-trail break with a end of trail bread chowder bowlat Nicks a bonus", "4/16/2018", 11);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (66, 18, 5, "It was pretty and an easy urban hike.", "8/7/2018", 8);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (56, 18, 1, "Awesome views of the ocean and golden gate. Downside is how much foot traffic there is.", "3/16/2018", 12);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (59, 18, 2, "I remember hiking here 40 years ago ... only tiny dirt trails. How time changes.Beautiful nevertheless", "10/21/2018", 5);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (14, 18, 1, "Reminds me of that place in Barcelona.  The place with all the sunshine.", "3/13/2017", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (69, 18, 3,"Incredible wild trail and one of the best parts of San Francisco.", "7/10/2018", 9);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (26, 18, 4, "Incredible wild trail and one of the best parts of San Francisco.", "4/6/2016", 6);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (55, 18, 3, "7 AM on a Saturday. Nice and quiet. Hope to enjoy the sights at a walking pace later.", "10/11/2018", 3);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (67, 19, 5, "Greatfor an easy city trek!", "2/2/2018", 1);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (62, 19, 3, "Sickest Time I ever had in my life, I wanna burst", "6/20/2018", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (55, 19, 5, "Awesome views of the ocean and golden gate. Downside is how much foot traffic there is.", "5/8/2017", 3);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (18, 19, 3, "PM me and I will give you the sickest mixtape ever to run here with.  Do they even say mixtape anymore?  Does not  matter.  You will love it, I swear", "1/1/2016", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (86, 19, 2, "One of my favorite trails in the city and a major reason why I love living here. The views are stunning. Well worth the effort.", "3/3/2016", 13);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (21, 19, 2, "Beautiful place", "1/29/2017", 1);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (60, 19, 3, "Sickest Time I ever had in my life, I wanna burst", "7/13/2016", 10);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (45, 19, 2, "Beautiful views! Caught a gorgeous sunset towards the end of the hike. Includes some challenging stairs and climbing that could be an issue for some. Trailwas a little crowded and loud at times, but the views were so worth it.", "5/10/2017", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (14, 20, 3, "Nice walk in the woods.", "7/10/2017", 3);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (98, 20, 3, "One of my favorite trails in the city and a major reason why I love living here.The views are stunning. Well worth the effort.", "2/24/2016", 14);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (60, 20, 5, "I remember hiking here 40 years ago ... only tiny dirt trails. How time changes.Beautiful nevertheless", "9/13/2018", 8);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (82, 20, 3, "One of my favorite trails in the city and a major reason why I love living here. The views are stunning. Well worth the effort.", "9/27/2017", 7);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (3, 20, 1, "Easy loop, great view, best to go on a weekday though if you can.", "9/12/2016", 2);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (48, 20, 2, "I proposed but she laughed in my face.  It is all good though, there was a bar nearby", "9/28/2018", 11);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (94, 20, 3, "easy hike with great views!", "7/13/2016", 4);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (64, 20, 3, "Sickest Time I ever had in my life, I wanna burst", "7/28/2017", 8);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (2, 20, 2, "Nice walk in the woods.", "11/18/2018", 2);
INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (47, 20, 5, "One of my favorite trails in the city and a major reason why I love living here. The views are stunning. Well worth the effort.", "8/5/2016", 11);

