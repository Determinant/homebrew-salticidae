class Salticidae < Formula
  desc "Minimal C++ asynchronous network library for distributed systems"
  homepage "https://github.com/Determinant/salticidae"
  url "https://github.com/Determinant/salticidae/archive/v0.3.1.tar.gz"
  sha256 "f62819106cd06f9d48145355a40811b78cff24a6fff6e45122875a7c50f893ed"

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
