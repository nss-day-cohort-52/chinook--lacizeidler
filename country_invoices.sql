SELECT COUNT(*), Invoice.BillingCountry
FROM Invoice
GROUP BY BillingCountry