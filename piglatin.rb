require "rubygems"
require "bundler/setup"  #restart require

require "minitest/autorun"

class PiglatinTest < Minitest::Test

  def test_pig_becomes_igpay
    assert_equal "igpay", translate("pig")
  end

  def test_banana_becomes_ananabay
    assert_equal "ananabay", translate("banana")
  end

  def test_eat_becomes_eatyay
    assert_equal "eatyay", translate("eat")
  end

  def test_eat_pig_becomes_eatyay_igpay
    assert_equal "eatyay igpay", translate("eat pig")
  end

  def translate(text)
    words = text.split
    translated_words = []

    words.each do |word|
      translated_word = ""

      if ["a","o","u","i","e"].include?(word[0])
        translated_word = word + "yay"
      else
        translated_word = word[1..-1] + word[0] + "ay"
      end

      translated_words << translated_word
    end

    translated_words.join(' ')
  end

end