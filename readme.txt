!!!!!!!Important Update!!!!!!!! 

Added Vim Suite (modal VIM, mostly forked code)

Edit 11/4/11:
I found a great VIM script online that uses the Capslock key instead. I added in some needed features such as text highlighting (by holding shift with control) and fixed a bug where Caps would turn on if you were holding shift first.

Caps + shift + w (or b) can now highlight multiple words too. 

All credit for the rest of the script goes to "Unambiguous" at http://www.autohotkey.com/forum/topic44762.html

All vim controls work as you'd expect while holding the caps lock key. 

-----------------------------------------------------Below is 100% my script.

Vim arrows in windows:

Load this file with autohotkeys. On first load, run the registry edit at the bottom of this .atk file (that's commented out) in a new .atk file. This will keep your computer from locking when you press WIN+l. That's all!

Controls:

WIN+h: left
WIN+j: down
WIN+k: up
WIN+l: right

WIN+shift+(h,j,k or l): move while highlighting text

WIN+control+(h,j,k or l): move while skipping from word to word

WIN+control+shift+(h,j,k or l): move while skipping from word to word, and highlighting text

WIN+space: move down 6 lines
WIN+shift+space: move up 6 lines

Script made by Ben Gift.
benjamingift.com