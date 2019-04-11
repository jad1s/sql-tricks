SELECT AV.CodeVillage, NameVillage, COUNT(A.NumActivity) 
FROM ActiVillage AV JOIN Village V 
ON AV.CodeVillage = V.CodeVillage 
LEFT JOIN Activity A  
ON AV.NumActivity = A.NumActivity 
AND TypeActivity = 'Nature' 
GROUP BY AV.CodeVillage, NameVillage;