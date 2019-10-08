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
    for i in str
        count = 0
        blunders = 0
        while count < str.size 
            if i == "g" && i+1 == "g"
                count +=2
            elsif i == "g" && i+1 != "g" && count > 1 #figure out the case for agg, since that'll return false when it's accurate
                return false
            else 
                count += 1
            end
        end 
    end
    return true
end 
g_happy("agghgghggh")

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


def sort(merge_list) 
    merge_list.size.times do |i|
    end
end

# sort([1,2,3,4,5])
def merge(list_one,list_two, sort) #sort the lists based on numerical value
    list_one.each do |i|
        merge_list.push(i)
    end
    
    list_two.each do |j|
        merge_list.push(j)
    end
    return merge_list
end

def shift_left(list) 
    first_number = list[0]
    list.delete(1)
    list.push(first_number)
end

def shift_left_loop(list) 
    first_number=list[0]
    new_list = []
    trash = []
    (list.size+1).times do |i|
        if  i == list[0]
            trash.push(i)
        else
            new_list.push(i)
        end
    end
    new_list.delete(0)
    new_list.push(first_number)
    return new_list
end



def can_balance(list)  #given a non empty list return true if there is a split in the array so one side == the other

  
end

def gets_sandwich(str) 
    bread_index = 0
    bread_tracker = []
   (str.size-4).times do |i|
               #deleting all characters before initial bread
        slice = str[i..(i+4)]
        count = 0 
        if  slice == "bread"   #keeping track of where the "B's are in bread
          count = i
          bread_tracker.push(count)
          bread_index = 0
        end 
    end

    if bread_tracker.size <2
        return false
    end
    print bread_tracker
    first_bread = bread_tracker[0]
    last_bread = bread_tracker.pop  #should be 9
    puts last_bread
    str.slice((first_bread+5)...last_bread)
end
  #                 01234567891234678901
# puts gets_sandwich("Hibreadhibreadhihihi")

def max_span(list)#I didn't understand this one at all :/ #I was reading this at home and didb't understand what
    max = 0          #"leftmost" and "rightmost" means in this context
    min = 10000000000 
    range = 0
    list.each do |n|
      if n > max
        max = n
      end

      if n < min
        min = n
      end
    end
    range = max - min
    return range
end
# print max_span([1,2,3,4,5])


def count_code(str) #look for code in in a string but the 3rd letter can be any letter
    count = 0
    str.size.times do |i|
       slice =str[i..(i+3)]

        slice.size.times do |j|
          first_slice = slice[j..(j+1)]
          last_slice = slice[(j+3)]
          if first_slice == "co"  && last_slice == "e"
            count += 1
          end 

        end
    end
    return count
end
#                 012345678912
# print count_code("cosecosecofe")
# print count_code("sssssscodesssscofesss")