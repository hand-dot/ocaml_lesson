let rec sum = (l: list(int)) => switch l {
    | [] => 0
    | [first, ...rest] => first + sum(rest)
    };