##Project 2 - produswap.org 
###Link to Trello Board 
[Trello Board](https://trello.com/b/q73Ggbtf/project-2-produswap-com)

###Project Description 
In the area in which I live, many families grow a variety produce in their back yards.  Most of the time, their plants and trees yield surplus produce that is not consumed.  My goal is to create a app that connects users with surplus produce so they can "swap" it.  This will save families money as well as prevent food from being wasted.  

###Approach Taken
I began by thinking of a concept that could solve a problem in my community.  Fresh food is abundant in Ventura County but much of it goes to waste because people have no platform to trade or swap.  I decided to create that platform. 

I began by creating a wireframe of the entire process of accessing the site, creating and account, generating a post, and responding to the post.  I then white boarded my ERD and came up with three models - users, posts, and messages.  Using this as a base, I began to code on Ruby on Rails.  When I finished with the messages portion, I realized I would need replies.  I created a fourth model for replies and added them to my app.  

Once the app was complete I began to style.  I went to the local farmer's market in Santa Monica and took pictures of the produce.  I edited the pictures in Adobe Elements and Powerpoint.  I then used CSS to style the page.  I used bootstrap for the buttons. 

I hope you enjoy!

###MVP
A site where users can:

1.  Create, edit, and delete a profile.  
2.  Create, edit, or delete a post or "Swap".
3.  Read posts from other users.
4. 	 Message users via the post page.
5. 	 Reply to messages on the post page.

###Stretch Goals
In the future, I would like swappers to be able to rate each other.  I would also like to send either text or email notifications when someone replies to or sends a message.  If time allows, I will also allow users to upload photos of their produce.  

###Technologies Used
HTML5, SCSS, Bootstrap, postgreSQL, BCrypt, PowerPoint, Heroku, GoDaddy, Photoshop Elements 11, Canon T3i, and Ruby on Rails.

###Installation Instructions
1.  Go to https://github.com/agonzalez27/project2_produswap-org and download repository. 
2. Open terminal and cd into the directory containing the downloaded repository. 
3. Create a new database by typing and entering "rake db:create" in terminal.
4. Add rows and colums to the database by typing and entering "rake db:migrate" in terminal.
5. Type and enter "bundle install" in terminal. 
6. Open a new tab in the terminal using "command + t".
7. Intialize rails server by typing "rails s".
8. In your favorite browser, navigate to localhost:3000.
9. Enjoy!

###Wire Frames 
![page 1]( https://github.com/agonzalez27/project2_produswap-org/blob/master/markdown_assets/Slide1.png "Page 1")
![page 2]( https://github.com/agonzalez27/project2_produswap-org/blob/master/markdown_assets/Slide2.png "Page 2")
![page 3]( https://github.com/agonzalez27/project2_produswap-org/blob/master/markdown_assets/Slide3.png "Page 3")
![page 4]( https://github.com/agonzalez27/project2_produswap-org/blob/master/markdown_assets/Slide4.png "Page 4")
![page 5]( https://github.com/agonzalez27/project2_produswap-org/blob/master/markdown_assets/Slide5.png "Page 5")
![page 6]( https://github.com/agonzalez27/project2_produswap-org/blob/master/markdown_assets/Slide6.png "Page 6")
![page 7]( https://github.com/agonzalez27/project2_produswap-org/blob/master/markdown_assets/Slide7.png "Page 7")

###ERD
![ERD]( https://github.com/agonzalez27/project2_produswap-org/blob/master/markdown_assets/erd.JPG "ERD")

###Unresolved Issues
There are currently no unresolved issues or bugs that I'm aware of.  
