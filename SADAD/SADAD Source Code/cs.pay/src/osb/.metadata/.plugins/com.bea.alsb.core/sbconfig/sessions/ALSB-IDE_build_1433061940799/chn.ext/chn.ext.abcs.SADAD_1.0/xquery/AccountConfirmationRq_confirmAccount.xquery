<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$sADAD1" element="ns0:SADAD" location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd" ::)
(:: pragma bea:global-element-return element="ns1:confirmAccount" location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebs/cs.pay.Accounts";
declare namespace ns0 = "http://www.SADAD.sa";
declare namespace xf = "http://tempuri.org/chn.ext/chn.ext.SADAD.abcs.Confirmation_1.0/xquery/AccountConfirmationRq_confirmAccount/";

declare function xf:AccountConfirmationRq_confirmAccount($sADAD1 as element(ns0:SADAD))
    as element(ns1:confirmAccount) {
        <ns1:confirmAccount>
            <ns1:header>
                <ns2:clientDate>{ xs:dateTime($sADAD1/ns0:SignonRq/ns0:ClientDt) }</ns2:clientDate>
                <ns2:messageCode>{ data($sADAD1/ns0:SignonRq/ns0:SignonProfile/ns0:MsgCode) }</ns2:messageCode>
                <ns2:statusCode>{ data($sADAD1/ns0:BillerSvcRq/ns0:Status/ns0:StatusCode) }</ns2:statusCode>
                <ns2:rqUID>{ data($sADAD1/ns0:BillerSvcRq/ns0:RqUID) }</ns2:rqUID>
                <ns2:asyncRqUID>{ data($sADAD1/ns0:BillerSvcRq/ns0:AccountConfirmationRq/ns0:AsyncRqUID) }</ns2:asyncRqUID>
                <ns2:uploadDate>{ xs:string($sADAD1/ns0:BillerSvcRq/ns0:AccountConfirmationRq/ns0:UploadDt) }</ns2:uploadDate>
                <ns2:processingDate>{ xs:string($sADAD1/ns0:BillerSvcRq/ns0:AccountConfirmationRq/ns0:PrcDt) }</ns2:processingDate>
                <ns2:successRecordCount>{ data($sADAD1/ns0:BillerSvcRq/ns0:AccountConfirmationRq/ns0:SuccessRecordCount) }</ns2:successRecordCount>
                <ns2:errorRecordCount>{ data($sADAD1/ns0:BillerSvcRq/ns0:AccountConfirmationRq/ns0:ErrorRecordCount) }</ns2:errorRecordCount>
            </ns1:header>
            <ns1:body>
                {
                    for $AccountInfoError in $sADAD1/ns0:BillerSvcRq/ns0:AccountConfirmationRq/ns0:AccountInfoError
                    return
                        <ns1:accountInfoError>
                            {
                                let $Error := $AccountInfoError/ns0:Error
                                return
                                    <ns1:error>
                                        <ns1:errorCode>{ data($Error/ns0:ErrorCode) }</ns1:errorCode>
                                        <ns1:errorMessage>{ data($Error/ns0:ErrorMsg) }</ns1:errorMessage>
                                    </ns1:error>
                            }
                            {
                                let $AccountInfo := $AccountInfoError/ns0:AccountInfo
                                return
                                    <ns1:accountInformation>
                                        <ns1:billingAccount>{ data($AccountInfo/ns0:BillingAcct) }</ns1:billingAccount>
                                        <ns1:billerId>{ data($AccountInfo/ns0:BillerId) }</ns1:billerId>
                                        <ns1:serviceType>{ data($AccountInfo/ns0:ServiceType) }</ns1:serviceType>
                                        <ns1:accountStatusCode>{ data($AccountInfo/ns0:AccountStatusCode) }</ns1:accountStatusCode>
                                    </ns1:accountInformation>
                            }
                        </ns1:accountInfoError>
                }
            </ns1:body>
        </ns1:confirmAccount>
};

declare variable $sADAD1 as element(ns0:SADAD) external;

xf:AccountConfirmationRq_confirmAccount($sADAD1)]]></con:xquery>
    <con:dependency location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd">
        <con:schema ref="bus.abcs/SADAD/wsdl/SADAD"/>
    </con:dependency>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Accounts_1.0"/>
    </con:dependency>
</con:xqueryEntry>