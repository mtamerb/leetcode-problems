SELECT p.product_id,
       ROUND(COALESCE(SUM(p.price * u.units), 0) / COALESCE(SUM(u.units), 1), 2) AS average_price
FROM Prices p
         LEFT JOIN UnitsSold u ON u.product_id = p.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
