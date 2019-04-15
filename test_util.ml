let rec print_list_string myList = match myList with
| [] -> print_endline "This is the end of the string list!"
| head::body -> 
begin
print_endline head;
print_list_string body
end
;;

let rec print_list_int myList = match myList with
| [] -> print_endline "This is the end of the int list!"
| head::body -> 
begin
print_int head; 
print_endline "";
print_list_int body
end
;;