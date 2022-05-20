#Execute plugin in Artifactory

$url = 'https://artifactory.bgelov.ru' #Artifactory URL
$apiKey = 'BLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLA' #api key
$pluginName = 'remoteBackup' #plugin name

Invoke-RestMethod "$url/artifactory/api/plugins/execute/$pluginName" -Method POST -H @{'X-JFrog-Art-Api' = $apiKey} 
