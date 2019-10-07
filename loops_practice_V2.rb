def threed(list) 
    (list.size-1).times do |i|
        if list[i] == list[i+1] && list[i] == 3
            return false
        end
    end

    count_threes = 0
    list.each do |n|
        if n == 3
           count_threes += 1
        end
    end

    if count_threes != 3
        return false
    else
        return true
    end

end

def same_first_last (list)
    count = 0
    
    if list[0] == list[list.size-1]  
        return false
    end

    list.size.times do |n|
        count += 1
    end

    if count < 2
        return false
    end
   
    return true
end

def either_2_4(list) 
   (list.size-1).times do |i|
      if (list[i] == list[i+1] && i == 2) ^ (list[i] == list[i+1] && i == 4)
        return false
      elsif list[i] == list[i+1] && i==2 
        return true
      elsif list[i] == list[i+1] && i==4
        return true
      end
    end
    return false 
end

def g_happy(str) #work on, all g's need to have a lowercase or capiltol ; String is happy if the g's have a conpanion
    (str.size-2) do |n|
        slice = str[i..(i+2)]
        puts slice
    end 
end 
g_happy("ghgghgh")


def middleway(list_one,list_two)  
    middlelist = []
    num_one=0
    num_two=0
    if list_one.size % 2 == 1
        num_one = list_one[list_one.size/2]
        middlelist.push(num_one)
    else
        num_one = (list_one[list_one.size/2] + list_one[list_one.size/2 - 1])/2.0
        middlelist.push(num_one)
    end

    if list_two.size % 2 == 1
        num_two = list_two[list_two.size/2]
        middlelist.push(num_two)
    else
        num_two = (list_two[list_two.size/2] + list_two[list_two.size/2 - 1])/2.0
        middlelist.push(num_two)
    end
    
end

def merge(list_one,list_two)   
    list_one.each do |i|
        merge_list.push(i)
    end
    
    list_two.each do |j|
        merge_list.push(j)
    end

    return merge_list
end

def shift_left(list) #I'm gonna have to do this legit, since I solved w/o loops
    first_number = list[0]
    list.delete(1)
    list.push(first_number)
end

# def shift_left_loop(list)  #work on ; incompte
#     first_number=list[0]
#     new_list = []
#     trash = []
#     (list.size).times do |i|
#         if  i == list[0]
#             trash.push(i)
#         else
#             new_list.push(i)
#         end
#     end
#     new_list.pop(0)
# end

# print shift_left_loop([1,2,3,4,5])

#print shift_left_loop([1,2,3,4,5])

def can_balance(list)  #given a non empty list return true if there is a split in the array so one side == the other

  
end

def gets_sandwich(str) #look for bread______bread and output what type of sandwich it is using the outermost and intermost bread
    bread_index = 0
    bread_tracker = []
   (str.size-4).times do |i|  #deleting all characters before initial bread
        slice = str[i..(i+4)]
        puts slice
        if  slice == "bread"  #running millions of times. Never exits out of the loop #if using an until loop; use break
          bread_index = str.index("b")
          puts bread_index
          bread_tracker.push(bread_index)
          bread_index = 0
        end 
    end
    
    print bread_tracker
    # str.size.times do |j|  #supposed to delete all characters after final bread Maybe nest in the future
    #     slice = str[j..(j+4)]
    #     puts slice  
    #     if slice == "daerb" 
    #         final_bread = str.index("d")
    #         puts final_bread
    #     end
    # end
end
                  # 01234567891234678901
# puts gets_sandwich("Hibreadhibreadhihihi")

def max_span(list)  #take the range of the #

end

# def count_code(str) #look for code in in a string but the 3rd letter can be any letter
       
#     str.size.times do |i|
#         two_at_a_time = 0
#        one_at_a_time = 0
#          if i+ = && i+2 ==
#             count +=1
#          end 
#         end
#     end

# end