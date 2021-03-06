trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> tasks = new List<Task>();
    for(Opportunity opp : [Select Id from Opportunity where Id in :Trigger.New AND StageName='Closed Won'])
    {
        Task task = new Task(WhatId = opp.Id, Subject = 'Follow Up Test Task');
        tasks.add(task);
    }
    insert tasks;
}