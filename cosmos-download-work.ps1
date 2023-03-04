Export-AzDataLakeStoreItem `
	      -Account dlismodelrepository-c09 `
	      -Path /local/Models/eltonz/work `
	      -Destination /ap/users/eltonz/work `
	      -Recurse `
	      -Force `
	      -Concurrency 20 

