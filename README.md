# Bulenga Farmers Cooperative System (Starter Project)

A PHP/MySQL starter project for the proposed Farm Produce Supply Chain & Distribution System.

## Scope
- Farmer records
- Produce deliveries
- Stock tracking
- Buyer orders
- Dispatch records
- Basic report view

## Important
This is a starter implementation for learning and coursework development. Seed/demo records are fictional. Do not present demo data as actual Bulenga fieldwork findings. Test each feature and document actual results before marking tests PASS.

## Requirements
- PHP 8+
- MySQL or MariaDB
- Web server (Apache, e.g. XAMPP)

## Setup
1. Copy this folder into your web server's document root (e.g. `htdocs`).
2. Create a MySQL database named `bulenga_coop`.
3. Import `database/schema.sql` using phpMyAdmin or MySQL CLI.
4. Edit `config.php` with your local database settings.
5. Open `http://localhost/Bulenga-Farmers-Cooperative-System/` in your browser.

## Repository layout
- `config.php` - database connection
- `index.php` - dashboard
- `farmers.php` - farmer registration/list
- `deliveries.php` - delivery entry/list and stock increment
- `orders.php` - buyer order entry/list
- `dispatches.php` - dispatch entry and stock decrement
- `reports.php` - basic stock/delivery/order summary
- `database/schema.sql` - database schema

## Suggested GitHub repository
`Bulenga-Farmers-Cooperative-System`

## Suggested commits
Make commits as you complete and test each module, with truthful commit messages. Example:
- `Add database schema`
- `Create farmer records page`
- `Implement delivery and stock update`
- `Add order and dispatch workflows`
- `Add reports page`
