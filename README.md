# GrubFlix
GrubFlix is an app that delivers movies and food to customers at home. The GrubFlix app utilizes C.R.U.D. 
(Create Read Update Delete), JPA, and Spring MVC. The user can search for the DVD they want or search by
genre. The user can create an account, navigate the app as an administrator, make an order, and then checkout.
The application utilizes a database of from 2,000 to 200,000 movie titles and accesses it using methods that incorporate 
JSTL syntax.


# Known Bugs
Currently, the account view page does not list the user's current information. There is a mention of needing to list Serializable. We do not have level specific access for an admin, and one can click straight into admin access. No validation has been put in place to catch erroneous typing in signup, also no words showing when you have a wrong user/pass combination. I believe it breaks when an incorrect username is entered.

# Items to Still Address
Checkout does not have an actual checkout that tallies. Admin requres specific admin access. Food was never implemented due to project time constraints.
