param
(
    [parameter(Mandatory = $false)] [String] $baseUrl='https://web-ci.projectarcadia.net/',
    [parameter(Mandatory = $false)] [String] $email='a365-e2e@microsoft.com',
    [parameter(Mandatory = $false)] [String] $password='4Uu34?:,x~ck[9GL'
)

# .\node_modules\.bin\protractor.cmd protractor.chrome.conf.js --baseUrl=$baseUrl --params.login.email=$email --params.login.password=$password

Start-Process cmd.exe -ArgumentList "/C .\node_modules\.bin\webdriver-manager start --edge MicrosoftWebDriver_17.exe"

Start-Sleep -s 5

.\node_modules\.bin\protractor.cmd protractor.chrome_edge.conf.js --baseUrl=$baseUrl --params.login.email=$email --params.login.password=$password