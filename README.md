<div align="center">

# SQL Data Warehouse Project

**Building an Analytics-Ready Data Warehouse with SQL Server**

An end-to-end data engineering project integrating CRM and ERP data through a **Bronze → Silver → Gold** architecture and modeling curated sales data in a **star schema**.

[![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=flat-square&logo=microsoftsqlserver&logoColor=white)](https://www.microsoft.com/en-us/sql-server)
[![SQL](https://img.shields.io/badge/Language-SQL-4479A1?style=flat-square&logo=postgresql&logoColor=white)](https://learn.microsoft.com/en-us/sql/)
[![Medallion Architecture](https://img.shields.io/badge/Architecture-Medallion-8A63D2?style=flat-square)](#-architecture)
[![MIT License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](LICENSE)

</div>

---

## Overview

This project consolidates CRM and ERP CSV data into a SQL Server data warehouse, preparing it for reliable sales analytics and reporting.

### Key Highlights
- Multi-source CRM and ERP data integration
- Bronze, Silver, and Gold warehouse layers
- Data cleaning, standardization, and transformation
- Star-schema design with fact and dimension tables
- Documented data flow, source relationships, and data model

## Architecture

![High-level data warehouse architecture](docs/architehture.png)

| Layer | Purpose |
|---|---|
| **Bronze** | Stores raw source data with minimal changes. |
| **Silver** | Cleans, standardizes, and integrates data. |
| **Gold** | Organizes curated, business-ready data for analysis. |

## Data Flow

![Data flow and lineage](docs/data_flow.png)

CRM and ERP CSV files are loaded into Bronze tables, prepared in Silver, and shaped into Gold-layer analytical objects for reporting and SQL analysis.

## Source Integration

![CRM and ERP data integration](docs/data_integration.png)

The integration model documents relationships across CRM sales, customer and product information, plus ERP customer attributes, locations, and product categories.

## Sales Data Mart

![Gold-layer sales star schema](docs/data_model.png)

The Gold-layer model centers on `gold.fact_sales`, connected to two descriptive dimensions:

- **`gold.dim_customers`** — customer identifiers and attributes.
- **`gold.dim_products`** — product identifiers, categories, and attributes.

The model includes order dates, shipping and due dates, sales amount, quantity, and price. The diagram expresses the sales calculation as:

```text
Sales = Quantity × Price
```

## Technology Stack

- **Database:** Microsoft SQL Server
- **Query language:** SQL
- **Source format:** CSV
- **Architecture:** Medallion (Bronze, Silver, Gold)
- **Modeling:** Fact and dimension tables / star schema
- **Diagrams:** Draw.io

## Repository Structure

```text
SQL-DataWarehouse-Project/
├── datasets/       # CRM and ERP source datasets
├── docs/           # Architecture and data-model diagrams
├── scripts/        # SQL loading and transformation scripts
├── tests/          # Tests and validation assets
├── LICENSE
└── README.md
```

## Getting Started

### Prerequisites
- Microsoft SQL Server
- SQL Server Management Studio (SSMS) or another SQL client
- Git

### Setup
```bash
git clone https://github.com/pradipta2005/SQL-DataWarehouse-Project.git
cd SQL-DataWarehouse-Project
```

1. Review the source files in `datasets/`.
2. Explore the diagrams in `docs/`.
3. Review the SQL scripts in `scripts/` and run them in dependency order.
4. Check `tests/` for available validation instructions.
5. Verify database names, file paths, and other environment-specific settings before execution.


## Analytics Use Cases

The resulting model can support analysis of:
- Sales trends over time
- Product and category performance
- Customer and country-level sales
- Customer segmentation
- Sales summaries for reporting

## About me

<div align="center">

**Pradipta Khan**  
*Data Analyst | Data Science Graduate*

<a href="https://github.com/pradipta2005"><img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"></a>
<a href="https://www.linkedin.com/in/pradipta-khan/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
<a href="https://pradipta2005.github.io/Mr.-PK/"><img src="https://img.shields.io/badge/Portfolio-333333?style=for-the-badge&logo=googlechrome&logoColor=white" alt="Portfolio"></a>

</div>

## License

Distributed under the MIT License. See [`LICENSE`](LICENSE) for details.

---

<div align="center">

If you find this project useful, consider giving the repository a ⭐.

</div>
