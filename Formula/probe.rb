class Probe < Formula
  desc "Health checks for local dev services, from the CLI or a Makefile"
  homepage "https://github.com/Ninhache/probe"
  url "https://registry.npmjs.org/@ninhache/probe/-/probe-0.12.0.tgz"
  sha256 "00187e3d3802f5d72f04e706629e3d6d89358df8647068307b6a17bc0b204402"
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
