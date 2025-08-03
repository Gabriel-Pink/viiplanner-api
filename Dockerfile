# Build stage
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /app

# Copia os arquivos do projeto
COPY . ./

# Restaura dependências e publica o app
RUN dotnet restore
RUN dotnet publish -c Release -o out

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS runtime
WORKDIR /app
COPY --from=build /app/out ./

# Expõe a porta padrão
EXPOSE 80

# Inicia o app
ENTRYPOINT ["dotnet", "viiplanner.dll"]