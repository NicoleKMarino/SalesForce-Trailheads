@isTest
public class TestVerifyDate {
    public static Date date1= System.today() + 5;
    public static Date date2 = System.today() + 40;
    
    @isTest static void testCheckDates() {
        Date withinThirty = VerifyDate.CheckDates(System.today(), date1);
        Date notWithinThirty = VerifyDate.CheckDates(System.today(), date2);
        System.assertEquals(withinThirty,date1);
        System.assertNotEquals(notWithinThirty,date2);
    }
}