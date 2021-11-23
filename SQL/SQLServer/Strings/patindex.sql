SELECT	Department,
		JobRole,
		BusinessTravel
FROM Medium.dbo.[HR-Employee-Attrition]
-- Look for Job Roles that have an "b" followed by 0 or more letters and then have a "y"
WHERE PATINDEX('%b%y%', JobRole) > 0;
