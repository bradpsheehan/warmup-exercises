class SecretHandshake

  attr_reader :secret
  def initialize(input)
    @secret = input
  end

  def commands

    handshake = []
    secret.split("").reverse.each_with_index do |char, index|
      if char == "1" && index == 4
          handshake = reverse(handshake)
      elsif char == "1"
          handshake << secret_action[index]
      elsif char != "0"
        handshake = [""]
      end
    end
    return handshake
  end

  def reverse(handshake)
    handshake.reverse
  end

  def secret_action
    ["wink", "double blink", "close your eyes", "jump"]
  end

end
