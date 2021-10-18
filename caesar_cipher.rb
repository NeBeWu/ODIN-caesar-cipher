# frozen_string_literal: true

def caesar_cipher(string, shift_factor)
  shift_factor = shift_factor % 26
  string.chars.map do |char|
    case char
    when /[A-Z]/
      char.ord.+(shift_factor) > 90 ? char.ord.+(shift_factor).-(26).chr : char.ord.+(shift_factor).chr
    when /[a-z]/
      char.ord.+(shift_factor) > 122 ? char.ord.+(shift_factor).-(26).chr : char.ord.+(shift_factor).chr
    else
      char
    end
  end.join
end
