(:: pragma bea:global-element-parameter parameter="$sADAD1" element="ns0:SADAD" location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd" ::)
(:: pragma  parameter="$signonProfileDVM" type="anyType" ::)
(:: pragma bea:global-element-return element="ns2:uploadAccountResponse" location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebs/cs.pay.Accounts";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace ns3 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns0 = "http://www.SADAD.sa";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Accounts_1.0/xquery/AccountUploadRs_uploadAccountResponse/";
declare namespace dvm = "http://xmlns.oracle.com/dvm";

declare function xf:AccountUploadRs_uploadAccountResponse($sADAD1 as element(ns0:SADAD),
    $signonProfileDVM as element(*),
    $operation as xs:string?,
    $type as xs:string)
    as element(ns2:uploadAccountResponse) {
    let $op := if (exists($operation))
                   		       then $operation
                   		        else "Unknown"
        return
        <ns2:uploadAccountResponse>
            <ns3:header>
                <ns1:senderID>
                { 
                fn-bea:if-then-else(fn:exists($sADAD1/ns0:SignonRs/ns0:SignonProfile/ns0:Sender), 
                    						data($sADAD1/ns0:SignonRs/ns0:SignonProfile/ns0:Sender), 
                    						data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[3])) 
                }
                </ns1:senderID>
                 <ns1:receiverID>
                { 
                fn-bea:if-then-else(fn:exists($sADAD1/ns0:SignonRs/ns0:SignonProfile/ns0:Receiver), 
                    						 data($sADAD1/ns0:SignonRs/ns0:SignonProfile/ns0:Receiver), 
                    						data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[4])) 
                }
                </ns1:receiverID>
                <ns1:rquid>{ data($sADAD1/ns0:BillerSvcRs/ns0:RqUID) }</ns1:rquid>
            </ns3:header>
            <ns3:body>
                <ns3:clientDate>{ data($sADAD1/ns0:SignonRs/ns0:ClientDt) }</ns3:clientDate>
                <ns3:messageCode>{ data($sADAD1/ns0:SignonRs/ns0:SignonProfile/ns0:MsgCode) }</ns3:messageCode>
                <ns3:statusCode>{ data($sADAD1/ns0:BillerSvcRs/ns0:Status/ns0:StatusCode) }</ns3:statusCode>
                <ns3:respUid>{ data($sADAD1/ns0:BillerSvcRs/ns0:RqUID) }</ns3:respUid>
                <ns3:timestamp>{ data($sADAD1/ns0:BillerSvcRs/ns0:AccountUploadRs/ns0:Timestamp) }</ns3:timestamp>
            </ns3:body>
        </ns2:uploadAccountResponse>
};

declare variable $sADAD1 as element(ns0:SADAD) external;
declare variable $signonProfileDVM as element(*) external;
declare variable $operation as xs:string? external;
declare variable $type as xs:string external;

xf:AccountUploadRs_uploadAccountResponse($sADAD1,
    $signonProfileDVM,
    $operation,
    $type)
