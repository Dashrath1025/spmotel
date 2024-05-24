# Use a Windows base image that supports Azure CLI
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Download the Azure CLI MSI
ADD https://aka.ms/installazurecliwindows /azure-cli.msi

# Install the Azure CLI
RUN start /wait msiexec.exe /i c:\azure-cli.msi /qn

# Confirm installation
RUN az --version
