# Robotframework AngularJSLibrary examples

Robotframework-AngularJSLibrary helps in automating websites built in angularjs

Usefull Links:

 - Library Repo [link](https://github.com/Selenium2Library/robotframework-angularjs)
 - Keywords Documentation [link](http://selenium2library.github.io/robotframework-angularjs/)

Sample AngularJSLibrary script can be found under AngularJS folder.

Installation:

  > pip install robotframework-angularjs

Points to Remember:

 - AngularJS applications are webapplication developed using angularjs. 
 - We can you selenium to automate angularjs apps but the draw back is angularJs elements take some time to load. 
 - Our test scripts need to wait until all the angular elements are loaded

    > AngularJS library has keyword _Wait for Angular_ which will wait until last angular element is loaded

  - We need to use _Wait for Angular_ when page loaded, refresh, search etc., option along with selenium keywords

Execution: 

 - Single Test: Switch to specific folder in command prompt and execute following command
  > robot filename.robot