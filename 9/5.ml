(* 目的：偶数の要素のリストを返す *) 
(* even : int list -> int list *) 
let rec even lst = match lst with 
    [] -> [] 
  | first :: rest -> 
      if first mod 2 = 0 
      then first :: even rest 
      else even rest 
 
(* テスト *) 
let test1 = even [] = [] 
let test2 = even [1;　2;　3;　4;　5] = [2;4] 
let test3 = even [2; 1; 6; 4; 7] = [2;6;4] 

let _  = Js.log test1
let _  = Js.log test2
let _  = Js.log test3