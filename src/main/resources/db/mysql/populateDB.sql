INSERT IGNORE INTO vets VALUES (1, 'James', 'Carter');
INSERT IGNORE INTO vets VALUES (2, 'Helen', 'Leary');
INSERT IGNORE INTO vets VALUES (3, 'Linda', 'Douglas');
INSERT IGNORE INTO vets VALUES (4, 'Rafael', 'Ortega');
INSERT IGNORE INTO vets VALUES (5, 'Henry', 'Stevens');
INSERT IGNORE INTO vets VALUES (6, 'Sharon', 'Jenkins');

INSERT IGNORE INTO specialties VALUES (1, 'radiology');
INSERT IGNORE INTO specialties VALUES (2, 'surgery');
INSERT IGNORE INTO specialties VALUES (3, 'dentistry');

INSERT IGNORE INTO vet_specialties VALUES (2, 1);
INSERT IGNORE INTO vet_specialties VALUES (3, 2);
INSERT IGNORE INTO vet_specialties VALUES (3, 3);
INSERT IGNORE INTO vet_specialties VALUES (4, 2);
INSERT IGNORE INTO vet_specialties VALUES (5, 1);

INSERT IGNORE INTO types VALUES (1, 'cat');
INSERT IGNORE INTO types VALUES (2, 'dog');
INSERT IGNORE INTO types VALUES (3, 'lizard');
INSERT IGNORE INTO types VALUES (4, 'snake');
INSERT IGNORE INTO types VALUES (5, 'bird');
INSERT IGNORE INTO types VALUES (6, 'hamster');

INSERT IGNORE INTO owners VALUES (1, 'To Kill a Mockingbird', 'Harper Lee', '', 'Madison', '10');
INSERT IGNORE INTO owners VALUES (2, '1984', 'George Orwell', '', 'Sun Prairie', '12');
INSERT IGNORE INTO owners VALUES (3, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', '', 'McFarland', '6');
INSERT IGNORE INTO owners VALUES (4, 'The Lord of the Rings', 'J. R. R. Tolkien', '', 'Windsor', '18');
INSERT IGNORE INTO owners VALUES (5, 'The Great Gatsby', 'F. Scott Fitzgerald', '', 'Madison', '20');
INSERT IGNORE INTO owners VALUES (6, 'Pride and Prejudice', 'Jane Austen', '', 'Monona', '30');
INSERT IGNORE INTO owners VALUES (7, 'The Diary Of A Young Girl', 'Anne Frank', '', 'Monona', '15');
INSERT IGNORE INTO owners VALUES (8, 'The Book Thief', 'Markus Zusak', '', 'Madison', '17');
-- INSERT IGNORE INTO owners VALUES (9, 'David', '', '', 'Madison', '11');
-- INSERT IGNORE INTO owners VALUES (10, 'Carlos', '', '', 'Waunakee', '9');

-- INSERT IGNORE INTO pets VALUES (1, 'Leo', '2000-09-07', 1, 1);
-- INSERT IGNORE INTO pets VALUES (2, 'Basil', '2002-08-06', 6, 2);
-- INSERT IGNORE INTO pets VALUES (3, 'Rosy', '2001-04-17', 2, 3);
-- INSERT IGNORE INTO pets VALUES (4, 'Jewel', '2000-03-07', 2, 3);
-- INSERT IGNORE INTO pets VALUES (5, 'Iggy', '2000-11-30', 3, 4);
-- INSERT IGNORE INTO pets VALUES (6, 'George', '2000-01-20', 4, 5);
-- INSERT IGNORE INTO pets VALUES (7, 'Samantha', '1995-09-04', 1, 6);
-- INSERT IGNORE INTO pets VALUES (8, 'Max', '1995-09-04', 1, 6);
-- INSERT IGNORE INTO pets VALUES (9, 'Lucky', '1999-08-06', 5, 7);
-- INSERT IGNORE INTO pets VALUES (10, 'Mulligan', '1997-02-24', 2, 8);
-- INSERT IGNORE INTO pets VALUES (11, 'Freddy', '2000-03-09', 5, 9);
-- INSERT IGNORE INTO pets VALUES (12, 'Lucky', '2000-06-24', 2, 10);
-- INSERT IGNORE INTO pets VALUES (13, 'Sly', '2002-06-08', 1, 10);

-- INSERT IGNORE INTO visits VALUES (1, 7, '2010-03-04', 'rabies shot');
-- INSERT IGNORE INTO visits VALUES (2, 8, '2011-03-04', 'rabies shot');
-- INSERT IGNORE INTO visits VALUES (3, 8, '2009-06-04', 'neutered');
-- INSERT IGNORE INTO visits VALUES (4, 7, '2008-09-04', 'spayed');
