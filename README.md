# Jungle Clear Timer

_A quick and dirty script to automate jungle clear practice, and to help you spot your mistakes with ease_

## Prerequisites

Before trying to run anything in this package please install :

- Autohotkey : https://www.autohotkey.com
- LiveSplit : http://livesplit.org

Both programs are free and don't use too much memory, however if you have any performance issues with this app feel free to contact me on discord.

Autohotkey allows the program to catch keyboard events and to perform an Optical Character Recognition algorithm. Very useful in this case since it will help us track the current number of CS for our jungle clears.

LiveSplit is basically a timer designed for speedrunning.

The purpose of this app is to simply run the script and live split

## Setup

The setup is quite easy from now on, you can start by running the JCT OCR.ahk file. This one will be responsible to trigger a key event when reaching different CS threshold. (By default the triggered key is the "c" one, but you can edit that in by swapping it in the code. replace the c in "Send {c}" to whatever key you like, you can see the Send function doc on the ahk website for more details).

Once the script is running it can be found in your taskbar. To stop it simply rightclick it there and close it.

Go into the splits folder and select the one you want to practice.

The best practice here is to duplicate it and open the copy. I'll work on a better way to do it later, this project is in early dev phase for now.

After duplicating it you can simply double click it to open livesplit, the only remaining setup you need to perform is to rightclick anywhere in the interface.

Go to settings, and set the start / split one to the "C" key. (or whatever key you previously chosed)

Next setup the reset to be : Ctrl Shift P, this one is important since it's shortcut by default to reset the practice tool in league of legends.

## Actually using it

Now you have the ahk ocr running, and livesplit opened.
You can open the league client and start practicing, the only thing for you to do is to press the "C" key when you start your clear. It's gonna start the timer after that you can fully focus on your clear.

After each camp, the ahk script will trigger the C key, and livesplit will automatically react to that.

Once your clear is done, you can see on which part of the clear your are late and pinpoint the moment you messed up.

then simply press ctrl shift P to reset the game and the timer / script will reset aswell.

For now it's quite a bit of manual operations and i'm going to improve it further down the road.

If you have any trouble making anything work, or questions feel free to ping me on discord or DM me.
