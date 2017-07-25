UPDATE characters
SET species = 'Martian'
WHERE characters.id = (select MAX(characters.id) from characters)
