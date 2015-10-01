<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-return element="ns0:header" location="../ebo/util.cmn.EBMHeader_1.0.xsd" ::)

declare namespace ns0 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace xf = "http://tempuri.org/core/xquery/util.cmn.generateHdr/";

declare function xf:util($senderID as xs:string,
    $receiverID as xs:string,
    $rquid as xs:string,
    $contentType as xs:string)
    as element(ns0:header) {
        <ns0:header>
            <ns0:senderID>{ $senderID }</ns0:senderID>
            {
            	if(fn:exists($receiverID)) then
            	<ns0:receiverID>{ $receiverID }</ns0:receiverID>
            	else()
            }
            <ns0:rquid>{ $rquid }</ns0:rquid>
            <ns0:contentType>{ $contentType }</ns0:contentType>
        </ns0:header>
};

declare variable $senderID as xs:string external;
declare variable $receiverID as xs:string external;
declare variable $rquid as xs:string external;
declare variable $contentType as xs:string external;

xf:util($senderID,
    $receiverID,
    $rquid,
    $contentType)]]></con:xquery>
    <con:dependency location="../ebo/util.cmn.EBMHeader_1.0.xsd">
        <con:schema ref="core/ebo/util.cmn.EBMHeader_1.0"/>
    </con:dependency>
</con:xqueryEntry>