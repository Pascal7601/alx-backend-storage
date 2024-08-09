-- using case to further determine the
-- conditions in the table
SELECT band_name,
CASE
	WHEN split IS NULL THEN 2022 - formed
    ELSE 0
END AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
