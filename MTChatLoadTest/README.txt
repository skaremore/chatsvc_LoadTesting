Mockaroo resources are under the project "Chat MT Load Test"

--------------------------------------------------------
Input files needed by the JMeter script:

1) Tenant users

A very small sample TenantUsers.csv is provided.  Use Mockaroo schema "Tenant User CSV" to generate what is needed.  This site (http://textmechanic.com/text-tools/numeration-tools/generate-list-numbers/) can be used to generate a sequential list of numbers needed by the "Tenant User CSV"

2) Payload for the Chat endpoints

The payloads are expected to be under a "Data" folder, with the subfolders: groups, postteammate, posttopic.  A very small sample payload is provided for each.

Use the following .bat files to generate:
- gengroup.bat
- genpostteammate.bat
- genposttopic.bat

Note: You'll need to change the .bat files to set the CURLPATH as appropriate:
@set CURLPATH=C:\Pgms\curl-7.57.0\bin

--------------------------------------------------------
To run the load test, use loadtest.bat

Note: You'll need to change loadtest.bat:
- set the JMETERPATH as appropriate: @set JMETERPATH=C:\Pgms\apache-jmeter-3.3\bin
- set the Threads / ThreadLoops / Loops  as appropriate
