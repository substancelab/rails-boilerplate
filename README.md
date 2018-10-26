# Substance Lab Rails Application Boilerplate

## How to use this repository?

1. `cd path/to/where/you/want/the/new/app`
2. `export NEW_APP_NAME=<name of app>`
3. `git clone git@github.com:substancelab/rails-boilerplate.git $NEW_APP_NAME`
4. `cd $NEW_APP_NAME`
5. `rm -rf .git .circleci`
6. Replace all occurrences of "Boilerplate" with YourAppName": `find . -type f -print0 | xargs -0 sed -i '' 's/Boilerplate/YourAppName/g'`
7. Replace all occurrences of "boilerplate" with "your_app_name": `find . -type f -print0 | xargs -0 sed -i '' 's/boilerplate/your_app_name/g'`
8. If you don't need users in the project, remove Devise: `script/boilerplate/remove_devise`
9. `echo "# README" > README.md`
10. `rm -rf script/boilerplate`

... and you're off to the races.

Typical next steps:

### Set up the new repo

1. `git init`
2. `git remote add origin GIT_REMOTE`
3. `git add .`
4. `git commit -m "Initial import from rails-boilerplate"`
5. `git push --set-upstream origin master`

### Set up the application

1. `cp config/database.yml.example config/database.yml` # edit as necessary
2. `bin/setup`
