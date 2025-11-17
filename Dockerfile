
# Use IIS-enabled base image
FROM mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2022

# Remove default IIS website content
RUN powershell -Command Remove-Item -Recurse -Force C:\inetpub\wwwroot\*

# Copy website content
COPY index.html C:/inetpub/wwwroot/


# Expose port 80
EXPOSE 80

# Start IIS (already handled by base image)