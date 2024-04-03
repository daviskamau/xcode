#!/bin/bash

echo "Please choose an Xcode template:"
echo "1) TCA"

read -p "Enter your choice (1/): " choice

case $choice in
    1)
        template="TCA"
        repo_url="git@github.com:daviskamau/TCA-Template.git"
	;;
    *)
        echo "Invalid choice, exiting."
        exit 1
        ;;
esac

echo "Downloading $template template..."
echo "git clone $repo_url"
git clone $repo_url

echo "$template template has been downloaded successfully!"

cd TCA-Template; 
swift install.swift;
cd ..;
rm -rf TCA-Template