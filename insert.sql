INSERT INTO Author (firstName, lastName, dateOfBirth) VALUES
('Jane', 'Austen', '1775-12-16'),
('Charles', 'Dickens', '1812-02-07'),
('Mark', 'Twain', '1835-11-30'),
('Agatha', 'Christie', '1890-09-15'),
('J.K.', 'Rowling', '1965-07-31'),
('Harper', 'Lee', '1926-04-28'),
('Ernest', 'Hemingway', '1899-07-21'),
('George', 'Orwell', '1903-06-25'),
('Gabriel', 'García Márquez', '1927-03-06'),
('Taylor', 'Swift', '1989-12-13'),
('Ed', 'Sheeran', '1991-02-17'),
('Ariana', 'Grande', '1993-06-26'),
('Christopher', 'Nolan', '1970-07-30'),
('Quentin', 'Tarantino', '1963-03-27'),
('Greta', 'Gerwig', '1983-08-04');


INSERT INTO Publisher (publisherName, country) VALUES
('Penguin Books', 'UK'),
('Random House', 'USA'),
('HarperCollins', 'USA'),
('Simon & Schuster', 'USA'),
('Macmillan Publishers', 'UK'),
('Vintage Books', 'USA'),
('Houghton Mifflin', 'USA'),
('Alfred A. Knopf', 'USA'),
('Scribner', 'USA'),
('Universal Music Group', 'USA'),
('Sony Music Entertainment', 'USA'),
('Warner Music Group', 'USA'),
('Warner Bros. Pictures', 'USA'),
('Sony Pictures Entertainment', 'USA'),
('Universal Pictures', 'USA');


INSERT INTO MediaType (mediaTypeName) VALUES
('book'),
('magazine'),
('music'),
('video'),
('prints');

INSERT INTO Catalogue (mediaTypeID, title, edition, publisherID, ISBN, format, copiesAvailable, shelvingInfo, genre, description, ageGroup) VALUES
(1, 'Pride and Prejudice', '3rd', 1, '978-0141439518', 'physical', 25, 'A1-B2', 'Classic', 'A timeless novel about love and social manners in 19th-century England.', 'Adult'),
(1, 'Great Expectations', '5th', 2, '978-0141439563', 'physical', 18, 'C3-D4', 'Classic', 'The story of Pip''s coming of age and his encounters with various characters.', 'Adult'),
(1, 'The Adventures of Huckleberry Finn', '1st', 3, '978-0486280615', 'physical', 15, 'E5-F6', 'Adventure', 'A boy''s journey down the Mississippi River with an escaped slave.', 'Adult'),
(1, 'Sense and Sensibility', '1st', 2, '978-0141439662', 'physical', 18, 'C3-D4', 'Classic', 'Two sisters navigate the complexities of love and societal expectations in this heartwarming novel.', 'Adult'),
(1, 'Emma', '1st', 3, '978-0141439587', 'physical', 15, 'E5-F6', 'Classic', 'A humorous exploration of matchmaking and self-discovery in a small English village.', 'Adult'),
(1, 'A Tale of Two Cities', '1st', 5, '978-0141439600', 'physical', 30, 'I9-J10', 'Classic', 'Set during the French Revolution, this novel explores themes of resurrection and sacrifice.', 'Adult'),
(1, 'Oliver Twist', '1st', 6, '978-0141439747', 'physical', 22, 'K11-L12', 'Classic', 'Follow the orphan Oliver as he navigates the grim world of workhouses and street life in Victorian London.', 'Adult'),
(1, 'The Adventures of Tom Sawyer', '1st', 8, '978-0486400778', 'physical', 23, 'O15-P16', 'Adventure', 'Tom Sawyer\'s mischievous escapades in a 19th-century American town captivate readers of all ages.', 'Children'),
(1, 'The Prince and the Pauper', '1st', 9, '978-0486411101', 'physical', 13, 'Q17-R18', 'Adventure', 'Two boys, one a prince and the other a pauper, switch lives and gain new perspectives on society.', 'Children'),
(1, 'Murder on the Orient Express', '1st', 4, '978-0062693662', 'physical', 20, 'G7-H8', 'Mystery', 'Detective Hercule Poirot investigates a murder on a luxurious train.', 'Adult'),
(1, 'Harry Potter and the Sorcerer\'s Stone', '1st', 5, '978-0590353427', 'physical', 30, 'I9-J10', 'Fantasy', 'The first book in the beloved Harry Potter series.', 'Children'),
(1, 'To Kill a Mockingbird', '3rd', 6, '978-0061120084', 'physical', 22, 'K11-L12', 'Coming-of-age', 'Scout Finch''s experiences growing up in racially charged 1930s Alabama.', 'Adult'),
(1, 'The Old Man and the Sea', '1st', 7, '978-0684801223', 'physical', 17, 'M13-N14', 'Literary Fiction', 'An old Cuban fisherman''s epic struggle with a giant marlin.', 'Adult'),
(1, '1984', '4th', 8, '978-0451524935', 'physical', 23, 'O15-P16', 'Dystopian', 'A dystopian novel set in a totalitarian society ruled by the Party.', 'Adult'),
(1, 'One Hundred Years of Solitude', '1st', 9, '978-0060883287', 'physical', 16, 'S19-T20', 'Magical Realism', 'The Buendía family saga in the fictional town of Macondo.', 'Adult'),
(2, 'Science Today', 'Aug''23', 3, '978-456789123', 'physical', 8, 'E5-F6', 'Science', 'Monthly science magazine with the latest news.', 'Adult'),
(2, 'Lifestyle Weekly', 'Jul''23', 8, '978-321098765', 'physical', 14, 'O15-P16', 'Lifestyle', 'Magazine covering various aspects of life.', 'Adult'),
(3, '1989', 'Deluxe', 10, null, 'physical', 1, 'M15', 'Pop', 'Fifth studio album by Taylor Swift, featuring hit singles like "Shake It Off" and "Blank Space."', 'All ages'),
(3, 'x', 'Deluxe', 11, null, 'physical', 9, 'M15',  'Pop', 'Second studio album by Ed Sheeran, including tracks like "Sing" and "Thinking Out Loud."', 'All ages'),
(3, 'Thank U, Next', 'Standard', 12, null, 'physical', 10, 'M15', 'Pop', 'Fifth studio album by Ariana Grande, featuring songs like "Thank U, Next" and "7 Rings."', 'All ages'),
(4, 'Inception', 'Blu-ray', 13, null, 'physical', 5, 'F13', 'Science Fiction', 'Directed by Christopher Nolan, a mind-bending thriller about dreams and reality.', 'Adult'),
(4, 'Pulp Fiction', 'DVD', 14, null, 'physical', 4, 'F13', 'Crime', 'Directed by Quentin Tarantino, a nonlinear crime drama with a diverse ensemble cast.', 'Adult'),
(4, 'Little Women', 'Digital', 15, null, 'electronic', 6, 'F13', 'Drama', 'Directed by Greta Gerwig, an adaptation of the classic novel featuring the lives of the March sisters.', 'All ages'),
(4, 'Dunkirk', 'Blu-ray', 13, null, 'physical', 3, 'F13', 'War', 'Directed by Christopher Nolan, depicting the evacuation of Allied soldiers from Dunkirk during WWII.', 'Adult'),
(5, 'Art Prints', 'Set 1', 6, '-', 'physical', 25, 'K11-L12', 'Art', 'Set of beautiful art prints for decoration.', 'All ages');


