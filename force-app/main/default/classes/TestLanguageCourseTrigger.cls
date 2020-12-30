@isTest
private class TestLanguageCourseTrigger {
    
    @IsTest static void dummytest(){


        Language_Course_Designer__c lcd = new Language_Course_Designer__c();
        lcd.name = 'Designer1';
        insert lcd;

        Language_Course_Instructor__c lci = new Language_Course_Instructor__c();
        lci.name = 'Instructor1';
        insert lci;

		Language_Course__c lct = new Language_Course__c();
        lct.Name = 'Apex Dummy';
        lct.Course_Instructor__c = lci.id;
        lct.Course_Designer__c = lcd.id;


        Test.startTest();
            insert lct;
        Test.stopTest();

//system.assertEquals(1, 1, match); 

    }
}