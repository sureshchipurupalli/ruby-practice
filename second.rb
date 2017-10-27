alist = [6,1,10,5,9,3,8,4,7,2]
passnum = alist.length-1

   while passnum > 0
      for i in 0..passnum-1
         print(alist[i])
         if i > 6
           break 
         end
      end
      passnum -= 1
   
end