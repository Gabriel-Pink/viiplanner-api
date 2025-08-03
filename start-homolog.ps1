$env:ASPNETCORE_ENVIRONMENT = "Staging"
docker run -e ASPNETCORE_ENVIRONMENT=Staging -p 8082:8080 viiplanner-api