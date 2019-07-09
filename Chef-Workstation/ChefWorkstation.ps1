<#
.SYNOPSIS

This simple PowerShell script can be used to deploy Chocolately then Visual Studio Code, Chef Workstation and Azure CLI on to your workstation.  Which can help you build up the correct tools to start working with Chef. 

.DESCRIPTION 
This simple PowerShell script can be used to deploy Chocolately then Visual Studio Code, Chef Workstation and Azure CLI on to your workstation.  Which can help you build up the correct tools to start working with Chef. 

.OUTPUTS

.NOTES
Written by: Sarah Lean
Find me on:
* My Blog:	https://www.techielass.com
* Twitter:	https://twitter.com/techielass
* LinkedIn:	http://uk.linkedin.com/in/sazlean
* GitHub:   https://www.github.com/weeyin83

.EXAMPLE

Change Log

V1.00, 09/07/2019 - Initial version

License:
The MIT License (MIT)
Copyright (c) 2018 Sarah Lean
Permission is hereby granted, free of charge, to any person obtaining a copy 
of this software and associated documentation files (the "Software"), to deal 
in the Software without restriction, including without limitation the rights 
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
copies of the Software, and to permit persons to whom the Software is 
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
DEALINGS IN THE SOFTWARE.
#>


##Install Chocolately
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

##Define the software to be installed
$Packages = 	'vscode',`
	    	'azure-cli',`
		'chef-workstation'

##Install the defined software
ForEach ($PackageName in $Packages)
{choco install $PackageName -y}

##Reboot
Restart-Computer
