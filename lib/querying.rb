def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE series_id = 1 ORDER BY books.year";
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto FROM characters ORDER BY LENGTH(Characters.motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT Characters.species, COUNT(Characters.species) FROM characters GROUP BY Characters.species ORDER BY COUNT(Characters.species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, Subgenres.name FROM authors INNER JOIN series ON Series.author_id = Authors.id INNER JOIN subgenres ON Series.subgenre_id = Subgenres.id"
end

def select_series_title_with_most_human_characters
"SELECT Series.title FROM series INNER JOIN characters WHERE Characters.series_id = Series.id GROUP BY Characters.species ORDER BY COUNT(Characters.species) ASC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(character_books.book_id) FROM characters INNER JOIN character_books ON character_books.character_id = Characters.id GROUP BY Characters.name ORDER BY COUNT(character_books.book_id) DESC"
end
