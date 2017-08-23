require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/translator.rb'

class TranslatorTest < Minitest::Test

  def test_cypher
    translator = Translator.new

    puts translator.cypher
  end

  def test_translate_letter
    translator = Translator.new
    assert_equal '.-', translator.translate_letter('a')

  end

  def test_eng_to_morse
    translator = Translator.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end
end
