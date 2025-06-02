FROM ubuntu:18.04

# System dependencies
RUN apt update && apt install -y \
  curl git unzip xz-utils zip libglu1-mesa openjdk-8-jdk wget \
  clang cmake ninja-build pkg-config libgtk-3-dev gnupg2 software-properties-common

# Create non-root user
RUN useradd -ms /bin/bash developer
USER developer
WORKDIR /home/developer

# Set environment variables
ENV ANDROID_HOME=/home/developer/Android/sdk
ENV PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:/home/developer/flutter/bin"

# Prepare Android SDK directories
RUN mkdir -p $ANDROID_HOME/cmdline-tools
RUN mkdir -p .android && touch .android/repositories.cfg

# Install Android cmdline-tools (latest)
RUN cd $ANDROID_HOME/cmdline-tools && \
    wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O cmdline-tools.zip && \
    unzip cmdline-tools.zip && rm cmdline-tools.zip && \
    mv cmdline-tools latest

# Accept licenses and install Android components
RUN yes | sdkmanager --licenses
RUN sdkmanager \
  "build-tools;29.0.2" \
  "platform-tools" \
  "platforms;android-29" \
  "sources;android-29"

# Install Flutter SDK
RUN git clone https://github.com/flutter/flutter.git

# Pre-warm Flutter to avoid setup delays later
RUN flutter doctor

# Set working directory for projects
WORKDIR /home/developer/workspace
