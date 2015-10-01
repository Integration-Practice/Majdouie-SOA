<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$sADAD1" element="ns0:SADAD" location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd" ::)
(:: pragma bea:global-element-return element="ns2:loadBillResponse" location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebs/cs.pay.Bills";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace ns0 = "http://www.SADAD.sa";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Bills_1.0/xquery/BillLoadRs_loadBillResponse/";

declare function xf:BillLoadRs_loadBillResponse($sADAD1 as element(ns0:SADAD))
    as element(ns2:loadBillResponse) {
        <ns2:loadBillResponse>
            <ns2:header>
                <ns1:senderID>{ data($sADAD1/ns0:SignonRs/ns0:SignonProfile/ns0:Sender) }</ns1:senderID>
                <ns1:receiverID>{ data($sADAD1/ns0:SignonRs/ns0:SignonProfile/ns0:Receiver) }</ns1:receiverID>
                <ns1:rquid>{ data($sADAD1/ns0:PresSvcRs/ns0:RqUID) }</ns1:rquid>
            </ns2:header>
            <ns2:body>
                <ns2:clientDate>{ xs:dateTime($sADAD1/ns0:SignonRs/ns0:ClientDt) }</ns2:clientDate>
                <ns2:messageCode>{ data($sADAD1/ns0:SignonRs/ns0:SignonProfile/ns0:MsgCode) }</ns2:messageCode>
                <ns2:statusCode>{ data($sADAD1/ns0:PresSvcRs/ns0:Status/ns0:StatusCode) }</ns2:statusCode>
                <ns2:successRecordCount>{ data($sADAD1/ns0:PresSvcRs/ns0:BillLoadRS/ns0:SuccessRecordCount) }</ns2:successRecordCount>
                <ns2:errorRecordCount>{ data($sADAD1/ns0:PresSvcRs/ns0:BillLoadRS/ns0:ErrorRecordCount) }</ns2:errorRecordCount>
                <ns2:bills>
                    {
                        for $BillInfoError in $sADAD1/ns0:PresSvcRs/ns0:BillLoadRS/ns0:BillInfoError
                        return
                            <ns2:billInformationError>
                                {
                                    let $Error := $BillInfoError/ns0:Error
                                    return
                                        <ns2:error>
                                            <ns2:errorCode>{ data($Error/ns0:ErrorCode) }</ns2:errorCode>
                                            <ns2:errorMessage>{ data($Error/ns0:ErrorMsg) }</ns2:errorMessage>
                                        </ns2:error>
                                }
                                {
                                    for $BillingAcct in $BillInfoError/ns0:BillingAcct
                                    return
                                        <ns2:billingAccount>{ data($BillingAcct) }</ns2:billingAccount>
                                }
                                {
                                    for $BillCycle in $BillInfoError/ns0:BillCycle
                                    return
                                        <ns2:billCycle>{ data($BillCycle) }</ns2:billCycle>
                                }
                                <ns2:billerId>{ data($BillInfoError/ns0:BillerId) }</ns2:billerId>
                            </ns2:billInformationError>
                    }
                </ns2:bills>
            </ns2:body>
        </ns2:loadBillResponse>
};

declare variable $sADAD1 as element(ns0:SADAD) external;

xf:BillLoadRs_loadBillResponse($sADAD1)]]></con:xquery>
    <con:dependency location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd">
        <con:schema ref="bus.abcs/SADAD/wsdl/SADAD"/>
    </con:dependency>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Bills_1.0"/>
    </con:dependency>
</con:xqueryEntry>