# EXAMPLE 1
**Write a shell script that renames all files in the current  directory that end in ".jpg" to begin with today's date in the folowing format: YYYY-MM-DD.**
<pre>
#!/bin/bash

DATE= $( date "+%Y-%M-%d" )
for FILE in *.jpg
do
    $(mv $FILE "$DATE-$FILE")
done
exit 0
</pre>
