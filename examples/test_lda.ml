(** [ Test Topic Module ]
  The test only works when you have the corresponding text corpus on your
  mahcine. Appologies for the temporary hard-coding path.
 *)

let _ =
  let s = Owl_dataset.load_stopwords () in
  let x = Owl_dataset.load_nips_train_data s in
  let v = Owl_topic_utils.build_vocabulary x in
  let d = Owl_topic_utils.tokenisation v x in
  let m = Owl_topic_lda.init ~iter:20 10 v d in
  Owl_topic_lda.(train SparseLDA m);
  Owl_topic_utils.save_lda_model m "mylda"
