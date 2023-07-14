INSERT INTO salesperson(
    salesperson_id,
    first_name,
    last_name
) VALUES (
    1,
    'Sarah',
    'Stodder'
);

INSERT INTO invoice(
    invoice_id,
    salesperson_id,
    customer_id,
    car_id,
    sales_date,
    total_price
) VALUES (
    1,
    1,
    1,
    1,
    '07/14/23',
    6500.00
);

INSERT INTO customer(
    customer_id,
    invoice_id,
    first_name,
    last_name,
    drivers_license_number,
    credit_score
) VALUES (
    1,
    1,
    'Shoha',
    'Tuschida',
    'm26580173334',
    725

);

INSERT INTO car(
    car_id,
    invoice_id,
    year, 
    make,
    model,
    color,
    price,
    type
) VALUES (
    25,
    1,
    2012,
    'porsche',
    'c4',
    'black',
    6500.00,
'sports_car'

);

INSERT INTO service_history(
    service_history_id,
    car_id,
    customer_id
) VALUES (
    10,
    25,
    1
);

INSERT INTO service_ticket(
    service_ticket_id,
    service_history_id,
    price,
    service_performed,
    service_date
) VALUES (
    12,
    10, 
    150.00,
    'oil_change',
    '07/15/23'
); 

INSERT INTO service_ticket_mechanic(
    service_ticket_mechanic_id,
    service_ticket_id,
    mechanic_id
) VALUES (
    1,
    12,
    11
);

INSERT INTO mechanic(
    mechanic_id,
    first_name,
    last_name
) VALUES (
    11,
    'Troy',
    'McCormick'
)