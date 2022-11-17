# Deliverable 3 - Mist
### Adam Wachowicz, Cole Eichner, Vy Nguyen

## Execution of the Software:

* Clone the project to your machine.
* While in the "mist" project folder run the command "flutter run" and choose chrome
* Press the "explore the page" button to get to the bulk of the program.
* You can switch between library and store view by pressing the buttons on the side bar labeled as such.
* You can search for the banana by typing "banana" in the search bar.
* You can launch your favorite game by pressing the "Launch Game" button.

## Explanations of the Tasks:


## Change in Architecture Pattern:
Although the interface front-end design stayed the same as out original idea, for Deliverable 3, our team has decided to deviate from the original Deliverable 2 plan of utilizing a MVVM model as our software architectural design, and instead, switch to MVC. Even though we started off focusing on our development through the perspective of MVVM, the more we dived deeper into the implementation of our application, we realized that it was much easier to collaborate through the creation of smaller, seperate, and specific components for object independence. Since the intended application is not single-paged, our goal was divide to the implementation of the views among group members. With this, each members would focus on the front-end aspects, business logic that ties into those the front-end components, and, possibly, the database that would need to be connected with them. With this seperation of designated work on the program, it made better sense to use MVC patterns to facilitate seperation of concern and decrease confusion among communications of code functionalities, even if it did technically create a larger and more complex codebase. At the moment, our inputs are directed to the controllers (currently residing inside the widgets), which decides how the views will be displayed. There is currently no need for manipulation of data and the models' job is just to manage it for the controller to pull to the user if needed.

