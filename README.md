# k2pagent
Agent for kloud2premise.appspot.com. 

# Download Agent
https://github.com/nmittal1404/k2pagent/raw/master/k2pagent.zip

# Quick Start

1. unzip downloaded agent to any location say k2p. 

2. Make sure "java -version" command works in your environment and it return version >= 1.8. If required version is not available, then download (https://java.com/en/download/) and install it. You may have to add path to java bin directory in your PATH if it is not already present.

3. Go to https://kloud2premise.appspot.com/agent/new and generate new agent init key.

4. Copy the configurations shown on UI and paste them in k2p/config/k2p.properties

5. Start agent: k2p/bin/k2p start (user k2p/bin/k2p.bat start for windows)

6. Open another terminal and add task: Execute k2p/bin/k2p addTask k2p/doc/task.json. It will create a task with name myFirstTask on https://kloud2premise.appspot.com. This task will print the content of agent's bin directory. You can directly create task from the kloud2premise UI as well.

8. Go to kloud2premise UI http://kloud2premise.appspot.com/exec/new?taskName=myFirstTask and submit this task for execution. You should see the execution result in few seconds.

Please visit https://github.com/nmittal1404/k2pagent/wiki for more sample task definition
