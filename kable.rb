# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kable < Formula
  desc "Manage kubernetes resource. GitOps galore!"
  homepage "https://github.com/redradrat/kable"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/redradrat/kable/releases/download/v0.8.0/kable_0.8.0_Darwin_arm64.tar.gz"
      sha256 "a62bec7e6940a3fb6691a24bb458d4c4435356b02659aec3bfca6628dcaf1e34"

      def install
        bin.install "kable"
        output = Utils.popen_read("#{bin}/kable completion bash")
        (bash_completion/"kable").write output
        output = Utils.popen_read("#{bin}/kable completion zsh")
        (zsh_completion/"_kable").write output
        output = Utils.popen_read("#{bin}/kable completion fish")
        (fish_completion/"kable.fish").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/redradrat/kable/releases/download/v0.8.0/kable_0.8.0_Darwin_x86_64.tar.gz"
      sha256 "52c72c5f0d8bff5d749df852ab1f603f3c6d4677c65d9fcbd89f7d498bf84302"

      def install
        bin.install "kable"
        output = Utils.popen_read("#{bin}/kable completion bash")
        (bash_completion/"kable").write output
        output = Utils.popen_read("#{bin}/kable completion zsh")
        (zsh_completion/"_kable").write output
        output = Utils.popen_read("#{bin}/kable completion fish")
        (fish_completion/"kable.fish").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/redradrat/kable/releases/download/v0.8.0/kable_0.8.0_Linux_arm64.tar.gz"
      sha256 "d9536f4a083c8f316ade7159e593fd940474bb829594f74131b02a0de6e69a51"

      def install
        bin.install "kable"
        output = Utils.popen_read("#{bin}/kable completion bash")
        (bash_completion/"kable").write output
        output = Utils.popen_read("#{bin}/kable completion zsh")
        (zsh_completion/"_kable").write output
        output = Utils.popen_read("#{bin}/kable completion fish")
        (fish_completion/"kable.fish").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/redradrat/kable/releases/download/v0.8.0/kable_0.8.0_Linux_x86_64.tar.gz"
      sha256 "fcb5e99b31022e2e96b045560d4325cad97d8f66b5be7b2e908b1343f9d88149"

      def install
        bin.install "kable"
        output = Utils.popen_read("#{bin}/kable completion bash")
        (bash_completion/"kable").write output
        output = Utils.popen_read("#{bin}/kable completion zsh")
        (zsh_completion/"_kable").write output
        output = Utils.popen_read("#{bin}/kable completion fish")
        (fish_completion/"kable.fish").write output
      end
    end
  end

  depends_on "git"
  depends_on "go-jsonnet"
  depends_on "jsonnet-bundler"
end
