import pandas as pd
import seaborn as sb

customerBehavior = pd.read_csv("D:/Data-Analyst9/SQL/assistment/customer_behavior.csv", header=0, index_col=0)

print('customerBehavior :', customerBehavior)

sb.jointplot(data= customerBehavior, x='Region', y="PurchaseFrequency")