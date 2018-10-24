#!/usr/bin/env ruby
number_times = gets
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
    number_to_leds = gets
    number_to_leds.to_s

    number_to_leds_temporary_array = number_to_leds.split""

    i=0 
    while i< (number_to_leds_temporary_array.length)-1
        number = number_to_leds_temporary_array[i]
        total=total+ base_number_leds[number]
        i+=1
    end 

    puts total.to_s+' leds'

    n+=1
end 


