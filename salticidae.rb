class Salticidae < Formula
  desc "Minimal C++ asynchronous network library for distributed systems"
  homepage "https://github.com/Determinant/salticidae"
  url "https://github.com/Determinant/salticidae/archive/v0.1.0c.tar.gz"
  sha256 "aed22e78c0c3cd59b1812751c92d8a86bca23b79e46463ddbe9beda90b1b1cd6"

  depends_on "cmake" => :build
  depends_on "make" => :build
  depends_on "libuv" => "1.10"
  depends_on "openssl@1.1" => "1.1"

  def install
    system "cmake", ".", "-DCMAKE_BUILD_TYPE=Release", "-DBUILD_SHARED=ON", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "true"
  end
end
