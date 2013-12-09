@IsTest
private class HelloWorldTestClass {
    static testMethod void validateHelloWorld() {
        Book__c b=new Book__c(name='Behind the Cloud', price__c=100);
        System.debug('Price before inserting new book: ' + b.Price__c);
        insert b;
        // Retrieve the new book
        b=[select price__c from book__c where id=:b.id];
        System.debug('Price after trigger fired: ' + b.Price__c);
        // Test that the trigger correctly updated the price
        system.assertequals(90, b.price__c);
        }
        }