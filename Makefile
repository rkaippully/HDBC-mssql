docker:
	docker start HDBC-mssql

docker-prep:
	docker create --name=HDBC-mssql -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=HDBC-mssql' -p 1433:1433 microsoft/mssql-server-linux:2017-CU5

docker-stop:
	docker stop HDBC-mssql

docker-rm:
	docker rm HDBC-mssql
