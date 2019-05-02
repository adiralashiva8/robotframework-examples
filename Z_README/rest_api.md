# Robotframework Requests examples

Robotframework-Requests is for automating REST API in robotframework

Usefull Links:

 - Library Repo [link](https://github.com/bulkan/robotframework-requests)
 - Keywords Documentation [link](http://bulkan.github.io/robotframework-requests/)
 - Keyword Examples [link](https://github.com/bulkan/robotframework-requests/blob/master/tests/testcase.txt)

Sample REST API scripts can be found under [RESTAPI folder.](/RESTAPI)

Installation:

  > pip install robotframework-requests

API's Used:

  - [Dummy Rest API](http://dummy.restapiexample.com/)
  - [Basic Auth](https://postman-echo.com/basic-auth)

Execution: 

 - Switch to specific folder in command prompt and execute following command
  > `robot filename.robot`

In current tests POST, PUT and DELETE methods are dependent tests, so execute full file at a time
  > `robot --outputdir results -T RESTAPI\* `