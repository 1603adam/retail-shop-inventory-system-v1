-- View suppliers
SELECT * FROM supplier;

-- Deliveries by supplier
SELECT sup.supp_name,
       d.delivery_quantity,
       d.delivery_total
FROM delivery d
JOIN supplier sup ON d.supp_id = sup.supp_id;

-- Payments to suppliers
SELECT sup.supp_name,
       p.pay_amount,
       p.pay_status
FROM payment p
JOIN supplier sup ON p.supp_id = sup.supp_id;