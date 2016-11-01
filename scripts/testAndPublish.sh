#!/bin/bash

#Web app source code
cd webapp
dotnet restore

#Tests
cd ../webapp.unittests
dotnet restore
dotnet test

#Publish
cd ../webapp
dotnet publish --output ~/publish

