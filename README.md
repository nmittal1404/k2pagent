
" # Quick Start

1. Download Agent: https://github.com/nmittal1404/k2pagent/raw/master/k2pagent.zip

2. unzip downloaded agent to any location say k2p. 

3. Make sure "java -version" command works in your environment and it return version >= 1.8. If required version is not available, then download (https://java.com/en/download/) and install it. You may have to add path to java bin directory in your PATH if it is not already present.

4. Go to https://kloud2premise.appspot.com/agent/new and generate new agent init key.

5. Copy the configurations shown on UI and paste them in k2p/config/k2p.properties

6. Start agent: k2p/bin/k2p start (user k2p/bin/k2p.bat start for windows)

7. Open another terminal and add task: Execute k2p/bin/k2p addTask k2p/doc/task.json. It will create a task with name myFirstTask on https://kloud2premise.appspot.com/task/list. This task will print the content of agent's bin directory. You can directly create task from the kloud2premise UI as well.

8. Go to kloud2premise UI http://kloud2premise.appspot.com/exec/new?taskName=myFirstTask and submit this task for execution. You should see the execution result in few seconds. 

You can also submit task using restful API, you can make post request to https://kloud2premise.appspot.com/api/exec/myFirstTask/[Agent Name] using basic authentication (client Id as username and auth key as password). To call API you would need to first call create keys from UI https://kloud2premise.appspot.com/apiclnt/list. Curl example to call the API: "curl --data '' -i -u 564939167453453454:NUG4SC8J4V71m0yGeafdfggf8EqweAv0h2RJQIbKD4= -H 'Accept:application/json' https://kloud2premise.appspot.com/api/exec/myFirstTask/myAgent"

Please visit https://github.com/nmittal1404/k2pagent/wiki for more sample task definition
