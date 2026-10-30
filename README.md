<div align="center">

# SQL Data Warehouse Project

**Building an Analytics-Ready Data Warehouse with SQL Server**

An end-to-end data engineering project that integrates CRM and ERP data through a **Bronze → Silver → Gold** architecture and transforms it into a dimensional model for sales analytics.

[![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=flat-square&logo=microsoftsqlserver&logoColor=white)](https://www.microsoft.com/en-us/sql-server)
[![SQL](https://img.shields.io/badge/Language-SQL-4479A1?style=flat-square&logo=postgresql&logoColor=white)](https://learn.microsoft.com/en-us/sql/)
[![Medallion Architecture](https://img.shields.io/badge/Architecture-Medallion-8A63D2?style=flat-square)](#architecture)
[![MIT License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](LICENSE)

</div>

---

## 📑 Table of Contents

- [Overview](#overview)
- [Architecture](#architecture)
- [Key Insights and Business Value](#key-insights-and-business-value)
- [Data Flow](#data-flow)
- [Source Integration](#source-integration)
- [Sales Data Mart](#sales-data-mart)
- [SQL Analytics](#sql-analytics)
- [Technology Stack](#technology-stack)
- [Repository Structure](#repository-structure)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Clone the Repository](#clone-the-repository)
  - [Explore the Project](#explore-the-project)
- [Skills Demonstrated](#skills-demonstrated)
- [About Me](#about-me)
- [License](#license)

---

## Overview

This project consolidates CRM and ERP CSV data in SQL Server, prepares it through layered transformations, and structures business-ready data for analytical queries and reporting.

### Key Features

- CRM and ERP source-data integration
- Bronze, Silver, and Gold warehouse layers
- Data cleaning, standardization, and transformation
- Fact and dimension tables using a star schema
- SQL-based customer, product, and sales analysis

## Architecture

![High-level data warehouse architecture](docs/architecture.png)

| Layer | Purpose |
|---|---|
| **Bronze** | Stores raw source data. |
| **Silver** | Cleans, standardizes, and integrates data. |
| **Gold** | Organizes curated data for reporting and analysis. |

## Key Insights and Business Value

This project transforms integrated CRM and ERP data into an analytical foundation for sales reporting, customer analysis, and product performance evaluation.

- **📈 Sales Performance:** Analyze sales trends over time, calculate cumulative revenue, and compare annual product performance to identify changes in business performance.
- **👥 Customer Intelligence:** Segment customers into VIP, Regular, and New groups using spending and relationship duration, while evaluating customer value, order frequency, and recency.
- **📦 Product and Category Analysis:** Rank products by revenue, compare category contributions, and classify products by sales performance to support product-level decision-making.
- **📊 Business Reporting:** Build reusable SQL views, `gold.report_customers` and `gold.report_products`, that consolidate key metrics into structured customer and product reports.

**Business Value:** Demonstrates how SQL, dimensional modeling, and analytical reporting can turn operational data into actionable information for business decision-making.

## Data Flow

![Data flow and lineage](docs/data_flow.png)

CRM and ERP CSV files flow into Bronze tables, are prepared in Silver, and are modeled as Gold-layer analytical objects.

## Source Integration

![CRM and ERP data integration](docs/data_integration.png)

The integration model shows relationships between CRM sales, customer and product data, and ERP customer attributes, locations, and product categories.

## Sales Data Mart

![Gold-layer sales star schema](docs/data_model.png)

The Gold-layer model centers on `gold.fact_sales` and connects it to two dimensions:

- **`gold.dim_customers`** — customer identifiers and attributes.
- **`gold.dim_products`** — product identifiers, categories, and attributes.

The model includes order, shipping, and due dates, as well as sales amount, quantity, and price.

```text
Sales = Quantity × Price
```

## SQL Analytics

The `Analytics_Scripts/` directory contains numbered SQL scripts covering exploratory and analytical query patterns.

| Script | Focus |
|---|---|
| `01_database_exploration.sql` | Database exploration |
| `02_dimensions_exploration.sql` | Dimension exploration |
| `03_data_range_exploration.sql` | Date and data-range exploration |
| `04_measures_exploration.sql` | Measures and key metrics |
| `05_magnitude_analysis.sql` | Magnitude analysis |
| `06_ranking_analysis.sql` | Ranking analysis |
| `07_change_over_time_analysis.sql` | Trends over time |
| `08_cumulative_analysis.sql` | Cumulative analysis |
| `09_performance_analysis.sql` | Performance analysis |
| `10_part_to_whole_analysis.sql` | Part-to-whole analysis |
| `11_data_segmentation.sql` | Data segmentation |
| `12_report_customers.sql` | Customer reporting |
| `13_report_products.sql` | Product reporting |

These scripts provide a structured set of SQL examples for exploring warehouse data and developing business-focused reports.

## Technology Stack

- **Database:** Microsoft SQL Server
- **Query Language:** SQL
- **Source Format:** CSV
- **Architecture:** Medallion (Bronze, Silver, Gold)
- **Data Modeling:** Star schema
- **Documentation:** Draw.io

## Repository Structure

```text
SQL-DataWarehouse-Project/
├── Analytics_Scripts/  # SQL exploration and analytical queries
├── datasets/           # CRM and ERP source datasets
├── docs/               # Architecture and data-model diagrams
├── scripts/            # Data loading and transformation SQL
├── tests/              # Tests and validation assets
├── LICENSE
└── README.md
```

## Getting Started

### Prerequisites

- Microsoft SQL Server
- SQL Server Management Studio (SSMS) or another SQL client
- Git

### Clone the Repository

```bash
git clone https://github.com/pradipta2005/SQL-DataWarehouse-Project.git
cd SQL-DataWarehouse-Project
```

### Explore the Project

1. Review the CRM and ERP source files in `datasets/`.
2. Read the architecture and modeling diagrams in `docs/`.
3. Review the loading and transformation scripts in `scripts/`.
4. Run the relevant SQL scripts in dependency order after checking database names and file paths.
5. Explore `Analytics_Scripts/` for analysis queries and customer/product reports.
6. Review `tests/` for available validation instructions.

**Data Workflow:** `CRM & ERP CSVs → Bronze → Silver → Gold → SQL Analytics`

> The exact database setup and execution order depend on the SQL scripts in the repository.

## Skills Demonstrated

SQL · Data Warehousing · ETL/ELT · Data Cleaning · Source Integration · Dimensional Modeling · Star Schema · Exploratory Analysis · Analytical Reporting

## About Me

<div align="center">

**Pradipta Khan**  
*Data Analyst | Data Science Graduate*

</div>

I'm a Data Science graduate passionate about transforming raw data into meaningful insights. I enjoy working with SQL, Python, and Power BI to explore datasets, solve analytical problems, and build data-driven solutions. My projects focus on data analysis, data warehousing, and visualization, with an emphasis on turning complex data into actionable business insights.

I'm continuously learning and exploring new technologies to strengthen my skills in data analytics and data engineering.

<div align="center">

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
