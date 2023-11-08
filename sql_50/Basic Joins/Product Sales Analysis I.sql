SELECT product.product_name,
       sales.year,
       sales.price
FROM   sales
           LEFT JOIN product
                     ON product.product_id = sales.product_id
ORDER  BY sales.year DESC;