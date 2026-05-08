import pandas as pd
import matplotlib.pyplot as plt

print("StyleSphere Analytics Project")

# Load sample data
orders = pd.read_csv("orders.csv")

# Monthly revenue
monthly_sales = orders.groupby("month")["total_amount"].sum()

print(monthly_sales)

monthly_sales.plot(kind="line", marker="o")
plt.title("Monthly Revenue Trend")
plt.xlabel("Month")
plt.ylabel("Revenue")
plt.show()
