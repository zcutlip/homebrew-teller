class Googerteller < Formula
  sha256 :no_check
  
  desc "googerteller"
  homepage "https://github.com/berthubert/googerteller"
  head "https://github.com/berthubert/googerteller.git", branch: "main"

  depends_on "pcaudiolib"
  depends_on "cmake" => :build

  def install
    system "cmake", "."
    system "make"
    bin.install "teller"
  end
end

__END__
