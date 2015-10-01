<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$notifyPaymentResponse1" element="ns1:notifyPaymentResponse" location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd" ::)
(:: pragma  parameter="$signonProfileDVM" type="anyType" ::)
(:: pragma bea:global-element-return element="ns1:notifyPaymentResponse" location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd" ::)

declare namespace ns1 = "http://www.AlMajdouie.sa/ebs/cs.pay.Payments";
declare namespace ns0 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Payments_1.0/xquery/notifyPaymentResponse_notifyPaymentResponse/";
declare namespace dvm = "http://xmlns.oracle.com/dvm";

declare function xf:notifyPaymentResponse_notifyPaymentResponse($notifyPaymentResponse1 as element(ns1:notifyPaymentResponse),
    $signonProfileDVM as element(*),
    $reqUID as xs:string,
    $operation as xs:string,
    $type as xs:string)
    as element(ns1:notifyPaymentResponse) {
    let $op := if (exists($operation))
            then $operation
            else "Unknown"
        return
        <ns1:notifyPaymentResponse>
            <ns1:header>
                <ns0:senderID>
                	{
                                if (fn:exists($notifyPaymentResponse1/ns0:header/ns1:senderID)) then
                                    (data($notifyPaymentResponse1/ns0:header/ns1:senderID))
                                else 
                                    data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[3])
                            }
                </ns0:senderID>
                <ns0:receiverID>
                {
                                if (fn:exists($notifyPaymentResponse1/ns0:header/ns1:senderID)) then
                                    (data($notifyPaymentResponse1/ns0:header/ns1:senderID))
                                else 
                                    data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[4])
                            }
                </ns0:receiverID>
                <ns0:rquid>{ $reqUID }</ns0:rquid>
            </ns1:header>
            <ns1:body>{ $notifyPaymentResponse1/ns1:body/@* , $notifyPaymentResponse1/ns1:body/node() }</ns1:body>
        </ns1:notifyPaymentResponse>
};

declare variable $notifyPaymentResponse1 as element(ns1:notifyPaymentResponse) external;
declare variable $signonProfileDVM as element(*) external;
declare variable $reqUID as xs:string external;
declare variable $operation as xs:string external;
declare variable $type as xs:string external;

xf:notifyPaymentResponse_notifyPaymentResponse($notifyPaymentResponse1,
    $signonProfileDVM,
    $reqUID,
    $operation,
    $type)]]></con:xquery>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Payments_1.0"/>
    </con:dependency>
</con:xqueryEntry>