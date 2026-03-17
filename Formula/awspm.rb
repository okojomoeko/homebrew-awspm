class Awspm < Formula

 desc "A powerful CLI tool to manage AWS profiles"

 homepage "https://github.com/okojomoeko/awspm"

 version "0.1.0"

 if OS.mac? && Hardware::CPU.intel?

   url "https://github.com/okojomoeko/awspm/releases/download/v0.1.1/awspm-macos-amd64.tar.gz"

   sha256 "20787dbc5ff15b981fe5f55c54bdd790aca69eae7f37b62f0ba6119773a15386"

 elsif OS.mac? && Hardware::CPU.arm?

   url "https://github.com/okojomoeko/awspm/releases/download/v0.1.1/awspm-macos-arm64.tar.gz"

   sha256 "050973b95cb1a0d84f28f181e4a05d567d278537e289c5eeb7896e747357ffe3"

 elsif OS.linux? && Hardware::CPU.intel?

   url "https://github.com/okojomoeko/awspm/releases/download/v0.1.1/awspm-linux-amd64.tar.gz"

   sha256 "53a05e02a1c325e15f700a79ce9d1bbf07b70c02e61512b1320f51c8c8318579"

 end

 def install

   bin.install "awspm"

 end

 test do

   system "#{bin}/awspm", "--version"

 end

end

