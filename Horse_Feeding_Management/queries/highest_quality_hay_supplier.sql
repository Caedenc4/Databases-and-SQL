SELECT st.`Name` AS SupplierName, MAX(hb.`Quality`) AS MaxQuality
FROM `hay bale` hb
JOIN `supplier table` st ON hb.`SupplierID` = st.`SupplierID`;