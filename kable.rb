# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kable < Formula
  desc "Manage kubernetes resource. GitOps galore!"
  homepage "https://github.com/redradrat/kable"
  version "0.8.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/redradrat/kable/releases/download/v0.8.5/kable_0.8.5_Darwin_arm64.tar.gz"
      sha256 "a990e4f6224408bcc41f094635fc39ff17ce80885865942f4d6d9a1dfc558a2a"

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
      url "https://github.com/redradrat/kable/releases/download/v0.8.5/kable_0.8.5_Darwin_x86_64.tar.gz"
      sha256 "252b35adba9038bd1c570ff9ffd389850c582443cad37492e8bfbbba705fa47c"

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
      url "https://github.com/redradrat/kable/releases/download/v0.8.5/kable_0.8.5_Linux_arm64.tar.gz"
      sha256 "74eeace05084a559714e9074df0e7a7e936a09f2f7775a6f881a33e71543ced9"

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
      url "https://github.com/redradrat/kable/releases/download/v0.8.5/kable_0.8.5_Linux_x86_64.tar.gz"
      sha256 "7833e7ffe02a2c2d3303977a02870f517c312460dd44cded9d6e9ed32b9b93da"

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
