(* あらかじめ ex05_3.ml, ex08_3.ml を読み込んでおく必要あり *) 
#use "/Users/user/ocaml_lesson/5/3.ml" 
#use "/Users/user/ocaml_lesson/8/3.ml" 
 
(* person_t list 型のデータの例 *) 
let lst1 = [] 
let lst2 = [person1] 
let lst3 = [person2] 
let lst4 = [person1; person2; person3] 
let lst5 = [person2; person1; person1] 
 
(* person1, person2, person3 の定義については ex08_3.ml を参照 *) 
 
(* 目的：乙女座の人の名前のリストを返す *) 
(* otomeza : person_t list -> string list *) 
let rec otomeza lst = match lst with 
    [] -> [] 
  | {name = n; shincho = s; taiju = t; tsuki = ts; hi = h; ketsueki = k} :: rest -> 
      if seiza ts h = "乙女座" then n :: otomeza rest 
			       else otomeza rest 
 
(* テスト *) 
let test1 = otomeza lst1 = [] 
let test2 = otomeza lst2 = ["浅井"] 
let test3 = otomeza lst3 = [] 
let test4 = otomeza lst4 = ["浅井"] 
let test5 = otomeza lst5 = ["浅井"; "浅井"];;

Printf.printf "%B" test1;;            (* prints true *)
Printf.printf "%B" test2;;            (* prints true *)
Printf.printf "%B" test3;;            (* prints true *)
Printf.printf "%B" test4;;            (* prints true *)
Printf.printf "%B" test5;;            (* prints true *)