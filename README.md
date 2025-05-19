# 🚀 Fully Containerized ASP.NET Core MVC Application with SQL Server

## 🎯 Objective

In this group task, we collaboratively built a **fully containerized ASP.NET Core MVC application** connected to a **SQL Server database**, using **Docker** and **Docker Compose**. This project demonstrates the power of containerized web development, emphasizing teamwork, integration, and deployment.

---

## 👥 Team Roles and Contributions

### 👤 Member 1: SQL Database Setup
- Created the `Products` table with `Id`, `Name`, and `Price` columns.
- Wrote the `seed-data.sql` script to insert 3 initial products.
- Ensured the database is correctly containerized using the official SQL Server image.

### 👤 Member 2: MVC Application Development
- Developed the ASP.NET Core MVC application.
- Built full CRUD (Create, Read, Update, Delete) functionality for the `Products` table.
- Handled database connection and UI layout.

### 👤 Member 3: Docker Integration & Testing
- Created the `Dockerfile` for the MVC app.
- Designed and tested the `docker-compose.yml` to manage the web app and database services.
- Validated connectivity between services and ensured proper container networking.

---

## 🛠️ Technologies Used

- ASP.NET Core MVC (.NET 6 or 8)
- SQL Server (Docker official image)
- Docker & Docker Compose
- C#, Razor Views, Entity Framework Core

---

## 🗄️ Database Schema

**Table: Products**

| Column | Type     | Description          |
|--------|----------|----------------------|
| Id     | INT      | Primary Key, Identity|
| Name   | NVARCHAR | Product name         |
| Price  | DECIMAL  | Product price        |

---

## 🧪 Seeding Script: `seed-data.sql`

```sql
CREATE DATABASE ProductsDb;
GO

USE ProductsDb;
GO

CREATE TABLE Products (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Price DECIMAL(10,2)
);
GO

INSERT INTO Products (Name, Price) VALUES 
('Laptop', 999.99),
('Smartphone', 599.49),
('Headphones', 199.99);
GO

## 🌐 MVC Application
- ASP.NET Core MVC application built with .NET 6/8.
- Displays product listings from SQL Server.
- Includes full CRUD functionality: Add, Edit, Delete, View.
- Uses Entity Framework Core for database access.
- Configured to run on port 5000.

## ▶️ How to Run the Application
# Step 1: Clone the repository
git clone https://github.com/your-repo-url/project-name
cd project-name

# Step 2: Build and run containers
docker-compose up --build

# Step 3: Visit the web app
http://localhost:5000

