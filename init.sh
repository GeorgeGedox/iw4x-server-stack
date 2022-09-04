#!/bin/bash
set -e

IW4ADMIN_DOWNLOAD_URL="https://github.com/RaidMax/IW4M-Admin/releases/download/2022.08.26.2-prerelease/IW4MAdmin-2022.08.26.2.zip"

downloadAndInstallAdmin() {
    cd ./admin
    wget -q --show-progress $IW4ADMIN_DOWNLOAD_URL
    unzip IW4MAdmin-*.zip
    rm -f IW4MAdmin-*.zip
}

mkdir -p server
mkdir -p admin

echo "Downloading IW4M Admin.."
downloadAndInstallAdmin

echo "Directories have been created. Put the server files into the /server directory."