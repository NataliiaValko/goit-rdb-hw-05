USE mydb;

SELECT 
    *,
    (SELECT 
            customer_id
        FROM
            orders
        WHERE
            orders.id = od.order_id) AS customer_id
FROM
    order_details od;

