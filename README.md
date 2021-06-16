# CSC 317 Term Project

## Purpose

The purpose of this repository is to store all the code for your web application. This also includes the history of all commits made and who made them. Only code submitted on the master branch will be graded.

Please follow the instructions below and fill in the information requested when prompted.

## Student Information

|               | Information              |
|:-------------:|:-------------:           |
| Student Name  | Danny Collan             |
| Student ID    | 920303979                |
| Student Email | dcollan@mail.sfsu.edu    |



# Build/Run Instructions

## Build Instructions
𝙵̲𝚘̲𝚛̲ ̲𝚋̲𝚎̲𝚐̲𝚒̲𝚗̲𝚗̲𝚎̲𝚛̲'̲𝚜̲ ̲𝚙̲𝚞̲𝚛̲𝚙̲𝚘̲𝚜̲𝚎̲ ̲(̲𝚂̲𝚝̲𝚎̲𝚙̲𝚜̲ ̲𝟷̲-̲𝟼̲)̲ ̲/̲/̲ ̲𝙵̲𝚘̲𝚛̲ ̲𝚋̲𝚞̲𝚒̲𝚕̲𝚍̲𝚒̲𝚗̲𝚐̲ ̲𝚓̲𝚞̲𝚜̲𝚝̲ ̲𝚊̲𝚏̲𝚝̲𝚎̲𝚛̲ ̲𝚌̲𝚕̲𝚘̲𝚗̲𝚒̲𝚗̲𝚐̲ ̲(̲𝚂̲𝚝̲𝚎̲𝚙̲𝚜̲ ̲𝟽̲-̲𝟿̲)̲
1. Create "package.json" file by opening "Git Bash" for "csc317-termproject-dcollan" folder, and then entering "npm init."
2. Given a set of prompts, click enter for all of them. Be sure to enter "app.js" for the "entry point" prompt, as well as your full name for the "author" prompt, and a description of the file for the "description" prompt.
3. Once package.json file has been created, open Atom application, and create new file titled "app.js."
4. Once app.js file has been created, perform the task for the first milestone on implementing the code, and then clicking "save."
5. Open package.json file on Atom application, and change the prompt "'test': 'echo \'Error: no test specified\' && exit 1'" to "'start': 'node app.' This will initialize the file as a readable node file from node.js, in which this will alow for the "app.js" file to be read by inputting "npm start" on the term project's directory in the command line. Click "save" next.
6. Enter "npm install" on the command line to build the project next.
7. To simply build the project if the file had been cloned from Github, go to the cloned term project's directory in the command line (cd csc317-termproject-dcollan), and enter "npm install" to build the project for executable use.
8. Once the project has been built, import the project into Microsoft Visual Studio Code next.
9. After its importation, all hbs files, javascript classes, json locations, and directories will be included in the package. The project is now ready and available for execution.


## Run Instructions
1. To run the project after having it imported, open CMD, and enter "cd csc317-termproject-dcollan/application" to navigate to the application folder inside the csc317-termproject-dcollan package.
2. Enter either "npm start" or "nodemon" to run all of the files inside the application folder.
3. Once entered, the localhost:3000 website will begin to run. Note that if you do not enter "npm start" or "nodemon," the website will not exist.
4. Enter "localhost:3000" on the web browser, and the website will appear, with the index.hbs page first appearing.
5. In the index.hbs page, there will be four options: to view the website's information, to view a sample image, to create an account, or simply to log in to an existing one.
6. In order to be able to start posting photos, you must create an account first. Once an account has been registered, you will be
directed to the login page.
7. After logging in from the login page, the session will start, in which from there, you will then be directed to the postimage.hbs page to upload the first photo. Note that this is necessary so that the website will not crash due to the lack of reading an uploaded image file existing from its database.
8. Once the image has been uploaded, you will then be taken to the "News Feed" page, where all images uploaded from all existing accounts are displayed on the page, including some sample images.
9. To upload another image with the currently logged session or to log out, the options are found at the bottom of the News Feed page.
