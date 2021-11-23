SELECT	Department AS Initial_name,
		-- Replace '&' with 'and'
		REPLACE(Department, '&', 'and') AS New_name
FROM Medium.dbo.[HR-Employee-Attrition]
WHERE CHARINDEX('&', Department) > 0;
