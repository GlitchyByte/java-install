#!/usr/bin/env bash
# Copyright 2023 GlitchyByte
# SPDX-License-Identifier: MIT-0

# Creates individual macOS scripts.

count=0

filenames[${count}]="jdk.18/macos-aarch64"
descriptions[${count}]="OpenJDK 18 on macOS AArch64"
urls[${count}]="https://download.java.net/java/GA/jdk18.0.2/f6ad4b4450fd4d298113270ec84f30ee/9/GPL/openjdk-18.0.2_macos-aarch64_bin.tar.gz"
((++count))

filenames[${count}]="jdk.18/macos-x64"
descriptions[${count}]="OpenJDK 18 on macOS x64"
urls[${count}]="https://download.java.net/java/GA/jdk18.0.2/f6ad4b4450fd4d298113270ec84f30ee/9/GPL/openjdk-18.0.2_macos-x64_bin.tar.gz"
((++count))

filenames[${count}]="jdk.19/macos-aarch64"
descriptions[${count}]="OpenJDK 19 on macOS AArch64"
urls[${count}]="https://download.java.net/java/GA/jdk19.0.2/fdb695a9d9064ad6b064dc6df578380c/7/GPL/openjdk-19.0.2_macos-aarch64_bin.tar.gz"
((++count))

filenames[${count}]="jdk.19/macos-x64"
descriptions[${count}]="OpenJDK 19 on macOS x64"
urls[${count}]="https://download.java.net/java/GA/jdk19.0.2/fdb695a9d9064ad6b064dc6df578380c/7/GPL/openjdk-19.0.2_macos-x64_bin.tar.gz"
((++count))

filenames[${count}]="jdk.20/macos-aarch64"
descriptions[${count}]="OpenJDK 20 on macOS AArch64"
urls[${count}]="https://download.java.net/java/GA/jdk20/bdc68b4b9cbc4ebcb30745c85038d91d/36/GPL/openjdk-20_macos-aarch64_bin.tar.gz"
((++count))

filenames[${count}]="jdk.20/macos-x64"
descriptions[${count}]="OpenJDK 20 on macOS x64"
urls[${count}]="https://download.java.net/java/GA/jdk20/bdc68b4b9cbc4ebcb30745c85038d91d/36/GPL/openjdk-20_macos-x64_bin.tar.gz"
((++count))

scriptDescriptionTag="%SCRIPT_DESCRIPTION%"
jdkUrlTag="%JDK_URL%"
templateScript="template.macos.script"
for ((i=0; i < ${count}; ++i))
do
    filename="${filenames[${i}]}"
    description="${descriptions[${i}]}"
    url="${urls[${i}]}"
    sed -e "s|${scriptDescriptionTag}|${description}|g" -e "s|${jdkUrlTag}|${url}|g" "${templateScript}" > "${filename}"
done
