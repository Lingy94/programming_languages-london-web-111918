require 'pry'

def reformat_languages(languages)
new_hash = {}
<<<<<<< HEAD
=======
style_array = []
>>>>>>> 960570c206e04c3de53dc074e7f518976aa6b78a
  languages.each do |style, list|
    list.each do |lang, hash|
      hash.each do |attribute, string|
        if !new_hash.has_key?(lang)
          new_hash[lang] = {}
        end
<<<<<<< HEAD
        if !new_hash[lang].has_key?(attribute)
          new_hash[lang][attribute] = string
        end
          new_hash[lang][:style] ||= []
          new_hash[lang][:style] << style
     
      end
    end
  end  
=======
        if !new_hash[lang].has_key?(hash)
          new_hash[lang] = {attribute => string}
        end
        if !new_hash[lang].has_key?(style)
          new_hash[lang].store(:style, [style])
        end
      
      end
    end
  end  
  

  binding.pry
>>>>>>> 960570c206e04c3de53dc074e7f518976aa6b78a
  return new_hash
end