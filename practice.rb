# # first, second, third = ARGV

# # puts "Your first variable is: #{first}"
# # puts "Your second variable is: #{second}"
# # puts "Your third variable is: #{third}"

# def prt(*args)
#   arg1,arg2=args
#   puts "arg1:#{arg1},arg2:#{arg2}";
# end

# def gold_room
#   puts "This room is full of gold.  How much do you take?"

#   print "> "
#   choice = $stdin.gets.chomp

#   # this line has a bug, so fix it
#   if choice.include?("0") || choice.include?("1")
#     how_much = choice.to_i
#   else
#     puts("Man, learn to type a number.")
#   end

#   if how_much < 50
#     puts "Nice, you're not greedy, you win!"
#     exit(0)
#   else
#     puts("You greedy bastard!")
#   end
# end

# # gold_room
# def pri 
#   result_from_block = yield;
#   puts result_from_block;
# end

# # 3.times() do
# #   pri do
# #     creature = "walrus"
# #     "I am the #{creature}!"
# #   end
# # end

# shopping_list = [:milk, :eggs, :cheese]
# pri do
#   # select one at random
#   important_item = shopping_list.sample
#   "I hope I don't forget #{important_item}!"
# end

# # Should work
# my_lambda = -> { return 1 }
# puts "Lambda result: #{my_lambda.call}"
# # Should raise exception
#  my_lda = lambda { return 1 }
#  puts "Proc result=: #{my_lda.call}"

# def call_proc
#   puts "Before proc"
#   my_proc = Proc.new { return 2 }
#   my_proc.call
#   puts "After proc"
# end

# def call_proc()
#   count = 500
#   print '----------',count
#   # mylda.call
#   # my_proc.call
#   yield count
# end

# count   = 1
# call_proc{|count|puts count}

# # my_proc = Proc.new { puts count }
# # mylda =->{puts count+1 }
# # call_proc(my_proc,mylda)

def benchmark
  start_time= Time.now
  yield
  end_time = Time.now
  running_time = end_time - start_time
puts "it took #{running_time} seconds."
end

long_string = "apple"*100000000
running_time = benchmark { long_string.reverse }

