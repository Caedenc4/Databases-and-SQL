SELECT h.`Name` AS HorseName, hb.`Quality`
FROM `horse` h
JOIN `feeding record` fr ON h.`HorseID` = fr.`HorseID`
JOIN `hay bale` hb ON fr.`BaleID` = hb.`BaleID`;