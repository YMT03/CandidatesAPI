DROP DATABASE IF EXISTS fluxit;
CREATE DATABASE fluxit;
use fluxit;

DROP TABLE IF EXISTS candidates;
CREATE TABLE candidates
(
	id BIGINT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    dni VARCHAR(100) NOT NULL,
    mail VARCHAR(100) NOT NULL,
    phone VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
)ENGINE=INNODB;

INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Fernando","Fernandez","36902333","Fernando.Fernandez@gmail.com","1540302030","Bartolome Mitre 0");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Facundo","Gomez","36902340","Facundo.Gomez@gmail.com","1540302031","Paunero 870");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Ludmila","Perez","36902347","Ludmila.Perez@gmail.com","1540302032","Emilio Zola 1740");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Lucia","Fernandez","36902354","Lucia.Fernandez@gmail.com","1540302033","Av.Rivadavia 2610");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Maria","Alvarez","36902361","Maria.Alvarez@gmail.com","1540302034","Peron 3480");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Natalia","Fernandez","36902368","Natalia.Fernandez@gmail.com","1540302035","Crisologo Larralde 4350");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Maria","Gomez","36902375","Maria.Gomez@gmail.com","1540302036"," Av.Belgrano 5220");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Ludmila","Ramos","36902382","Ludmila.Ramos@gmail.com","1540302037","Cerrito 6090");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Juan","Lopez","36902389","Juan.Lopez@gmail.com","1540302038","Paunero 6960");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Ludmila","Ramirez","36902396","Ludmila.Ramirez@gmail.com","1540302039","Paunero 7830");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Juana","Ramirez","36902403","Juana.Ramirez@gmail.com","15403020310","Paunero 8700");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Nicolas","Fernandez","36902410","Nicolas.Fernandez@gmail.com","15403020311","Paunero 9570");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Lucia","Gomez","36902417","Lucia.Gomez@gmail.com","15403020312","Paunero 10440");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Maria","Ramos","36902424","Maria.Ramos@gmail.com","15403020313","Paunero 11310");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Natalia","Lopez","36902431","Natalia.Lopez@gmail.com","15403020314","Emilio Zola 12180");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Lucia","Ramirez","36902438","Lucia.Ramirez@gmail.com","15403020315","Emilio Zola 13050");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Maria","Ramirez","36902445","Maria.Ramirez@gmail.com","15403020316","Emilio Zola 13920");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Natalia","Fernandez","36902452","Natalia.Fernandez@gmail.com","15403020317","Emilio Zola 14790");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Lucia","Gomez","36902459","Lucia.Gomez@gmail.com","15403020318","Emilio Zola 15660");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Maria","Ramos","36902466","Maria.Ramos@gmail.com","15403020319","Emilio Zola 16530");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Natalia","Lopez","36902473","Natalia.Lopez@gmail.com","15403020320","Emilio Zola 17400");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Fernando","Ramirez","36902480","Fernando.Ramirez@gmail.com","15403020321","Av.Rivadavia 18270");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Facundo","Ramirez","36902487","Facundo.Ramirez@gmail.com","15403020322","Av.Rivadavia 19140");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Ludmila","Gomez","36902494","Ludmila.Gomez@gmail.com","15403020323","Av.Rivadavia 20010");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Fernando","Perez","36902501","Fernando.Perez@gmail.com","15403020324","Av.Rivadavia 20880");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Facundo","Fernandez","36902508","Facundo.Fernandez@gmail.com","15403020325","Av.Rivadavia 21750");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Ludmila","Alvarez","36902515","Ludmila.Alvarez@gmail.com","15403020326","Av.Rivadavia 22620");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Fernando","Gomez","36902522","Fernando.Gomez@gmail.com","15403020327","Av.Rivadavia 23490");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Facundo","Perez","36902529","Facundo.Perez@gmail.com","15403020328","Peron 24360");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Ludmila","Fernandez","36902536","Ludmila.Fernandez@gmail.com","15403020329","Peron 25230");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Ludmila","Perez","30902347","Ludmila.Perez@gmail.com","1540302032","Emilio Zola 1740");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Lucia","Fernandez","30902354","Lucia.Fernandez@gmail.com","1540302033","Av.Rivadavia 2610");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Maria","Alvarez","30902361","Maria.Alvarez@gmail.com","1540302034","Peron 3480");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Natalia","Fernandez","30902368","Natalia.Fernandez@gmail.com","1540302035","Paunero 4350");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Maria","Gomez","30902375","Maria.Gomez@gmail.com","1540302036","Paunero 5220");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Ludmila","Ramos","30902382","Ludmila.Ramos@gmail.com","1540302037","Paunero 6090");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Juan","Lopez","30902389","Juan.Lopez@gmail.com","1540302038","Paunero 6960");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Ludmila","Ramirez","30902396","Ludmila.Ramirez@gmail.com","1540302039","Paunero 7830");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Juana","Ramirez","30902403","Juana.Ramirez@gmail.com","15403020310","Emilio Zola 8700");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Nicolas","Fernandez","30902410","Nicolas.Fernandez@gmail.com","15403020311","Emilio Zola 9570");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Lucia","Gomez","30902417","Lucia.Gomez@gmail.com","15403020312","Emilio Zola 10440");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Maria","Ramos","30902424","Maria.Ramos@gmail.com","15403020313","Emilio Zola 11310");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Natalia","Lopez","30902431","Natalia.Lopez@gmail.com","15403020314","Emilio Zola 12180");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Lucia","Ramirez","30902438","Lucia.Ramirez@gmail.com","15403020315","Av.Rivadavia 13050");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Lucia","Fernandez","39902378","Lucia.Fernandez@gmail.com","1540302033","Av.Rivadavia 2610");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Maria","Gomez","39902423","Maria.Gomez@gmail.com","1540302036","Paunero 5220");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Lucia","Gomez","39902513","Lucia.Gomez@gmail.com","15403020312","Emilio Zola 10440");
INSERT INTO candidates(name,lastname,dni,mail,phone,address) VALUES("Fernando","Perez","39902693","Fernando.Perez@gmail.com","15403020324","Peron 20880");
