SELECT count(review_id)
FROM vine_reviews

SELECT count(review_id)
FROM non_vine_reviews

SELECT count(review_id)
FROM vine_reviews
WHERE star_rating = '5'

SELECT count(review_id)
FROM non_vine_reviews
WHERE star_rating = '5'

SELECT count(review_id)
FROM non_vine_reviews

SELECT star_rating,(count(star_rating)*100)/(select Count(*)from vine_reviews) as Percentage 
FROM vine_reviews
Group By star_rating

SELECT star_rating,(count(star_rating)*100)/(select Count(*)from non_vine_reviews) as Percentage 
FROM non_vine_reviews
Group By star_rating
    