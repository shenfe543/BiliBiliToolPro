## 添加你需要重启自动执行的任意命令，比如 ql repo
## 安装node依赖使用 pnpm install -g xxx xxx
## 安装python依赖使用 pip3 install xxx

# 安装 dotnet 环境
echo -e "\n-------set up dot net env-------"
apk add bash icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib
wget https://download.visualstudio.microsoft.com/download/pr/3b18aefa-0e14-4193-a167-35e1de4cfe46/acf2b230ae3ecfbc4d5f4c20cbf97b2d/dotnet-sdk-6.0.419-linux-arm64.tar.gz
DOTNET_FILE=dotnet-sdk-6.0.419-linux-arm64.tar.gz
export DOTNET_ROOT=/home/dotnet
mkdir -p "$DOTNET_ROOT" && tar zxf "$DOTNET_FILE" -C "$DOTNET_ROOT"
export PATH=$PATH:$DOTNET_ROOT
ln -s /home/dotnet/dotnet /usr/local/bin
dotnet --version
echo -e "\n-------set up dot net env finish-------"
