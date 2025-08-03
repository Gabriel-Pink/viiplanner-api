$env:ASPNETCORE_ENVIRONMENT = "Production"
docker run -e ASPNETCORE_ENVIRONMENT=Production -p 8080:8080 viiplanner-api