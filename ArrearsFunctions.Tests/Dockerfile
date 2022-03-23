FROM mcr.microsoft.com/dotnet/core/sdk:3.1

# disable microsoft telematry
ENV DOTNET_CLI_TELEMETRY_OPTOUT='true'

ARG LBHPACKAGESTOKEN
ENV LBHPACKAGESTOKEN=$LBHPACKAGESTOKEN

WORKDIR /app

# Copy csproj and nuget config and restore as distinct layers
COPY ./ArrearsFunctions.sln ./
COPY ./ArrearsFunctions/ArrearsFunctions.csproj ./ArrearsFunctions/
COPY ./ArrearsFunctions.Tests/ArrearsFunctions.Tests.csproj ./ArrearsFunctions.Tests/
COPY /NuGet.Config /root/.nuget/NuGet/NuGet.Config

RUN dotnet restore ./ArrearsFunctions/ArrearsFunctions.csproj
RUN dotnet restore ./ArrearsFunctions.Tests/ArrearsFunctions.Tests.csproj

# Copy everything else and build
COPY . .

RUN dotnet build -c debug -o out ArrearsFunctions.Tests/ArrearsFunctions.Tests.csproj

CMD dotnet test
