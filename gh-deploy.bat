@echo off
set /p "commitMSG=Commit Msg: "

git add -A && git commit -m "%commitMSG%"

mkdocs gh-deploy

git add -A && git commit -m "Deploying Github Pages"