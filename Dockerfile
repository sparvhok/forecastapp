# Import the ASP.NET Core into the container
FROM mcr.microsoft.com/dotnet/core/aspnet:3.0

# TCP Port where the container will be listening
EXPOSE 80
EXPOSE 443

# Working directory
WORKDIR /ForecastApp

# Copy the contents of the publish folder inside the app folder
COPY ./src/ForecastApp/publish .

# Defines the entry point for our app
ENTRYPOINT [ "dotnet", "ForecastApp.dll" ]