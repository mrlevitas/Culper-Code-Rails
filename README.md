Let's (En)code a Revolution!

by: Roman Levitas
contact: mrlevitas@yahoo.com
date: 8/13/2015


Please visit the following link for a working demo of the Culper Code Encryption/Decryption machine I built using Ruby on Rails:
https://culpercode.herokuapp.com

***********************************Summary************************************

This Ruby program became the heart and soul of my summer as I spent most of my time researching, preparing, and developing the most concise, logical, and straightforward implementation of encrypting and decrypting text using the clandestine code of the Culper Ring during the Revolutionary War known as the Culper Code.

What is the Culper Code you might ask? 
Well, a short history lesson can give us some context:

"Under the orders of General George Washington, Major Benjamin Tallmadge organized the Culper Spy Ring in 1778 to gather information on British troop movements, fortifications, and military plans in the New York area.

Informants used fake names and a numerical code book consisting of 763 numbers representing words, names, and places to communicate their information. Developed by Tallamadge, the Culper Code Book was essential in protecting the vital communications and identities of this important intelligence gathering group."
-- http://www.mountvernon.org/george-washington/the-revolutionary-war/spying-and-espionage/the-culper-code-book/

The Ruby script I wrote is a modern implementation of the Culper Code that can instantly encrypt a message to be passed along in confidence and decrypt it once your allies have passed you the note. 

According to the rubric presented by Launch Academy, the program fulfills all of the following tasks:

Sergeant * : uses decrypt_message() method which takes a single argument--an encoded string, and returns the decoded string. The supplied string only contains numbers for words that appear in the dictionary/key. 

Major ** : expands decrypt_message() so that it can support words not found in the dictionary using a provided cipher.

Colonel *** : further expands the decryption method to support transmission of numbers. Numbers are encrypted with a '_' at their beginning and end so that they are not confused with the alphabet cipher.

General **** / BEAST MODE: uses an encrypt method that takes a single argument, the plaintext, and returns the encrypted message. Considers words not found in the dictionary, numbers, and word variants.

Double Beast Mode/ "I really want this": After completing all of the above steps and having some time on my hands I decided to take the challenge to the next level: building a Ruby on Rails web application out of the script I wrote. This is much easier said than done I had come to find out. I took the Codecademy Ruby on Rails class (and created a summary of the course & its projects on my github: https://github.com/mrlevitas/Ruby-on-Rails-Codecademy-Exercises) to learn the ropes and get a grounding in the framework. It is available in its completed glory here:

https://culpercode.herokuapp.com

********************************General Usage**********************************
Required: 
--Ruby (I used 2.2.1 in development)
--lemmatizer gem (https://github.com/yohasebe/lemmatizer)
	gem install lemmatizer --no-ri --no-rdoc
	Whenever I tried to install the gem, it hung up on installing the documentation, so better install without it.
--CulperCodesCSV.csv is the Culper Code dictionary/key for assigning words to numbers and vice versa. It is a comma separated values document.

To run the program, download culpercode.rb and CulperCodesCSV.csv to a local directory, cd into it, (make sure lemmatizer gem is installed) and then run "ruby culpercode.rb".

**********************Why I want to attend LaunchAcademy***********************

Why I want to attend LaunchAcademy is simple: the more I have come to dabble with programming and computer science (CS) the more I have realized that CS is what I want to pursue in my life and I am hungry to learn more.

After an interview with LaunchAcadamey's Omid, I was accepted to the winter cohort. Regardless of how excited I was at the time when I heard the news, I was, and still am, strapped for money after struggling to get hired as a software developer a year after graduating and still paying off my student loans (I work as a tutor currently). 

At university I studied electrical engineering which might be why I am able to quickly pick up the technical nuances of programming. I have continued to expand my education in CS by taking online courses (such as Udacity's Fullstack WebDev nanodgree) and using Codecademy to pick up new languages. 

This is exactly what I did for this scholarship opportunity. I knew nothing about Ruby and much less about Ruby on Rails other than that it was a framework. But while talking to Omid on skype, he mentioned that Ruby is the preferred programming language at Launch Academy and so I realized if I wanted to win this, I'd have to be talking their language. So, I completed the Codecademy Ruby class (and even published my notes/summary on the course on my github https://github.com/mrlevitas/Ruby-Codecademy-Exercises) and then got my hands dirty.

The process was hard and strenuous, often feeling alone with an enigmatic bug and no one to turn to except stackoverflow. 
And so I realized, this is exactly why places like Launch Academy exist! So the learning curve wouldn't be this difficult and because programming is so much more fun to learn when you get to put your minds together with someone! I love the idea of a supportive learning environment, the opportunity to make like-minded friends and connections interested in helping you and once you're a graduate, being able to return the favor.

I thrive in an environment with  a structured curriculum that fills in all the gaps which I might not even know I had. I am applying to Launch Academy to boost up my career in software development and to be taken seriously when applying to software roles. I think Launch Academy is just the thing I need!