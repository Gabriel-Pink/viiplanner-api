$env:ASPNETCORE_ENVIRONMENT = "Development"
docker run -e ASPNETCORE_ENVIRONMENT=Development -p 8081:8080 viiplanner-api