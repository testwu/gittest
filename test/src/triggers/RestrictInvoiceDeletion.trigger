trigger RestrictInvoiceDeletion on Invoice_Statement1__c (before delete) {
// With each of the invoice statements targeted by the trigger
// and that have line items, add an error to prevent them
// from being deleted.
for (Invoice_Statement1__c invoice :
[SELECT Id
FROM Invoice_Statement1__c
WHERE Id IN (SELECT Invoice_Statement1__c FROM Line_Item1__c) AND
Id IN :Trigger.old]){
Trigger.oldMap.get(invoice.Id).addError(
'Cannot delete invoice statement with line items');
}
}