# Ghana Shipping & Port Analytics

## Overview

This project is an end-to-end data analytics project focused on **Ghana's shipping and port activity**.

The project combines **SQL database development and Microsoft Power BI** to transform port activity data into structured analytical tables and an interactive business intelligence dashboard.

The analysis focuses on:

- Port activity and vessel traffic
- Import activity
- Export activity
- Cargo types
- Port-level performance
- Shipping trends over time
- Comparison of import and export activity

The project demonstrates an end-to-end analytics workflow, from raw data preparation and relational database design to SQL transformation, data modeling, visualization, and business insights.

---

## Project Objective

The objective of this project is to analyze shipping activity across Ghanaian ports and provide a structured view of port traffic, imports, exports, and cargo activity.

The project is designed to answer questions such as:

- Which ports handle the highest levels of shipping activity?
- How does port activity change over time?
- What types of vessels contribute most to port traffic?
- How do import and export activities compare?
- Which ports handle the largest volumes of imports and exports?
- How is cargo activity distributed across different cargo types?
- What trends can be identified in Ghana's maritime activity?

---

## Project Workflow

```text
Raw Ghana Shipping Data
          │
          ▼
   Data Preparation
          │
          ▼
    SQL Database
          │
     ┌────┴────┐
     ▼         ▼
 Port Data   Activity Data
     │         │
     ├─────────┤
     │         │
     ▼         ▼
 Imports     Exports
     │         │
     └────┬────┘
          ▼
     Power BI Model
          │
          ▼
 Interactive Dashboard
          │
          ▼
 Business Insights
```
Dataset

The project uses Ghana shipping and port activity data containing information on port locations, vessel calls, cargo activity, imports, exports, and dates.

The dataset includes measures for different vessel and cargo categories, including:

- Container
- Dry bulk
- General cargo
- RoRo
- Tanker
- Total cargo

The data also contains date-related fields that support analysis by:

- Year
- Month
- Day
- Date
- Data Architecture

The SQL component organizes the source data into separate analytical tables.

Port Data

The port_data table contains location and identification information for the ports.

Key fields include:

- portid
- portname
- country
- ISO3

The table uses portid as its primary key.

Import Data

The ghana_import_data table contains import-related activity and port-call measures.

It includes:

- Port identification
- Date information
- Container port calls
- Dry bulk port calls
- General cargo port calls
- RoRo port calls
- Tanker port calls
- Total cargo port calls
- Import measures by cargo type
- Total imports
- Export Data

The ghana_export_data table contains corresponding export-related measures.

It includes:

- Port identification
- Date information
- Container port calls
- Dry bulk port calls
- General cargo port calls
- RoRo port calls
- Tanker port calls
- Total cargo port calls
- Export measures by cargo type
- Total exports
- Port Activity

The port_activity table provides a focused representation of port traffic and fleet mix.

It contains:

- Date
- Year
- Month
- Day
- Port ID
- Total port calls
- Container port calls
- Tanker port calls
- Dry bulk port calls
- General cargo port calls
- RoRo port calls
- Cargo port calls

This structure supports analysis of vessel traffic and fleet composition independently from import and export measures.

SQL Analysis

The SQL component creates and populates the analytical database.

The workflow includes:

1. Database Selection 
USE GHANA_PORT;

3. Table Creation
The project creates separate tables for:

- Port information
- Import activity
- Export activity
- Port activity
  
3. Relational Structure
The port_data table uses portid as its primary key.

The import and export tables reference the port table through foreign keys, creating a relational structure between port information and shipping activity.

4. Data Population
The analytical tables are populated from the source Ghana shipping dataset.

The port table uses distinct port records, while the import and export tables retain the relevant daily shipping measures.

5. Port Activity Table
A dedicated port_activity table is created to support analysis of vessel traffic and fleet mix.

Power BI Dashboard

The SQL-processed data is used as the foundation for the Power BI analysis.

The Power BI report provides an interactive environment for exploring Ghana's shipping and port activity through visualizations, KPIs, and filters.

The report contains three main analytical pages.

1. Port Overview

The Port Overview page provides a high-level view of port activity and vessel traffic.

It is used to examine overall shipping activity and compare port performance across different periods and activity categories.

2. Export Analysis

The Export page focuses on export activity across Ghana's ports.

It provides a detailed view of export performance and supports comparison across ports, cargo categories, and time periods.

3. Import Analysis

The Import page focuses on import activity across Ghana's ports.

It allows import performance and cargo activity to be examined across ports and different time periods.

Dashboard Analysis

The Power BI component supports analysis of:

Port traffic
Vessel activity
Cargo activity
Import performance
Export performance
Port-level comparisons
Trends over time

The three-page report provides a progression from overall port activity to more focused analysis of exports and imports.

Key Metrics

The project provides a framework for monitoring several important shipping indicators.

Port Calls

Measures the number of vessel calls recorded at ports.

Import Activity

Measures the volume of goods entering through the ports across different cargo categories.

Export Activity

Measures the volume of goods leaving through the ports across different cargo categories.

