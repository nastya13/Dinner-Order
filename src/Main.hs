module Main where


data DinnerOrder = Chicken | Pasta | Nothing
-- Interp. advance option for dinner order.

fn_for_dinnerOrder :: DinnerOrder -> a
fn_for_dinnerOrder ls = case ls of
				Chicken -> undefined
				Pasta -> undefined
				Main.Nothing -> undefined

----------------------------------------------------
dinner_ordered_to_msg :: DinnerOrder -> String
dinner_ordered_to_msg ls = case ls of
				Chicken -> "The passenger ordered chicken"
				Pasta -> "The passenger ordered pasta"
				Main.Nothing -> "The passenger nothing ordered"


main = print ("Ok")
