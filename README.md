# 💰 **Analyzing E-Commerce Business Performance with SQL**
<br>

**Dataset** : Rakamin Academy - [E-Commerce Data](https://drive.google.com/file/d/1eoVIp1M-bLANtnfjY7Y65k45ThgWCnPe/view?usp=drive_link) <br>
**Query Tool** : PostgreSQL <br> 
**Cleaning Data Tool** : Google Colab <br> 
**Visualization** : Microsoft Excel <br>

---

## 📂 **STAGE 0: Problem Statement**

### **Background Story**
Assessing business performance is crucial for companies. It helps monitor and evaluate the success or failure of various business processes. Business performance measurement can be done by considering several business metrics. In this project, we will analyze the performance of an E-Commerce company based on historical data over three years, focusing on customer growth, product quality, and payment methods.

### **Objective**
Collecting insights through analysis and visual representation :
1. **Annual Customer Activity Growth**
2. **Annual Product Category Quality**
3. **Annual Payment Type Usage**

---

## 📂 **STAGE 1: Data Preparation**

The dataset used is from a Brazilian E-Commerce company, containing order information totaling 99,441 records from 2016 to 2018. It includes features such as order status, location, item details, payment methods, and reviews.

### **Create Database and ERD**
**Steps:**
1. Create a database with the desired name. Example: mini_project_1_ecommerce.
2. Create tables using the CREATE TABLE statement.
3. Define Primary Key or Foreign Key using the "ALTER TABLE" statement.
4. Create and export an Entity Relationship Diagram (ERD).
5. Perform data cleaning using Google Colab.
6. Import cleaned CSV data into the created tables. <br>

**ERD Result :**
![ERD Analyzing eCommerce Business Performance](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/assets/64683758/c8c2aab0-2416-4d34-a33a-38fc88be7048)

Click [here](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/blob/main/sql_query/Create%20Table%20Query.sql) for the Create Table Query<br>
Click [here](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/blob/main/Preprocessing_Data_ecommerce.ipynb) for the Cleaning Data <br>

---

## 📂 **STAGE 2: Data Analysis**

### **1. Annual Customer Activity Growth**
Annual customer activity growth can be analyzed from Monthly Active Users (MAU), new customers, repeat order customers, and average orders per customer.

<p align="center">
**Annual Customer Activity Growth Analysis Results**
![image](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/assets/64683758/5fea778c-ee4a-4c1e-a148-abf337016f99)
</p>

<br>

<p align="center">
**Average MAU Graph**
![image](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/assets/64683758/abc219a8-2620-4b0e-9659-b34ad2e0851f)
</p>
Overall, the company experienced an increase in Monthly Active Users every year. A significant increase occurred from 2016 to 2017.

<br>

<p align="center">
**Total New Customer per Year**
![image](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/assets/64683758/9fd528fb-d23a-431c-b8f5-b2ab0ccf43ea)
</p>
Overall, the company experienced an increase in the Number of New Customers every year. A significant increase occurred from 2016 to 2017.

<br>

<p align="center">
**Customer Repeat Order per Year**
![image](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/assets/64683758/04e846d8-111e-4c0c-a264-78586f3417d3)
</p>
Overall, the company experienced an increase in the Number of Customers who placed repeat orders every year. A significant increase occurred from 2016 to 2017.

<br>

<p align="center">
**Average Order Frequency per Year**
![image](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/assets/64683758/90903eb8-44c8-4d53-bf00-325d9f6aeb0f)
</p>
The customer repeat order rate is considered low, averaging only once a year.

### **2. Annual Product Category Quality**

The annual product category quality can be analyzed from the total revenue, total order cancellations, top product categories, and the most frequently canceled product categories.

<br>
<br>


---


