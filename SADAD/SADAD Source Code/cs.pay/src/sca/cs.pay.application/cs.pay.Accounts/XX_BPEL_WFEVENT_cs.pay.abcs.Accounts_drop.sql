---- This file is automatically generated while creating business event outbound interface for apps adapter.
---- Apply this file on target database in Apps schema to delete artifacts required to capture event.
---- WARNING: Applying this file is not recommended as this would delete the queue WF_BPEL_Q, and
----                  could effect consumers for other events, listening on the same queue.

 
declare
   subscriber sys.aq$_agent;
begin
-- remove subscription
delete from wf_event_subscriptions where event_filter_guid in(
select guid from wf_events where name = 'xxamg.okl.sadad.AccountSubmit') 
and out_agent_guid in ( select guid from wf_agents where name = 'WF_BPEL_QAGENT');

-- remove agent
delete from wf_agents where name = 'WF_BPEL_QAGENT';

-- remove queue

-- Stop the queue: 
DBMS_AQADM.STOP_QUEUE (Queue_name => 'WF_BPEL_Q');
 
-- Drop the queue: 
DBMS_AQADM.DROP_QUEUE (Queue_name => 'WF_BPEL_Q');

-- remove queue table
DBMS_AQADM.DROP_QUEUE_TABLE ( queue_table        => 'WF_BPEL_QTAB');

end;
/
commit;
