<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
#!/bin/bash

echo Executing chef-solo with recipe "${deployed.recipe}" with file ${deployed.file.name}
tar zxf ${deployed.file.name}
echo "cookbook_path ['$PWD']" > solo.rb
chef-solo -c solo.rb  -o "${deployed.recipe}"
