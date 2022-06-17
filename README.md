# OpenJDK installation scripts
![OpenJDK](https://img.shields.io/badge/OpenJDK-18-orange)

Scripts to install [OpenJDK](https://jdk.java.net) on different platforms.

Platforms supported:

- macOS
    - AArch64
    - x64
- Ubuntu (No script needed. Read below.)

Scripts are idempotent. That is, you can run them repeatedly and no harm will be done to your system, regardless of any error messages showing.

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

---
## How about Linux?

I use mostly [Ubuntu](https://ubuntu.com). No script needed. There you can do this:

    sudo apt install openjdk-18-jdk

Or if you are in a headless environment:

    sudo apt install openjdk-18-jdk-headless
