<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$confirmAccountResponse1" element="ns1:confirmAccountResponse" location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd" ::)
(:: pragma  parameter="$signonProfileDVM" type="anyType" ::)
(:: pragma bea:global-element-return element="ns1:confirmAccountResponse" location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebs/cs.pay.Accounts";
declare namespace ns0 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Accounts_1.0/xquery/confirmAccountResponse_confirmAccountResponse/";
declare namespace dvm = "http://xmlns.oracle.com/dvm";

declare function xf:confirmAccountResponse_confirmAccountResponse($confirmAccountResponse1 as element(ns1:confirmAccountResponse),
    $signonProfileDVM as element(*),
    $operation as xs:string?,
    $type as xs:string)
    as element(ns1:confirmAccountResponse) {
    let $op := if (exists($operation))
         then $operation
         else "Unknown"
        return
        <ns1:confirmAccountResponse>
            <ns2:header>
                <ns0:senderID> 
                {
                	if (fn:exists($confirmAccountResponse1/ns2:header/ns1:senderID)) then
                    	(data($confirmAccountResponse1/ns2:header/ns1:senderID))
                    else 
                        data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[3])
                 }
                 </ns0:senderID>
                <ns0:receiverID>
                {
                 	if (fn:exists($confirmAccountResponse1/ns2:header/ns1:receiverID)) then
                    	(data($confirmAccountResponse1/ns2:header/ns1:receiverID))
                    else 
                        data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[4])
                }
				</ns0:receiverID>
                {
                    for $rquid in $confirmAccountResponse1/ns2:header/ns0:rquid
                    return
                        <ns0:rquid>{ data($rquid) }</ns0:rquid>
                }
                {
                    for $contentType in $confirmAccountResponse1/ns2:header/ns0:contentType
                    return
                        <ns0:contentType>{ data($contentType) }</ns0:contentType>
                }
            </ns2:header>
            <ns2:body>
                {
                    for $localSender in $confirmAccountResponse1/ns2:body/ns2:localSender
                    return
                        <ns2:localSender>{ data($localSender) }</ns2:localSender>
                }
                <ns2:clientDate>{ data($confirmAccountResponse1/ns2:body/ns2:clientDate) }</ns2:clientDate>
                <ns2:messageCode>
                	{
                     	data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[5])
                    }
                </ns2:messageCode>
                <ns2:statusCode>{ data($confirmAccountResponse1/ns2:body/ns2:statusCode) }</ns2:statusCode>
                <ns2:rqUID>{ data($confirmAccountResponse1/ns2:body/ns2:rqUID) }</ns2:rqUID>
                <ns2:asyncRqUID>{ data($confirmAccountResponse1/ns2:body/ns2:asyncRqUID) }</ns2:asyncRqUID>
                <ns2:uploadDate>{ data($confirmAccountResponse1/ns2:body/ns2:uploadDate) }</ns2:uploadDate>
                <ns2:processingDate>{ data($confirmAccountResponse1/ns2:body/ns2:processingDate) }</ns2:processingDate>
                <ns2:successRecordCount>{ data($confirmAccountResponse1/ns2:body/ns2:successRecordCount) }</ns2:successRecordCount>
                <ns2:errorRecordCount>{ data($confirmAccountResponse1/ns2:body/ns2:errorRecordCount) }</ns2:errorRecordCount>
                {
                    for $pendingRecordCount in $confirmAccountResponse1/ns2:body/ns2:pendingRecordCount
                    return
                        <ns2:pendingRecordCount>{ data($pendingRecordCount) }</ns2:pendingRecordCount>
                }
            </ns2:body>
        </ns1:confirmAccountResponse>
};

declare variable $confirmAccountResponse1 as element(ns1:confirmAccountResponse) external;
declare variable $signonProfileDVM as element(*) external;
declare variable $operation as xs:string? external;
declare variable $type as xs:string external;

xf:confirmAccountResponse_confirmAccountResponse($confirmAccountResponse1,
    $signonProfileDVM,
    $operation,
    $type)]]></con:xquery>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Accounts_1.0"/>
    </con:dependency>
</con:xqueryEntry>