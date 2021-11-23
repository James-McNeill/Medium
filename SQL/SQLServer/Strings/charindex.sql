SELECT	Department,
		JobRole,
		BusinessTravel,
		CHARINDEX('sales', JobRole) as Expression1,
		CHARINDEX('Exec', JobRole) as Expression2
FROM Medium.dbo.[HR-Employee-Attrition]
-- Look for the "sales" expression in the JobRole
WHERE CHARINDEX('sales', JobRole) > 0;
