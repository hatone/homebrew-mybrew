require 'formula'

class Ack < Formula
  homepage 'http://betterthangrep.com/'
  url 'https://github.com/petdance/ack2/archive/2.02.tar.gz'
  sha1 'bad4f48b0aa0e93cc5f526324837d9bce49bd7ac'

  def install
    system 'pod2man', 'ack', 'ack.1'
    man1.install 'ack.1'
    bin.install 'ack'
    bash_completion.install 'etc/ack.bash_completion.sh'
    zsh_completion.install 'etc/ack.zsh_completion' => '_ack'
  end

  test do
    system "#{bin}/ack", 'brew', '/usr/share/dict/words'
  end
end
