SELECT DISTINCT o.* FROM carts o
JOIN orders oi ON oi.cart = o.id
LEFT JOIN transactions t ON (t.varsymbol = o.variable_symbol) AND t.status = 2 AND t.amount > 0 AND t.account_number = "CZ7920100000002600718920"
WHERE o.payment = 2048 AND o.status = 18
AND o.paid_time < "2017-10-01" AND o.paid_time > "2016-12-21"
AND t.id is null