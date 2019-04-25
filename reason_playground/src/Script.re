open User;
open Util;

let user1: t = {name: "test", age: 10};
let user2: t = {name: "test2", age: 15};
let users: list(t) = [user1, user2];

users |> List.map(u => u.age) |> sum |> Js.log;