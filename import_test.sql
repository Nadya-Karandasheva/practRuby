-- Creation of a test base...

CREATE DATABASE Bank;

CREATE TABLE Individuals (
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  middle_name VARCHAR(50),
  passport VARCHAR(20) NOT NULL,
  inn VARCHAR(12) NOT NULL,
  identity_card VARCHAR(11) NOT NULL,
  driver_license VARCHAR(20),
  additional_documents TEXT,
  notes VARCHAR(255),
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

INSERT INTO Individuals (first_name, last_name, middle_name, passport, inn, identity_card, driver_license, additional_documents, notes) VALUES
('Мария', 'Гончаренко', 'Иванова', '5030196283', '123456789123', '98765432198', null, 'выпискаИзНалоговой.dox', null ),
('Вадим', 'Корчагин', 'Алексеевич', '4010827395', '647846598372', '92198876543', 'категория B', null, null ),
('Сергей', 'Даниленко', 'Валерьевич', '3090485938', '90385618592', '98321976548', null, 'выпискаИзНалоговой.dox', null ),
('Светлана', 'Чеснокова', 'Юревна', '4010758375', '620649137946', '65432198798', 'категория B', null, 'замужем' ),
('Илья', 'Монар', 'Михайлович', '4020485837', '72948274093', '43219876598', 'категория А,B', null, 'Нелбходимо обновить данные' );

CREATE TABLE BorrowedFunds (
  amount INT NOT NULL,
  percent_rate INT NOT NULL,
  term TIMESTAMP NOT NULL,
  conditions TEXT NOT NULL,
  notes VARCHAR(255),
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  individual_id FOREIGN KEY REFERENCES Individuals(id),
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

INSERT INTO BorrowedFunds (individual_id, amount, percent_rate, term, conditions, notes) VALUES
(2, 1000000, 5, '31-03-2025  23:59:59', 'условияВКА.txt', null),
(3, 100000, 3, '29-07-2025  23:59:59', 'условияСЧЮ.txt', 'два договора'),
(3, 200000, 3, '17-04-2025  23:59:59', 'условияСЧЮ-2.txt', 'два договора'),
(4, 5500000, 7, '2-10-2025  23:59:59', 'условияИММ.txt', null);
