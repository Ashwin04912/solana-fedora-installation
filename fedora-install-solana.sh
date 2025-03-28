#!/bin/bash

# Display starting message
echo "Started installing Solana CLI..."

# Install Solana CLI
curl -sSf https://release.solana.com/v1.18.26/install | sh

# Add Solana CLI to PATH
echo "Adding Solana CLI to PATH..."
export PATH="/home/keyloggers/.local/share/solana/install/active_release/bin:$PATH"

# Update the system
echo "Updating the system..."
sudo dnf update -y

# Install required dependencies
echo "Installing dependencies..."
sudo dnf install -y \
    gcc-c++ \
    pkgconfig \
    libudev-devel \
    llvm clang \
    protobuf-compiler \
    openssl-devel

# Install Rust
echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Add Rust to PATH
echo "Adding Rust to PATH..."
. "$HOME/.cargo/env"

# Install Anchor CLI using Cargo
echo "Installing Anchor CLI..."
cargo install --git https://github.com/coral-xyz/anchor avm --force

# Install the latest version of Anchor CLI
echo "Installing the latest version of Anchor..."
avm install latest
avm use latest

# Final message
echo "Everything installed successfully!"

