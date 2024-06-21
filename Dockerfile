# Use a minimal Windows Server Core base image
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Set the working directory in the container
WORKDIR D:\Jenkin2024\Docker

# Copy the Java source code to the working directory
COPY HelloWorld.java .

# Compile the Java application
RUN javac HelloWorld.java

# Command to run the Java application
CMD ["java", "HelloWorld"]
