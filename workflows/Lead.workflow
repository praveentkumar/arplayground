<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_SDR_on_Discovery_Call</fullName>
        <field>SDR__c</field>
        <formula>Owner:User.FirstName +&apos; &apos;+ Owner:User.LastName</formula>
        <name>Update SDR on Discovery Call</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update SDR</fullName>
        <actions>
            <name>Update_SDR_on_Discovery_Call</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Discovery Call</value>
        </criteriaItems>
        <description>Update SDR on setting discovery call</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
