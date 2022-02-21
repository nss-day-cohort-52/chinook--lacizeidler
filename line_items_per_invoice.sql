SELECT InvoiceLineId, COUNT(Quantity)
FROM InvoiceLine
GROUP BY InvoiceId