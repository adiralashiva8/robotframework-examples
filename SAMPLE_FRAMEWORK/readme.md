# Robotframework Sample Framework

*SAMPLE_FRAMEWORK* is a generic POM structured followed by most of the automtion users

Aim of this FOLDER is to provide overview of creating automation folder structure. Hope this helps

 - DATA   --> Holds test data like excel, xml etc., files

 - PAGES  --> Since we are using POM concept. Individual pages created under this folder

 - RESULT --> Storing result into specific folder by mentioning in run command (--outputdir path)

 - REUSE  --> This folder consist of reusable keywords, test data etc.,
 
 - TESTS  --> Create test suites under this folder (suite consist of multiple tests)

Run Command:

 - Assume user is in *ROBOTFRAMEWORK-EXAMPLES* folder and following is run command (modify as per your setup)
    > robot --outputdir .\SAMPLE_FRAMEWORK\RESULT\ -T --dry .\SAMPLE_FRAMEWORK\TESTS\*