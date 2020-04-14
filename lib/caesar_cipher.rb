def cipher_a_string(str, n)
  list = str.split(//)
  cipher = []
  list.map! do |l|
  	if (l.ord > 96 && l.ord < 123) || (l.ord > 64 && l.ord < 91)
  		minmaj = (l.ord + n)
  		if (minmaj > 96 && minmaj < 123) || (minmaj > 64 && minmaj < 91)
  			cipher << minmaj.chr
  		else
  			cipher << (minmaj-26).chr
  		end
  	else
  		cipher << l
    end
	end
	return cipher.join
end

puts cipher_a_string("une phrase test", 6)