# CS 1XA3 Project03 - ***paarthas***
## Usage:
Install conda environment with https://docs.conda.io/projects/conda/en/latest/user-guide/concepts/installing-with-conda.html
Activate conda environment with `conda activate djangoenv` 

## To Run:
`python manage.py runserver localhost:8000` - **To run locally**
`python manage.py runserver localhost:10077` - **To run on mac1xa3.ca server**

## Users Created:
#. | Username  | Password
--- | --- | ---
1. | TestUser1 | project031xa3
2. | TestUser2 | project031xa3
3. | TestUser3 | project031xa3
4. | TestUser4 | project031xa3
5. | TestUser5 | project031xa3

## Objectives:
***General Exception:*** If the user logs in with *incorrect username/password*, the page redirects again to the login page ***(e/paarthas/)***.
### Objective 01
**Description:**
- This feature is displayed in ***signup.djhtml*** which is rendered by ***sign_up view***.
- In this objective, a *UserCreationForm* is used to create a user. 
- Once a user is succesfully created, the user is logged with the created credentials and redirects to ***messages.djhtml*** ***(e/paarthas/messages)***.

**Exception:**
- If the user fails to create a valid username and password, an *Invalid username or password* is displayed in the ***signup.djhtml***.

### Objective 02
**Description:**
- This feature is displayed in ***social_base.djhtml*** which is rendered by ***account_view***.
- In this objective, the ***social_base.djhtml*** is edited to extract the information of the current logged in user from the **models.py** using *Django Template Variables*.

### Objective 03
**Description:**
- This feature is displayed in ***social_base.djhtml*** which is rendered by ***account_view***. 
- The main purpose of this function is to enable the user to change the password and also to update personal information like *Employment, Location, Birthday and Interests* of the current logged in user.
- In order to change the password, the built in *PasswordChangeForm* form is used. 
- Once the password is changed, the user gets redirected back to ***login.djhtml***. 

**Exception:**
- When Password is changed, ***social.Interest.None*** is displayed under Interests. 
- The **Employment** and **Location** field can be added only if the the **Date of Birth** is also filled else, an **YYYY-MM-DD** error will tend to pop up. 
- If the user enters the birthday in a format other than ***YYYY-MM-DD***, this feature fails to work as expected and an error will tend to pop-up. 

### Objective 04
**Description:**
- This feature is displayed in ***people.djhtml*** which is rendered by ***people_view***.
- This feature makes a POST Request to from ***people.js*** to ***/e/paarthas/moreppl*** which is handled by ***more_ppl_view***.
- This feature displays a list of all the users who are not friends of the current user. Initially, it dispalys only one user in default. More users can be displayed by clicking on **MORE** button. 
- The **More** *button* found on this page is linked to an ***AJAX POST*** through ***people.js***. 
- When clicked on more button, another user is displayed. Also, when the user logs in again, the number of users displayed resets to 1. 

### Objective 05
**Description:**
- This feature is displayed in ***people.djhtml*** which is rendered by ***people_view***. 
- This feature is used to send friend requests to list of users that are displayed using ***people_view***. 
- This feature makes a POST Request to from ***people.js*** to ***/e/paarthas/friendrequest*** which is handled by ***friend_request_view***. 

### Objective 06
**Description:**
- This feature is displayed in ***people.djhtml*** which is rendered by ***people_view***.
- This feature makes a POST Request to from ***people.js*** to ***/e/paarthas/acceptdecline*** which is handled by ***accept_decline_view***.
- This feature is essentially used to accept/decline friend requests received from the other users. 
- If the Friend Request is accepted, the *friends* of both the users are modified. 

### Objective 07
**Description:**
- This feature is displayed in ***messages.djhtml*** which is rendered by ***messages_view***.
- This feature is basically used to display all the friends of the current logged in user in the right column of the **Messages Page** (***e/paarthas/messages***). 

### Objective 08
**Description:**
- This feature makes a POST Request to from ***messages.js*** to ***/e/paarthas/postsubmit*** which is handled by ***post_submit_view***.
- In this feature, an ***AJAX POST*** is submitted when the **POST** button clicked on the *Messages Page*, so that the contents of the *post-text* is sent to ***post_submit_view***. 

### Objective 09
**Description:**
- This feature is displayed in ***messages.djhtml*** which is rendered by ***messages_view***. 
- This feature is used to display the *posts* of the current user and friends.
- This feature also uses an ***AJAX POST*** through ***messages.js*** similar to *Objective 04*. 
- The POST Request is made to from ***messages.js*** to ***/e/paarthas/morepost*** which is handled by ***more_post_view***.
- The posts available are displayed one by one once the **More** is clicked and the when the user logs in again, the number of posts displayed resets to 1.

### Objective 10
- This feature was initiated but incomplete. 

### Objective 11:
**Description:**
- This objective is basically initiated to create a variety of Test Users, to check the efficiency and working of the features listed above. 
