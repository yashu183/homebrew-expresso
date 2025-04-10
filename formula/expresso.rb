require "language/node"

class Expresso < Formula
    desc "CLI tool to quickly create ExpressJs boilerplate with all the best practices!!!"
    homepage "https://github.com/yashu183/express-js-starter-kit-cli-tool"
    url "https://github.com/yashu183/express-js-starter-kit-cli-tool/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "a389667fd3bd5193f05f6d7b9c8f1ee4979d33ab120b76bb302e1990ad642266"
    license "MIT"
  
    depends_on "node"
  
    def install
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  
    test do
      system "#{bin}/expresso", "--help"
    end
  end
  