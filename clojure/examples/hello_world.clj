(println
  (-> "alpha bravo charlie delta"
      .toUpperCase
      (.split " ")
      reverse
      (->>
        (clojure.string/join "..."))))
