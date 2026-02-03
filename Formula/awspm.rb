class Awspm < Formula

 desc "A powerful CLI tool to manage AWS profiles"

 homepage "https://github.com/okojomoeko/awspm"

 version "0.1.0"

 if OS.mac? && Hardware::CPU.intel?

   url "https://github.com/okojomoeko/awspm/releases/download/v0.1.0/awspm-macos-amd64.tar.gz"

   sha256 "b4df226ba4e85c6635716a92a3b0a8a423b94383b7c472f9b5a0004a3fcb61ab"

 elsif OS.mac? && Hardware::CPU.arm?

   url "https://github.com/okojomoeko/awspm/releases/download/v0.1.0/awspm-macos-arm64.tar.gz"

   sha256 "f87c02e7f4753a6e1f6d457949308ef0165832ed1f6e6dfcd9556501d8508ab5"

 elsif OS.linux? && Hardware::CPU.intel?

   url "https://github.com/okojomoeko/awspm/releases/download/v0.1.0/awspm-linux-amd64.tar.gz"

   sha256 "8a1d54e661588d35cd7aadf1451522c99f48d170ff383617a4eb506ef791e788"

 end

 def install

   bin.install "awspm"

 end

 test do

   system "#{bin}/awspm", "--version"

 end

end

