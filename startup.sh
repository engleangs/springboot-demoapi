  #!/bin/bash
BASE_PATH=/App
PROJECT_NAME=springboot-demoapi
GIT_PROJECT=git@github.com:engleangs/springboot-demoapi.git
GIT_BRANCH=master
FAT_JAR=demoapi-0.0.1-SNAPSHOT.jar
GIT_RESULT=git_result.txt
echo "init">"$BASE_PATH/$GIT_RESULT" #initialize result of git as init

if [ -d "$BASE_PATH/$PROJECT_NAME" ];
then
    cd "$BASE_PATH/$PROJECT_NAME"
    echo "current directory : $PWD"
    echo "project exist => pull the latest update from $GIT_BRANCH branch"
    git pull origin $GIT_BRANCH >"$BASE_PATH/$GIT_RESULT"
else
    cd $BASE_PATH
    echo "current directory : $PWD"
    echo "clone project from $GIT_PROJECT"
    git clone $GIT_PROJECT
fi
cd "$BASE_PATH/$PROJECT_NAME"
GIT_RESULT_TEXT=$( tail -n 1 $BASE_PATH/$GIT_RESULT )

if [[ $GIT_RESULT_TEXT == "Already up-to-date." ]];then
    echo " ================= Prepare to build project============"
    gradle build
else

    echo " ================= Prepare to clean and build project=="
    gradle clean build
fi

echo "===== Finish built ========================"
java -jar build/libs/$FAT_JAR