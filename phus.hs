type Minutes = Integer
type Hours = Integer
data Timestamp = Timestamp { h :: Hours, m :: Minutes } deriving (Show)

add :: Minutes -> Minutes -> Timestamp
add m0 m1 = Timestamp { h = div (m0 + m1) 60, m = mod (m0 + m1) 60 }

--add :: Timestamp -> Timestamp -> Timestamp
--add t0 t1 = add t0.m t1.m

add :: (Integer, Integer) -> (Integer, Integer) -> (Integer, Integer)
add t0 t1 = (fst t0 + fst t1, 43)
