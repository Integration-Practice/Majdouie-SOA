<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$uploadAccount1" element="ns2:uploadAccount" location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd" ::)
(:: pragma  parameter="$signonProfileDVM" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:SADAD" location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebs/cs.pay.Accounts";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace ns0 = "http://www.SADAD.sa";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Accounts_1.0/xquery/uploadAccount_AccountUploadRq/";
declare namespace dvm = "http://xmlns.oracle.com/dvm";

declare function xf:uploadAccount_AccountUploadRq($uploadAccount1 as element(ns2:uploadAccount),
    $signonProfileDVM as element(*),
    $operation as xs:string?,
    $type as xs:string)
    as element(ns0:SADAD) {
        let $op := if (exists($operation))
            then $operation
            else "Unknown"
        return
            <ns0:SADAD>
                <ns0:SignonRq>
                    <ns0:ClientDt>
                        {
                            if (fn:exists($uploadAccount1/ns2:body/ns2:clientDate)) then
                                (data($uploadAccount1/ns2:body/ns2:clientDate))
                            else 
                                fn:current-dateTime()
                        }
					</ns0:ClientDt>
                    <ns0:SignonProfile>
                        <ns0:Sender>
                            {
                                if (fn:exists($uploadAccount1/ns2:header/ns1:senderID)) then
                                    (data($uploadAccount1/ns2:header/ns1:senderID))
                                else 
                                    data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[3])
                            }
						</ns0:Sender>
                        <ns0:Receiver>
                            {
                                if (fn:exists($uploadAccount1/ns2:header/ns1:receiverID)) then
                                    (data($uploadAccount1/ns2:header/ns1:receiverID))
                                else 
                                    data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[4])
                            }
						</ns0:Receiver>
                        <ns0:MsgCode>
                            {
                                if (fn:exists($uploadAccount1/ns2:body/ns2:messageCode)) then
                                    (data($uploadAccount1/ns2:body/ns2:messageCode))
                                else 
                                    data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[5])
                            }
						</ns0:MsgCode>
                    </ns0:SignonProfile>
                </ns0:SignonRq>
                <ns0:BillerSvcRq>
                    <ns0:Status>
                        <ns0:StatusCode>{ data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[6]) }</ns0:StatusCode>
                        <ns0:Severity>{ data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[7]) }</ns0:Severity>
                    </ns0:Status>
                    <ns0:RqUID>{data($uploadAccount1/ns2:header/ns1:rquid)}</ns0:RqUID>
                    <ns0:AccountUploadRq>
                        <ns0:Timestamp>{ fn:current-dateTime() }</ns0:Timestamp>
                        {
                            for $accountInfo in $uploadAccount1/ns2:body/ns2:accountInfo
                            return
                                <ns0:AccountInfo>
                                    <ns0:BillerId>{ data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[3]) }</ns0:BillerId>
                                    <ns0:BillingAcct>{ data($accountInfo/ns2:billingAccount) }</ns0:BillingAcct>
                                    <ns0:ServiceType>
                                        {
                                            if (fn:exists($accountInfo/ns2:serviceType)) then
                                                (data($accountInfo/ns2:serviceType))
                                            else 
                                                data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[9])
                                        }
									</ns0:ServiceType>
                                    <ns0:AccountStatusCode>{ data($accountInfo/ns2:accountStatusCode) }</ns0:AccountStatusCode>
                                    <ns0:BeneficiaryId>
                                        <ns0:OfficialId>{ data($accountInfo/ns2:beneficiaryId[1]/ns2:officialId) }</ns0:OfficialId>
                                        <ns0:OfficialIdType>{ data($accountInfo/ns2:beneficiaryId[1]/ns2:officialIdType) }</ns0:OfficialIdType>
                                    </ns0:BeneficiaryId>
                                </ns0:AccountInfo>
                        }
                    </ns0:AccountUploadRq>
                </ns0:BillerSvcRq>
            </ns0:SADAD>
};

declare variable $uploadAccount1 as element(ns2:uploadAccount) external;
declare variable $signonProfileDVM as element(*) external;
declare variable $operation as xs:string? external;
declare variable $type as xs:string external;

xf:uploadAccount_AccountUploadRq($uploadAccount1,
    $signonProfileDVM,
    $operation,
    $type)]]></con:xquery>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Accounts_1.0"/>
    </con:dependency>
    <con:dependency location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd">
        <con:schema ref="bus.abcs/SADAD/wsdl/SADAD"/>
    </con:dependency>
</con:xqueryEntry>