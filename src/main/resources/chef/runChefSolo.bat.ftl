<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->

echo Executing chef-solo with recipe "${deployed.recipe}" with file ${deployed.file.name}
TarTool.exe ${deployed.file.path}
echo cookbook_path ['%CD%'] > solo.rb
chef-solo.bat -c solo.rb  -o "${deployed.recipe}"
