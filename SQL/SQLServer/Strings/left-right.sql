SELECT	Department,
		JobRole,
		BusinessTravel,
		-- Select only the first 3 characters from the Department
		LEFT(Department, 3) AS part1,
		-- Select only the last 3 characters from the Business Travel
		RIGHT(BusinessTravel, 3) AS part2,
		-- Create an alias by combining the new strings
		LEFT(Department, 3) + '_' + RIGHT(BusinessTravel, 3) AS part1_part2
FROM Medium.dbo.[HR-Employee-Attrition];
