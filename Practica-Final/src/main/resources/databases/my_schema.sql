DROP TABLE IF EXISTS USERS; --Done
DROP TABLE IF EXISTS HOSTS; --Done
DROP TABLE IF EXISTS VEHICLES; --Done
DROP TABLE IF EXISTS CHARGERS; --Done
DROP TABLE IF EXISTS NEWSLETTER_MEMBERS; --Done
DROP TABLE IF EXISTS RESERVATIONS; --Done

CREATE TABLE "USERS" (
    
    "USER_ID" INTEGER IDENTITY PRIMARY KEY,
    "USER_NAME" VARCHAR(255) NOT NULL, --Debe tener nombre
    "SURNAME" VARCHAR(255) NOT NULL, 
    "E_MAIL" VARCHAR(255) NOT NULL, 
    "PASSWORD" VARCHAR(255) NOT NULL, --La contraseña
    "DOB" VARCHAR(255) NOT NULL --Debe de ser mayor de edad
);

CREATE TABLE "HOSTS" (
    "USER_ID" INTEGER NOT NULL, 
    "HOST_ID" INTEGER IDENTITY PRIMARY KEY,
    "HOURLY_RATE" FLOAT NOT NULL, --Cuanto cobra por hora el uso de cargador
    "RATING" INTEGER, --Añade estrellas (/5)
    "NUMBER_HOSTED" INTEGER, --Cuantos usuarios ha alojado en su cargador
    "IDENTIFICATION" VARCHAR(255) NOT NULL --Pasaporte, DNI, etc...
);

CREATE TABLE "VEHICLES" (
    "USER_ID" INTEGER NOT NULL, 
    "VEHICLE_ID" INTEGER IDENTITY PRIMARY KEY, 
    "ELECTRIC" BOOLEAN NOT NULL, 
    "MODEL" VARCHAR(255), 
    "LICENSE_PLATE" VARCHAR(255) NOT NULL,
    "WATTAGE" FLOAT
);

CREATE TABLE "CHARGERS" (
    "USER_ID" INTEGER NOT NULL,
    "CHARGER_ID" INTEGER IDENTITY PRIMARY KEY,
	"LATITUDE" FLOAT,
	"LONGITUDE" FLOAT,
	"CHARGER_TYPE" VARCHAR(255) NOT NULL
);

CREATE TABLE "NEWSLETTER_MEMBERS" (
    "USER_ID" IDENTITY PRIMARY KEY,
    "E_MAIL" VARCHAR(255) NOT NULL 
);

CREATE TABLE "RESERVATIONS" (
    "USER_ID" INTEGER NOT NULL,
    "RESERVATION_ID" INTEGER IDENTITY PRIMARY KEY, 
    "HOST_ID" INTEGER NOT NULL, 
    "PRICE" FLOAT NOT NULL, 
    "LATITUDE" FLOAT,
	"LONGITUDE" FLOAT,
    "RESERVATION_DATE" DATE NOT NULL,
    "RESERVATION_HOUR" TIME NOT NULL
);