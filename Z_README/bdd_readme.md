# Robotframework BDD Example

robotframework supports BDD format

```
*** Test Cases ***
Valid Login
    Given Login Page Is Open
    When Valid Username And Password Are Inserted
    And Credentials Are Submitted
    Then Welcome Page Should Be Open

```

 - In above example: keywords started with `Given`, `When`, `AND` and `Then` are ignored by robotframework
 - As a user we need to create a keyword like `Login Page Is Open` and call it in Test case

 Note: `Scenario:` will not be ignored by robotframework

Reference - http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#behavior-driven-style

Sample BDD scripts can be found under [BDD_STYLE folder](/BDD_STYLE)

Result Will Looks Like:

   <a href="https://ibb.co/17v5psz"><img src="https://i.ibb.co/bQWZyHb/BDD-Style.png" alt="BDD-Style" border="0"></a>