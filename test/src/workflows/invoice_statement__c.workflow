<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>set</fullName>
        <field>p__c</field>
        <literalValue>pending</literalValue>
        <name>set initial approval status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>set_final_approval_status</fullName>
        <field>p__c</field>
        <literalValue>closed</literalValue>
        <name>set final approval status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>set_final_rejection_status</fullName>
        <field>p__c</field>
        <literalValue>open</literalValue>
        <name>set final rejection status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
