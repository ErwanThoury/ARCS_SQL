CREATE OR REPLACE FUNCTION list_assistant_transactions(_assistant VARCHAR(64))
RETURNS TABLE (can VARCHAR(32), "timestamp" TIMESTAMP) AS
$$
BEGIN
    RETURN QUERY
    SELECT t.can AS c, t.timestamp AS t 
    FROM transaction t 
    WHERE t.assistant = _assistant
    ORDER BY t, c; 


END;
$$
LANGUAGE plpgsql;
