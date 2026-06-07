class Awspm < Formula

 desc "A powerful CLI tool to manage AWS profiles"

 homepage "https://github.com/okojomoeko/awspm"

 version "0.1.2"

 if OS.mac? && Hardware::CPU.intel?

   url "https://github.com/okojomoeko/awspm/releases/download/v#{version}/awspm-macos-amd64.tar.gz"

   sha256 "6649b677dd8dcb1ca00899fa7ce3391b27c3c6196384c6c3fa26b7081407e47e"

 elsif OS.mac? && Hardware::CPU.arm?

   url "https://github.com/okojomoeko/awspm/releases/download/v#{version}/awspm-macos-arm64.tar.gz"

   sha256 "633ace208988e943616454ee62fa9140027868fca55c890148acdbbcc5be9424"

 elsif OS.linux? && Hardware::CPU.intel?

   url "https://github.com/okojomoeko/awspm/releases/download/v#{version}/awspm-linux-amd64.tar.gz"

   sha256 "767ec66463fa3654959ad84a3c2d5a13451b51dc241d8e13136c0c761e78de7b"

 end

 def install

   bin.install "awspm"

 end

 test do

   system "#{bin}/awspm", "--version"

 end

end

