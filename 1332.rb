=begin 
    This is a problem selected from the string algorithms section from URI Online Judge
    URL: https://www.urionlinejudge.com.br/judge/pt/problems/view/1332
=end 

number_of_times = gets
wone = ['o','n','e']
wtwo = ['t','w','o']
wthree = ['t','h','r','e','e']

i=0
j=0
sum=0
for numero in (i, number_of_times.to_i)
    number_ext = gets.chomp
    number_ext_array = number_ext.split""

    # one
    if (number_ext_array.length) == 3 and (number_ext_array[0] == 'o' or number_ext_array[2] == 'e')
        for numero in (j,number_ext_array.length)
            if number_ext_array[numero] == wone[numero]
                sum+=1
            end 
        end 
        
        puts 2 if sum >=2
        
        sum=0
        j=0
    # two
    elsif (number_ext_array.length) == 3 and (number_ext_array[0] == 't' or number_ext_array[2] == 'o')
        for numero in (j,number_ext_array.length)
            if number_ext_array[numero] == wtwo[numero]
                sum+=1
            end 
        end 
        
        puts 2 if sum>=2
        sum =0 

    # three
    elsif (number_ext_array.length) == 5 and (number_ext_array[0] == 't' or number_ext_array[4] == 'e')
        for numero in (j,number_ext_array.length)
            if number_ext_array[numero] == wthree[numero]
                sum+=1
            end 
        end 
      
        puts 3 if sum>=4
        
    end 
end
