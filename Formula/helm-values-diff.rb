class HelmValuesDiff < Formula
  desc "Generate minimal Helm values overrides"
  homepage "https://github.com/prom3theu5/helm-values-diff"
  version "1.1.1"

  if OS.mac? && Hardware::CPU.arm?
# HOMEBREW_MAC_ARM
          url "https://github.com/prom3theu5/helm-values-diff/releases/download/v1.1.1/helm-values-diff-darwin-arm64"
          sha256 "5d0de17584f31c10cb3df621df1076a9c4b02a816b87d1ba39605ddd182f0f35"
          # END_HOMEBREW_MAC_ARM
  elsif OS.mac? && Hardware::CPU.intel?
# HOMEBREW_MAC_AMD64
          url "https://github.com/prom3theu5/helm-values-diff/releases/download/v1.1.1/helm-values-diff-darwin-amd64"
          sha256 "21bc06cfd6efefa0246d930cb15094a7bd0ebf89c368671bd6e50e50602a4bc5"
          # END_HOMEBREW_MAC_AMD64
  elsif OS.linux?
# HOMEBREW_LINUX_AMD64
          url "https://github.com/prom3theu5/helm-values-diff/releases/download/v1.1.1/helm-values-diff-linux-amd64"
          sha256 "0a58d82f683211d9eb2b6a844d0d8824b3bb4a0c45bfa63226642c5d4e6df5f8"
          # END_HOMEBREW_LINUX_AMD64
  end

  def install
    bin.install "#{File.basename(stable.url)}" => "helm-values-diff"
  end
end