Cargo Activity

Allows comparison across:

Containers
Dry bulk
General cargo
RoRo
Tankers
Port Performance

Allows individual ports to be compared based on their contribution to overall shipping activity.

Business Insights

The analysis can be used to identify differences in shipping activity across Ghana's ports and cargo categories.

Several areas are particularly important:

Port Activity

Comparing total port calls across locations helps identify which ports handle the greatest levels of vessel traffic.

Import vs. Export Activity

Comparing imports and exports provides an indication of the direction and composition of maritime trade activity.

Cargo Mix

Breaking shipping activity into container, dry bulk, general cargo, RoRo, and tanker activity provides a more detailed view of the types of maritime operations taking place.

Time Trends

Year, month, and date fields allow changes in shipping activity to be examined over time.

Business Recommendations
1. Monitor Port Traffic Trends

Port authorities and logistics stakeholders can use changes in port-call activity to monitor demand and identify periods of increased or reduced maritime activity.

Regular monitoring can support infrastructure planning and operational resource allocation.

2. Evaluate Port Capacity

Ports experiencing consistently high traffic may require closer evaluation of:

Berthing capacity
Cargo-handling capacity
Storage
Road and rail connectivity
Operational efficiency
3. Monitor Import and Export Balance

Import and export activity should be analyzed together rather than independently.

Differences between inbound and outbound activity can provide useful information for logistics planning and trade-related decision-making.

4. Analyze Cargo-Type Demand

Different cargo categories require different infrastructure and handling capabilities.

Monitoring container, tanker, dry bulk, general cargo, and RoRo activity can help stakeholders plan specialized port resources.

5. Use Historical Trends for Planning

Historical shipping patterns can support operational planning by identifying recurring periods of high or low activity.

This can help inform staffing, maintenance, equipment allocation, and infrastructure decisions.

6. Develop More Detailed Performance Indicators

The current analysis can be extended with additional indicators such as:

Port activity growth rate
Import growth rate
Export growth rate
Import-to-export ratio
Cargo-type share
Port market share
Year-over-year changes

These metrics would provide a more detailed basis for performance monitoring.

Tools & Technologies
SQL

SQL was used for:

Database creation
Relational table design
Primary keys
Foreign keys
Data transformation
Data loading
Table creation
Data validation
Microsoft Power BI

Power BI was used for:

Data modeling
Data analysis
KPI development
Interactive visualization
Port comparisons
Trend analysis
Dashboard development
CSV

CSV files were used as source and processed data files during the project workflow.

Project Structure
```text
ghana-shipping-port-analytics/
│
├── README.md
│
├── data/
│   └── ghana_shipping_data.csv
│
├── sql/
│   └── capstone_query.sql
│
├── powerbi/
│   └── Ghana_Shipping_Port_Analytics.pbix
│
└── images/
    ├── port_overview.png
    ├── export.png
    └── import.png
```
SQL Database Structure

The SQL workflow produces the following analytical structure:
```text
                 port_data
                /         \
               /           \
              ▼             ▼
   ghana_import_data   ghana_export_data

                 │
                 │
                 ▼
           port_activity
```
The structure separates port reference information from shipping activity and trade measures, making the data easier to analyze and maintain.

Data Preparation

The source data was transformed into separate analytical structures to support different areas of the analysis.

The process includes:

Identifying unique ports
Creating the port reference table
Creating import activity tables
Creating export activity tables
Creating the port activity table
Establishing relationships between tables
Loading the prepared data into the SQL database
Connecting the resulting data to Power BI
Limitations

The analysis should be interpreted within the scope of the available dataset.

The data provides useful information about port activity, imports, exports, and cargo types, but it does not by itself explain the underlying causes of changes in shipping activity.

For example, an increase or decrease in port traffic may be associated with several external factors that are not represented in the dataset.

The analysis is therefore primarily descriptive and should be used to identify trends and areas requiring further investigation.

Future Improvements

The project could be extended with:

Year-over-year growth analysis
Port market-share calculations
Import/export ratios
Cargo composition analysis
Port efficiency indicators
Geographic visualization
Forecasting
Anomaly detection
Interactive drill-through analysis
Integration with additional trade and economic indicators

Additional external datasets could also be incorporated to investigate relationships between port activity and factors such as trade volume, commodity prices, economic growth, and infrastructure capacity.

Conclusion

The Ghana Shipping & Port Analytics project demonstrates an end-to-end approach to transforming shipping data into business intelligence.

SQL provides the foundation for organizing the raw shipping data into structured relational tables, while Power BI provides an interactive environment for analyzing port traffic, imports, exports, and cargo activity.

The three-page Power BI report moves from an overall Port Overview to dedicated Export and Import analyses, allowing different aspects of Ghana's maritime activity to be examined from both operational and trade perspectives.

By combining database design, data transformation, and visualization, the project demonstrates how SQL and Power BI can work together to support maritime and logistics analysis.

Author

Priscilla Takyi

Data Analytics Portfolio

License

This project is intended for educational and portfolio purposes.
