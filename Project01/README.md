#### CS 1XA3 Project01 - ***paarthas***

## Usage
   Execute this script from project root with:
chmod +x CS1XA3/Project01/project_analyze.sh ./CS1XA3/Project01/project_analyze.sh


## Feature 01 ~ Mandatory Feature :heavy_exclamation_mark: 
- **Description:** This feature is basically an **interactive feature** that takes the input from the user to access the other features created in the file. This feature is a means of easy approach to run the other features.
- **Execution:**  This feature can just be executed by simply executing the `project_analyse.sh` file. Enter your name first and start following the instructions below to access the other features.
- **Reference:** *NO REFERENCE*

## Feature 02 :
- **Description:** This feature finds all the files in the directory **CS1XA3** and its **subdirectories** that has the string ***#FIXME*** specifically on the last line and lists them in a new file name ***fixme.log*** inside the 
**Project01** directory.
The feature I created also gets rid of the leading white spaces and works perfectly for any test cases provided.
- **Execution:** This feature can be executed by typing in ""2"" when the computer asks for an input. But, when run without the creation of any files it would not return anything. Creating files that act as test cases would be helpful to
measure the efficiency of this feature.
- **Reference:** *NO REFERENCE*

## Feature 03 : 
- **Description:** This feature lists all the files in the directory ***CS1XA3*** and its **subdirectories** and sorts them based on their size from large to small. In addition, this also displays the size of the file in human readable
format
I have used *bytes* as the format of sizes. This feature has an exception that it does not display the hidden files that are located inside the ***CS1XA3*** directory and its **subdirectories** because it was'nt mentioned in the
instructions to do so. Inspite of that hold, it works perfectly for any test cases listed.
- **Execution:** This feature can be executed by typing in ""3"" when the computer asks for an input. Since there are files in the repo it isn't required to create any to test the feature. In order to measure the efficiency of the 
feature, files can be created and the feature can be executed as stated.
- **Reference:** Learnt the `awk` command from https://stackoverflow.com/questions/16374616/cutting-the-column-including-size/ `grep -v '^d'` command from https://askubuntu.com/questions/811210/how-can-i-make-ls-only-display-files

## Feature 04 :
- **Description:** This feature is an interactive feature as well. So, this basically takes in an input from the user which is an extension of a file and checks the number of files that are present in the directory ***CS1XA3*** and its
respective **subdirectories** as well. This feature seems to be working for most of my test cases.
- **Execution:** This feature can be executed by typing in ""4"" when the computer asks for an input. Then as the feature asks for an input, the desired extension must be entered and the feature is ready to go.
It is advisable to create files with a specific extension and then to test this feature for better testing.
- **Reference:** *NO REFERENCE*

## Custom Feature 01 :
- **Description:**
1. This feature prompts the user for an input(ie.any word) and checks if it is in any of the files in the repo.
2. If it exists in any of the file, it removes all the lines that has the user prompt word in it.
3. If such a file does not exist, it ends up creating a file in the current directory with the reversed user prompt word as its file name.

## Custom Feature 02 :
- **Description:**
1. This feature asks the user for a directory name and creates a new directory in that specified name.
2. It asks for an extension, from the user and finds all the files with that extension in the repo that does not have ***read permissions***.
3. It provides the ***read*** permission to all the non-readable files and copies the files with the modifies permissions to the newly created directory.
4. It throws an error message if there are no files with the given extension.  

## Feature 05 :
- **Description:** This feature finds the most recent commit with the word ***merge*** in the commit message and checks out to that commit. So here, it is the `git log` command I used that plays the major role to extract the commit IDs. 
To Note : This feature creates two files merge.txt and mergenumber.txt during the implementation of the feature.     
- **Execution:** This feature can be executed by typing in ""5"" when the computer asks for an input and the feature is just simply executed. 
- **Reference:** Learnt the `cut` command from https://www.geeksforgeeks.org/cut-command-linux-examples/ 

## Feature 06 :
- **Description:** This feature is an interactive feature as well. It asks the user for a Tag (ie. any word) and creates a ***Tag.log*** file in the ***Project 01*** directory. And, it finds all the lines in every .py ***(python)*** file
that starts with a **#** and also has the ***Tag*** in it and puts those lines in the log file created earlier. In this feature, the `grep` command plays the key role to extract the lines of file with ease.  
- **Execution:** This feature can be executed by typing in ""6"" when the computer asks for an input. The Tag must be entered during the implementation of the feature and the feature is executed. It is advisable 
to create files under the pretexts of testing, to measure the efficiency of the code. 
- **Reference:** Learnt how to find a file that starts with a specific string from https://www.unix.com/unix-for-dummies-questions-and-answers/231717-grep-only-line-starting.html
               
## Feature 07 :
- **Description:** This feature is useful to Backup and Restore the files. It basically, creates a folder called ***backup*** in the ***Project01*** directory where the files to be backed up are stored. Also to notice, this is a BackUp 
and Remove function as it removes the files from its original location. In order to implement the Restore function, the original file paths of the files are copied to a file called ***restore.log*** that is created in the directory 
***Project01/backup***. During the restore of the files back to the original location, the Restore function removes the files from the Backup Location and moves it back to the original location. So basically, the backup files are deleted but
the original files are again restored back. Also, when the Restore Function is performed if there is no ***restore.log***, it will throw an error message. 
- **Execution:** This feature can be executed by typing in ""7"" when the computer asks for an input. Next, it asks whether you want to implement the **Backup** or the **Restore** function. It is always advisable to perform the 
backup function first and then the restore to see how the feature works smoothly. 
- **Reference:** Learnt to use `-exec` in find command from https://unix.stackexchange.com/questions/154818/how-to-integrate-mv-command-after-find-command
                 Learnt to use the `basename` function from https://www.cyberciti.biz/faq/bash-get-basename-of-filename-or-directory-name/

## Custom Feature 01 :
- **Description:** This feature asks an input from the user (ie. any word) and checks if that word is present in any of the files in the repo. If the specified word exists in a file, it removes that 
specific line that contains the user input word in it. If such files with the user prompt word cannot be found, it creates a file with the reversed user prompt word as it's filename in the current directory. 
- **Execution:** This feature can be executed by typing in ""8"" when the computer asks for an input. As required, the user must input the word to search for through the files and the result is obtained.   
- **Reference:** Learnt to use `--exclude` in `grep` command from https://stackoverflow.com/questions/221921/use-grep-exclude-include-syntax-to-not-grep-through-certain-files 

## Custom Feature 02 :
- **Description:** This feature is also an interactive feature as it asks for the name of the directory to be created also the extension of the file to search for. This feature creates a directory with the user given directory name
and asks for a file extension to search for. It finds all the non-readable files in that extension and gives it read permissions and saves a copy of the modified files in the new directory created. If there are no files with the given 
extension it throws an error message. 
- **Execution:** This feature can be executed by typing in ""9"" when the computer asks for an input. The name of the directory to be created and the extension of the file must be input. To confirm the working of the feature, `ls -l`
command can be used to see the file permissions.
- **Reference:** *NO REFERENCE*  

# EMOJI Reference : https://www.webfx.com/tools/emoji-cheat-sheet/ 
