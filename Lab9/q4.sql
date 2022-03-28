ALTER TABLE author
ADD author_sum_rating integer DEFAULT 0;

CREATE TRIGGER update_author_sum_rating
AFTER UPDATE ON author
FOR EACH ROW
WHEN(author. author_sum_rating != 0)
EXECUTE PROCEDURE updateAuthorSumRating();