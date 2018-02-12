@isTest
public class OpportunityContactControllerTest{
    public static testMethod void test1(){
        List<contact> conlist = new List<contact>();
        for(integer i=0; i<25 ;i++){
           conlist.add(new contact(lastname='testname '+i));
        }
        OpportunityContactController  con = new OpportunityContactController ();
        List<selectoption> opts = con.getitems();
        con.loadcontacts();
        con.beginning();
        con.next();
        try{
            con.last();
        }
        Catch(Exception e){}    
        try{
            con.previous();
        }
        Catch(Exception e){}    
        con.getDisableNext();
        con.getDisablePrevious();
        try{
            con.updatePagelimit();
        }
        Catch(Exception e){}    
        opts = con.getPickListValuesIntoList();
        con.selectedyear =String.valueof(system.today().year());
        try{
            con.loadcontacts();
        }
        Catch(Exception e){}    
    }
}