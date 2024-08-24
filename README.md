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
<p align="center">
  <kbd><img src="assets/Query 2 Master Table.jpg" width=800px> </kbd> <br>
  Picture 1. Entity Relationship Diagram (ERD)
</p>
<br>

Click [here](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/blob/main/sql_query/Create%20Table%20Query.sql) for the Create Table Query<br>
Click [here](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/blob/main/Preprocessing_Data_ecommerce.ipynb) for the Cleaning Data <br>

---

## 📂 **STAGE 2: Data Analysis**

### **1. Annual Customer Activity Growth**
Annual customer activity growth can be analyzed from Monthly Active Users (MAU), new customers, repeat order customers, and average orders per customer.

<p align="center">
  <kbd><img src="assets/Query 2 Master Table.jpg" width=800px> </kbd> <br>
  Picture 2. Query Annual Customer Activity Growth Master Table
</p>
<br>

**a. Average Monthly Active User (MAU) Per Year**
<p align="center">
  <kbd><img src="assets/Query 2 Average Monthly Active User Per Year.jpg" width=800px> </kbd> <br>
  Picture 3. Average Monthly Active User (MAU) Per Year Graphic
</p>
The number of monthly active users increased sharply from 108 in 2016 to 3,684 in 2017, and reached 5,323 in 2018. The increase in the number of active users indicates that more customers are engaged and consistently using the service. This also reflects the good quality of the service and successful marketing efforts in attracting and retaining users.
<br>
<br>

**b. Total New Customer Per Year**
<p align="center">
  <kbd><img src="assets/Query 2 Total New Customer Per Year.jpg" width=800px> </kbd> <br>
  Picture 4. Total New Customer Per Year Graphic
</p>
The total number of new customers increased drastically from 326 in 2016 to 43,587 in 2017, and reached 51,915 in 2018. The annual increase in new customers reflects the company's ability to reach a broader market and attract more potential customers. This is crucial for long-term growth and increasing market share.
<br>
<br>

**c. Customer Repeat Order Per Year**
<p align="center">
  <kbd><img src="assets/Query 2 Total Customer Repeat Order Per Year.jpg" width=800px> </kbd> <br>
  Picture 5. Total Customer Repeat Order Per Year Graphic
</p>
The number of customers making repeat orders increased drastically from 3 in 2016 to 1,252 in 2017, although it slightly decreased to 1,163 in 2018. The significant increase in 2017 indicates the success of the customer retention strategies implemented by the company. Despite the slight decrease in 2018, the figure remains significantly higher than in 2016, reflecting an increase in customer loyalty and satisfaction with the products or services offered.
<br>
<br>

**d. Average Order Frequency Per Year**
<p align="center">
  <kbd><img src="assets/Query 2 Average Order Per Year.jpg" width=800px> </kbd> <br>
  Picture 6. Average Order Frequency Per Year Graphic
</p>
The average order frequency per customer remained stable at 1 order per year during the period from 2016 to 2018. Although the order frequency did not show an increase, this stability is important as it indicates that customers continue to make repeat purchases at a consistent frequency. This reflects the company's failure to maintain customer engagement.
<br>
<br>

Click [here](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/blob/main/sql_query/Annual%20Customer%20Activity%20Growth%20Analysis.sql) for the Annual Customer Activity Growth Query<br>

### **2. Annual Product Category Quality**

The annual product category quality can be analyzed from the total revenue, total order cancellations, top product categories, and the most frequently canceled product categories.

<p align="center">
  <kbd><img src="assets/Query 3 Master Table.jpg" width=800px> </kbd> <br>
  Picture 7. Annual Product Category Quality Table
</p>

**a. Total Revenue Per Year**
<p align="center">
  <kbd><img src="assets/Query 3 Total Revenue Per Year.jpg" width=800px> </kbd> <br>
  Picture 8. Total Revenue Per Year Graphic
</p>
Total revenue sharply increased from 46,654 in 2016 to 6,883,381 in 2017, and reached 8,416,731 in 2018. The company successfully expanded its market share aggressively, with marketing and product strategies that have attracted more customers and substantially increased sales.
<br>
<br>

**b. Total Revenue Product Per Year**
<p align="center">
  <kbd><img src="assets/Query 3 Total Revenue Product Per Year.jpg" width=800px> </kbd> <br>
  Picture 9. Total Revenue Product Per Year Graphic
</p>
Revenue from the "furniture_decor" product category in 2016 was 6,899, rising to 569,289 from the "bed_bath_table" category in 2017, and reaching 875,049 from the "health_beauty" category in 2018. The consistent increase in revenue across various product categories demonstrates an effective product strategy in addressing market needs and consumer preferences, helping to boost revenue and reduce the risk of dependency on a single type of product.
<br>
<br>

**c. Total Canceled Order Per Year**
<p align="center">
  <kbd><img src="assets/Query 3 Total Canceled Order Per Year.jpg" width=800px> </kbd> <br>
  Picture 10. Total Canceled Order Per Year Graphic
</p>
The number of canceled orders increased significantly from 26 in 2016 to 263 in 2017, reaching 334 in 2018. This consistent increase indicates problems in the ordering, shipping, or customer satisfaction processes. Possible contributing factors include logistical issues, product quality, or customer dissatisfaction with the service.
<br>
<br>

**d. Total Canceled Ordered Product Per Year**
<p align="center">
  <kbd><img src="assets/Query 3 Total Canceled Ordered Product Per Year.jpg" width=800px> </kbd> <br>
  Picture 11. Total Canceled Ordered Product Per Year Graphic
</p>
The number of canceled products increased from 3 in the "toys" category in 2016 to 24 in the "sports_leisure" category in 2017, reaching 27 in the "health_beauty" category in 2018. Although product diversification has been undertaken, the increase in cancellations across various categories suggests challenges in meeting customer expectations in each category.
<br>
<br>

Click [here](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/blob/main/sql_query/Annual%20Product%20Category%20Quality%20Analysis.sql) for the Annual Product Category Quality Query<br>


<br>
<br>


---


