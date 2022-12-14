# Deliverable 4 - Mist
### Adam Wachowicz, Cole Eichner, Vy Nguyen

## Execution of the Software:
* Download and unzip the zip file or clone the project to your machine from https://github.com/Amw298/mist.
* While in the "mist" project folder run the command "flutter run" and choose chrome


## Explanations of the Tasks:
#### To access the guest store view:
* There are two ways that you can access the guest store view:
    * Pressing either the "Explore The Site" button from the homepage or from top navigation bar on the user signed in/registration view will alert a controller behind the widget to switch to the guest store view. (The guest store view is similar to the signed-in store view except for there is no "Library" tab on the side-tab and the "Logout" button is replaced with a "Signed In/Registration" button)
    * By pressing the "Sign In/ Register" button at the bottom of the side-bar, the controller will switch back to the view that was most recently accessed before the view was switched to the store view.

#### To access the signed-in store view:
* There are two ways that you can access the signed-in store: 
    * Pressing the "Sign in" button will alert a controller behind the widget to switch to the login view. Here you can interact with the two text fields to input their email and password for signing in. The "Sign in" button can be pressed at any time to alert a controller to redirect the users and switch to the store view. 
    * Pressing the "Register" button will alert a controller behind the widget to switch to the register view. Here you can interact with the text fields to input information for creating an account.
    * Once you are on either the login or registration view, the tabs on the top navigation bar can be pressed at any time to alert the controller to switch between either views or access the guest store view by pressing the "Explore" tab.
    * By pressing the "Logout" button at the bottom of the side-bar, the controller will switch back to the view that was most recently accessed before the view was switched to the store view.

#### To search games:
* Press the "explore the page" button to get to the bulk of the program.
* You can switch between library and store view by pressing the buttons on the side bar labeled as such.
* You can search for the banana by typing "Slime" in the search bar and pressing enter. (you should see Slime Rampage appear in the view)

#### To browse games:
* Press the "explore the page" button to get to the bulk of the program.
* You can switch between library and store view by pressing the buttons on the side bar labeled as such.
* You can scroll in the different views to see all of the games (test images). 
* You can click on a game to see its description, some images, and whether its playable on your machine.

#### To play a game:
* You can launch your favorite game by pressing the "Launch Game" button in the top right of the store/library page
* Also, you can launch a game by pressing it in the game description view

#### To Buy a game:
* Find a game in the store you do not own and click on it. You will be able to press "Buy Game" to purchase a game in the game description view.


## Change in Architecture Pattern:
Our thoughts on changing the architectural pattern to MVC for Deliverable 4 contains the same reasoning as Deliverable 3: Although the interface front-end design stayed the same as out original idea, for Deliverable 3, our team has decided to deviate from the original Deliverable 2 plan of utilizing a MVVM model as our software architectural design, and instead, switch to MVC. Even though we started off focusing on our development through the perspective of MVVM, the more we dived deeper into the implementation of our application, we realized that it was much easier to collaborate through the creation of smaller, seperate, and specific components for object independence. Since the intended application is not single-paged, our goal was to divide the implementation of the views among group members. With this, each member would focus on the front-end aspects, business logic that ties into those front-end components, and, possibly, the database that would need to be connected with them. With this seperation of designated work on the program, it made more sense to use MVC patterns to facilitate seperation of concern and decrease confusion among communications of code functionalities, even if it did technically create a larger and more complex codebase. Our inputs are directed to the controllers (currently residing inside the widgets), which decides how the views will be displayed. There is currently no need for manipulation of data and the models' job is just to manage it for the controller to pull to the user if needed.

## Project Retrospective:
The homepage is the same for as the original design except without the progress bar. After implementing a progress bar on the page, it didn't seem logical since the switch in views was automatic once any button is pressed. Since no loading time was necessary, there is no need to see how long the loading progress currently is. Because of this, it wasn't aesthetically reasonable to place a random bar with no movements onto the first page of the application.

For the login and registration page, the design is very similar to the intended design, however the functionality did not work out as expected. Because the text input validation was to be done last (since we thought it would be a simple implementation), it was almost impossible to write new logic for the text input widget that were used throughout multiple views in the application, not just the user information for the sign in and registration forms. In the progress of rewriting the logic for the text input field widget, there would be crashes in different portions of the application that could not be pinpointed to an exact bug in the code. As a result, the user information forms for both the sign in and registration views can hold different user input, but the "Sign in" and "Registration" buttons can be pressed at any time, even if there were empty text fields, to access the sign in store view. Taking this into consideration, if we were to redo the project and avoid confusion similar to this, we would complete the full logic and functionality behind a widget instead of focusing on the design first and functionality after.

The game description has kept a very similar format to the original design, but there were some changes that needed to be made. Originally, the screenshots that apear underneath the banner image were supposed to be on an image carousel. However the only library for flutter that provides that functionality only works properly on mobile. After spending multiple hours trying to wrangle it into a fixed position, we decided the three fixed screeshots would be a fine replacement. Since the carousel did not pan out, we dropped the tag carouosel that would have been under the launch/buy button. The playable/unplayable image was true to the orginal design, but if we were to do it again, it would have a text blurb that says playable/unplayable over it.

For the most part, the store/library view followed the wireframe exactly. Implementation was different than expected because the backend was not as fleshed out as expected. This is described above in the "Change in Architecture Pattern". In the Store/Library views the user is able perform the following key tasks laid out in previous deliverables: browse, search, quick launch, and purchase games. 
