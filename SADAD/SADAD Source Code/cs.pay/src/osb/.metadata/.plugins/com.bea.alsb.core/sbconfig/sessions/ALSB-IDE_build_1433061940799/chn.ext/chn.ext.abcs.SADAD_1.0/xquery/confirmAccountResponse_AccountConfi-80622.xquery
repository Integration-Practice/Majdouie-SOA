<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$confirmAccountResponse1" element="ns2:confirmAccountResponse" location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd" ::)
(:: pragma bea:global-element-return element="ns0:SADAD" location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebs/cs.pay.Accounts";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace ns3 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns0 = "http://www.SADAD.sa";
declare namespace xf = "http://tempuri.org/chn.ext/chn.ext.SADAD.abcs.Confirmation_1.0/xquery/confirmAccountResponse_AccountConfirmationRS/";

declare function xf:confirmAccountResponse_AccountConfirmationRS($confirmAccountResponse1 as element(ns2:confirmAccountResponse))
    as element(ns0:SADAD) {
        <ns0:SADAD>
            <ns0:SignonRq>
                <ns0:ClientDt>{ data($confirmAccountResponse1/ns3:body/ns3:clientDate) }</ns0:ClientDt>
                <ns0:SignonProfile>
                    <ns0:Sender>{ data($confirmAccountResponse1/ns3:header/ns1:senderID) }</ns0:Sender>
                    <ns0:Receiver>{ data($confirmAccountResponse1/ns3:header/ns1:receiverID) }</ns0:Receiver>
                    <ns0:MsgCode>{ data($confirmAccountResponse1/ns3:body/ns3:messageCode) }</ns0:MsgCode>
                </ns0:SignonProfile>
            </ns0:SignonRq>
            <ns0:BillerSvcRs>
                <ns0:Status>
                    <ns0:StatusCode>{ data($confirmAccountResponse1/ns3:body/ns3:statusCode) }</ns0:StatusCode>
                    <ns0:Severity>Info</ns0:Severity>
                </ns0:Status>
                <ns0:RqUID>{ data($confirmAccountResponse1/ns3:body/ns3:rqUID) }</ns0:RqUID>
                <ns0:AccountConfirmationRs>
                    <ns0:AsyncRqUID>{ data($confirmAccountResponse1/ns3:body/ns3:asyncRqUID) }</ns0:AsyncRqUID>
                    <ns0:UploadDt>{ data($confirmAccountResponse1/ns3:body/ns3:uploadDate) }</ns0:UploadDt>
                    <ns0:PrcDt>{ data($confirmAccountResponse1/ns3:body/ns3:processingDate) }</ns0:PrcDt>
                    <ns0:SuccessRecordCount>{ data($confirmAccountResponse1/ns3:body/ns3:successRecordCount) }</ns0:SuccessRecordCount>
                    <ns0:ErrorRecordCount>{ data($confirmAccountResponse1/ns3:body/ns3:errorRecordCount) }</ns0:ErrorRecordCount>
                </ns0:AccountConfirmationRs>
            </ns0:BillerSvcRs>
        </ns0:SADAD>
};

declare variable $confirmAccountResponse1 as element(ns2:confirmAccountResponse) external;

xf:confirmAccountResponse_AccountConfirmationRS($confirmAccountResponse1)]]></con:xquery>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Accounts_1.0"/>
    </con:dependency>
    <con:dependency location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd">
        <con:schema ref="bus.abcs/SADAD/wsdl/SADAD"/>
    </con:dependency>
</con:xqueryEntry>