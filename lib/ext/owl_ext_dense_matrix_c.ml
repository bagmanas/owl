(*
 * OWL - an OCaml numerical library for scientific computing
 * Copyright (c) 2016-2017 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

open Bigarray
open Owl_ext_types

module M = Owl_dense_matrix_c


(* module specific functions *)

let pack_elt x = C x
let unpack_elt = function C x -> x | _ -> failwith "error: unknown type"

let pack_elt_f x = F x
let unpack_elt_f = function F x -> x | _ -> failwith "error: unknown type"

let pack_box x = DMC x
let unpack_box = function DMC x -> x | _ -> failwith "error: unknown type"


(* wrappers to original functions *)

let empty m n = M.empty m n |> pack_box

let zeros m n = M.zeros m n |> pack_box

let ones m n = M.ones m n |> pack_box

let eye m = M.eye m |> pack_box

let sequential m n = M.sequential m n |> pack_box

let uniform ?(scale=1.) m n = M.uniform ~scale m n |> pack_box

let gaussian ?(sigma=1.) m n = M.gaussian ~sigma m n |> pack_box

let linspace a b n = M.linspace a b n |> pack_box

let meshgrid xa xb ya yb xn yn = let u, v = M.meshgrid xa xb ya yb xn yn in (pack_box u, pack_box v)

let meshup x y = let u, v = M.meshup (unpack_box x) (unpack_box y) in (pack_box u, pack_box v)


let shape x = M.shape (unpack_box x)

let row_num x = M.row_num (unpack_box x)

let col_num x = M.col_num (unpack_box x)

let numel x = M.numel (unpack_box x)

let nnz x = M.nnz (unpack_box x)

let density x = M.density (unpack_box x)

let size_in_bytes x = M.size_in_bytes (unpack_box x)

let same_shape x y = M.same_shape (unpack_box x) (unpack_box y)


let get x i j = M.get (unpack_box x) i j |> pack_elt

let set x i j a = M.set (unpack_box x) i j (unpack_elt a)

let row x i = M.row (unpack_box x) i |> pack_box

let col x j = M.col (unpack_box x) j |> pack_box

let rows x l = M.rows (unpack_box x) l |> pack_box

let cols x l = M.cols (unpack_box x) l |> pack_box

let reshape m n x = M.reshape m n (unpack_box x) |> pack_box

let flatten x = M.flatten (unpack_box x) |> pack_box

let reverse x = M.reverse (unpack_box x) |> pack_box

let fill x a = M.fill (unpack_box x) (unpack_elt a)

let clone x = M.clone (unpack_box x) |> pack_box

let copy_to src dst = M.copy_to (unpack_box src) (unpack_box dst)

let copy_row_to v x i = M.copy_row_to (unpack_box v) (unpack_box x) i

let copy_col_to v x i = M.copy_col_to (unpack_box v) (unpack_box x) i

let concat_vertical x y = M.concat_vertical (unpack_box x) (unpack_box y) |> pack_box

let concat_horizontal x y = M.concat_horizontal (unpack_box x) (unpack_box y) |> pack_box

let transpose x = M.transpose (unpack_box x) |> pack_box

let diag x = M.diag (unpack_box x) |> pack_box

let replace_row v x i = M.replace_row (unpack_box v) (unpack_box x) i |> pack_box

let replace_col v x i = M.replace_col (unpack_box v) (unpack_box x) i |> pack_box

let swap_rows x i i' = M.swap_rows (unpack_box x) i i'

let swap_cols x j j' = M.swap_cols (unpack_box x) j j'

let tile x reps = M.tile (unpack_box x) reps |> pack_box

let repeat ?axis x reps = M.repeat ?axis (unpack_box x) reps |> pack_box


let iteri f x = M.iteri f (unpack_box x)

let iter f x = M.iter f (unpack_box x)

let mapi f x = M.mapi f (unpack_box x) |> pack_box

let map f x = M.mapi f (unpack_box x) |> pack_box

let map2i f x y = M.map2i f (unpack_box x) (unpack_box y) |> pack_box

let map2 f x y = M.map2 f (unpack_box x) (unpack_box y) |> pack_box

let foldi f a x = M.foldi f a (unpack_box x)

let fold f a x = M.fold f a (unpack_box x)

let filteri f x = M.filteri f (unpack_box x)

let filter f x = M.filter f (unpack_box x)

let iteri_rows f x = M.iteri_rows f (unpack_box x)

let iter_rows f x = M.iter_rows f (unpack_box x)

let iteri_cols f x = M.iteri_cols f (unpack_box x)

let iter_cols f x = M.iter_cols f (unpack_box x)

let filteri_rows f x = M.filteri_rows f (unpack_box x)

let filter_rows f x = M.filter_rows f (unpack_box x)

let filteri_cols f x = M.filteri_cols f (unpack_box x)

let filter_cols f x = M.filter_cols f (unpack_box x)

let fold_rows f a x = M.fold_rows f a (unpack_box x)

let fold_cols f a x = M.fold_cols f a (unpack_box x)

let mapi_rows f x = M.mapi_rows f (unpack_box x)

let map_rows f x = M.map_rows f (unpack_box x)

let mapi_cols f x = M.mapi_cols f (unpack_box x)

let map_cols f x = M.map_cols f (unpack_box x)

let mapi_by_row d f x = M.mapi_by_row d f (unpack_box x) |> pack_box

let map_by_row d f x = M.map_by_row d f (unpack_box x) |> pack_box

let mapi_by_col d f x = M.mapi_by_col d f (unpack_box x) |> pack_box

let map_by_col d f x = M.map_by_col d f (unpack_box x) |> pack_box

let mapi_at_row f x i = M.mapi_at_row f (unpack_box x) i |> pack_box

let map_at_row f x i = M.map_at_row f (unpack_box x) i |> pack_box

let mapi_at_col f x j = M.mapi_at_col f (unpack_box x) j |> pack_box

let map_at_col f x j = M.map_at_col f (unpack_box x) j |> pack_box


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

let elt_equal x y = M.elt_equal (unpack_box x) (unpack_box y) |> pack_dms

let elt_not_equal x y = M.elt_not_equal (unpack_box x) (unpack_box y) |> pack_dms

let elt_less x y = M.elt_less (unpack_box x) (unpack_box y) |> pack_dms

let elt_greater x y = M.elt_greater (unpack_box x) (unpack_box y) |> pack_dms

let elt_less_equal x y = M.elt_less_equal (unpack_box x) (unpack_box y) |> pack_dms

let elt_greater_equal x y = M.elt_greater_equal (unpack_box x) (unpack_box y) |> pack_dms


let draw_rows ?(replacement=true) x c = let r, i = M.draw_rows ~replacement (unpack_box x) c in (pack_box r), i

let draw_cols ?(replacement=true) x c = let r, i = M.draw_cols ~replacement (unpack_box x) c in (pack_box r), i

let shuffle_rows x = M.shuffle_rows (unpack_box x)

let shuffle_cols x = M.shuffle_cols (unpack_box x)

let shuffle x = M.shuffle (unpack_box x)


let to_array x = M.to_array (unpack_box x)

let of_array x m n = M.of_array x m n |> pack_box

let to_arrays x = M.to_arrays (unpack_box x)

let of_arrays x = M.of_arrays x |> pack_box

let print x = M.print (unpack_box x)

let pp_dsmat x = M.pp_dsmat (unpack_box x)

let save x f = M.save (unpack_box x) f

let load f = M.load f |> pack_box


let trace x = M.trace (unpack_box x) |> pack_elt

let sum x = M.sum (unpack_box x) |> pack_elt

let prod x = M.prod (unpack_box x) |> pack_elt

let average x = M.average (unpack_box x) |> pack_elt

let sum_rows x = M.sum_rows (unpack_box x) |> pack_box

let sum_cols x = M.sum_rows (unpack_box x) |> pack_box

let average_rows x = M.sum_rows (unpack_box x) |> pack_box

let average_cols x = M.sum_rows (unpack_box x) |> pack_box


let re x = M.re (unpack_box x) |> pack_dms

let im x = M.im (unpack_box x) |> pack_dms

let abs x = M.abs (unpack_box x) |> pack_dms

let abs2 x = M.abs2 (unpack_box x) |> pack_dms

let conj x = M.conj (unpack_box x) |> pack_box

let neg x = M.neg (unpack_box x) |> pack_box

let reci x = M.reci (unpack_box x) |> pack_box

let l1norm x = M.l1norm (unpack_box x) |> pack_elt_f

let l2norm x = M.l2norm (unpack_box x) |> pack_elt_f

let l2norm_sqr x = M.l2norm_sqr (unpack_box x) |> pack_elt_f


let add x y = M.add (unpack_box x) (unpack_box y) |> pack_box

let sub x y = M.sub (unpack_box x) (unpack_box y) |> pack_box

let mul x y = M.mul (unpack_box x) (unpack_box y) |> pack_box

let div x y = M.div (unpack_box x) (unpack_box y) |> pack_box

let add_scalar x a = M.add_scalar (unpack_box x) (unpack_elt a) |> pack_box

let sub_scalar x a = M.sub_scalar (unpack_box x) (unpack_elt a) |> pack_box

let mul_scalar x a = M.mul_scalar (unpack_box x) (unpack_elt a) |> pack_box

let div_scalar x a = M.div_scalar (unpack_box x) (unpack_elt a) |> pack_box

let ssqr x a = M.ssqr (unpack_box x) (unpack_elt a) |> pack_elt

let ssqr_diff x y = M.ssqr_diff (unpack_box x) (unpack_box y) |> pack_elt


(* ends here *)
