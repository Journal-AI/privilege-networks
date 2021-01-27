PRODUCT SCORECARD FOR BUYING ITEMS FROM PRIVILEGE NETWORKS
----------------------------------------------------------

## What are Privilege Networks?

Privilege Networks consist of Products, Equipments, Material, Plant, Sites, Buildings, Shopping Items, Cards, Books, Accounts, etc.

## Source of Training Data

[Rochdale Borough Purchase Order Transactions](https://data.gov.uk/dataset/40c1b9d0-999c-46b2-bc9a-7c4a91a074e1/purchase-order-transactions)

[Pendle Borough Purchase Order Transactions](https://data.gov.uk/dataset/8102e12f-7988-4ab3-9c06-adb8c3b24e1f/pendle-council-spending)

[Stockport Metropolitan Purchase Order Transactions](https://data.gov.uk/dataset/7aba411f-4d53-4a2c-9043-054e22392e98/purchase-orders-over-5000)

[ContractsFinder](https://www.contractsfinder.service.gov.uk/Search/Results)

### The Transaction Data

[Purchase Order Data from gov.uk](https://github.com/Journal-AI/privilege-networks/tree/privilege_networks/dataset/po-data)

### The Master Data

[Master Data from ContractsFinder](https://github.com/Journal-AI/privilege-networks/tree/privilege_networks/dataset/notices_full/master-data)

### The Reference Data

[Extracts that contain Estalished Golden Records with Trade Category](https://github.com/Journal-AI/privilege-networks/tree/privilege_networks/dataset/extracts)

[Reference Data of Service Category Information](https://github.com/Journal-AI/privilege-networks/tree/privilege_networks/dataset/suppliers)

## Establishing Golden Records from Master Data and Reference Data

The Golden Records are established from Trade Category that is closely known to us over the period between start date and end date. The trade categories individually map to Privilege Category using a many-to-one mapping. The extract of Privilege Category Table for Purchase Orders sent to the suppliers by the Pendle Borough Council has been given below:


| supplier_name                  | value   | department                     | service_description                    | **privilege**         | **trade_cat** | service_category |
|--------------------------------|---------|--------------------------------|----------------------------------------|-------------------|-----------|------------------|
| British Telecommunications Plc | xxxxx    | Financial Services             | Telephones : Central                   | Utility           | 64200000  | member           |
| BROXAP LIMITED                 | xxxxx | Parks & Recreation Services    | Grounds : R & M : Day to Day : Routine | Material Handling | 45233293  | maintenance      |
| Landscape Engineering Ltd      | xxxxx   | Parks & Recreation Services    | Grounds : R & M : Day to Day : Routine | Material Handling | 45000000  | maintenance      |
| Landscape Engineering Ltd      | xxxxx   | Parks & Recreation Services    | Grounds : R & M : Day to Day : Routine | Material Handling | 45000000  | maintenance      |
| BUSINESS IN THE COMMUNITY      | xxxxx   | Economic Development & Tourism | Miscellaneous                          | Education         | 80000000  | misc             |
| Civica Uk Limited              | xxxxx   | Financial Services             | Capital                                | Data              | 72000000  | finance          |
| Civica UK Limited              | xxxxx   | Financial Services             | Capital                                | Data              | 72000000  | finance          |
| Civica UK Limited              | xxxxx   | Information Services           | Capital                                | Data              | 48000000  | finance          |
| CRAEMER UK LIMITED             | xxxxx   | Operational Services           | Capital                                | Transport         | 34928480  | finance          |
| CRAEMER UK LIMITED             | xxxxx   | Operational Services           | Capital                                | Transport         | 34928480  | finance          |
| CRAEMER UK LIMITED             | xxxxx   | Operational Services           | Capital                                | Transport         | 34928480  | finance          |
| CRAEMER UK LIMITED             | xxxxx   | Operational Services           | Capital                                | Transport         | 34928480  | finance          |
| Craemer UK Limited             | xxxxx   | Operational Services           | Capital                                | Transport         | 34928480  | finance          |

The Privilege Network Reference Data table mapping the many-to-one trade category to Privilege Network Category is also shown below:

| **CODE**     | EN                                                                                                            | **PRIVILEGE**         |
|----------|---------------------------------------------------------------------------------------------------------------|-------------------|
| 3000000  | Agricultural, farming, fishing, forestry and related products                                                 | Farm              |
| 9000000  | Petroleum products, fuel, electricity and other sources of   energy                                           | Oil               |
| 14000000 | Mining, basic metals and related products                                                                     | Material          |
| 15000000 | Food, beverages, tobacco and related products                                                                 | Food              |
| 16000000 | Agricultural machinery                                                                                        | Equipment         |
| 18000000 | Clothing, footwear, luggage articles and accessories                                                          | Consumer Products |
| 19000000 | Leather and textile fabrics, plastic and rubber materials                                                     | Textile           |
| 22000000 | Printed matter and related products                                                                           | Paper             |
| 24000000 | Chemical products                                                                                             | Products          |
| 30000000 | Office and computing machinery, equipment and supplies except   furniture and software packages               | Data              |
| 31000000 | Electrical machinery, apparatus, equipment and consumables;   lighting                                        | Consumer Products |
| 32000000 | Radio, television, communication, telecommunication and   related equipment                                   | Media             |
| 33000000 | Medical equipments, pharmaceuticals and personal care products                                                | Medical           |
| 34000000 | Transport equipment and auxiliary products to transportation                                                  | Transport         |
| 35000000 | Security, fire-fighting, police and defence equipment                                                         | State             |
| 37000000 | Musical instruments, sport goods, games, toys, handicraft, art   materials and accessories                    | Entertainment     |
| 38000000 | Laboratory, optical and precision equipments (excl. glasses)                                                  | Equipment         |
| 39000000 | Furniture (incl. office furniture), furnishings, domestic   appliances (excl. lighting) and cleaning products | Consumer Products |
| 41000000 | Collected and purified water                                                                                  | Material          |
| 42000000 | Industrial machinery                                                                                          | Material          |
| 43000000 | Machinery for mining, quarrying, construction equipment                                                       | Material Handling |
| 44000000 | Construction structures and materials; auxiliary products to   construction (except electric apparatus)       | Material          |
| 45000000 | Construction work                                                                                             | Material Handling |
| 48000000 | Software package and information systems                                                                      | Data              |
| 50000000 | Repair and maintenance services                                                                               | Equipment         |
| 51000000 | Installation services (except software)                                                                       | Equipment         |
| 55000000 | Hotel, restaurant and retail trade services                                                                   | Food              |
| 60000000 | Transport services (excl. Waste transport)                                                                    | Transport         |
| 63000000 | Supporting and auxiliary transport services; travel agencies   services                                       | Transport         |
| 64000000 | Postal and telecommunications services                                                                        | Utility           |
| 65000000 | Public utilities                                                                                              | Utility           |
| 66000000 | Financial and insurance services                                                                              | Insurance         |
| 70000000 | Real estate services                                                                                          | Buildings         |
| 71000000 | Architectural, construction, engineering and inspection   services                                            | Buildings         |
| 72000000 | IT services: consulting, software development, Internet and   support                                         | Data              |
| 73000000 | Research and development services and related consultancy   services                                          | Development       |
| 75000000 | Administration, defence and social security services                                                          | Administration    |
| 76000000 | Services related to the oil and gas industry                                                                  | Oil               |
| 77000000 | Agricultural, forestry, horticultural, aquacultural and   apicultural services                                | Farm              |
| 79000000 | Business services: law, marketing, consulting, recruitment,   printing and security                           | Legal             |
| 80000000 | Education and training services                                                                               | Education         |
| 85000000 | Health and social work services                                                                               | Health            |
| 90000000 | Sewage, refuse, cleaning and environmental services                                                           | Environment       |
| 92000000 | Recreational, cultural and sporting services                                                                  | Entertainment     |
| 98000000 | Other community, social and personal services                                                                 | Social            |

## A Swipe card

![./ICONS/product-swipe.png](./ICONS/product-swipe.png)

A Swipe card that stores points scored from Perceived Stress Questionnaires (PSQs) obtained by a data steward is used for purchasing items. In purchasing an item, the score is determined by a FIT (Feature Importance) Table obtained from the Privilege Networks Purchase Order Transaction Data.

## Perceived Stress Questionnaire (PSQ)

| Events  | Stress Demand | Tension | Joy | Worry |
|---------|---------------|---------|-----|-------|
| Event 1 |               |         |     |       |
| Event 2 |               |         |     |       |
| Event 3 |               |         |     |       |
| Event 4 |               |         |     |       |

## More Details

[Welcome-to-Wiki-Page](https://github.com/Journal-AI/contextually-organising-maps/wiki/Welcome-to-Wiki-Page)

## SQL-Data Mapping

##### ROCHDALE | STOCKPORT METROPOLITAN | PENDLE BOROUGH COUNCIL

##### The SQL schema file 

[https://raw.githubusercontent.com/Journal-AI/privilege-networks/privilege_networks/SQL/govt_council_database.sql](https://raw.githubusercontent.com/Journal-AI/privilege-networks/privilege_networks/SQL/govt_council_database.sql)
