# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagger < Formula
  desc "Dagger is an integrated platform to orchestrate the delivery of applications"
  homepage "https://dagger.io"
  version "0.15.4"

  on_macos do
    on_intel do
      url "https://dl.dagger.io/dagger/releases/0.15.4/dagger_v0.15.4_darwin_amd64.tar.gz"
      sha256 "96ecdb67e88c20e51a80d8c53fbd139f183a5c2a4649ece1dff51d926855d8de"

      def install
        bin.install "./dagger"
      end
    end
    on_arm do
      url "https://dl.dagger.io/dagger/releases/0.15.4/dagger_v0.15.4_darwin_arm64.tar.gz"
      sha256 "7b99556bf9d9f61a01e0802a98b51a831793d3e22adaf0a3d2ce2a6d5e06949d"

      def install
        bin.install "./dagger"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.dagger.io/dagger/releases/0.15.4/dagger_v0.15.4_linux_amd64.tar.gz"
        sha256 "dfcb2d868d79eca0083153a75881f2de48e6032202e1e2a7c02f06bf774d4721"

        def install
          bin.install "./dagger"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.dagger.io/dagger/releases/0.15.4/dagger_v0.15.4_linux_arm64.tar.gz"
        sha256 "b81a0f59a6f7bb4726e57b90f5d591d3742f28d5c5219b58c6fccb1fbfdcdf06"

        def install
          bin.install "./dagger"
        end
      end
    end
  end

  test do
    system "#{bin}/dagger version"
  end
end
