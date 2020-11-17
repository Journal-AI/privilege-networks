## TRADE SERVICE COMBINATION

## STOCKPORT METROPOLITAN BOROUGH

```sql

SELECT smb.supplier_name, smb.privilege, service_categories.service_category, smb.po_value
FROM stockport_metropolitan_borough_records AS smb
INNER JOIN service_categories ON service_categories.service_description = smb.pro_class_description

```

## ROCHDALE BOROUGH

```sql

SELECT rb.supplier_name, rb.privilege, rb.service, rb.total_value
FROM rochdale_borough_records AS rb
INNER JOIN service_categories ON service_categories.service_description = rb.service

```

## PENDLE BOROUGH

```sql

SELECT pb.supplier_name, pb.privilege, pb.service_description, pb.value
FROM pendle_borough_records AS pb
INNER JOIN service_categories ON service_categories.service_description = pb.service_description

```

