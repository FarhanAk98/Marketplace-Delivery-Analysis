# Marketplace Delivery Analysis

## Case Study
This case study analyzes the performance of an e-commerce marketplace from purchase to delivery, with a focus on understanding seller performance, customer satisfaction, and overall marketplace performance.

## Dataset ER-Diagram
<img width="1031" height="806" alt="ER" src="https://github.com/user-attachments/assets/b93c976c-ebc5-4eec-a011-82953fffc779" />

## Data Analysis
### Performance over time
- How many products were sold over time?
  
  <img width="575" height="326" alt="image" src="https://github.com/user-attachments/assets/09fd2509-567a-4590-99ed-0f37ceb3f9f4" />

  The number of products sold has been increasing in a relatively linear fashion with the first quarter of 2018 having the highest order count.

- How does the revenue over time?

  <img width="576" height="326" alt="image" src="https://github.com/user-attachments/assets/6b2e0f6e-99fe-410c-ba2b-82b65ce65f9c" />

  The rate of change is almost the same as the number of orders, except the market made a greater profit in the second quarter of 2018 compared to the first quarter.

- What is the total revenue and number of products sold by category?

  <img width="575" height="324" alt="image" src="https://github.com/user-attachments/assets/aea00620-0187-4dc7-8672-0d1bfc7987c8" />

  According to the visuals, Beleza Saude (Beauty and Health) products seem to generate the highest revenue with the amount of €1.4M whereas Cama, Mesa, Banho (Bed, Table and Bath) products are the most popular with around 11k items sold.

  Inversely, Moveis Sala (Living room furniture) products seem to have generated the least amount of revenue with €86.6k and PCS (Pieces/Parts) have the lowest popularity with only 203 items sold.

### Seller Performance
- What are the top 200 sellers based on how active they are (number of order taken) compared to their average customer rating and average early deliveries?
-Average Customer Ratings:

  <img width="575" height="325" alt="image" src="https://github.com/user-attachments/assets/2e789d3c-4540-4309-9b2f-28667f300703" />

-Average Early Deliveries:

  <img width="578" height="326" alt="image" src="https://github.com/user-attachments/assets/d8a1e5fb-182c-4908-b899-7242efd9242b" />

-Which seller the highest customer ratings with at least 1000 orders delivered?

  <img width="1248" height="640" alt="image" src="https://github.com/user-attachments/assets/8882aef9-0d2f-47a7-86ec-f27bee3e9151" />

  A seller based in Sao Paulo, SP who has delivered 1,151 orders has the highest average customer rating of 4.23.

-Which seller has the highest early deliveries with at least 1000 orders delivered?

  <img width="1161" height="648" alt="image" src="https://github.com/user-attachments/assets/3c7d3c69-3e48-4862-8d8d-d9d9e0ae597c" />

  A seller based in Campo Limpo Paulista, SP who has delivered 1069 orders has the highest average early deliveries of 12.41 days.

-Who are the top 3 most active sellers?
  
  <img width="578" height="328" alt="image" src="https://github.com/user-attachments/assets/3b8834b9-3165-4f26-89f5-1bcb3a581294" />

  3 sellers based on Santo Andre, Ibitinga and Sao Paulo, SP have the highest delivery counts of 1,698, 1,785 and 1838 respectively.

### Impact of Delivery time on customer ratings

-What is the average customer ratings on orders based on delivery time?

  <img width="578" height="327" alt="image" src="https://github.com/user-attachments/assets/80cd22ec-5f48-41cf-93ac-80f567d99eeb" />

  Based on the graph, customer ratings are consistently high on Early and Very Early Deliveries with a slight decline on orders that are delivered on time.
  Whereas the average rating orders declines the more late the orders are delivered.

-What is the customer leniency on orders that have either been delivered late or very late, i.e, what is the percentage of those orders that have rating less than 2?

  <img width="578" height="325" alt="image" src="https://github.com/user-attachments/assets/aa17bc74-5e03-4d3a-9b4c-c3127877e8ec" />

  Around 60% of customers have given a rating less than 2 on orders that were delivered late (1-19 days), and the rest 40% have given more than or equal to 2, indicating low leniency.

  <img width="577" height="324" alt="image" src="https://github.com/user-attachments/assets/b6439903-6aff-4a6d-8f4b-b176a75d2867" />

  As for orders that were delivered very late (20+ days), around 77.45% of customers have given a rating less than 2, and only 22.55% giving a score of more than 2 indicating very low leniency.


