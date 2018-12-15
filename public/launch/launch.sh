## 
# 
# Service Launcher 
# Chris Malcolm 2018
#
# Launch all your services by runnning
#
#
# $> ./launch.sh
#
#
# A file of npmDirectories and command per directory  is required, see below for example.
#
# Ex File (./npmDirs.txt)
# =====================
#
# ../../../paths-service > npm run server-dev
# ../../../reviews-service > npm run server-dev
# ../../../trail-service > npm run server-dev
# ../../../not-a-service > npm run server-dev
# <line break>
#
#
##

# Adjust settings below
# ----------------------
#1 folder per line of url to download
listOfNPMDirsFile="./npmDirs.txt"
ABSDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
count=0 
# DONT EDIT
# ----------------------
if [ -f "$ABSDIR/$listOfNPMDirsFile" ]
    then
        while IFS= read -r entry;do
            #get pieces 
            entry="$(echo $entry | xargs)";
            dir="$(echo $entry | cut -d'>' -f 1 | xargs)";
            task="$(echo $entry | cut -d'>' -f 2 | xargs)";
            if [ -z "$entry" ]
                then
                    continue
            elif [[ $entry == "#"* ]] 
                then
                    continue
            elif [ -d "$ABSDIR/$dir" ]
                then
                    count=$((count + 1))

                    # make a message
                    echo "(Task #$count) starting '$task'in '$dir'..."
                    sleep 1s
                       osascript 2>/dev/null <<EOF
                        tell application "Terminal"
                           activate
                          #do script
                          do script "cd '$ABSDIR/$dir' && $task"
                        end tell
EOF
                else
                    echo "$dir does not exist...skipping."
                fi
                  
        done < "$ABSDIR/$listOfNPMDirsFile"
    else
        echo
        echo 
        echo "npmDirs.txt file must be in this same directory as $ABSDIR. Each line represents the relative path of npm directory with a > cmd"
        echo "also end with an empty line!"
        echo 
        echo "[path/to/npmDir] --> [cmd] "
        echo
        echo "ex."
        echo "../../../paths-service > npm run server-dev"
        echo "../../../reviews-service > npm run server-dev"
        echo "[empty line]"
        echo
fi
