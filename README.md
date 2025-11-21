# Elite Cleats

This project is a web-based e-commerce application developed as a school assignment for a **Web Systems** course. It simulates an online store for high-performance soccer cleats, featuring a customer-facing shop and an administration panel.

## Features

### Public Storefront
*   **Home Page:** Featured products and hero section.
*   **Product Catalog:** Browse various soccer cleats.
*   **Product Details:** View multiple images, sizes, and descriptions.
*   **Shopping Cart:** Add items, adjust quantities.
*   **Checkout System:** User registration/login required to place orders.

### User Features
*   **Authentication:** User registration and login (Customer & Admin roles).
*   **Order History:** Customers can view their past orders.

### Admin Panel
*   **Dashboard:** Overview statistics (Total users, products, pending orders, low stock).
*   **Management:** View lists of products, orders, and registered users.
*   *Note: Some administrative actions (Add/Edit/Delete) are currently placeholders.*

## Technologies Used
*   **Backend:** PHP (Vanilla)
*   **Database:** MySQL
*   **Frontend:** HTML5, CSS3, JavaScript (Vanilla)
*   **DevOps:** Docker & Docker Compose

## Prerequisites
*   **PHP:** Version 7.4 or higher
*   **MySQL:** Version 5.7 or higher
*   **(Optional) Docker:** For containerized deployment

---

## Installation & Setup

You can run this project using either **Docker (Recommended)** or a manual **Local PHP/MySQL** setup.

### Option 1: Docker (Recommended)
This method automatically sets up the PHP environment and the Database (including data population).

1.  Make sure you have [Docker](https://www.docker.com/) and Docker Compose installed.
2.  Open a terminal in the project root.
3.  Run the application:
    ```bash
    docker-compose up -d --build
    ```
4.  Open your browser and navigate to: [http://localhost:8080](http://localhost:8080)

*Note: The database will be automatically initialized with schema and test data on the first run.*

### Option 2: Manual / Command Line PHP
If you do not use Docker, follow these steps:

#### 1. Database Setup
1.  Open your MySQL client (e.g., phpMyAdmin, Workbench, or CLI).
2.  Import the schema file: `Backend/elite_cleats_db.sql`
3.  Import the data population file: `Backend/populate_db.sql`
4.  Verify the database configuration in `includes/connection.php`. The default settings assume a local server with no password:
    ```php
    $host = 'localhost';
    $dbname = 'elite_cleats_db';
    $username = 'root';
    $password = ''; // Update this if your local setup requires a password
    ```

#### 2. Start the Server
1.  Open a terminal in the project root directory.
2.  Start the PHP built-in server:
    ```bash
    php -S localhost:8000
    ```
3.  Open your browser and navigate to: [http://localhost:8000](http://localhost:8000)

---

## Test Credentials

You can use the following accounts to test the application:

| Role | Email | Password |
| :--- | :--- | :--- |
| **Admin** | `admin@elite.com` | `admin123` |
| **Customer** | `alex@elite.com` | `test123` |
| **Customer** | `jessica@elite.com` | `test456` |

*Note: Passwords are hashed in the database. To generate new hashes, see `passwords.php`.*
