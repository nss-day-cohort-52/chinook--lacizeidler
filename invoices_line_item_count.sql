SELECT InvoiceLine.InvoiceId, COUNT(InvoiceLine.InvoiceId)
FROM InvoiceLine
JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY InvoiceLine.InvoiceId
   