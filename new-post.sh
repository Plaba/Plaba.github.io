#!/bin/bash
# This script creates a new post in the _posts directory and opens it in vscode

# Get the current date
DATE=$(date +%Y-%m-%d)

# Get the title of the post
echo "Enter the title of the post: "
read TITLE
TITLE_DASHED=$(echo $TITLE | tr ' ' '-')

# Create the file name
FILE_NAME=$DATE-$TITLE_DASHED.md

# Create the file with the front matter

FRONT_MATTER="---
layout: post
title: $TITLE
date: $DATE
categories: #TODO enter categories
---

"

echo "$FRONT_MATTER" > _posts/$FILE_NAME

# Open the file in vscode
code _posts/$FILE_NAME
