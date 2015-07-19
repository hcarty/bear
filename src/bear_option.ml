let map f = function
  | None -> None
  | Some x -> Some (f x)

let may f = function
  | None -> ()
  | Some x -> f x

let is_none = function
  | None -> true
  | Some _ -> false

let is_some = function
  | Some _ -> true
  | None -> false

let bind f = function
  | None -> None
  | Some x -> f x

module Infix = struct
  let ( >>= ) x f = bind f x
  let ( >>| ) x f = map f x
end

include Infix
