<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
#!/bin/bash
echo ${deployed.file.name}
filelist=${deployed.file.name}
if [ -d ${deployed.file.name} ]
then
 filelist=""
 for files in `ls ${deployed.file.name}`
  do
   filelist="$filelist $files"
  done
fi
echo $filelist

echo Uploading knife cookbook ${deployed.file.name}
echo knife cookbook upload --cookbook-path $filelist ${deployed.cookbookName}
