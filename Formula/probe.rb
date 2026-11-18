class Probe < Formula
  desc "Health checks for local dev services, from the CLI or a Makefile"
  homepage "https://github.com/Ninhache/probe"
  url "https://registry.npmjs.org/@ninhache/probe/-/probe-0.23.2.tgz"
  sha256 "880debe70efab43ef6a3357ded3d3a325055240e5ee40de4d6d7016bc5054004"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/probe --version")
  end
end
