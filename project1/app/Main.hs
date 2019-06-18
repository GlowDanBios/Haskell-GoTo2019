module Main where

import Lib

main :: IO ()
main = do
  let add x y = x + y
  let square x = x ** 2
  let fact x = if x > 1
               then x * fact(x-1)
               else 1
  print (add (square 7) 9)
  print (fact 7)
  print "Hello, how r u?"
  mood <- getLine
  if mood == "good"
  then print "That's fine!"
  else do
       if mood == "bad"
       then print "So sad (("
       else do
            print "Is it good?"
            answer <- getLine
            if answer == "yes"
            then print "That's fine!"
            else print "So sad(("
