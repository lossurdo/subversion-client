# subversion_client
Docker image for a legacy client Subversion (SVN) projects.

## Why?

I still have legacy projects using Subversion source version control and I don't want to keep Subversion packages installed on my host machine just for this projects.

## How to install?

 - Install Docker (https://docs.docker.com/install/) in case you don't have it
 - Pull the image
	 - `$ docker pull lossurdo/subversion_client`
 - Go to your project directory
	 - `$ cd ~/myproject`
 - Run the linux shell
	 - `$ docker run -it --rm -v $PWD:/project lossurdo/subversion-client:1 bash`

Now you can run your SVN commands. Look the `svn info` example output below:

```
[root@fffd8a8e0f58 project]# svn info
Path: .
Working Copy Root Path: /project
URL: http://svn.myhost.com/myproject/MyProject/trunk/MyProject
Relative URL: ^/MyProject/trunk/MyProject
Repository Root: http://svn.myhost.com/MyProject
Repository UUID: 30c14034-4754-55bf-afe2-1804a5hh0efd
Revision: 2177
Node Kind: directory
Schedule: normal
Last Changed Author: john-doe
Last Changed Rev: 711
Last Changed Date: 2015-04-14 13:34:29 +0000 (Tue, 14 Apr 2015)
```
Feel free to contribute.
