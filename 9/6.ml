(* 目的：リスト中の文字列をつなげた文字列を返す *) 
(* concat : string list -> string *) 
let rec concat lst = match lst with 
    [] -> "" 
  | first :: rest -> first ^ concat rest 
 
(* テスト *) 
let test1 = concat [] = "" 
let test2 = concat ["春"] = "春" 
let test3 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬" 

let _  = Js.log test1
let _  = Js.log test2
let _  = Js.log test3