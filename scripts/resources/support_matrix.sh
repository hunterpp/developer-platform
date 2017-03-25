BRANCH=`curl https://api.github.com/repos/kaltura/clients-generator -s |grep default_branch| sed 's/"default_branch":\s*"\(.*\)",/\1/' | sed 's@\s*@@g'`
curl "https://raw.githubusercontent.com/kaltura/clients-generator/$BRANCH/support_matrix.md" > ./markdown/generated/support_matrix.md
