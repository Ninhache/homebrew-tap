class Probe < Formula
  desc "Health checks for local dev services, from the CLI or a Makefile"
  homepage "https://github.com/Ninhache/probe"
  url "https://registry.npmjs.org/@ninhache/probe/-/probe-0.10.0.tgz"
  sha256 "76a53a126a3436b8d62695ce2e99390a361dd5776015be6174b773af4fd23a07"
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
