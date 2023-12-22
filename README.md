# Java JDK and GraalVM JDK installation

![JDK](https://img.shields.io/badge/JDK-21-orange) ![JDK](https://img.shields.io/badge/JDK-17-orange) ![GraalVM JDK](https://img.shields.io/badge/GraalVM_JDK-21-orange) ![GraalVM JDK](https://img.shields.io/badge/GraalVM_JDK-17-orange)

The following are one-liners to install JDK or GraalVM JDK. They will download, decompress, place it in the right directory, and update your shell profile with a proper JAVA_HOME environment variable. **No root needed.**

You can always go to the [offical page](https://www.oracle.com/java/technologies/downloads/) and download things yourself if you know what you are doing. If you are using Windows or would like a point-and-click installer, also check the [offical page](https://www.oracle.com/java/technologies/downloads/).

---
## Gradle

I'm also including a semi-one-liner to start your project with Gradle! After all, if you are installing Java you probably want to create something.

Run this in a newly created directory for your project. The script will download Gradle temporarily, and output another one-liner to initialize your app. That one-liner will also delete the temporary Gradle download. You do not need a global Gradle installation in your system, every project holds its own copy once initialized.

    curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/gradle/gradle-8.5 | bash

---
## Get Java!

| OS | Arch | JDK | Ver | Command |
|----|--------------|-----|---------|---------|
| macos | aarch64 | java | 21 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/jdk-21/macos-aarch64 \| zsh` |
| macos | x64 | java | 21 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/jdk-21/macos-x64 \| zsh` |
| macos | aarch64 | graalvm | 21 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/graalvm-jdk-21/macos-aarch64 \| zsh` |
| macos | x64 | graalvm | 21 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/graalvm-jdk-21/macos-x64 \| zsh` |
| linux | aarch64 | java | 21 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/jdk-21/linux-aarch64 \| bash` |
| linux | x64 | java | 21 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/jdk-21/linux-x64 \| bash` |
| linux | aarch64 | graalvm | 21 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/graalvm-jdk-21/linux-aarch64 \| bash` |
| linux | x64 | graalvm | 21 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/graalvm-jdk-21/linux-x64 \| bash` |
| macos | aarch64 | java | 17 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/jdk-17/macos-aarch64 \| zsh` |
| macos | x64 | java | 17 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/jdk-17/macos-x64 \| zsh` |
| macos | aarch64 | graalvm | 17 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/graalvm-jdk-17/macos-aarch64 \| zsh` |
| macos | x64 | graalvm | 17 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/graalvm-jdk-17/macos-x64 \| zsh` |
| linux | aarch64 | java | 17 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/jdk-17/linux-aarch64 \| bash` |
| linux | x64 | java | 17 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/jdk-17/linux-x64 \| bash` |
| linux | aarch64 | graalvm | 17 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/graalvm-jdk-17/linux-aarch64 \| bash` |
| linux | x64 | graalvm | 17 | `curl -s https://raw.githubusercontent.com/GlitchyByte/java-install/main/graalvm-jdk-17/linux-x64 \| bash` |
