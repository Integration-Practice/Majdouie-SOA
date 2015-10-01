<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$sADAD1" element="ns0:SADAD" location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd" ::)
(:: pragma bea:global-element-return element="ns1:confirmBill" location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebs/cs.pay.Bills";
declare namespace ns0 = "http://www.SADAD.sa";
declare namespace xf = "http://tempuri.org/chn.ext/chn.ext.SADAD.abcs.Confirmation_1.0/xquery/BillConfirmationRq_confirmBill/";

declare function xf:BillConfirmationRq_confirmBill($sADAD1 as element(ns0:SADAD))
    as element(ns1:confirmBill) {
        <ns1:confirmBill>
            <ns1:header>
                <ns2:clientDate>{ xs:dateTime($sADAD1/ns0:SignonRq/ns0:ClientDt) }</ns2:clientDate>
                <ns2:messageCode>{ data($sADAD1/ns0:SignonRq/ns0:SignonProfile/ns0:MsgCode) }</ns2:messageCode>
                <ns2:statusCode>{ data($sADAD1/ns0:PresSvcRq/ns0:Status/ns0:StatusCode) }</ns2:statusCode>
                <ns2:rqUID>{ data($sADAD1/ns0:PresSvcRq/ns0:RqUID) }</ns2:rqUID>
                <ns2:asyncRqUID>{ data($sADAD1/ns0:PresSvcRq/ns0:BillConfirmationRq/ns0:AsyncRqUID) }</ns2:asyncRqUID>
                <ns2:uploadDate>{ xs:string($sADAD1/ns0:PresSvcRq/ns0:BillConfirmationRq/ns0:UploadDt) }</ns2:uploadDate>
                <ns2:processingDate>{ xs:string($sADAD1/ns0:PresSvcRq/ns0:BillConfirmationRq/ns0:PrcDt) }</ns2:processingDate>
                <ns2:successRecordCount>{ data($sADAD1/ns0:PresSvcRq/ns0:BillConfirmationRq/ns0:SuccessRecordCount) }</ns2:successRecordCount>
                <ns2:errorRecordCount>{ data($sADAD1/ns0:PresSvcRq/ns0:BillConfirmationRq/ns0:ErrorRecordCount) }</ns2:errorRecordCount>
            </ns1:header>
            <ns1:body>
                {
                    for $BillInfoError in $sADAD1/ns0:PresSvcRq/ns0:BillConfirmationRq/ns0:BillInfoError
                    return
                        <ns2:infoError>
                            <ns2:error>
                                <ns2:errorCode>{ data($BillInfoError/ns0:Error/ns0:ErrorCode) }</ns2:errorCode>
                                <ns2:errorMessage>{ data($BillInfoError/ns0:Error/ns0:ErrorMsg) }</ns2:errorMessage>
                            </ns2:error>
                            <ns2:information>
                                <ns2:billingAccount>{ data($BillInfoError/ns0:BillingAcct) }</ns2:billingAccount>
                                <ns2:billerId>{ data($BillInfoError/ns0:BillerId) }</ns2:billerId>
                                <ns2:serviceType>{ data($BillInfoError/ns0:ServiceType) }</ns2:serviceType>
                            </ns2:information>
                        </ns2:infoError>
                }
            </ns1:body>
        </ns1:confirmBill>
};

declare variable $sADAD1 as element(ns0:SADAD) external;

xf:BillConfirmationRq_confirmBill($sADAD1)]]></con:xquery>
    <con:dependency location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd">
        <con:schema ref="bus.abcs/SADAD/wsdl/SADAD"/>
    </con:dependency>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Bills_1.0"/>
    </con:dependency>
</con:xqueryEntry>