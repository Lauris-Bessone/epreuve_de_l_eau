#recupere les argument avec ARGF
#les renvoyer a l envers

=begin
def enver_a_l(arr)
    
    a1 = []
    a1 = arr.reverse
    puts a1
end
enver_a_l(ARGV)
=end
=begin
def enver(arr)
   n = arr.length
        while n != -1
        a1 = arr.rotate(n)
            n = n -1
        end

   
end
=end

=begin
def error(arr)
    if  arr[0] == nil 
        puts "Error"
    else
        reversee(arr)
    end
end
=end

def reversee(arr) # méthod
    a = 0
    z = arr.length - 1
    
    while a < z
    
    arr[a], arr[z] = arr[z], arr[a]
  
    a = a + 1
    z = z - 1
    end
    return arr
end


puts "Error" if ARGV[0] == nil # gestion d erreur

number = ARGV # parsing

a_l_enver = reversee(number) # resolution

puts a_l_enver # afficher le resultat