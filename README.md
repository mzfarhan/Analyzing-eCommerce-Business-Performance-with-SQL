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
  <kbd><img src="assets/Query 3 Total Canceled Order Per Year.png" width=800px> </kbd> <br>
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

### **3. Annual Payment Type Usage**

The annual payment type usage can be analyzed from the payment type, year, and total payment type usage.

<p align="center">
  <kbd><img src="assets/Query 4 Master Table.jpg" width=800px> </kbd> <br>
  Picture 12. Annual Payment Type Usage Table
</p>

**a. Total Payment Type Usage**
<p align="center">
  <kbd><img src="assets/Query 4 Total Payment Type Usage.jpg" width=800px> </kbd> <br>
  Picture 13. Total Payment Type Usage Graphic
</p>
Total credit card usage reached 76,580, far surpassing other payment methods such as boleto (19,727), voucher (5,761), and debit card (1,528). This data indicates that credit cards are the most preferred payment method by customers. The dominance of credit cards reflects customers' trust in the security and ease of use of credit cards for their transactions.
<br>
<br>

**b. Payment Type Usage Per Year**
<p align="center">
  <kbd><img src="assets/Query 4 Payment Type Usage Per Year.jpg" width=800px> </kbd> <br>
  Picture 14. Payment Type Usage Per Year Graphic
</p>
Credit card usage increased significantly from 34,474 in 2016 to 41,848 in 2018. Meanwhile, boleto usage also saw an increase from 63 in 2016 to 10,185 in 2018. Voucher and debit card usage also showed a notable increase in 2018. This data indicates a trend towards diversification in the payment methods used by customers. Although credit cards remain dominant, the increase in boleto, voucher, and debit card usage suggests that customers are becoming more comfortable using a variety of payment methods.
<br>
<br>

Click [here](https://github.com/mzfarhan/Analyzing-eCommerce-Business-Performance-with-SQL/blob/main/sql_query/Annual%20Payment%20Type%20Usage%20Analysis.sql) for the Annual Payment Type Usage Query<br>

---

## 📂 **STAGE 3: Recommendation**
<br>

**1. Annual Customer Activity Growth**
- **Growth in Monthly Active Users and New Customers**
  - Invest in technology infrastructure to ensure consistent performance and user experience.
  - Implement loyalty programs and enhance customer service to retain new customers and reduce churn rate.
  - Continuously analyze and iterate on marketing campaigns that have proven effective to maintain customer growth momentum.

- **Improvement and Stability of Repeat Orders and Order Frequency**
  - Implement stronger retention programs, such as discounts for repeat orders, and improve service quality to increase repeat orders.
  - Utilize data analysis to provide personalized offers to customers, encouraging them to place orders more frequently.
  - Collect and analyze customer feedback to identify and address barriers to repeat orders, and to enhance the shopping experience.

- **Addressing the Decline in Repeat Orders**
  - Conduct deeper analysis to understand the reasons behind the decline in repeat orders in 2018 and take appropriate actions.
  - Offer a variety of products and attractive quality improvements to encourage customers to place repeat orders.
  - Develop re-engagement campaigns for inactive customers, offering incentives to encourage them to make purchases again.

**2. Annual Product Category Quality**

- **Total Revenue Growth**
  - Identify and replicate successful marketing strategies to continuously increase revenue.
  - Consider expanding into new markets to maintain strong revenue growth.
  - Continue diversifying products to attract various customer segments and reduce the risk of dependency on a single type of product.

- **Revenue Growth by Product Category**
  - Maintain and increase focus on product categories that show significant revenue growth.
  - Develop new products within existing categories to meet customer demand and expand market share.
  - Execute targeted promotional marketing for product categories that show high growth potential.

- **Increase in Canceled Orders**
  - Conduct deeper analysis to identify the main causes of order cancellations.
  - Implement customer service improvement programs to address complaints and enhance customer satisfaction.
  - Refine shipping processes and inventory management to reduce order cancellations caused by logistical issues.

- **Increase in Product Cancellations by Product Category**
  - Identify and address product quality issues in categories with high cancellation rates to improve product quality.
  - Collect and analyze customer feedback to understand the reasons for cancellations and implement necessary improvements.
  - Provide training to sales staff to better understand the products and handle customer complaints effectively, reducing cancellations.

**3. Annual Payment Type Usage**

- **Maximizing Credit Card Usage**
  - Offer special promotions, such as cashback or discounts, to encourage more transactions using credit cards.
  - Collaborate with credit card providers to offer exclusive deals to customers.
  - Ensure the security of transactions using credit cards to increase customer trust.

- **Increasing the Use of Alternative Payment Methods**
  - Offer incentives such as discounts or rewards to encourage the use of alternative payment methods like boleto and vouchers.
  - Raise customer awareness about the benefits and ease of use of alternative payment methods by utilizing current trend-focused advertisements.
  - Ensure all payment methods are easily accessible and usable on the platform, with a simple and quick checkout process.

- **Optimizing Debit Card Usage**
  - Provide special promotions to encourage debit card usage, such as waiving transaction fees or offering direct discounts.
  - Partner with banks to offer promotions or special programs for debit cardholders.
  - Ensure that the debit card payment process is easy and fast to encourage more usage.


