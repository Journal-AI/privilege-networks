## ROCHDALE BOROUGH

### REMOVAL OF DUPLICATES MASTER AND TRANSACTION DATA

```sql

SELECT rb.supplier_name, rb.account_name, rb.service, rb.order_date, rb.total_value, 
GROUP_CONCAT(suppliers_master_data.Cpv_Codes SEPARATOR '|') AS cpv_codes
FROM rochdale_borough AS rb
INNER JOIN suppliers_master_data ON suppliers_master_data.Source_Name = 
REPLACE(REPLACE(REPLACE(REPLACE(LOWER(rb.supplier_name), ',', ''), '(', ''), ')', ''), 'ltd', '')
WHERE DATEDIFF(STR_TO_DATE(suppliers_master_data.Start_Date, '%d/%m/%Y'), rb.order_date) <= 0 AND
DATEDIFF(STR_TO_DATE(suppliers_master_data.End_Date, '%d/%m/%Y'), rb.order_date) >= 0
GROUP BY rb.supplier_name, rb.purchase_order_number

```

## STOCKPORT METROPOLITAN BOROUGH

### REMOVAL OF DUPLICATES MASTER AND TRANSACTION DATA

```sql

SELECT smb.supplier_name, smb.pro_class_description, smb.service, smb.expense_area, 
smb.po_value, 
GROUP_CONCAT(suppliers_master_data.Cpv_Codes SEPARATOR '|') AS cpv_codes
FROM stockport_metropolitan_borough AS smb
INNER JOIN suppliers_master_data ON suppliers_master_data.Source_Name = 
REPLACE(REPLACE(REPLACE(REPLACE(LOWER(smb.supplier_name), ',', ''), '(', ''), ')', ''), 'ltd', '')
WHERE DATEDIFF(STR_TO_DATE(suppliers_master_data.Start_Date, '%d/%m/%Y'), smb.document_date) <= 0 AND
DATEDIFF(STR_TO_DATE(suppliers_master_data.End_Date, '%d/%m/%Y'), smb.document_date) >= 0
GROUP BY smb.supplier_name, smb.po_number, smb.line_number

```