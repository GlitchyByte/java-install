# OpenJDK installation scripts

Scripts to install [OpenJDK](https://jdk.java.net) on different platforms.

Platforms supported:

- macOS
    - AArch64
    - x64

---
## Install

You have three options:

1. You can download the specific script you want and run it.
2. You can use the appropriate script as a guideline of what you should do. (The super paranoid option.)
3. You can run the script on the fly directly from GitHub. See below!

*Note that scripts DO NOT require root access.*

---
## Install on the fly!

On macOS-AArch64:

    curl -s https://raw.githubusercontent.com/GlitchyByte/openjdk-install-scripts/main/jdk.18/install-openjdk-18-macos-aarch64 | sh

On macOS-x64:

    curl -s https://raw.githubusercontent.com/GlitchyByte/openjdk-install-scripts/main/jdk.18/install-openjdk-18-macos-x64 | sh
