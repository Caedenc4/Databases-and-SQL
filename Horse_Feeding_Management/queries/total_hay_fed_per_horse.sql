SELECT h.`Name` AS HorseName, SUM(fr.`QuantityFed`) AS TotalQuantityFed
FROM `horse` h
JOIN `feeding record` fr ON h.`HorseID` = fr.`HorseID`
GROUP BY h.`Name`;