INSERT INTO User (expirationDate, firstName, lastName, dateOfBirth, addressLine1, addressLine2, city, state, country, postalCode, phoneNo, email) VALUES
('2024-12-31', 'Alice', 'Johnson', '1990-03-20', '123 Main St', 'Apt 4B', 'Montreal', 'QC', 'Canada', 'H1A 1A1', '514-123-4567', 'alice@google.com'),
('2023-10-15', 'Robert', 'Smith', '1985-07-10', '456 Elm Rd', 'Suite 8', 'Montreal', 'QC', 'Canada', 'H2B 2B2', '514-987-6543', 'robert@google.com'),
('2023-11-30', 'Maria', 'Brown', '1995-01-05', '789 Oak Ave', '-', 'Montreal', 'QC', 'Canada', 'H3C 3C3', '514-555-1234', 'maria@google.com'),
('2024-09-25', 'James', 'Miller', '1982-11-15', '101 Pine St', 'Apt 3C', 'Montreal', 'QC', 'Canada', 'H4D 4D4', '514-789-4561', 'james@google.com'),
('2023-12-10', 'Emily', 'Wilson', '1998-08-02', '222 Maple Rd', '-', 'Montreal', 'QC', 'Canada', 'H5E 5E5', '514-456-7890', 'emily@google.com'),
('2023-10-31', 'Michael', 'Davis', '1989-04-17', '333 Cedar St', 'Suite 5', 'Montreal', 'QC', 'Canada', 'H6F 6F6', '514-234-5678', 'michael@google.com'),
('2023-12-20', 'Sarah', 'Taylor', '1976-09-12', '444 Birch Rd', '-', 'Montreal', 'QC', 'Canada', 'H7G 7G7', '514-678-9012', 'sarah@google.com'),
('2024-11-15', 'Christopher', 'Anderson', '1993-06-08', '555 Oak St', 'Apt 2A', 'Montreal', 'QC', 'Canada', 'H8H 8H8', '514-123-7890', 'chris@google.com'),
('2023-10-01', 'Laura', 'Martinez', '2000-02-25', '666 Pine Ave', '-', 'Montreal', 'QC', 'Canada', 'H9I 9I9', '514-890-1234', 'laura@google.com'),
('2023-12-05', 'Daniel', 'Lee', '1978-12-01', '777 Elm St', 'Suite 9', 'Montreal', 'QC', 'Canada', 'H0J 0J0', '514-234-5678', 'daniel@google.com');

INSERT INTO Reservation (userID, catalogueNumber, dateBorrowed, dateReturned, dueDate, fines, paymentDate) VALUES
(1, 2, '2023-07-10', '2023-07-17', '2023-07-24', 0.00, NULL),
(3, 4, '2023-06-15', NULL, '2023-07-15', 0.00, NULL),
(5, 7, '2023-08-02', NULL, '2023-08-09', 0.00, NULL),
(2, 1, '2023-07-20', '2023-08-05', '2023-08-18', 0.00, NULL),
(6, 3, '2023-07-25', '2023-08-02', '2023-08-09', 0.00, NULL),
(9, 9, '2023-08-10', NULL, '2023-08-17', 0.00, NULL),
(8, 5, '2023-06-28', '2023-07-12', '2023-07-19', 0.00, NULL),
(4, 6, '2023-07-08', '2023-07-15', '2023-07-22', 0.00, NULL),
(7, 10, '2023-08-15', NULL, '2023-08-22', 0.00, NULL),
(10, 8, '2023-06-05', NULL, '2023-06-12', 0.00, NULL);

INSERT INTO CatalogueAuthor (catalogueNumber, authorID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 3),
(9, 3),
(10, 4 ),
(11, 5 ),
(12, 6 ),
(13, 7 ),
(14, 8 ),
(15, 9 ),
(18, 10),
(19, 11),
(20, 12),
(21, 13),
(22, 14),
(23, 15),
(24, 14),
(25, 15);
