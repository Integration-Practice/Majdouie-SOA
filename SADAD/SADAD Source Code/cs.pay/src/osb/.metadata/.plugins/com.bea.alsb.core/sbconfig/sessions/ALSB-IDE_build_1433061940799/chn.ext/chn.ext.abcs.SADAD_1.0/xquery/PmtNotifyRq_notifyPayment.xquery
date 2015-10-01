<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$sADAD1" element="ns0:SADAD" location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd" ::)
(:: pragma bea:global-element-return element="ns1:notifyPayment" location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd" ::)

declare namespace ns1 = "http://www.AlMajdouie.sa/ebs/cs.pay.Payments";
declare namespace ns0 = "http://www.SADAD.sa";
declare namespace xf = "http://tempuri.org/chn.ext/chn.ext.abcs.SADAD_1.0/xquery/PmtNotifyRq_notifyPayment/";

declare function xf:PmtNotifyRq_notifyPayment($sADAD1 as element(ns0:SADAD))
    as element(ns1:notifyPayment) {
        <ns1:notifyPayment>
            <ns1:header>
                <ns1:clientDate>{ data($sADAD1/ns0:SignonRq/ns0:ClientDt) }</ns1:clientDate>
                <ns1:messageCode>{ data($sADAD1/ns0:SignonRq/ns0:SignonProfile/ns0:MsgCode) }</ns1:messageCode>
                <ns1:statusCode>{ data($sADAD1/ns0:BillerSvcRq/ns0:Status/ns0:StatusCode) }</ns1:statusCode>
                <ns1:requestUID>{ data($sADAD1/ns0:BillerSvcRq/ns0:RqUID) }</ns1:requestUID>
            </ns1:header>
            <ns1:body>
                {
                    for $PmtRec in $sADAD1/ns0:BillerSvcRq/ns0:PmtNotifyRq/ns0:PmtRec
                    return
                        <ns1:paymentRecord>
                            <ns1:billingAccount>{ data($PmtRec/ns0:PmtInfo/ns0:AccountId/ns0:BillingAcct) }</ns1:billingAccount>
                            {
                                for $PmtTransId in $PmtRec/ns0:PmtTransId
                                return
                                    <ns1:paymentTransactionID>
                                        <ns1:paymentID>{ data($PmtTransId/ns0:PmtId) }</ns1:paymentID>
                                        {
                                            for $PmtIdType in $PmtTransId/ns0:PmtIdType
                                            return
                                                <ns1:paymentIDType>{ data($PmtIdType) }</ns1:paymentIDType>
                                        }
                                    </ns1:paymentTransactionID>
                            }
                            <ns1:paymentStatusCode>{ data($PmtRec/ns0:PmtStatus/ns0:PmtStatusCode) }</ns1:paymentStatusCode>
                            <ns1:officialId>{ data($PmtRec/ns0:CustId/ns0:OfficialId) }</ns1:officialId>
                            <ns1:currentAmount>{ data($PmtRec/ns0:PmtInfo/ns0:CurAmt) }</ns1:currentAmount>
                            <ns1:processedDate>{ xs:dateTime($PmtRec/ns0:PmtInfo/ns0:PrcDt) }</ns1:processedDate>
                        </ns1:paymentRecord>
                }
            </ns1:body>
        </ns1:notifyPayment>
};

declare variable $sADAD1 as element(ns0:SADAD) external;

xf:PmtNotifyRq_notifyPayment($sADAD1)]]></con:xquery>
    <con:dependency location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd">
        <con:schema ref="bus.abcs/SADAD/wsdl/SADAD"/>
    </con:dependency>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Payments_1.0"/>
    </con:dependency>
</con:xqueryEntry>