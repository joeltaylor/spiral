# sq = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]
# ans = [1, 2, 3, 4 ,8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10  ]


# This wasn't really necessary, just prettier
# def show sqaure, direction=:norm
#   if direction == :norm
#     print " " +  square.join(' ')
#   elsif direction == :last
#     print  " " + square.last.to_s
#   elsif direction == :first
#     print " " + square.first.to_s
#   elsif direction == :reverse
#     print " " + square.reverse.join(' ')
#   end
# end

# puts sq.join(' ')

# show sq[0]

# show sq[1], :last

# show sq[2], :last

# show sq[3], :reverse

# show sq[2], :first

# sq[1].pop

# show sq[1]

# sq[2].shift
# sq[2].pop

# show sq[2], :reverse



# Turning logic above into a method that can accept any size matrix

sq1 = [[1,2,3,4,55,66],[7,8],[9,10,11,12],[13,14,15,16]]
sq2 = [[1,2,3,4,5,6,7,8,9,10],[11,12,13,14,15,16,17,18,19,20],[21,22,23,24,25,26,27,28,29,30],[31,32,33,34,35,36,37,38,39,40],
[41,42,43,44,45,46,47,48,49,50],[51,52,53,54,55,56,57,58,59,60],[61,62,63,64,65,66,67,68,69,70],[71,72,73,74,75,76,77,78,79,80],
[81,82,83,84,85,86,87,88,89,90],[91,92,93,94,95,96,97,98,99,100]]
ans2 = [1, 2, 3, 4 ,8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10  ]


def spiral sq
  index = 0 #starts as one since first array is a given
  showmethemoney = []
    until sq[index].empty?
      # Print first row
      sq[index].each { |n| showmethemoney << n}
      sq[index].clear
      index += 1

      # Print right side till bottom
      until index == sq.length - 1
        showmethemoney << sq[index].pop
        index +=1
      end

      # Print the bottom
      sq[index].reverse.each { |n| showmethemoney << n }
      sq[index].clear
      index -= 1 # Last line, time to go back up

      # Print left side until top
      until sq[index].empty?
        showmethemoney << sq[index].shift
        index -=1
      end

      index += 1 # Place index at top

    end
    puts "Here's your spiral -> " + showmethemoney.join(' ')
end

puts "First array is " + sq1.inspect

spiral sq1


