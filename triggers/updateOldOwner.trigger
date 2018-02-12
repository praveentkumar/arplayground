trigger updateOldOwner on Lead (before update) 
{
    for(Lead l : trigger.new)
    {
        if(l.OwnerId != trigger.OldMap.get(l.id).OwnerId)
        {
           // l.DG_Member__c = trigger.OldMap.get(l.id).OwnerId;
        }
    }
}