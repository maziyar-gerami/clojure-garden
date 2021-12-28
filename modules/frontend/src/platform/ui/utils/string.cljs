(ns platform.ui.utils.string
  (:require
    [goog.string :as gstr]
    [goog.string.format]))


(defn format
  [s & args]
  (apply gstr/format s args))
