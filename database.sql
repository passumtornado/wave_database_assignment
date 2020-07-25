--ABUBAKAR PASSUM ABDUL GAFFAR
--DATABASE ASSIGNMENT

--QUESTION 1
--How Many User does wave have?
SELECT COUNT(u_id) FROM users 

--QUESTION 2
--How many transfers have been sent in the currency CFA?
SELECT  COUNT(transfer_id) FROM transfers WHERE send_amount_currency = 'CFA'

--QUESTION 3
--How many different users have sent a transfer in CFA?
SELECT  COUNT(DISTINCT u_id) FROM transfers WHERE send_amount_currency = 'CFA'

--QUESTION 4
--How many agent_transactions did we have in the months of 2018
SELECT  COUNT(atx_id) FROM agent_transactions 
WHERE EXTRACT(YEAR FROM when_created)=2018 
GROUP BY EXTRACT(MONTH FROM when_created)

--QUESTION 5
WITH agentwithdrawers AS
(SELECT COUNT(agent_id) AS netwithdrawers FROM agent_transactions
 HAVING count(amount) IN (SELECT COUNT(amount) FROM agent_transactions WHERE amount > -1
 AND amount !=0 HAVING COUNT(amount)>(SELECT COUNT(amount)
 FROM agent_transactions WHERE amount < 1 AND amount != 0)))
 SELECT netwithdrawers FROM agentwithdrawers

--QUESTION 6
SELECT city,volume INTO atx_voulume_city_summary
FROM (SELECT agents.city AS city,COUNT(atx.atx_id) AS Volume FROM
	  agents INNER JOIN agent_transactions AS atx ON agents.agent_id=atx.agent_id
	 WHERE (atx.when_created > (NOW()-INTERVAL '1 week')) GROUP BY agents.city)
	 AS atx_volume_summary

--QUESTION 7
SELECT city,volume,country INTO atx_voulume_city_summary_with_country
FROM (SELECT agents.city AS city,agents.country AS country,COUNT(atx.atx_id) AS Volume FROM
	  agents INNER JOIN agent_transactions AS atx ON agents.agent_id=atx.agent_id
	 WHERE (atx.when_created > (NOW()-INTERVAL '1 week')) GROUP BY agents.country,agents.city)
	 AS atx_voulume_city_summary_with_country

--QUESTION 8
SELECT w.ledger_location as "Country",tn.send_amount_currency AS "Kind",
sum(tn.send_amount_scalar) AS "Volume"
FROM transfers AS tn INNER JOIN wallets AS w ON tn.transfer_id = w.wallet_id
WHERE tn.when_created = CURRENT_DATE-INTERVAL '1 week'
GROUP BY w.ledger_location ,tn.send_amount_currency

--QUESTION 9
SELECT COUNT(transfers.source_wallet_id) AS unique_senders,
COUNT(transfer_id) AS transaction_count,transfers.kind AS transfer_kind,
wallets.ledger_location AS country,SUM(transfers.send_amount_scalar) AS 
volume FROM transfers INNER JOIN wallets 
ON transfers.source_wallet_id=wallets.wallet_id
WHERE (transfers.when_created > (NOW()-INTERVAL '1 week'))
GROUP BY wallets.ledger_location,transfers.kind

--QUESTION 10
SELECT tn.send_amount_scalar,tn.source_wallet_id,w.wallet_id 
FROM transfers AS tn INNER JOIN wallets AS w ON tn.transfer_id = w.wallet_id
WHERE tn.send_amount_scalar > 10000000 AND 
(tn.send_amount_currency = 'CFA' AND tn.when_created >
CURRENT_DATE-INTERVAL '1 month')

