# Karate Test Suite for API Testing

This repository contains Karate tests for order placement functionality and user authentication. 
The tests verify that the token is properly received and that new orders can be placed 
correctly when authentication is provided.

## Project Structure

1. **Karate Config (karate-config.js)** <br />
This file contains configuration values used for the tests:
* **Order Data** Values for ordering new esim
* **URLs** Endpoints
* **Auth Token** Stored as authToken
 2. **Feature Files** 
* **auth.feature** Contains the tests for obtaining new authentication token 
via POST request 
* **airlooPartnersNewOrder** Contains the tests for placing a new order. This feature files verifies that the
response data is correct
3. **airlooApiTests.java** Contains the runnable tests using JUnit

## How to run the tests

1. **Prerequisite** 
* Maven installed
* Java v8 lowest
2. **Running the tests** 
``` mvn test ```
This command will run both feature files.
3. **Running the tests as JUnit test annotations**
Navigate to **src/test/java/com/airloo/airlooApiTests.java**  and start the tests 

## Viewing the tests reports
Once the tests are completed, you can view the test reports via 
**target/karate-reports/** directory. For each feature file you will find a corresponding html file. <br />
Open the HTML reports in any browser.
