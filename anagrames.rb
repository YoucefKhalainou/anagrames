if(ARGV.length < 2)
    puts"#{__FILE__} requires two arguments: #{__FILE__} word_to_compare data_to_check_anagrams"
    exit
end

word_to_compare = ARGV[0]
list_of_word = ARGV[1]

list = []
position = 0

File.foreach(list_of_word) do |line| 
    list[position]=line.chomp
    position+=1
end

word_to_compare = word_to_compare.split('').sort.join('')

i = 0 

while ( i < list.count)    
    if (list[i].split('').sort.join('')== word_to_compare)
        puts list[i]
    end    
    i+=1
end




