(*
 * OWL - an OCaml numerical library for scientific computing
 * Copyright (c) 2016-2017 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

open Bigarray
open Owl_ext_types

module M = Owl_dense_ndarray_d


(* module specific functions *)

let pack_elt x = F x
let unpack_elt = function F x -> x | _ -> failwith "error: unknown type"

let pack_box x = DAD x
let unpack_box = function DAD x -> x | _ -> failwith "error: unknown type"


(* wrappers to original functions *)

let empty i = M.empty i |> pack_box

let create i a = M.create i (unpack_elt a) |> pack_box

let zeros i = M.zeros i |> pack_box

let ones i = M.ones i |> pack_box

let uniform ?scale i = M.uniform ?scale i |> pack_box

let sequential i = M.sequential i |> pack_box


let shape x = M.shape (unpack_box x)

let num_dims x = M.num_dims (unpack_box x)

let nth_dim x = M.nth_dim (unpack_box x)

let numel x = M.numel (unpack_box x)

let nnz x = M.nnz (unpack_box x)

let density x = M.density (unpack_box x)

let size_in_bytes x = M.size_in_bytes (unpack_box x)

let same_shape x = M.same_shape (unpack_box x)


let get x i = M.get (unpack_box x) i |> pack_elt

let set x i a = M.set (unpack_box x) i (unpack_elt a)

let sub_left x s l = M.sub_left (unpack_box x) s l |> pack_box

let slice_left x i = M.slice_left (unpack_box x) i |> pack_box

let slice axis x = M.slice axis (unpack_box x) |> pack_box

let copy_slice i src dst = M.copy_slice i (unpack_box src) (unpack_box dst)

let copy src dst = M.copy (unpack_box src) (unpack_box dst)

let fill x a = M.fill (unpack_box x) (unpack_elt a)

let clone x = M.clone (unpack_box x) |> pack_box

let reshape x s = M.reshape (unpack_box x) s |> pack_box

let flatten x = M.flatten (unpack_box x) |> pack_box

let reverse x = M.reverse (unpack_box x) |> pack_box

let transpose ?axis x = M.transpose ?axis (unpack_box x) |> pack_box

let swap a0 a1 x = M.swap a0 a1 (unpack_box x) |> pack_box

let tile x reps = M.tile (unpack_box x) reps

let repeat ?axis x reps = M.repeat ?axis (unpack_box x) reps

let squeeze ?(axis=[||]) x = M.squeeze ~axis (unpack_box x) |> pack_box


let iteri ?axis f x = M.iteri ?axis f (unpack_box x)

let iter ?axis f x = M.iter ?axis f (unpack_box x)

let mapi ?axis f x = M.mapi ?axis f (unpack_box x) |> pack_box

let map f x = M.map f (unpack_box x) |> pack_box

let map2i ?axis f x y = M.map2i ?axis f (unpack_box x) (unpack_box y) |> pack_box

let map2 f x y = M.map2i f (unpack_box x) (unpack_box y) |> pack_box

let filteri ?axis f x = M.filteri ?axis f (unpack_box x)

let filter f x = M.filter f (unpack_box x)

let foldi ?axis f a x = M.foldi ?axis f a (unpack_box x)

let fold f a x = M.fold f a (unpack_box x)

let iteri_slice axis f x = M.iteri_slice axis f (unpack_box x)

let iter_slice axis f x = M.iter_slice axis f (unpack_box x)

let iter2i f x y = M.iter2i f (unpack_box x) (unpack_box y)

let iter2 f x y = M.iter2 f (unpack_box x) (unpack_box y)


let exists f x = M.exists f (unpack_box x)

let not_exists f x = M.not_exists f (unpack_box x)

let for_all f x = M.for_all f (unpack_box x)

let is_zero x = M.is_zero (unpack_box x)

let is_positive x = M.is_positive (unpack_box x)

let is_negative x = M.is_negative (unpack_box x)

let is_nonpositive x = M.is_nonpositive (unpack_box x)

let is_nonnegative x = M.is_nonnegative (unpack_box x)

let equal x y = M.equal (unpack_box x) (unpack_box y)

let not_equal x y = M.not_equal (unpack_box x) (unpack_box y)

let greater x y = M.greater (unpack_box x) (unpack_box y)

let less x y = M.less (unpack_box x) (unpack_box y)

let greater_equal x y = M.greater_equal (unpack_box x) (unpack_box y)

let less_equal x y = M.less_equal (unpack_box x) (unpack_box y)

let elt_equal x y = M.elt_equal (unpack_box x) (unpack_box y) |> pack_das

let elt_not_equal x y = M.elt_not_equal (unpack_box x) (unpack_box y) |> pack_das

let elt_less x y = M.elt_less (unpack_box x) (unpack_box y) |> pack_das

let elt_greater x y = M.elt_greater (unpack_box x) (unpack_box y) |> pack_das

let elt_less_equal x y = M.elt_less_equal (unpack_box x) (unpack_box y) |> pack_das

let elt_greater_equal x y = M.elt_greater_equal (unpack_box x) (unpack_box y) |> pack_das


let print x = M.print (unpack_box x)

let save x f = M.save (unpack_box x) f

let load f = M.load f |> pack_box


let sum x = M.sum (unpack_box x) |> pack_elt

let prod x = M.prod (unpack_box x) |> pack_elt

let min x = M.min (unpack_box x) |> pack_elt

let max x = M.max (unpack_box x) |> pack_elt

let minmax x = let a, b = M.minmax (unpack_box x) in (pack_elt a, pack_elt b)

let min_i x = let a, i = M.min_i (unpack_box x) in (pack_elt a, i)

let max_i x = let a, i = M.max_i (unpack_box x) in (pack_elt a, i)

let minmax_i x = let (a,i), (b,j) = M.minmax_i (unpack_box x) in (pack_elt a,i), (pack_elt b, i)

let abs x = M.abs (unpack_box x) |> pack_box

let abs2 x = M.abs2 (unpack_box x) |> pack_box

let neg x = M.neg (unpack_box x) |> pack_box

let reci x = M.reci (unpack_box x) |> pack_box

let signum x = M.signum (unpack_box x) |> pack_box

let sqr x = M.sqr (unpack_box x) |> pack_box

let sqrt x = M.sqrt (unpack_box x) |> pack_box

let cbrt x = M.cbrt (unpack_box x) |> pack_box

let exp x = M.exp (unpack_box x) |> pack_box

let exp2 x = M.exp2 (unpack_box x) |> pack_box

let expm1 x = M.expm1 (unpack_box x) |> pack_box

let log x = M.log (unpack_box x) |> pack_box

let log10 x = M.log10 (unpack_box x) |> pack_box

let log2 x = M.log2 (unpack_box x) |> pack_box

let log1p x = M.log1p (unpack_box x) |> pack_box

let sin x = M.sin (unpack_box x) |> pack_box

let cos x = M.cos (unpack_box x) |> pack_box

let tan x = M.tan (unpack_box x) |> pack_box

let asin x = M.asin (unpack_box x) |> pack_box

let acos x = M.acos (unpack_box x) |> pack_box

let atan x = M.atan (unpack_box x) |> pack_box

let sinh x = M.sinh (unpack_box x) |> pack_box

let cosh x = M.cosh (unpack_box x) |> pack_box

let tanh x = M.tanh (unpack_box x) |> pack_box

let asinh x = M.asinh (unpack_box x) |> pack_box

let acosh x = M.acosh (unpack_box x) |> pack_box

let atanh x = M.atanh (unpack_box x) |> pack_box

let floor x = M.floor (unpack_box x) |> pack_box

let ceil x = M.ceil (unpack_box x) |> pack_box

let round x = M.round (unpack_box x) |> pack_box

let trunc x = M.trunc (unpack_box x) |> pack_box

let erf x = M.erf (unpack_box x) |> pack_box

let erfc x = M.erfc (unpack_box x) |> pack_box

let logistic x = M.logistic (unpack_box x) |> pack_box

let relu x = M.relu (unpack_box x) |> pack_box

let softplus x = M.softplus (unpack_box x) |> pack_box

let softsign x = M.softsign (unpack_box x) |> pack_box

let softmax x = M.softmax (unpack_box x) |> pack_box

let sigmoid x = M.sigmoid (unpack_box x) |> pack_box

let log_sum_exp x = M.log_sum_exp (unpack_box x) |> pack_elt

let l1norm x = M.l1norm (unpack_box x) |> pack_elt

let l2norm x = M.l2norm (unpack_box x) |> pack_elt

let l2norm_sqr x = M.l2norm_sqr (unpack_box x) |> pack_elt


let add x y = M.add (unpack_box x) (unpack_box y) |> pack_box

let sub x y = M.sub (unpack_box x) (unpack_box y) |> pack_box

let mul x y = M.mul (unpack_box x) (unpack_box y) |> pack_box

let div x y = M.div (unpack_box x) (unpack_box y) |> pack_box

let add_scalar x a = M.add_scalar (unpack_box x) (unpack_elt a) |> pack_box

let sub_scalar x a = M.sub_scalar (unpack_box x) (unpack_elt a) |> pack_box

let mul_scalar x a = M.mul_scalar (unpack_box x) (unpack_elt a) |> pack_box

let div_scalar x a = M.div_scalar (unpack_box x) (unpack_elt a) |> pack_box

let pow x y = M.pow (unpack_box x) (unpack_box y) |> pack_box

let pow0 a x = M.pow0 (unpack_elt a) (unpack_box x) |> pack_box

let pow1 x a = M.pow1 (unpack_box x) (unpack_elt a) |> pack_box

let atan2 x y = M.atan2 (unpack_box x) (unpack_box y) |> pack_box

let atan20 a x = M.atan20 (unpack_elt a) (unpack_box x) |> pack_box

let atan21 x a = M.atan21 (unpack_box x) (unpack_elt a) |> pack_box

let hypot x y = M.hypot (unpack_box x) (unpack_box y) |> pack_box

let min2 x y = M.min2 (unpack_box x) (unpack_box y) |> pack_box

let max2 x y = M.max2 (unpack_box x) (unpack_box y) |> pack_box

let ssqr x a = M.ssqr (unpack_box x) (unpack_elt a) |> pack_elt

let ssqr_diff x y = M.ssqr_diff (unpack_box x) (unpack_box y) |> pack_elt


(* ends here *)
