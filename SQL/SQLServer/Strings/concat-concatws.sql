DECLARE @string1 NVARCHAR(100) = 'Employees from';
DECLARE @string2 NVARCHAR(100) = 'have the role of';
DECLARE @string3 NVARCHAR(100) = 'with job satisfaction of';

SELECT TOP (10)
hr.EducationField,
hr.JobRole,
hr.JobSatisfaction,
 -- Create a message by concatenating values with "+"
@string1 + ' ' + hr.EducationField + ' ' + @string2 + ' ' + hr.JobRole + ' ' + @string3 + ' ' + CAST(hr.JobSatisfaction AS NVARCHAR) AS message1,
 -- Create a message by concatenating values with "CONCAT()"
CONCAT(@string1, ' ', hr.EducationField, ' ', @string2, ' ', hr.JobRole, ' ', @string3, ' ', hr.JobSatisfaction) AS message2,
 -- Create a message by concatenating values with "CONCAT_WS()"
CONCAT_WS(' ', @string1, hr.Education, @string2, hr.JobRole, @string3, hr.JobSatisfaction) AS message3
FROM Medium.dbo.[HR-Employee-Attrition] as hr;
