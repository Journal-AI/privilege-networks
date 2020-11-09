## STOCKPORT METROPOLITAN BOROUGH

```sql

SELECT supplier_trades.supplier_name, smb.po_value, smb.pro_class_description, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code1 SEPARATOR '|') AS cpv_code1, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code2 SEPARATOR '|') AS cpv_code2, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code3 SEPARATOR '|') AS cpv_code3, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code4 SEPARATOR '|') AS cpv_code4, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code5 SEPARATOR '|') AS cpv_code5, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code6 SEPARATOR '|') AS cpv_code6, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code7 SEPARATOR '|') AS cpv_code7, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code8 SEPARATOR '|') AS cpv_code8, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code9) AS cpv_code9, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code10 SEPARATOR '|') AS cpv_code10, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code11 SEPARATOR '|') AS cpv_code11, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code12 SEPARATOR '|') AS cpv_code12, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code13 SEPARATOR '|') AS cpv_code13, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code14 SEPARATOR '|') AS cpv_code14, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code15 SEPARATOR '|') AS cpv_code15, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code16 SEPARATOR '|') AS cpv_code16, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code17 SEPARATOR '|') AS cpv_code17, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code18 SEPARATOR '|') AS cpv_code18, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code19 SEPARATOR '|') AS cpv_code19, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code20 SEPARATOR '|') AS cpv_code20, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code21 SEPARATOR '|') AS cpv_code21, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code22 SEPARATOR '|') AS cpv_code22, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code23 SEPARATOR '|') AS cpv_code23, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code24 SEPARATOR '|') AS cpv_code24, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code25 SEPARATOR '|') AS cpv_code25, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code26 SEPARATOR '|') AS cpv_code26, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code27 SEPARATOR '|') AS cpv_code27, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code28 SEPARATOR '|') AS cpv_code28 
FROM supplier_trades 
INNER JOIN stockport_metropolitan_borough AS smb ON 
REPLACE(REPLACE(REPLACE(REPLACE(LOWER(smb.supplier_name), ',', ''), '(', ''), ')', ''), 'ltd', '') = 
REPLACE(REPLACE(REPLACE(REPLACE(LOWER(supplier_trades.supplier_name), ',', ''), '(', ''), ')', ''), 'ltd', '')
GROUP BY supplier_trades.supplier_name, smb.po_number, smb.line_number

```

## ROCHDALE BOROUGH

```sql

SELECT supplier_trades.supplier_name, rb.total_value, rb.service, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code1 SEPARATOR '|') AS cpv_code1, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code2 SEPARATOR '|') AS cpv_code2, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code3 SEPARATOR '|') AS cpv_code3, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code4 SEPARATOR '|') AS cpv_code4, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code5 SEPARATOR '|') AS cpv_code5, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code6 SEPARATOR '|') AS cpv_code6, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code7 SEPARATOR '|') AS cpv_code7, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code8 SEPARATOR '|') AS cpv_code8, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code9) AS cpv_code9, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code10 SEPARATOR '|') AS cpv_code10, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code11 SEPARATOR '|') AS cpv_code11, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code12 SEPARATOR '|') AS cpv_code12, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code13 SEPARATOR '|') AS cpv_code13, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code14 SEPARATOR '|') AS cpv_code14, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code15 SEPARATOR '|') AS cpv_code15, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code16 SEPARATOR '|') AS cpv_code16, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code17 SEPARATOR '|') AS cpv_code17, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code18 SEPARATOR '|') AS cpv_code18, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code19 SEPARATOR '|') AS cpv_code19, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code20 SEPARATOR '|') AS cpv_code20, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code21 SEPARATOR '|') AS cpv_code21, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code22 SEPARATOR '|') AS cpv_code22, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code23 SEPARATOR '|') AS cpv_code23, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code24 SEPARATOR '|') AS cpv_code24, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code25 SEPARATOR '|') AS cpv_code25, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code26 SEPARATOR '|') AS cpv_code26, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code27 SEPARATOR '|') AS cpv_code27, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code28 SEPARATOR '|') AS cpv_code28 
FROM supplier_trades 
INNER JOIN rochdale_borough AS rb ON 
REPLACE(REPLACE(REPLACE(REPLACE(LOWER(rb.supplier_name), ',', ''), '(', ''), ')', ''), 'ltd', '') = 
REPLACE(REPLACE(REPLACE(REPLACE(LOWER(supplier_trades.supplier_name), ',', ''), '(', ''), ')', ''), 'ltd', '')
GROUP BY supplier_trades.supplier_name, rb.purchase_order_number

```

## PENDLE BOROUGH

```sql

SELECT supplier_trades.supplier_name, pb.value, pb.department, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code1 SEPARATOR '|') AS cpv_code1, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code2 SEPARATOR '|') AS cpv_code2, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code3 SEPARATOR '|') AS cpv_code3, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code4 SEPARATOR '|') AS cpv_code4, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code5 SEPARATOR '|') AS cpv_code5, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code6 SEPARATOR '|') AS cpv_code6, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code7 SEPARATOR '|') AS cpv_code7, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code8 SEPARATOR '|') AS cpv_code8, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code9) AS cpv_code9, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code10 SEPARATOR '|') AS cpv_code10, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code11 SEPARATOR '|') AS cpv_code11, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code12 SEPARATOR '|') AS cpv_code12, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code13 SEPARATOR '|') AS cpv_code13, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code14 SEPARATOR '|') AS cpv_code14, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code15 SEPARATOR '|') AS cpv_code15, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code16 SEPARATOR '|') AS cpv_code16, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code17 SEPARATOR '|') AS cpv_code17, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code18 SEPARATOR '|') AS cpv_code18, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code19 SEPARATOR '|') AS cpv_code19, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code20 SEPARATOR '|') AS cpv_code20, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code21 SEPARATOR '|') AS cpv_code21, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code22 SEPARATOR '|') AS cpv_code22, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code23 SEPARATOR '|') AS cpv_code23, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code24 SEPARATOR '|') AS cpv_code24, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code25 SEPARATOR '|') AS cpv_code25, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code26 SEPARATOR '|') AS cpv_code26, 
GROUP_CONCAT(DISTINCT supplier_trades.cpv_code27 SEPARATOR '|') AS cpv_code27, GROUP_CONCAT(DISTINCT supplier_trades.cpv_code28 SEPARATOR '|') AS cpv_code28 
FROM supplier_trades 
INNER JOIN pendle_borough AS pb ON 
REPLACE(REPLACE(REPLACE(REPLACE(LOWER(pb.supplier_name), ',', ''), '(', ''), ')', ''), 'ltd', '') = 
REPLACE(REPLACE(REPLACE(REPLACE(LOWER(supplier_trades.supplier_name), ',', ''), '(', ''), ')', ''), 'ltd', '')
GROUP BY supplier_trades.supplier_name, pb.reference_number, pb.quantity, pb.price, pb.value

```

