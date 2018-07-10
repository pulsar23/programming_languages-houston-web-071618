def reformat_languages(language_hash)
  new_hash = {}
  fvalue = ""
  
  language_hash.each do |paradigm, data|
    #puts "paradigm = #{paradigm}"
    #puts "data = #{data}"
    language_keys = language_hash.keys
    #puts "language_keys = #{language_keys}"
    #puts "==================================="
    data.each do |name, type_data|
      #puts "name = #{name}"
      #puts "type_data = #{type_data}"
      type_data.each do |type, value|
        fvalue = value
        #puts "value = #{fvalue}"
      end
      if !new_hash.has_key?(name)
        new_hash[name] = {type: fvalue, style: [paradigm]}
      else
        #just add next paradigm
        new_hash[name][:style] << paradigm
      end

    end
    
  end 
  new_hash
end #reformat_languages
