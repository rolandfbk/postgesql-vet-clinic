/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
  id      			INT,
  name    			VARCHAR(250),
  date_of_birth     DATE,
  escape_attempts   INT,
  neutered     		BIT,
  weight_kg			DECIMAL
);

ALTER TABLE animals
ADD species varchar(255);
