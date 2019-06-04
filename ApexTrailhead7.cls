@isTest

public class TestRestrictContactByName {
    public static Contact invalidContact = new Contact(LastName = 'INVALIDNAME');
    public static Contact validContact = new Contact(LastName = 'VALIDNAME');
    
    @isTest static void TestAddContactWithInvalidName() {
        System.test.startTest();
        
        try{
            insert invalidContact;
        }
        catch(Exception e){
            System.Assert(e.getMessage().contains('FIELD_CUSTOM_VALIDATION_EXCEPTION'));
        }
        System.Test.stopTest();
    }
    
    @isTest static void TestUpdateContactWithInvalidName() {
        insert validContact;
        System.test.startTest();
        validContact.LastName = 'INVALIDNAME';
        try{
            update validContact;
        }
        catch(Exception e){
            System.Assert(e.getMessage().contains('FIELD_CUSTOM_VALIDATION_EXCEPTION'));
        }
        System.Test.stopTest();
    }
}