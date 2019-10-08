scores = [ 97, 42, 75 ]
scores.delete_if {|score|
 score < 80 }

puts scores