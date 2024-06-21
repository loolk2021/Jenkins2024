[14:38] Raaj Kumar Silviaraja (External)
# FROM mcr.microsoft.com/windows/servercore
FROM mcr.microsoft.com/windows/servercore:ltsc2019
#FROM openjdk:11

RUN net user Michael P@ssw0rd /ADD

COPY . /

RUN msiexec /quiet /i sample.msi ACCOUNT=%COMPUTERNAME%\Michael PASSWORD=P@ssw0rd
