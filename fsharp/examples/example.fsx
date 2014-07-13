let addOne x = x + 1
let timesTwo x = 2 * x

let result = addOne 5 |> timesTwo
printf "%d" result
