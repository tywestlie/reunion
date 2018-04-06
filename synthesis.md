## Synthesis

Included with your pull request, you must submit answers to the following questions:

* What do you think we were trying to get you to learn with this challenge?
* Outline in words (at least 5-6 sentences) what your code is doing in order to solve this problem.
* What was the most difficult portion of this for you?
* What came naturally to you?

I think this challenge is designed to go over nested collections inside of different classes and using programs to access them and do operations to them.

My code in my activity class initializes with an activity name and a hash to store participants and their financial contribution to the activity. It then adds participants to the hash using their names as keys and their financial contributions as keys. The total cost of the activity is added up in the cost method using an enumerable on the values of the participant hash. Then the total cost is divided by the amount contributors. The amount the participants owe each other is calculated by taking the average cost and subtracting it by the amount contributed by each participant. Next the reunion class initializes with a location and an empty array. It then pushes instantiated activities into the activities array.

The thing that was most difficult was keeping track of some variables in the tests and connecting the two objects together.

The thing that came naturally was structuring my TDD. Creating a test and then building a method for each test.
