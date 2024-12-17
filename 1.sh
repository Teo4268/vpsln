#!/bin/bash

# Tạo user mới
USER_NAME="myuser"
USER_PASSWORD="test123"
sudo adduser --disabled-password --gecos "" "$USER_NAME"
echo "User '$USER_NAME' đã được tạo thành công."

# Đặt mật khẩu cho user
echo "$USER_NAME:$USER_PASSWORD" | sudo chpasswd
echo "Mật khẩu cho user '$USER_NAME' đã được đặt thành 'test123'."

# Cài đặt fluxbox và wget
sudo apt update
sudo apt install -y fluxbox wget

# Tải Chrome Remote Desktop
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

# Cài đặt Chrome Remote Desktop và xử lý ngôn ngữ bàn phím tự động
sudo apt install -y ./chrome-remote-desktop_current_amd64.deb

# Tải và cài đặt Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

echo "Quá trình cài đặt Fluxbox, Chrome Remote Desktop và Google Chrome đã hoàn tất."
