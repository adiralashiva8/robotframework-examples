# Robotframework Excel examples

robotframework have different libraries to work with excel. They are

 - Openpyxlib   --> Supports only .xlsx format
    > Issue: Could not create new wb, can only create copy of wb

 - ExcelLibrary --> Supports only .xls format
    > Issue: Could write to excel

---

Openpyxlib Usefull Links:

 - Library Repo - [link](https://github.com/vallikkv/robotframework-openpyxllib)
 - Keyword Documentation (download html file) - [link](https://github.com/vallikkv/robotframework-openpyxllib/blob/master/docs/OpenPyxlLibrary.html)

Sample Openpyxlib scripts can be found under Excel folder (openpyxlib.robot).

Installation:

  > pip install robotframework-openpyxllib

---

ExcelLibrary Usefull Links:

 - Library Repo [link](https://github.com/NaviNet/robotframework-excellibrary)
 - Keywords Documentation [link](http://navinet.github.io/robotframework-excellibrary/ExcelLibrary-KeywordDocumentation.html)
 - Keyword Examples [link](https://github.com/NaviNet/robotframework-excellibrary/blob/master/Tests/acceptance/ExcelRobotTest.txt)

Sample ExcelLibrary scripts can be found under Excel folder (excellibrary.robot).

Installation:

  > pip install robotframework-excellibrary

---

Execution: 

 - Switch to specific folder in command prompt and execute following command
  > robot filename.robot