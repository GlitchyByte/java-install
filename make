#!/usr/bin/env bash
# Copyright 2023 GlitchyByte
# SPDX-License-Identifier: MIT-0

# Creates individual macOS scripts.
set -e # Exit if any command returns an error.
set -u # Exit with an error if a variable is used without being set.

# Script count.
count=0

# Version 20
version="20"

################################
# Oracle JDK.

# macOs
osNames[${count}]="macos"
binNames[${count}]="java"
jdkNames[${count}]="jdk-${version}"
archNames[${count}]="x64"
((++count))

osNames[${count}]="macos"
binNames[${count}]="java"
jdkNames[${count}]="jdk-${version}"
archNames[${count}]="aarch64"
((++count))

# Linux
osNames[${count}]="linux"
binNames[${count}]="java"
jdkNames[${count}]="jdk-${version}"
archNames[${count}]="x64"
((++count))

osNames[${count}]="linux"
binNames[${count}]="java"
jdkNames[${count}]="jdk-${version}"
archNames[${count}]="aarch64"
((++count))

################################
# GraalVM JDK.

# macOs
osNames[${count}]="macos"
binNames[${count}]="graalvm"
jdkNames[${count}]="graalvm-jdk-${version}"
archNames[${count}]="x64"
((++count))

osNames[${count}]="macos"
binNames[${count}]="graalvm"
jdkNames[${count}]="graalvm-jdk-${version}"
archNames[${count}]="aarch64"
((++count))

# Linux
osNames[${count}]="linux"
binNames[${count}]="graalvm"
jdkNames[${count}]="graalvm-jdk-${version}"
archNames[${count}]="x64"
((++count))

osNames[${count}]="linux"
binNames[${count}]="graalvm"
jdkNames[${count}]="graalvm-jdk-${version}"
archNames[${count}]="aarch64"
((++count))

# Generate scripts.
readonly scriptDescriptionTag="%SCRIPT_DESCRIPTION%"
readonly jdkUrlTag="%JDK_URL%"
readonly jdkNameTag="%JDK_NAME%"
for ((i=0; i < ${count}; ++i))
do
    osName="${osNames[${i}]}"
    binName="${binNames[${i}]}"
    jdkName="${jdkNames[${i}]}"
    archName="${archNames[${i}]}"
    mkdir -p "${jdkName}"
    scriptName="${jdkName}/${osName}-${archName}"
    description="${binName} ${osName} ${archName}"
    url="https://download.oracle.com/${binName}/${version}/latest/${jdkName}_${osName}-${archName}_bin.tar.gz"
    templateScript="template-${osName}-script"
    sed -e "s|${scriptDescriptionTag}|${description}|g" \
        -e "s|${jdkUrlTag}|${url}|g" \
        -e "s|${jdkNameTag}|${jdkName}|g" \
        "${templateScript}" > "${scriptName}"
done
