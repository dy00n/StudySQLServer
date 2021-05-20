SELECT m.Names, m.Levels, m.Addr, rentalDate
	FROM membertbl AS m
  LEFT OUTER JOIN rentaltbl AS r
	ON m.Idx = r.memberIdx
	WHERE rentalDate IS NULL
