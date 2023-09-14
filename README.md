
![Logo](https://imagizer.imageshack.com/img922/7023/lhgfe7.png)


# Deploy Project Synapse

This project is made to make deployment easier. It is composed of several versions, mac, windows, and also offers some additional tools.




## Deployment

To use the basic script, follow this guide

For Mac OS :

Before launching the script, you have to move deploy folder on your desktop.
Now you can launch "deploy_mac".

This script is working on Mac Intel and M (M1, M2). When you launch it, you gonna have to press i for Intel, or M for M1.
Now you can follow the instructions on the screen.

What the script will do :

    - Give you Mac adress of your computer, to give network authorization

    - Connect to the network

    - Install the command line tools for Xcode

    - Install Homebrew

    - Install the following dependencies :
        - Zoom
        - Slack
        - Firefox
        - Google Chrome
        - Avast
        - KeePassXC
        - Visual Studio Code
        - Google Drive
        - Notion

    - Check for potential updates, and install them if there is

    - Enable the firewall and configure it

    - Enable the FileVault, and save the recovery key in the directory where you launch the script (press enter twice to skip)


For Windows :

For windows, the script is more simple. You just need to launch the executable "deploy_executable.bat" without move any folder on your computer.
You gonna have to give the right to the script to be executed, just by clicking "yes" if the system ask you.
Then you don't have to do anything, the script will do everything for you.

What the script will do :

    - Give you Mac adress of your computer, to give network authorization

    - Connect to the network

    - Install Chocolatey

    - Install the following dependencies :
        - Zoom
        - Slack
        - Firefox
        - Google Chrome
        - KeePassXC
        - Visual Studio Code
        - Google Drive
        - Notion
        - Git
        - Python3

    - Check for potential updates, and install them if there is

    - Show Windows Defender status

    - Enable the firewall and configure it

There is also somes utils scripts, to get Mac adress, or serial number of the computer.
You can find them in the utils folder, in Mac and Windows folder.

On top of all that, there's now a Mac-only script right now (you can find it at deploy/mac/set-updates/Mac_*/Setup_update). It is useful to deploy on the machine a program which is saved in the applications folder, and which will be launched at each start of the session. It is used to check the potential updates of the programs installed by the previous script, as well as to reactivate the firewall if necessary. It takes about 1 second to do its job and then closes (unless updates are to be made, where you have to add the download and installation time)

Work In Progess :

    - Enable BitLocker for Windows version, and save the recovery key
    - Make Setup updates for Windows version 


## Link to an other project

This project precedes another, called the Salt Project. It takes up the ideas of this one, the mechanics, like Homebrew. Today, the "Deploy" project is useful for setting up a new company machine, or a refurbished old one. Salt Project allows us to keep these computers up to date, and remotely, once they've been handed over to the employee. Here's a link to this new [Salt Project](https://github.com/wwLeji/Salt-Project-Synapse), which complements this one perfectly.


## Authors

- [@wwLeji](https://github.com/wwLeji)

