CREATE TABLE IF NOT EXISTS "products"(
	id SERIAL PRIMARY KEY,
 	name VARCHAR(255) NOT NULL,
 	category VARCHAR(255),
 	price decimal(10,2) NOT NULL,
 	weight INTEGER NOT NULL,
 	manufacturer VARCHAR(255),
 	origin CHAR(2),
 	EAN CHAR(13) UNIQUE NOT NULL,
 	availableQuantity INTEGER NOT NULL,
 	description TEXT
);
CREATE TABLE IF NOT EXISTS "users"(
 	id SERIAL PRIMARY KEY,
 	firstName VARCHAR(50),
 	lastName VARCHAR(50),
 	email VARCHAR(320) NOT NULL UNIQUE,
 	hashedPassword VARCHAR(64) NOT null,
 	address VARCHAR(255),
 	isActive BOOLEAN DEFAULT TRUE NOT NULL
);
CREATE TABLE IF NOT EXISTS "orders"(
	id SERIAL PRIMARY KEY,
 	userId INTEGER NOT NULL, 
 	createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 	FOREIGN KEY (userId) REFERENCES users(id) ON DELETE cascade
 	
);
CREATE TABLE IF NOT EXISTS "ordersDetails"(
	id SERIAL PRIMARY KEY,
 	productId INTEGER  NOT null,
 	orderId INTEGER  NOT null,
 	quantity INTEGER  NOT null,
 	price DECIMAL(10,2) NOT null,
 	FOREIGN KEY (productId) REFERENCES products(id) ON DELETE cascade,
 	FOREIGN KEY (orderId) REFERENCES orders(id) ON DELETE cascade 
);
