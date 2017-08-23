class Translator
  def cypher
    characters = ('a'..'z').to_a
    characters.push(' ')
    nums = (0..9).to_a
    nums.each { |num| characters.push(num) }
    morse_keys = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....',
    '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.',
    '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-',
    '-.--', '--..', ' ', '-----', '.----', '..---', '...--', '....-', '.....', '-....',
    '--...', '---..', '----.']

    Hash[characters.zip(morse_keys)]
  end

  def translate_letter(letter)
    letter = letter.downcase
    cypher_instance = cypher
    morse_value = cypher_instance[letter]
  end

  def translate_word(word)
    letters = word.split('')
    translated_letters = letters.map do |letter|
      translated_letter = translate_letter(letter)
    end

    return translated_letters.join

  end

  def eng_to_morse(sentence)
    sentence_by_word = sentence.split(" ")
    translated_array = sentence_by_word.map do |word|
      translated_word = translate_word(word)
    end

    translated_sentence = translated_array.join(' ')
    return translated_sentence
  end
end
