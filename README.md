# GO-Build-System-for-Sublime-Text-3-On-Windows

Two methods of running .go program is stated below( "Method 1" describes " 'go' build system
creation inside sublime text 3 and then running .go programs by a single-click", whereas,
"Method 2" describes "running .go programs usind cmd").

So, definitely, "Method 1" is the method we are looking for in order to create a
'go' build system in sublime text 3.

"Method 1" is applicable only for windows os, because, two batch(.bat) programs
have been used in "Method 1".
(If you are a linux or Mac osx user, even then you can make your
own sublime-build system for .go programs(just like the one depicted in "Method 1" for windows) thus:
(the following 3 steps are only for those who want to create a .go build system
in any operating system other than windows:)
1) At first read "Method 2" to gain an insight about all the background processes.
2) Now read "Method 1"(just read, do nothing else) carefully, beacause, it is "Method 1" that
   will be necessary for building your .go build-system for sublime text 3 in your os,
   not "Method 2";  "Method 2" is just for an insight.
3) Now, simply convert all the commands inside the two .bat files (Method 1) and the value of
     "shell_cmd" key inside "Go.sublime-build"(Method 1) to equivalent Linux/Mac_osx commands
     and follow instructions of Method 1. If you follow the 3 steps here,
     then you will be able to make your own sublime .go build-system for your os.)


Of the two methods, we are specifically looking for Method 1. But even after that
a reading of "Method 2" is necessary for gaining insight about what is actually
happening behind the screen although we will only follow "Method 1".

## Prerequisites:
1) .go compiler must be installed and necessary settings must be done
     prior to going for "Method 1".
2) go.exe path must be included in the "path" variable of "Environment Variables".

## How to open cmd(or command prompt):
    Just press windows_key+R . A little window titled "Run" will pop-up. Inside the
    window, there will be a box and inside the box, write "cmd" (without quotes)
    and hit ENTER. A black screen wil be opened. That's your cmd(or command prompt).

## How to navigate to a specific folder inside cmd?:
    1) if you want to navigate to a folder which is located anywhere in "C" drive, in cmd,
         then type in cmd:
              "cd <full-path-to-the-folder>" (without quotes) and hit ENTER.
       For example, if you want to navigate to the folder "C:\Documents",
         then, type in cmd: "cd C:\Documents" (without quotes) and hit ENTER.
         You will be inside the folder "C:\Documents" (in cmd).
    2) but if you want to navigate to a folder which is located in any drive other than "C" drive,
        then type in cmd:
               "cd <full-path-to-the-folder> && drive_letter:" (without quotes)
        and hit ENTER. (drive_letter=D or E or F or G etc)
        For example, if you want to navigate to the folder "G:\test1\subtest1",
          then, type in cmd: "cd G:\test1\subtest1 && G:" (without quotes) and hit ENTER.
          You will be inside the folder "G:\test1\subtest1" (in cmd).




## Method 1 (for running .go program inside sublime text):
# Steps:
1) At first, read "Method 2" below to gain a complete idea of how the whole
     process works(all the steps of "Method 2" from 1 to 6).
2) Create a folder called "go" where you will create all your 'go'
     projects in the future. Copy "go_program_File_Structure_Creator.bat" and
     "template_GO_Program_Runner.bat" and paste them inside this folder.
     I repeat, this is the same folder inside which you are going to create
     your 'go' project (e.g:"xxxxxx_project")(see step-1 of "Method 2").
     
3) Open the file "Go.sublime-build" in sublime text 3(or any other editor of your choice).
     Replace "<full-path-to-template_GO_Program_Runner.bat>" (without quotes) with
     the full path of your "template_GO_Program_Runner.bat"
     file(see the detailed instructions inside "Go.sublime-build" itself).
     Save "Go.sublime-build". Now, open sublime text. In sublime text's top menubar,
     click "Preferences > Browse Packages". A folder will pop-up. Inside this folder,
     a folder with name = "User" will be present. Navigate inside this folder("User")
     and just copy-paste "Go.sublime-build" inside it(inside the folder "User").
     Then, close sublime text editor.

