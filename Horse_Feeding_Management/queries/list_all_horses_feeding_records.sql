SELECT h.`Name` AS HorseName, fr.`DateFed`, fr.`QuantityFed`
FROM `horse` h
JOIN `feeding record` fr ON h.`HorseID` = fr.`HorseID`;