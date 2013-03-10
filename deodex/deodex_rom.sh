#!/bin/bash

#java -jar baksmali.jar -x :nameofjar.odex  (EX: java -jar baksmali.jar -x android.policy.odex).
#     (Linux users: if you grabbed the wrapper scripts you can just type 'baksmali' instead of 'java -jar baksmali.jar'
#
#baksmali -a <api_level> -x <odex_file> -d <framework_dir>



ERROR=0
#smalibaksmali_dir=/home/mistadman/bin/android_dev_tools

clear; for x in `find -iname "*.odex"|sort`; do
odexFile=${x/\.\//}
    [ -e ${file1/odex/jar} ] && JarFile=${odexFile/odex/jar} || Jarfile=${odexFile/odex/apk}

    echo "Uncompiling $odexFile"
#    java -Xmx512m -jar $smalibaksmali_dir/baksmali.jar -x $odexFile -o /tmp/$odexFile.out
     baksmali -x $odexFile -o /tmp/$odexFile.out
    if [ -e /tmp/$odexFile.out ]; then
#java -Xmx512m -jar $smalibaksmali_dir/smali.jar /tmp/$odexFile.out -o /tmp/$odexFile-classes.dex
    smali /tmp/$odexfile.out -o /tmp/$odexFile-classes.dex
        ERROR=1
    fi

if [ -e /tmp/$odexFile-classes.dex ]; then
echo "Adding classes.dex to $JarFile"
        mv /tmp/$odexFile-classes.dex /tmp/classes.dex
        zip -q $JarFile /tmp/classes.dex
        rm -rf /tmp/$odexFile.out /tmp/$odexFile-classes.dex /tmp/classes.dex
    else
rm -rf /tmp/$odexFile.out /tmp/$odexFile-classes.dex /tmp/classes.dex
        ERROR=1
        echo "Error!"
    fi

echo
done

if [ $ERROR -eq 1 ]; then
rm -rf *.odex
else
echo "Error(s) detected. *.odex files not deleted."
fi