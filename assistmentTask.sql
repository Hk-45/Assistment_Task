/*create the stock column to predict that stock is full or out of stock */
select p.ProductID, p.ProductCategory, p.ProductionCost, p.Price, i.StockLevel, i.LeadTime,
  CASE 
      when i.StockLevel < i.LeadTime * p.ProductionCost then 'out-of-stock'
      else 'stock-full'
  end as  stock	
  from products as p
  inner join inventory as i
  on p.ProductID = i.ProductID

/*Supplier Analysis:*/
select p.Supplier, sum(p.ProductionCost) as total_cost, avg(i.LeadTime) as average_time from products as p
inner join inventory as i
on p.ProductID = i.ProductId
group by p.Supplier

/*Use SatisfactionScore and ReferralCount to predict churn. Propose 
strategies to reduce churn risk in high-risk regions.*/
select  cb.SatisfactionScore, cb.ReferralCount, cb.ChurnRisk from customer_behavior as cb
inner join sales_data as sd
on cb.Region = sd.Region
where churnrisk = 'High'


 






















