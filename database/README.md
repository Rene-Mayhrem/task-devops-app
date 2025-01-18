# Database Setup Documentation

This directory contains the SQL scripts and documentation necessary for setting up and initializing the database for the DevOps CRUD application.

## Initialization Script

- **init.sql**: This file contains the SQL commands to create the necessary database schema and seed initial data. It should be executed in your database environment to set up the application.

## Database Configuration

Ensure that your database connection settings in the backend application (`application.properties`) match the database you are using. This includes the database URL, username, and password.

## Usage

To initialize the database, run the following command in your SQL client:

```sql
-- Load the initialization script
\i path/to/init.sql
```

Replace `path/to/init.sql` with the actual path to the `init.sql` file.

## Additional Notes

- Make sure to have the appropriate database server running before executing the initialization script.
- Review the `init.sql` file for any specific configurations or adjustments needed for your environment.