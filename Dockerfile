# Use the official .NET SDK image to build the application
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src

# Copy csproj and restore dependencies
COPY ["ProductsApp.csproj", "./"]
RUN dotnet restore

# Copy all other source files
COPY . .
RUN dotnet publish -c Release -o /app

# Build the runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
WORKDIR /app
COPY --from=build /app .

# Set environment variables
ENV ASPNETCORE_URLS=http://+:5000
ENV ASPNETCORE_ENVIRONMENT=Production

# Expose port 5000
EXPOSE 5000

# Start the application
ENTRYPOINT ["dotnet", "ProductsApp.dll"]
