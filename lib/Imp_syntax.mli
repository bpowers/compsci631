type aexp =
  | AConst of int
  | AVar of string
  | AAdd of aexp * aexp
  | AMul of aexp * aexp

type bexp =
  | BConst of bool
  | BAnd of bexp * bexp
  | BOr of bexp * bexp
  | BNot of bexp
  | BLT of aexp * aexp

type cmd =
  | CSkip
  | CAbort
  | CAssign of string * aexp
  | CIf of bexp * cmd * cmd
  | CWhile of bexp * bexp * cmd
  | CSeq of cmd * cmd
