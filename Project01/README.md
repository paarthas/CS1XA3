#### CS 1XA3 Project01 - <paarthas>

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
- **Execution:** This feature can be executed my typing in ""2"" when the computer asks for an input. But, when run without the creation of any files it would not return anything. Creating files that act as test cases would be helpful to
measure the efficiency of this feature.
- **Reference:** *NO REFERENCE*

## Feature 03 : 
- **Description:** This feature lists all the files in the directory ***CS1XA3*** and its **subdirectories** and sorts them based on their size from large to small. In addition, this also displays the size of the file in human readable
format
I have used *bytes* as the format of sizes. This feature has an exception that it does not display the hidden files that are located inside the ***CS1XA3*** directory and its **subdirectories** because it was'nt mentioned in the
instructions to do so. Inspite of that hold, it works perfectly for any test cases listed.
- **Execution:** This feature can be executed my typing in ""3"" when the computer asks for an input. Since there are files in the repo it isn't required to create any to test the feature. In order to measure the efficiency of the 
feature, files can be created and the feature can be executed as stated.
- **Reference:** Learnt the `awk` command from https://stackoverflow.com/questions/16374616/cutting-the-column-including-size/ `grep -v '^d'` command from https://askubuntu.com/questions/811210/how-can-i-make-ls-only-display-files

## Feature 04 :star:
- **Description:** This feature is an interactive feature as well. So, this basically takes in an input from the user which is an extension of a file and checks the number of files that are present in the directory ***CS1XA3*** and its
respective **subdirectories** as well. This feature seems to be working for most of my test cases.
- **Execution:** This feature can be executed my typing in ""4"" when the computer asks for an input. Then as the feature asks for an input, the desired extension must be entered and the feature is ready to go.
It is advisable to create files with a specific extension and then to test this feature for better testing.
- **Reference:** *NO REFERENCE*

## Custom Feature 01 :fire:
- **Description:**
1. This feature prompts the user for an input(ie.any word) and checks if it is in any of the files in the repo.
2. If it exists in any of the file, it removes all the lines that has the user prompt word in it.
3. If such a file does not exist, it ends up creating a file in the current directory with the reversed user promt word as its file name.

## Custom Feature 02 :fire:
- **Desription:**
1. This feature asks the user for a directory name and creates a new directory in that specified name.
2. It asks for an extension, from the user and finds all the files with that extension in the repo.
3. It copies the files found to the user created directory.

**EMOJI Reference :** https://www.webfx.com/tools/emoji-cheat-sheet/ 
