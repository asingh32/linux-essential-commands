#####################################
# Suppress input, output and error
#####################################
# Suppress standard error and output using "> /dev/null"
cat file.txt > /dev/null       		 # wont display echo messages
cat invalidfile.txt 2> /dev/null
30 1 * * *  command > /dev/null 2>&1	# Supress output and error message of a cron task


####################
# Join Command 
####################
join employee.txt bonus.txt		# Combine lines from 2 files based on a common first field

# Combine lines from 2 files based on a common field with different positions
# Here 1st column (ID) of the employee file maps to 2nd column (ID) of the  additionalbonus file
join -1 1 -2 2 employee.txt additionalbonus.txt


######################
# Translate Command
######################
tr a-z A-Z < employee.txt		# Convert from Lower case to Upper case
tr A-Z a-z < employee.txt		# Convert from Upper case to Lower case


###################
# Xargs Command
###################
# Xargs takes output of a command and pass it as argument of another command

# Delete files using Xargs
# When you are trying to delete too many files using rm, you may get error message :
# .bin/rm Argument list too long. To avoid this use Xargs
find /opt/testdir/ -name '*.log' -print0 | xargs -0 rm -f
find /etc/ -name '*.conf' | xargs list -l	# List all configuration files using Xargs
cat url-list.txt | xargs wget -c		# Use Xargs to download list of urls from a file
find /testdir/ -name *.jpg -type f -print | xargs tar -cvzf images.tar.gz	# Find jpg images and archive it
ls *.jpg | xargs -n1 -i cp {} /ext-drive-dir/dir				# Copy all images to external drive


##################
# Stat Command
##################
# Check status / property of a file / filesystem
stat /etc/my.conf	# display status of a file
stat /etc/mydir		# display status of a directory
stat -f /		# display status of filesystem


##################
# Diff command
##################
# diff is used to find the difference between 2 files and report it. 
# The result is not straight forward to read
diff -w newfile oldfile	# w - ignore whitespace while comparing
# In Output :
# --- (above) : indicates the changes happened in first file
# --- (below) : indicates the changes happened in second file
# Lines belonging to 1st file starts with "<" and 2nd starts with ">"



