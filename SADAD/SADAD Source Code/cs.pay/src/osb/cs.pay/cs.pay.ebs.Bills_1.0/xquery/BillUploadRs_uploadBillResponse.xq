(:: pragma bea:global-element-parameter parameter="$sADAD1" element="ns0:SADAD" location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd" ::)
(:: pragma  parameter="$signonProfileDVM" type="anyType" ::)
(:: pragma bea:global-element-return element="ns2:uploadBillResponse" location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebs/cs.pay.Bills";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace ns3 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns0 = "http://www.SADAD.sa";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Bills_1.0/xquery/BillUploadRs_uploadBillResponse/";
declare namespace dvm = "http://xmlns.oracle.com/dvm";

declare function xf:BillUploadRs_uploadBillResponse($sADAD1 as element(ns0:SADAD))
    as element(ns2:uploadBillResponse) {
            <ns2:uploadBillResponse>
                <ns3:header>
                    <ns1:senderID>{ data($sADAD1/ns0:SignonRs/ns0:SignonProfile/ns0:Sender) }</ns1:senderID>
                    <ns1:receiverID>{ data($sADAD1/ns0:SignonRs/ns0:SignonProfile/ns0:Receiver) }</ns1:receiverID>
                    <ns1:rquid>{ data($sADAD1/ns0:PresSvcRs/ns0:RqUID) }</ns1:rquid>
                </ns3:header>
                <ns3:body>
                    <ns3:clientDate>{ xs:dateTime($sADAD1/ns0:SignonRs/ns0:ClientDt) }</ns3:clientDate>
                    <ns3:messageCode>{data($sADAD1/ns0:SignonRs/ns0:SignonProfile/ns0:MsgCode) }</ns3:messageCode>
                    <ns3:statusCode>{ xs:string($sADAD1/ns0:PresSvcRs/ns0:Status/ns0:StatusCode) }</ns3:statusCode>
                    <ns3:respUid>{ data($sADAD1/ns0:PresSvcRs/ns0:RqUID) }</ns3:respUid>
                    <ns3:timestamp>{ fn:current-dateTime() }</ns3:timestamp>
                </ns3:body>
            </ns2:uploadBillResponse>
};

declare variable $sADAD1 as element(ns0:SADAD) external;
declare variable $signonProfileDVM as element(*) external;
declare variable $operation as xs:string? external;
declare variable $type as xs:string external;

xf:BillUploadRs_uploadBillResponse($sADAD1)
