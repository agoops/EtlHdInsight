$sqlDatabaseServerName = "q1uhkcvnbb"
$sqlDatabaseUserName = "t-ankigu"
$sqlDatabasePassword = "turtledive11)"
$sqlDatabaseDatabaseName = "NGTReportingStage"

$sqoopDef = New-AzureHDInsightSqoopJobDefinition -Command "list-databases --connect jdbc:sqlserver://$sqlDatabaseServerName.database.windows.net --username t-ankigu@$sqlDatabaseServerName --password $sqlDatabasePassword"

$sqoopJob = Start-AzureHDInsightJob -Cluster $clusterName -JobDefinition $sqoopDef #-Debug -Verbose
Wait-AzureHDInsightJob -WaitTimeoutInSeconds 3600 -Job $sqoopJob

Write-Host "Standard Error" -BackgroundColor Green
Get-AzureHDInsightJobOutput -Cluster $clusterName -JobId $sqoopJob.JobId -StandardError
Write-Host "Standard Output" -BackgroundColor Green
Get-AzureHDInsightJobOutput -Cluster $clusterName -JobId $sqoopJob.JobId -StandardOutput



$response = Invoke-RestMethod -Method Get -Uri $clusterUriGetJobStatus -Credential $creds 
$jsonResponse = ConvertFrom-Json (ConvertTo-Json -InputObject $response)
$JobStatus = $jsonResponse[0].("status")
Write-Host "$(Get-Date -format 'G'): $oozieJobId is in $JobStatus state...waiting $waitTimeBetweenOozieJobStatusCheck seconds for the job to complete..."
