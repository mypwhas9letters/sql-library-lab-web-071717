def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, books.year FROM books
join series
on books.series_id = series.id
where series.id = 1
  "
end

def select_name_and_motto_of_char_with_longest_motto
  "select characters.name, characters.motto from characters order by length(characters.motto) desc limit 1"
end


def select_value_and_count_of_most_prolific_species
  "select characters.species, count(characters.species) from characters
group by characters.species
order by characters.species desc
limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name from series
join authors
ON series.author_id = authors.id
join subgenres
on series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "select series.title from series
join characters
on series.id = characters.series_id
where characters.species = 'human'
group by series.title
limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(books.title)
from character_books
join books
on books.id = character_books.book_id
join characters
on characters.id = character_books.character_id
group by characters.name
order by count(books.title) desc"
end
