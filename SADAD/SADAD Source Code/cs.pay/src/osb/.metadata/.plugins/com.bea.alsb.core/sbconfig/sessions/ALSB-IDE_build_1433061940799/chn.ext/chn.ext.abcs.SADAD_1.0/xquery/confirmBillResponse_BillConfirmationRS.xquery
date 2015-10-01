<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$confirmBillResponse1" element="ns2:confirmBillResponse" location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd" ::)
(:: pragma bea:global-element-return element="ns0:SADAD" location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebs/cs.pay.Bills";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace ns3 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns0 = "http://www.SADAD.sa";
declare namespace xf = "http://tempuri.org/chn.ext/chn.ext.SADAD.abcs.Confirmation_1.0/xquery/confirmBillResponse_BillConfirmationRS/";

declare function xf:confirmBillResponse_BillConfirmationRS($confirmBillResponse1 as element(ns2:confirmBillResponse))
    as element(ns0:SADAD) {
        <ns0:SADAD>
            <ns0:SignonRs>
                <ns0:ClientDt>{ data($confirmBillResponse1/ns3:body/ns3:clientDate) }</ns0:ClientDt>
                <ns0:SignonProfile>
                    <ns0:Sender>{ data($confirmBillResponse1/ns3:header/ns1:senderID) }</ns0:Sender>
                    <ns0:Receiver>{ data($confirmBillResponse1/ns3:header/ns1:receiverID) }</ns0:Receiver>
                </ns0:SignonProfile>
            </ns0:SignonRs>
            <ns0:PresSvcRs>
                <ns0:Status>
                    <ns0:StatusCode>{ data($confirmBillResponse1/ns3:body/ns3:statusCode) }</ns0:StatusCode>
                    <ns0:Severity>Info</ns0:Severity>
                </ns0:Status>
                <ns0:RqUID>{ data($confirmBillResponse1/ns3:body/ns3:rqUID) }</ns0:RqUID>
                <ns0:BillConfirmationRs>
                    <ns0:AsyncRqUID>{ data($confirmBillResponse1/ns3:body/ns3:asyncRqUID) }</ns0:AsyncRqUID>
                    <ns0:UploadDt>{ data($confirmBillResponse1/ns3:body/ns3:uploadDate) }</ns0:UploadDt>
                    <ns0:PrcDt>{ data($confirmBillResponse1/ns3:body/ns3:processingDate) }</ns0:PrcDt>
                    <ns0:SuccessRecordCount>{ data($confirmBillResponse1/ns3:body/ns3:successRecordCount) }</ns0:SuccessRecordCount>
                    <ns0:ErrorRecordCount>{ data($confirmBillResponse1/ns3:body/ns3:errorRecordCount) }</ns0:ErrorRecordCount>
                </ns0:BillConfirmationRs>
            </ns0:PresSvcRs>
        </ns0:SADAD>
};

declare variable $confirmBillResponse1 as element(ns2:confirmBillResponse) external;

xf:confirmBillResponse_BillConfirmationRS($confirmBillResponse1)]]></con:xquery>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Bills_1.0"/>
    </con:dependency>
    <con:dependency location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd">
        <con:schema ref="bus.abcs/SADAD/wsdl/SADAD"/>
    </con:dependency>
</con:xqueryEntry>