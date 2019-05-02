# Robotframework Listener examples

Do you have following requirements:

 - Send email once execution is completed

 - Push results to external dashboards

 - Get live execution logs

Using robotframework listener we can achieve. Sample listener scripts can be found under [Listener folder.](/Listener)

Execution: 

- Switch to specific folder in command prompt and execute following command

    1. Send Email after execution (update config.py accordingly)
       > `robot --listener EmailListener.py -V config.py Tests`
    
    2. Want to get live logs
       > `robot --listener LiveLogsListener.py Tests`