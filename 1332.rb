=begin 
    This is a problem selected from the string algorithms section from URI Online Judge
    URL: https://www.urionlinejudge.com.br/judge/pt/problems/view/1332
=end 

number_of_times = gets
# one
wone = ['o','n','e']
# two
wtwo = ['t','w','o']
# three
wthree = ['t','h','r','e','e']

i=0
j=0
sum=0
while i<number_of_times.to_i
    number_ext = gets.chomp
    number_ext_array = number_ext.split""

    
    # one
    if (number_ext_array.length) == 3 and (number_ext_array[0] == 'o' or number_ext_array[2] == 'e')
        while j< (number_ext_array.length)
            if number_ext_array[j] == wone[j]
                sum+=1
            end 
            j+=1
        end 
        if sum>=2
            puts 1
        end
        sum=0
        j=0
    # two
    elsif (number_ext_array.length) == 3 and (number_ext_array[0] == 't' or number_ext_array[2] == 'o')
        while j< (number_ext_array.length)
            if number_ext_array[j] == wtwo[j]
                sum+=1
            end 
            j+=1
        end 
        if sum>=2
            puts 2
        end 
        sum =0
        j=0   
    elsif (number_ext_array.length) == 5 and (number_ext_array[0] == 't' or number_ext_array[4] == 'e')
        while j< (number_ext_array.length)
            if number_ext_array[j] == wthree[j]
                sum+=1
            end 
            j+=1
        end 
        if sum>=4
            puts 3
        end 
    end 
    i+=1
end
