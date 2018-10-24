#!/usr/bin/env ruby
=begin 
    This is a problem selected from the string algorithms section from URI Online Judge
    URL: https://www.urionlinejudge.com.br/judge/pt/problems/view/1168
=end 
number_times = gets

#This hash represents the numbers of leds that you have to put in a number
base_number_leds = {
    '1' => 2,
    '2' => 5,
    '3' => 5,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 3,
    '8' => 7,
    '9' => 6,
    '0' => 6
}

n=0
number_times.to_i
while n<number_times.to_i
    total=0
    number_to_leds = gets.chomp
    number_to_leds.to_s
    number_to_leds_temporary_array = number_to_leds.split""

    i=0 
    #We use the each position of the array to find the correct number of leds and we put this number in total to 
    #sum the total of leds that we you need
    while i< (number_to_leds_temporary_array.length)
        number = number_to_leds_temporary_array[i]
        total=total+ base_number_leds[number]
        i+=1
    end 

    puts total.to_s+' leds'

    n+=1
end 


