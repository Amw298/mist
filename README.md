# Deliverable 3 - Mist
### Adam Wachowicz, Cole Eichner, Vy Nguyen

## Execution of the Software:
* Download and unzip the zip file or clone the project to your machine from https://github.com/Amw298/mist.
* While in the "mist" project folder run the command "flutter run" and choose chrome


## Explanations of the Tasks:
#### To access the store view:
* There are three ways that you can access the store from the homepage:
    * Pressing the "Explore The Site" button will alert a controller behind the widget to switch to the store view.
    * Pressing the "Sign in" button will alert a controller behind the widget to switch to the login view. Here you can interact with the two text fields to input their email and password for signing in. The "Sign in" button can be pressed at any time to alert a controller to redirect the users and switch to the store view. There is work in the future that needs to be done to have a controller check if the text input is null. If one is null, the "Sign in" button will be disabled and a toast will pop up to notify users that they need to put in their information in order to access the Store. Although not yet implemented, the plan is to also have a tab on top with buttons that users can interact with to switch between the "LoginView", "HomeView" (homepage), and "RegistrationView" if needed. Currently, the only way to switch between the LoginView and RegisterView is to refresh to the Homeview.
    * Pressing the "Register" button will alert a controller behind the widget to switch to the register view. Here you can interact with the text fields to input information for creating an account. THe plan for the RegisterView is the same as the LoginView. Additionally, the placeholder texts for the text fields will be replaced with top-align labels.

#### To search games:
* Press the "explore the page" button to get to the bulk of the program.
* You can switch between library and store view by pressing the buttons on the side bar labeled as such.
* You can search for the banana by typing "Slime" in the search bar and pressing enter. (you should see Slime Rampage appear in the view)

#### To browse games:
* Press the "explore the page" button to get to the bulk of the program.
* You can switch between library and store view by pressing the buttons on the side bar labeled as such.
* You can scroll in the different views to see all of the games (test images).

#### To play a game:
* You can launch your favorite game by pressing the "Launch Game" button in the top right of the store/library page
* Also, you can launch a game by pressing it in the game description view

### To Buy a game:
* Find a game you do not own and click on it. You will be able to press "Buy Game" to purchase a game.


## Change in Architecture Pattern:
Although the interface front-end design stayed the same as out original idea, for Deliverable 3, our team has decided to deviate from the original Deliverable 2 plan of utilizing a MVVM model as our software architectural design, and instead, switch to MVC. Even though we started off focusing on our development through the perspective of MVVM, the more we dived deeper into the implementation of our application, we realized that it was much easier to collaborate through the creation of smaller, seperate, and specific components for object independence. Since the intended application is not single-paged, our goal was to divide the implementation of the views among group members. With this, each member would focus on the front-end aspects, business logic that ties into those front-end components, and, possibly, the database that would need to be connected with them. With this seperation of designated work on the program, it made more sense to use MVC patterns to facilitate seperation of concern and decrease confusion among communications of code functionalities, even if it did technically create a larger and more complex codebase. At the moment, our inputs are directed to the controllers (currently residing inside the widgets), which decides how the views will be displayed. There is currently no need for manipulation of data and the models' job is just to manage it for the controller to pull to the user if needed.

