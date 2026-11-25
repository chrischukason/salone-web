# Task 2 - Step by Step (Git and Application Setup)

## 0. Get the folder into Ubuntu
Unzip `Task2_salone-web.zip` on Windows, e.g. to C:\Users\Vincent\Desktop.
In Ubuntu, copy the folder into your home directory:

    cp -r /mnt/c/Users/Vincent/Desktop/salone-web ~/salone-web
    cd ~/salone-web && ls -la

## 1. Create the GitHub repository
1. Log in at https://github.com -> click + -> New repository
2. Name: salone-web | Public | do NOT tick "Add a README" -> Create repository

## 2. Create a personal access token (your "password" for git push)
GitHub -> Settings -> Developer settings -> Personal access tokens -> Tokens (classic)
-> Generate new token -> tick "repo" -> Generate -> COPY the token.

## 3. Upload the project
    cd ~/salone-web
    bash push-to-github.sh YOUR_GITHUB_USERNAME "Your Name" "you@email.com"
Paste the token when asked for a password (nothing shows while pasting - normal).
SCREENSHOT 1: refresh the GitHub repository page showing the files.

## 4. Clone into Ubuntu
    cd ~
    mv salone-web salone-web-original
    git clone https://github.com/YOUR_GITHUB_USERNAME/salone-web.git
SCREENSHOT 2: the git clone command and its output.

## 5. Show the project files
    cd ~/salone-web
    pwd
    ls -la
SCREENSHOT 3: the output above.

## Optional: preview the page
    cd ~/salone-web && python3 -m http.server 8000
Open http://localhost:8000 in your browser.
