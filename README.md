# SCD Type 6 and Versioning in Data Warehouse using SSIS

This repository showcases the implementation of Slowly Changing Dimensions (SCD) Type 6 and versioning in a data warehouse using SQL Server Integration Services (SSIS).

##**Purpose**
The project aims to address the challenges of managing changing data in a data warehouse by focusing on two specific scenarios:
###**-Slowly Changing Dimension Type 6**

Capturing and preserving historical changes in dimension attributes for analysis at different points in time. In this project, the SCD fields considered are City and Email.
The package is designed to read the source data using the Incremental Load approach, which ensures efficient data retrieval and processing by only loading the changed or new records since the last load.

###**-Versioning**

Tracking and managing different versions of data within the data warehouse for historical analysis and comparisons.

Versioning follows the following some rules:
Each run of the SSIS packages represents a version of the data.

The SSIS packages can be executed multiple times within the same day, and each run will be considered a new version. All previous records for that day will be closed(active_flag = 0), and a new version will be created(active_flag = 1).

On the next day (or any different day), the version numbering starts from 1 again.

The SSIS packages do not check for any changes in the source data. They load the data as it is without performing any comparison or change detection.

##**Contents**
SSIS Packages: Contains the SSIS packages implementing SCD Type 6 and versioning logic. 

SQL Scripts: Includes scripts for creating/modifying necessary database objects (like tables) to support the SCD Type 6 and versioning functionality.

**Note: There are examples of the output of each problem in its SQL script.**

