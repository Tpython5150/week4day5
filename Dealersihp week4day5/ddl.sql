CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25)

);
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER,
    customer_id INTEGER,
    car_id INTEGER,
    sales_date VARCHAR(10),
    total_price NUMERIC(10,2),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id) ON DELETE CASCADE

);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    invoice_id INTEGER,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    drivers_license_number VARCHAR(25),
    credit_score INTEGER,
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id) ON DELETE CASCADE

);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    invoice_id INTEGER,
    year INTEGER,
    make VARCHAR(15),
    model VARCHAR(15),
    color VARCHAR(15),
    price NUMERIC(10,2),
    type VARCHAR(15),
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id) ON DELETE CASCADE

);

CREATE TABLE service_history(
    service_history_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE
);

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    service_history_id INTEGER,
    price NUMERIC(10,2),
    service_performed VARCHAR(50),
    service_date varchar(25),
    FOREIGN KEY (service_history_id) REFERENCES service_history(service_history_id) ON DELETE CASCADE
    
);

CREATE TABLE service_ticket_mechanic(
    service_ticket_mechanic_id SERIAL PRIMARY KEY,
    service_ticket_id INTEGER,
    mechanic_id INTEGER,
    FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id) ON DELETE CASCADE
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    service_ticket_mechanic_id INTEGER,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    FOREIGN KEY (service_ticket_mechanic_id) REFERENCES service_ticket_mechanic(service_ticket_mechanic_id) ON DELETE CASCADE

);
