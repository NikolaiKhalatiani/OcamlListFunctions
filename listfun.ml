(*ALL!! of the functions implemented below are Tail-Recursive, which means they all use Linear! Stack Space
In the standard List Library function List.append uses ( @ ) operator in it's implementation which as we know is not
as efficient in space and time as my implementation. Also standard Library raises different exceptions, while I left
failwith there according to the Task.Types of the functions were not changed*)

let hd = function []->failwith "invalid"
                  |x::_->x
                            
                            
                            
let tl = function []->failwith "invalid"
                  |_::xs->xs
                
                
                            
let length lst = let rec aux res = function []->res
                                            |x::xs-> aux (res+1) xs
in aux 0 lst



let append lst1 lst2 = if lst2 = [] then lst1 else begin 
    let rec aux c lst3 lst4 = if c = 0 then
        let rlst3 = List.rev lst3 in match rlst3 with []->lst4
                                              |x::xs-> aux (c+1) xs (x::lst4)     
        else let rlst3 = lst3 in match rlst3 with []->lst4
                                              |x::xs-> aux (c+1) xs (x::lst4) 
    in aux 0 lst1 lst2
  end
  
  
  
let rev lst = let rec aux res = function []->res
                                    |x::xs-> aux (x::res) xs
in aux [] lst



let rec nth lst n = if n < 0 then failwith"invalid" else begin 
                        match lst with 
                            []->failwith"invalid"
                            |x::xs-> if n =0 then x else nth xs (n-1)
                                                         end
