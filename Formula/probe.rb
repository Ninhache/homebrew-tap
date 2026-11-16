class Probe < Formula
  desc "Health checks for local dev services, from the CLI or a Makefile"
  homepage "https://github.com/Ninhache/probe"
  url "https://registry.npmjs.org/@ninhache/probe/-/probe-0.15.0.tgz"
  sha256 "041d3b020fcf2845ba1dcd3e5286c75de4b55eebfdb6a2d304945a8757598aac"
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
