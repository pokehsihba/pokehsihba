# SQL Practice — E-commerce Orders

A hands-on SQL exercise set using fictional customers and orders. The queries cover filtering, aggregations, joins, CTEs, and window functions.

## Run locally

In pgAdmin, open the Query Tool for a scratch PostgreSQL database. Run `setup.sql` first, then try each question before comparing your query with `solutions.sql`. The setup script recreates the `orders` and `customers` tables in the current schema.

## Questions

| # | Level | Question | Expected result or check |
| --- | --- | --- | --- |
| 1 | Basic | List completed orders worth at least 1,000, largest first. | Orders 104, 109, 101 |
| 2 | Basic | Count completed orders and calculate completed revenue by month. | Jan: 2 and 2,000. Feb: 4 and 3,100. Mar: 2 and 2,100. |
| 3 | Intermediate | Show lifetime spend for all customers, including those with no completed orders. | Ravi and Neha both have zero spend. |
| 4 | Intermediate | Find customers with at least two completed orders. | Asha, Kabir, Meera |
| 5 | Advanced | Find customers in the top two distinct spending ranks. Keep ties. | Kabir and Meera tie at 2,650. Asha ranks second at 1,900. |
| 6 | Advanced | Calculate running revenue after each completed order. Break same-date ties by order ID. | Final cumulative revenue is 7,200. |
| 7 | Advanced | Find the latest completed order per customer who made one. | Orders 105, 109, 110 |
| 8 | Advanced | Calculate the revenue change from the previous month with completed sales. | Feb: +55%. Mar: −32.26%. Jan: no prior month. |

## Interview prompts

- Why does filtering completed orders in the `LEFT JOIN` condition preserve customers with zero spend?
- When would `DENSE_RANK()` and `ROW_NUMBER()` give different results?
- How would you include months without any completed sales in the growth analysis?

The included solutions are reference examples. Add your own approaches and findings as you practice.

Portfolio note: This starter pack was assembled in November 2026. Commit author dates were assigned to illustrate a practice sequence.
