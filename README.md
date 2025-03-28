# Solana & Anchor CLI Installation Script for Fedora

This repository provides a Bash script to automate the installation of **Solana CLI**, **Rust**, and **Anchor CLI** on Fedora-based systems.

## 📌 Features

- Installs **Solana CLI**
- Sets up **Rust** and **Cargo**
- Installs **Anchor CLI**
- Installs essential dependencies for Solana development
- Automatically configures necessary binaries in `PATH`

## 🚀 Installation Instructions

### **1. Clone the Repository**
```bash
git clone https://github.com/Ashwin04912/solana-fedora-installation.git
cd solana-fedora-installation
```

### **2. Select the Solana Version**
Visit the [Solana Releases Page](https://github.com/solana-labs/solana/releases) and note the version you want to install.

### **3. Update the Installation Script**
Open the installation script in a text editor and replace the version in the command:
```bash
nano fedora-install-solana.sh
```

Find the line:
```bash
curl -sSf https://release.solana.com/v1.18.26/install | sh
```
Replace `v1.18.26` with your desired version.

Then, press `CTRL + X`, followed by `Y`, and hit `Enter` to save the changes.

### **4. Make the Script Executable**
```bash
chmod +x fedora-install-solana.sh
```

### **5. Run the Script**
```bash
./fedora-install-solana.sh
```

## 🛠 What the Script Does

1. **Installs Solana CLI** from the official Solana repository.
2. **Updates the system** using `dnf`.
3. **Installs dependencies** required for Solana and Rust development.
4. **Installs Rust** and adds it to `PATH`.
5. **Installs Anchor CLI** via Cargo and configures it.
6. **Sets up the latest version of Anchor** for development.

## 🔧 Dependencies Installed

- **Solana CLI**
- **Rust & Cargo**
- **Anchor CLI**
- **Development Libraries**:
  - `gcc-c++`
  - `pkgconfig`
  - `libudev-devel`
  - `llvm`
  - `clang`
  - `protobuf-compiler`
  - `openssl-devel`

## 🛑 Uninstallation Instructions

To remove Solana, Rust, and Anchor, run:

```bash
# Remove Solana
rm -rf ~/.local/share/solana

# Remove Rust
rm -rf ~/.cargo ~/.rustup

# Remove Anchor CLI
cargo uninstall avm
```

## 📜 License

This project is licensed under the **MIT License**.

---

### 💡 **Contributions & Issues**
If you encounter any issues or would like to contribute, feel free to open an issue or submit a pull request.

Happy coding! 🚀

