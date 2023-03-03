Import-AzDataLakeStoreItem `
	      -Account dlismodelrepository-c09 `
	      -Path /ap/users/eltonz/work/tools/Linux/cosmos-upload.ps1 `
	      -Destination /local/Models/eltonz/work/tools/Linux/cosmos-upload.ps1 `
	      -Recurse `
	      -Force `
	      -Concurrency 20 

