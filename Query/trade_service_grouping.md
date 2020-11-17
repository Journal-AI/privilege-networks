## TRADE SERVICE GROUPING

## PENDLE BOROUGH PRIVILEGE

```sql

SELECT pb.privilege, SUM(pb.value) AS po_value
FROM pendle_borough_records AS pb
GROUP BY pb.privilege

```

## PENDLE BOROUGH SERVICE

```sql

SELECT pb.service_description, SUM(pb.value) AS po_value
FROM pendle_borough_records AS pb
GROUP BY pb.service_description

```

## ROCHDALE BOROUGH PRIVILEGE

```sql

SELECT rb.privilege, SUM(rb.total_value) AS po_value
FROM rochdale_borough_records AS rb
GROUP BY rb.privilege

```

## ROCHDALE BOROUGH SERVICE

```sql

SELECT rb.service, SUM(rb.total_value) AS po_value
FROM rochdale_borough_records AS rb
GROUP BY rb.service

```

## STOCKPORT METROPOLITAN BOROUGH PRIVILEGE

```sql

SELECT smb.privilege, SUM(smb.po_value) AS po_value
FROM stockport_metropolitan_borough_records AS smb
GROUP BY smb.privilege

```

## STOCKPORT METROPOLITAN BOROUGH SERVICE

```sql

SELECT smb.pro_class_description, SUM(smb.po_value) AS po_value
FROM stockport_metropolitan_borough_records AS smb
GROUP BY smb.pro_class_description

```

