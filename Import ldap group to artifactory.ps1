#Import LDAP group to Artifactory

$apiKey = 'SDASDADASDASADASDASDASDASDASDASDASDASDASDASDASDASDASDASD'
$site = 'https://artifactory.myartifactory.ru'

$groupName = 'artifactory-nuget-group' #group name (in lower case)
$group = Get-ADGroup $groupName -Properties DistinguishedName,Description

$groupDn = $group.DistinguishedName
$groupDescription = $group.Description

$contentType = "application/json"      
$headers = @{'X-JFrog-Art-Api' = $apiKey}

$data = @{        
    name = $groupName;
    description = $groupDescription;
    autoJoin = "false";
    realm = "ldap";
    realmAttributes = "ldapGroupName=$groupName;groupsStrategy=STATIC;groupDn=$groupDn"
};
$json = $data | ConvertTo-Json;
Invoke-RestMethod -H $headers -Method PUT -Uri "$site/api/security/groups/$groupName" -ContentType $contentType -Body $json

