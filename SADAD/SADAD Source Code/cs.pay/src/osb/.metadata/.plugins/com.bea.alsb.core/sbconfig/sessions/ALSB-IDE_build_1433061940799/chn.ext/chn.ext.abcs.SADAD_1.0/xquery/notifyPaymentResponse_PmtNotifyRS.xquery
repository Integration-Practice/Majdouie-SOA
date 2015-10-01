<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$notifyPaymentResponse1" element="ns2:notifyPaymentResponse" location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd" ::)
(:: pragma bea:global-element-return element="ns0:SADAD" location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebs/cs.pay.Payments";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace ns0 = "http://www.SADAD.sa";
declare namespace xf = "http://tempuri.org/chn.ext/chn.ext.abcs.SADAD_1.0/xquery/notifyPaymentResponse_PmtNotifyRS/";

declare function xf:notifyPaymentResponse_PmtNotifyRS($notifyPaymentResponse1 as element(ns2:notifyPaymentResponse))
    as element(ns0:SADAD) {
        <ns0:SADAD>
            <ns0:SignonRs>
                <ns0:ClientDt>{ data($notifyPaymentResponse1/ns2:body/ns2:clientDate) }</ns0:ClientDt>
                <ns0:ServerDt>{ data($notifyPaymentResponse1/ns2:body/ns2:processingDate) }</ns0:ServerDt>
                <ns0:SignonProfile>
                    <ns0:Sender>{ data($notifyPaymentResponse1/ns2:header/ns1:senderID) }</ns0:Sender>
                    <ns0:Receiver>{ data($notifyPaymentResponse1/ns2:header/ns1:receiverID) }</ns0:Receiver>
                    <ns0:MsgCode>{ data($notifyPaymentResponse1/ns2:body/ns2:messageCode) }</ns0:MsgCode>
                </ns0:SignonProfile>
            </ns0:SignonRs>
            <ns0:BillerSvcRs>
                <ns0:Status>
                    <ns0:StatusCode>{ data($notifyPaymentResponse1/ns2:body/ns2:statusCode) }</ns0:StatusCode>
                    <ns0:Severity>Info</ns0:Severity>
                </ns0:Status>
                <ns0:RqUID>{ data($notifyPaymentResponse1/ns2:header/ns1:rquid) }</ns0:RqUID>
                <ns0:PmtNotifyRs>{ data($notifyPaymentResponse1/ns2:body/ns2:paymentID) }</ns0:PmtNotifyRs>
            </ns0:BillerSvcRs>
        </ns0:SADAD>
};

declare variable $notifyPaymentResponse1 as element(ns2:notifyPaymentResponse) external;

xf:notifyPaymentResponse_PmtNotifyRS($notifyPaymentResponse1)]]></con:xquery>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Payments_1.0"/>
    </con:dependency>
    <con:dependency location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd">
        <con:schema ref="bus.abcs/SADAD/wsdl/SADAD"/>
    </con:dependency>
</con:xqueryEntry>