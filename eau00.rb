
=begin
Création du Tableau

a = 000
arr = []
while a < 100
    arr << a
    puts arr
    a = a+1
end
arr = Range.new(000, 999).to_a
=end

arr = ('000'..'999').to_a




# prendre chaque chiffre le diviser en trois et le mettre croissant
# les re injecter quand ils sont croissant

=begin arr2 = [3, 2, 4] 
a1 = []
if arr2[0].to_i > arr2[1].to_i && arr2[1].to_i < arr2[2].to_i
       a1 << arr2.sort
    
else
    puts " eh non"
=end

def growing(arr)
    n = 0
    a1 = []
    while n < arr.length    
        
       a1 << arr[n].chars.sort.join #chars decompose sort trie et join recolle la decomposition de chars
        
        n = n+1
        
    end
   
    if a1 
      see_One_More(a1)
       else 
        puts "pas encore"
    end
end




def see_One_More(arr)  # supprimes les variable a l'index indiquer
    
    n = 0
    
    while n < arr.length 
    
     arr.each_index{|a|
        if arr[n].to_i == arr[a].to_i
            arr.delete_at(a)
        end
    }

    n = n+1
    end
    a1 = arr.sort
    no_Egal(a1)
end  

# suprimer tout les nombre qui ont au moins 1 chiffre en commun

def no_Egal(a)
    n = 0
    a1=[]
    while n < a.length
        
        a[n].split('')
        
        if a[n][0] == a[n][1] && a[n][1] == a[n][2] && a[n][0] == a[n][2]

        elsif a[n][0] == a[n][1]

        elsif a[n][1] == a[n][2]

       elsif a[n][0] == a[n][2]

       else
            a1 << a[n]
        end

        n = n+1
        
    end
    puts a1.join(' ')
end

growing(arr)
