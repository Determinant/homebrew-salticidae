class Salticidae < Formula
  desc "Minimal C++ asynchronous network library for distributed systems"
  homepage "https://github.com/Determinant/salticidae"
  url "https://github.com/Determinant/salticidae/archive/v0.3.0.tar.gz"
  sha256 "dddcc28057e425f9659f3c1a67ceb93192c7464f76f749fc1f338c62e2397406"

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
