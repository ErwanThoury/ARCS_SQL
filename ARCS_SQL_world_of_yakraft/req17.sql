SELECT name
FROM character 
WHERE TIMESTAMP '2020-01-09' < lastconn AND lastconn < TIMESTAMP '2020-01-11'
ORDER BY name;
