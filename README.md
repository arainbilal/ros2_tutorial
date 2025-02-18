# Exploring ROS2: Simulation-Based Examples for Robotics Projects

**Please make sure to set up your computer environment before the workshop if you plan to follow the hands-on session and try it yourself during the workshop. [Please test your setup](#ros2-tutorial-setup)**


## Overview
The workshop is designed to provide an interactive and hands-on learning experience focused on ROS2, particularly the creation of basic ROS2 programs, topics, services, and actions. Attendees will explore a typical mapping and navigation application in ROS2, demonstrating how simulations can be translated into real-world applications. The workshop will also highlight the key differences between ROS1 and ROS2, offer insights into simulation prototypes within virtual environments, and introduce the foundational architecture of ROS2. Additionally, participants will learn about available resources for further exploration and mastery of ROS2.

## Speaker details
Dr. Bilal Arain is an Assistant Professor at the Department of Computer Engineering at the [University of Sharjah](https://www.sharjah.ac.ae/Academics/Faculty-And-Staff/Bilal-Ahmed-Arain). He received his PhD in Electrical Engineering from the University of New South Wales, Australia. He was a Postdoctoral Fellow at the Commonwealth Scientific and Industrial Research Organization and the Queensland University of Technology in Brisbane, Australia. During this period, he also worked in Australia's mining and precision agriculture industries. His research focuses on addressing practical problems in robotics, specifically emphasizing visual robot perception, unmanned system navigation, and control.

## Need Help? Open an Issue
1. Go to the Issues tab of this repository.
2. Click on the **New Issue** button.
3. Provide a clear title and detailed description of your question or problem.
4. (Optional) Attach screenshots, logs, or code snippets if relevant.
5. Click 'Submit new issue' to post your request.

------------------------------------------------------------------------------------------------------------------------------

## Recommended system setup

+ Modern multi-core CPU, e.g. Intel Core i5 or Intel Core i7
+ 8 GB of RAM or higher 
+ Ubuntu Desktop 22.04 (Jammy Jellyfish)
+ Good to have: Discrete GPU Graphics Card with 4GB of memory, e.g. NVIDIA GTX 650


## Docker Install
Docker has two available versions: Community Edition (CE) and Enterprise Edition (EE). In this tutorial, we'll install the CE version.

1. Remove old versions of Docker (if installed):

```
sudo apt-get remove docker docker-engine docker.io
```

2. Install dependencies and keys

```
 sudo apt install curl apt-transport-https ca-certificates curl software-properties-common

 # Add the official GPG key of Docker
sudo apt-get update
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
```

3. Add the repository to Apt sources

```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

4. Install the Docker pacakage

```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

5. Add docker to the user group

```
sudo usermod -aG docker ${USER}
```

6. Apply the new membership by log out of the Ubuntu and log in back in Ubuntu

7. Verify that the installation is successful by running the **hello-world** image:

```
sudo docker run hello-world
```

You should be able to see the following output:

```
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

## [Running this tutorial with Docker Image](#ros2-tutorial-setup)

1. Pull the Docker image for tutorial

```
docker pull arainbilal/ros2_tutorial:no_nvidia
``` 

2. Run the image 

```
./run.bash arainbilal/ros2_tutorial:no_nvidia --no-nvidia
```

3. Test your image 

```
source /opt/ros/humble/setup.bash
ros2 topic list
```

You should be able to see 

```
/parameter_events
/rosout
```

4. Test visulaization tools

```
rviz2
```

------------------------------------------------------------------------------------------------------------------------------
# References
[1](https://github.com/osrf/subt/wiki/Docker-Install)
[2](https://docs.docker.com/engine/install/ubuntu/)