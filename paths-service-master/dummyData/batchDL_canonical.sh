## 
# 
# Batch Downloader 
# Chris Malcolm 2018
#
# Install wget first by doing `brew install wget`
# Download files from server using a list of urls + optional cookies file
#
##

# Adjust settings below
# ----------------------
#1 url per line of url to download
listOfUrlsTextFile="./canonicalTrails.txt"
#output folder relative to current
outputFolder="canonicalGpxFiles"
# randomRange start - end seconds delay wait time  (for not massive pings to server)
startRandWaitRange=45
endRandWaitRange=60
# we want filename based on a unique segment of url, segments are determined by slashes,
# if url = http://example.com/item/100/
# segment array is --> [http:, , example.com, item, 100]
# segmentIndex for '100' would be index 4
segmentIndex=7
# extension of file so for our example it would be '100.txt' if we specified 'txt'
extension="gpx"

# DONT EDIT
# ----------------------
if [ -f "cookies.txt" ]
    then
        while IFS= read -r url;do
            file="$outputFolder/$(echo $url | cut -d'/' -f $segmentIndex).$extension";
                if [ -f "$file" ]
                then
                    echo "$file exists...skipping."
                else
                    # make a message
                    echo "downloading $file..."
                    # download files by id name
                    wget -x --load-cookies 'cookies.txt' -O "$file" "$url"
                    # randomize delay from 5 - 15 seconds
                    sleep $[ ( $RANDOM % endRandWaitRange - startRandWaitRange )  + startRandWaitRange ]s
                fi
        done < "$listOfUrlsTextFile"
    else
        echo 
        echo "cookies.txt file must be in this same directory. It can be blank, if no cookies are needed."
        echo 
        echo "To Generate a cookies.txt file from a website, use:"
        echo "https://chrome.google.com/webstore/detail/cookiestxt/njabckikapfpffapmjgojcnbfjonfjfg/related?hl=en"
        echo 
fi