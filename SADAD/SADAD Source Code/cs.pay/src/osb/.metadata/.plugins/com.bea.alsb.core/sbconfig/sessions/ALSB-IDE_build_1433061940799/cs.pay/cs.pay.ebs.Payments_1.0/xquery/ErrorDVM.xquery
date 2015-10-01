<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[xquery version "1.0" encoding "Cp1252";
<dvm name="BillErrorMap" xmlns="http://xmlns.oracle.com/dvm">
   <description>Maps a received error to svcFault values.</description>
  <columns>
    <column name="Operation"/>
    <column name="Recevied Error Code"/>
    <column name="svcFault Error Code"/>
    <column name="svcFault Error Message"/>
  </columns>
  <rows>
    <row>
      <cell>Unknown</cell>
      <cell>UNSUPPORTED_OPERATION</cell>
      <cell>pp.acc:100</cell>
      <cell>Requested operation not found or supported</cell>
    </row>
    <row>
      <cell>notifyPayment</cell>
      <cell>UNEXPECTED</cell>
      <cell>pp.acc:001</cell>
      <cell>An unexpected error occurred</cell>
    </row>
    <row>
      <cell>notifyPayment</cell>
      <cell>BEA-382510 BEA-382512 BEA-382513</cell>
      <cell>pp.acc:400</cell>
      <cell>XQuery failure</cell>
    </row>
    <row>
      <cell>notifyPayment</cell>
      <cell>BEA-382530 BEA-382531</cell>
      <cell>pp.acc:401</cell>
      <cell>Insert failure</cell>
    </row>
    <row>
      <cell>notifyPayment</cell>
      <cell>BEA-382030</cell>
      <cell>pp.acc:402</cell>
      <cell>Failed to parse XML text</cell>
    </row>
    <row>
      <cell>notifyPayment</cell>
      <cell>BEA-382040</cell>
      <cell>pp.acc:403</cell>
      <cell>Failed to set the value of context variable</cell>
    </row>
    <row>
      <cell>notifyPayment</cell>
      <cell>RequestBEA-382505</cell>
      <cell>pp.acc:500</cell>
      <cell>Request message schema validation error</cell>
    </row>
    <row>
      <cell>notifyPayment</cell>
      <cell>ResponseBEA-382505</cell>
      <cell>pp.acc:501</cell>
      <cell>Response message schema validation error</cell>
    </row>
	</rows>
</dvm>]]></con:xquery>
</con:xqueryEntry>