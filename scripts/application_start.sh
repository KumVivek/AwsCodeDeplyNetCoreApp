#!/bin/bash
cd /var/www/api/AwsCodeDeplyNetCoreApp/AwsCodeDeplyNetCoreApp
dotnet publish -c Release
cd bin/Release/netcoreapp3.1/publish/
sudo mv * /var/www/api
systemctl start api.service