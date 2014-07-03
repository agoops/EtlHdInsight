$subscriptionName = "Telesales Reporting - Dev"
$clusterName = "crmreportingclustertemp"

$sqlDatabaseServerName = "BRSMBVSQLDEV1"
$sqlDatabaseUserName = "t-ankigu"
$sqlDatabasePassword = "password1"
$sqlDatabaseDatabaseName = "TigerRepl"


$array = @("Account")
Write-Host "Starting upload with array: $array" -BackgroundColor Green

foreach ($element in $array) {
	$tableName = $element
	$hdfsOutputDir = "/$tableName" + "Import" 
	
	$sqoopDef = New-AzureHDInsightSqoopJobDefinition -Command "import --connect jdbc:sqlserver://BRSMBVSQLDEV1;database=TigerRepl;username=t-ankigu;password=password1 --table $tableName --hive-delims-replacement \t --fields-terminated-by \001 --target-dir $hdfsOutputDir -m 1" 
	
	# Data Source=BRSMBVSQLDEV1;Initial Catalog=TigerRepl;User ID=t-ankigu;Password=password1
	$sqoopJob = Start-AzureHDInsightJob -Cluster $clusterName -JobDefinition $sqoopDef #-Debug -Verbose
	Wait-AzureHDInsightJob -WaitTimeoutInSeconds 3600 -Job $sqoopJob

	Write-Host "Standard Error" -BackgroundColor Green
	Get-AzureHDInsightJobOutput -Cluster $clusterName -JobId $sqoopJob.JobId -StandardError
	Write-Host "Standard Output" -BackgroundColor Green
	Get-AzureHDInsightJobOutput -Cluster $clusterName -JobId $sqoopJob.JobId -StandardOutput

	Write-Host "Finished $tableName" -BackgroundColor Red
}


