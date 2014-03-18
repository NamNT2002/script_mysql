Let's say that your comment lines start with the symbol #. You have a handy one-liner for sed that will get rid of them:
sed '/^\#/d' myFile > tt 
mv tt myFile
Here is what happens:
sed '/^\#/d' myFile removes all lines starting with # from the file myFile and outputs the result in the console,
> tt redirects the output into a temporary file called tt,
mv tt myFile moves the temporary file tt to myFile.
If your comment lines start with the symbol c followed by a space, the commands become
sed '/^c\ /d' myFile > tt 
mv tt myFile
And so on, you get the trick!
Deleting comment lines on top of a file

In other cases, you may have a text file for which a give number of lines on top are comments. Let's say that you want to get rid of the first 3 lines. Well, here is the trick:
sed '1,3d' myFile > tt 
mv tt myFile
No big deal as you can see!
Processing multiple files...

Now, you may have 100 files to process at the same time. That's where foreach comes in... Let's say you want to correct all files ending with .dat, here is what you should do:
open up a konsole (Figure 1),
move into the directory where your files reside,
type the following commands:
foreach file (*dat)
sed '/^\#/d' $file > tt
mv tt $file
end
That should take care of it...