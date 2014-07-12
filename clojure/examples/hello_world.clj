(println
  (-> "alpha bravo charlie delta"
      .toUpperCase
      (.split " ")
      (->>
        (clojure.string/join "..."))))