4) Now, double-click "go_program_File_Structure_Creator.bat" (in order to create
     "xxxxxx_project"). ( Note: After double-clicking, a pop up window will appear
     and it will ask you to enter the name of the project. If you want to create
     "xxxxxx_project", name of the project will be only= "xxxxxx"
     (with quotes) ; speaking more easily, if, for example, you want to create a project called
     "helloWorld_project", then, in the pop-up window, you must only enter: "helloWorld"
     (with quotes) as the name of the project ; in this example, "xxxxxx"="helloWorld").
     If these are done, the "xxxxxx_project" (including all
     its subfolders) will be automatically created. A blank .go program file will be
     automatically generated with name = "xxxxxx.go"(for example, "helloWorld.go"
     (if the project was: "helloWorld_project")) inside the folder:
     "<full-path-to-the-folder-named-xxxxxx_project>\src\main" (for example, inside:
     "G:\Programming_folder\go\helloWorld_project\src\main"). Now, write your .go program inside
     the blank file "xxxxxx.go" (by opening it inside sublime text) and then save it.


5) Code running:
     Open your .go program in sublime text 3.
     In the sublime top menubar:
     
     Select "Tools > Build System > Go" and click "Tools > Build" to run
     your .go program.

     ** N.B: here, "xxxxxx.go" program is the main .go program.
   
   Next time, when you will require to run your .go program, you will need to follow just step numbers: 4 & 5 only.





## Alternatively:: Method 2 (for running .go program Manually inside cmd):
This method is a tedious process, so, read with patience.
# Steps:
#####################################################################################################
##                     go program's file structure creator starts                                  ##
#####################################################################################################
1)   At first, create a folder called "go" and then create a blank folder (inside the folder "go")
       and name it(the blank folder): "xxxxxx_project". For example, "helloWorld_project" .
       (Here, xxxxxx = helloWorld).

2)   Then inside the newly created folder, i.e, inside the folder "xxxxx_project",
       create three blank folders and name them as: "src", "bin" and "pkg" (of couse, without inverted comma).

3)   Then create a blank folder inside the "src" folder,
       and name it "main".

4)  Inside the "main" folder,  (i.e, inside "<full-path-to-the-folder-named-xxxxxx_project>\src\main" ,
       (for example, inside: "G:\programming_folder\go\helloWorld_project\src\main"))
       create your .go program(or .go code).
##################################################################################
##                     go program's file structure creator ends                 ##
##################################################################################


#################################################################################
##                     go program's running arrangement starts                 ##
#################################################################################

5)  Open cmd. Navigate to "xxxxxx_project" folder in cmd.
       Now, inside cmd, type these two commands one after another:
       
	       (i) Command 1:
                 
		 set GOPATH="<full-path-to-the-folder-named-xxxxxx_project>"
                 
		 ( for example,
                     
		     set GOPATH="G:\Programming_folder\go\helloWorld_project")
		     
                 After typing the above command in cmd, hit ENTER.
	        (ii) Command 2:
		
                      set GOBIN="<full-path-to-the-folder-named-xxxxxx_project>\bin"
		      
                  ( for example,
		  
                     set GOBIN="G:\Programming_folder\go\helloWorld_project\bin" )
		     
                  After typing the above command in cmd, hit ENTER.

 6) Now, inside the cmd, navigate to the "<full-path-to-the-folder-named-xxxxxx_project>\src\main" folder
      (for example, "G:\programming_folder\go\helloWorld_project\src\main")
      where you have already created your .go program. Now, to execute your .go code,
      type in the cmd (by the way, the following .go program is the main .go program):
      
	       go run basename_of_your_go_program.go
	       
        (
          for example, if the name of your .go program is "addition.go", then
                   
		   basename_of_your_go_program = addition
		   
        )


##################################################################################
##                     go program's running arrangement ends                    ##
##################################################################################
Cheers!!!!!!!!!!! You are all done!!!!!!!!!!!!.
