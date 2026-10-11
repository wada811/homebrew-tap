class CmuxClaudeLs < Formula
  desc "List cmux surfaces that run Claude Code"
  homepage "https://github.com/wada811/cmux-claude-ls"
  url "https://github.com/wada811/cmux-claude-ls/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3109a87de6f71d696ee0cafe7bbb744dd5abd0e7d85e02c6a559d29ae24adf23"
  license "MIT"

  depends_on :macos
  uses_from_macos "python"

  def install
    bin.install "cmux-claude-ls"
  end

  def caveats
    <<~EOS
      cmux-claude-ls reads cmux and Claude Code state; it needs cmux running:
        brew install --cask cmux
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmux-claude-ls --version")
  end
end
