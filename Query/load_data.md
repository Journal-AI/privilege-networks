## LOAD DATA IN FILE

```sql

LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\aswin\\Documents\\Project-Documentation\\Contextually Self-Organising Maps for Driving Risk Avoidance\\dataset\\notices_full\\AA Projects Ltd.csv' INTO TABLE `council_pos`.`notices_master_data` CHARACTER SET utf8 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES 
(`Notice Identifier`, `Notice Type`, `Organisation Name`, `Status`, `Published Date`, `Title`, `Description`, `Nationwide`, `Postcode`, `Region`, `Cpv Codes`, `Contact Name`, `Contact Email`, `Contact Address 1`, `Contact Address 2`, `Contact Town`, `Contact Postcode`, `Contact Country`, `Contact Telephone`, `Contact Website`, `Attachments`, `Links`, `Additional Text`, `Start Date`, @var1,
`End Date`, @var2, `Closing Date`, @var3, `Is sub-contract`, `Parent Reference`, `Suitable for SME`, `Suitable for VCO`, `Supply Chain`, `OJEU Contract Type`, `Value Low`, `Value High`, `Awarded Date`, @var4, `Awarded Value`, `supplier_name`, `Supplier's contact name`, `Contract start date`, @var5, `Contract end date`, @var6, `OJEU Procedure Type`, `Accelerated Justification`, `Closing Time`)
SET `Start Date` = STR_TO_DATE(@var1, '%d/%m/%Y'), 
    `End Date` = STR_TO_DATE(@var2, '%d/%m/%Y'), 
    `Closing Date` = STR_TO_DATE(@var3, '%d/%m/%Y'), 
    `Awarded Date` = STR_TO_DATE(@var4, '%d/%m/%Y'), 
    `Contract start Date` = STR_TO_DATE(@var5, '%d/%m/%Y'), 
    `Contract end Date` = STR_TO_DATE(@var6, '%d/%m/%Y');

```

