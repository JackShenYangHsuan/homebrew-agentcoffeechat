class Agentcoffeechat < Formula
  desc "Coffee chats for AI coding agents — lets nearby developers' agents talk"
  homepage "https://github.com/JackShenYangHsuan/agentcoffeechat"
  url "https://github.com/JackShenYangHsuan/agentcoffeechat/releases/download/v0.1.0/agentcoffeechat-macos-arm64.tar.gz"
  sha256 "4a037a10fa5859bae1b37dc9e73782505bb499f74ea13d71eca9b5dd8bf8a0d1"
  version "0.1.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "bin/acc"
    bin.install "bin/agentcoffeechat"
    bin.install "bin/agentcoffeechat-daemon"
  end

  def post_install
    ohai "AgentCoffeeChat installed!"
    ohai "Run 'acc start' to start the daemon and install AI tool plugins."
  end

  test do
    assert_match "agentcoffeechat", shell_output("#{bin}/acc --version")
  end
end
