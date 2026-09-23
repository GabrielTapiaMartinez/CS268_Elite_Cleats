# Elite Cleats

This project is a web-based e-commerce application developed as a group assignment for **CS 268 (Web Systems)** at the **University of Wisconsin-Eau Claire (UWEC)**. It simulates an online store for high-performance soccer cleats, featuring a customer-facing shop and an administration panel.

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

---

## My Contribution

This was a two-person group project. Based on the actual commit history (`git log --numstat`, merge commits excluded to avoid double-counting):

| Author | Commits | Lines added | Share of lines |
| :--- | :--- | :--- | :--- |
| **Gabriel Tapia Martinez** (me — `tapiagr7502` / `grtm23`) | 15 / 23 (65%) | 4,395 | **~84%** |
| Wahua Moua (teammate — `Wahua` / `Wahua-Moua`) | 7 / 23 (30%) | 718 | ~14% |
| `google-labs-jules[bot]` (AI-generated, merged via PR) | 1 / 23 (4%) | 137 | ~3% |

**What I built:**
*   All PHP/backend logic: `includes/functions.php`, database connection handling, and the conversion of static HTML pages into functional PHP endpoints.
*   User authentication backend — login, registration processing, and forgot-password flow (`pages/login.php`, `pages/user-registration.php`, `pages/forgot-password.php`).
*   Shopping cart and checkout system — `pages/cart.php`, `pages/cart-fetch.php`, `pages/cart-update.php`, `pages/checkout.php`, `pages/place-order.php`, `pages/confirmation.php`, and the associated `cart.js`/`checkout.js`/`product-details.js` logic.
*   Admin panel backend (`pages/admin.php`) and the initial database schema/population scripts (`Backend/elite_cleats_db.sql`, `Backend/populate_db.sql`).
*   Product listing and product-details pages, navbar/footer PHP components, and the homepage (`index.php`).

**What my teammate (Wahua Moua) built:**
*   The initial front-end HTML/CSS for the **About Us** page and **Contact** page (`pages/about.html`, `pages/contact.html`, and their CSS), including the about-page images.
*   The original front-end scaffold (HTML/CSS/JS) for the **user registration** page, which I later rewired into `pages/user-registration.php` with backend logic.

**Not written by either of us:** the `README.md` and Docker setup (`Dockerfile`, `docker-compose.yml`) were generated by an AI agent (`google-labs-jules[bot]`) via a pull request I reviewed and merged after the coursework was submitted — they document the project but aren't part of the original coursework contribution.
