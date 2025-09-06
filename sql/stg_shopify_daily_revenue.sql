CREATE OR REPLACE VIEW `dmp-sandbox-project.dmp_sandbox.stg_shopify_daily_revenue` AS
SELECT
  order_date AS date,
  SUM(revenue) AS revenue
FROM `dmp-sandbox-project.dmp_sandbox.raw_shopify_orders`
GROUP BY order_date
ORDER BY order_date;
