# VIM for reading on Acrobat

This project uses an [Auto Hot Key](https://www.autohotkey.com/) script to implement partial moving functions of VIM for reading in Acrobat. 

It definitely would increase your reading experience!

## Start

- Download the [script](vim_for_acrobat.ahk), and also install the Auto Hot Key software to your platform. 
- Double click the script, and it should be running.
- Open a pdf in Acrobat, and press "j" on your keyboard, and the screen would move down!

## Common keys

Here are my mostly used keys in reading. You could see and edit the script to add more features. Writing Auto Hot Key script is very simple.

|   Key   |            Action            |          Usage          |
| :-----: | :--------------------------: | :---------------------: |
|    j    | scroll **down** **4** times  |     move view down      |
|    h    |  scroll **up** **4** times   |      move view up       |
|    d    | scroll **down** **20** times | move view down quickly  |
|    u    |  scroll **up** **20** times  |  move view up quickly   |
|    /    |     enter **find** mode      |                         |
|   esc   |                              |                         |
|   gg    |           go Home            |  move view to the top   |
| shift+g |            go End            | move view to the bottom |
|  alt+j  |       alt + left key         | move to last view       |
|  alt+k  |       alt + right key        | move to next view (if possible) |



# Thanks

Main frame of the code is from [Gordon Gustafson](https://superuser.com/users/2474/gordon-gustafson)'s [post on StackExchange](https://superuser.com/a/692066/1774066).

ChatGPT is used to upgrade [Gordon Gustafson](https://superuser.com/users/2474/gordon-gustafson)'s code to current version of AHK.

# comments

Better use VIM Extension of browser instead to use this shit to suit the large sophisticated Acrobat Reader.
Recommended vim extensions: Vimium-C, and PDF Viewer for Vimium-C