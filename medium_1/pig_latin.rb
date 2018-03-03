class PigLatin
  VOWELS = 'aeiouAEIOU'

  def self.translate(word)
    index_of_last_consonant = nil
    pig_latin_word = ''

    word.chars.each_with_index do |char, index|
      if index == 0
        if VOWELS.include?(char)
          pig_latin_word = word + 'ay'
          return pig_latin_word
        end
        if 'xyXY'.include?(char) && (VOWELS.include?(word[1]) == false)
          pig_latin_word = word + 'ay'
          return pig_latin_word
        end
      end
      break if VOWELS.include?(char)
      index_of_last_consonant = index
      index_of_last_consonant += 1 if char == 'q'
    end
    pig_latin_word = word[(index_of_last_consonant + 1)..(word.length - 1)] + word[0..index_of_last_consonant] + 'ay'
    p pig_latin_word
  end

end

PigLatin.translate('yellow')
PigLatin.translate('yttria')
PigLatin.translate('quick fast run')
