-- Understanding What Content is Available in Different Countries

SELECT country, Type, COUNT(*) AS total_count
FROM netflix
GROUP BY country, Type
ORDER BY Total_count DESC
LIMIT 10;

-- Does Netflix Focus More on TV Shows Than Movies in Recent Years?

SELECT release_year,
       COUNT(CASE WHEN type = 'Movie' THEN 1 END) AS Movies_Count,
       COUNT(CASE WHEN type = 'TV Show' THEN 1 END) AS TV_Shows_Count
FROM netflix
GROUP BY release_year
ORDER BY release_year DESC;

--  Popular Gener By Content

SELECT genre, COUNT(*) AS genre_count
FROM netflix
GROUP BY genre
ORDER BY genre_count DESC;

