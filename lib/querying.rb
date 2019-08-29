def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, year FROM books INNER JOIN series ON books.series_id = series.id WHERE series.id = (SELECT MIN(id) FROM series) ORDER BY(year)"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY length(motto) DESC LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY(species) ORDER BY species DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series ON series.author_id = authors.id INNER JOIN subgenres ON series.subgenre_id = subgenres.id"
end


def select_character_names_and_number_of_books_they_are_in
  "SELECT name FROM characters INNER JOIN character_books ON characters.id = character_books.character_id INNER JOIN books on books.id = character_books.books_id "
end
