#!/usr/local/bin/clj-run

(println
  (-> "alpha bravo charlie delta"
      .toUpperCase
      (.split " ")
      reverse
      (->>
        (clojure.string/join "..."))))
