#!/bin/sh
# Jazzy doc generator

ROOT_PATH="./.."
AUTHOR_NAME="Manish Pandey"
OUTPUT_DIR="$ROOT_PATH/docs" # from UIKitCore proj.
GITHUB_LINK="https://github.com/LenisDev/UIKitCore"
MODULE_NAME="UIKitCore"
README_FILE_PATH="$ROOT_PATH/README.md"
PODSPEC_FILE_PATH="$ROOT_PATH/UIKitCore.podspec"
THEME_NAME="fullwidth"


jazzy --min-acl internal \
        -o $OUTPUT_DIR \
        -a $AUTHOR_NAME \
        -m $MODULE_NAME \
        -g $GITHUB_LINK \
        --readme $README_FILE_PATH \
        --podspec $PODSPEC_FILE_PATH \
        --theme $THEME_NAME
