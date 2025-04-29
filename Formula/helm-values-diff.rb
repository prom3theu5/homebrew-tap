class HelmValuesDiff < Formula
  desc "Generate minimal Helm values overrides"
  homepage "https://github.com/prom3theu5/helm-values-diff"
  version "1.1.0"

  if OS.mac? && Hardware::CPU.arm?
# HOMEBREW_MAC_ARM
          url "https://github.com/prom3theu5/helm-values-diff/releases/download/v1.1.0/helm-values-diff-darwin-arm64"
          sha256 "f2dd5c690dde5ab14472c3617a693f5248d289573d7c327e8c203b0b7943ae07"
          # END_HOMEBREW_MAC_ARM
  elsif OS.mac? && Hardware::CPU.intel?
# HOMEBREW_MAC_AMD64
          url "https://github.com/prom3theu5/helm-values-diff/releases/download/v1.1.0/helm-values-diff-darwin-amd64"
          sha256 "8a04223d961244aeb602bf5cdd600deb9d4693d257fdb1e3697a60dfca7af604"
          # END_HOMEBREW_MAC_AMD64
  elsif OS.linux?
# HOMEBREW_LINUX_AMD64
          url "https://github.com/prom3theu5/helm-values-diff/releases/download/v1.1.0/helm-values-diff-linux-amd64"
          sha256 "61cb3acd4136d10e384a518a74a7741efae74e6c82c26f876f3f5dcf6c53c36b"
          # END_HOMEBREW_LINUX_AMD64
  end

  def install
    bin.install "#{File.basename(stable.url)}" => "helm-values-diff"
  end
end
