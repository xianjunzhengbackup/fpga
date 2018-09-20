temp_date=$(date)

#进入这个路径，因为这里是git的环境
#因为有可能在其他路径下执行这个脚本
#fix bug on 09/11/2015
cd /usr/home/jun/git/mawson && /usr/local/bin/git branch tmp
cd /usr/home/jun/git/mawson && /usr/local/bin/git checkout tmp
cd /usr/home/jun/git/mawson && /usr/local/bin/git add . --all
#echo "please input commit message:"
#read message
cd /usr/home/jun/git/mawson && /usr/local/bin/git commit -m "code on $temp_date"
cd /usr/home/jun/git/mawson && /usr/local/bin/git checkout master
cd /usr/home/jun/git/mawson && /usr/local/bin/git merge tmp
cd /usr/home/jun/git/mawson && /usr/local/bin/git push origin master
cd /usr/home/jun/git/mawson && /usr/local/bin/git branch -d tmp
