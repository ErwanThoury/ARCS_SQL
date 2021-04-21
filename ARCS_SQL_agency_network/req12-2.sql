SELECT CASE WHEN LENGTH(acronym) = 4 THEN acronym
            WHEN LENGTH(acronym) = 3 THEN substring(acronym from '^..')
                                        || '0' 
                                        || substring(acronym from '.$')

            END AS acronym
FROM destination
ORDER BY acronym;
