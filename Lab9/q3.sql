CREATE TRIGGER check_rating
    BEFORE UPDATE ON book
    FOR EACH ROW
    EXECUTE PROCEDURE check_bbok-rating();