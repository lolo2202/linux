Export-AzDataLakeStoreItem `
	      -Account dlismodelrepository-c09 `
	      -Path /local/Models/eltonz/tmp/TensorRT-8.4.3.1.Linux.x86_64-gnu.cuda-11.6.cudnn8.4.tar.gz `
	      -Destination /ap/users/eltonz/tools/TensorRT-8.4.3.1.Linux.x86_64-gnu.cuda-11.6.cudnn8.4.tar.gz `
	      -Recurse `
	      -Force `
	      -Concurrency 20 

