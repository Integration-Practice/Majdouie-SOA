<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$confirmBillResponse1" element="ns1:confirmBillResponse" location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd" ::)
(:: pragma bea:global-element-return element="ns1:confirmBillResponse" location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebs/cs.pay.Bills";
declare namespace ns0 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Bills_1.0/xquery/confirmBillResponse_confirmBillResponse/";

declare function xf:confirmBillResponse_confirmBillResponse($confirmBillResponse1 as element(ns1:confirmBillResponse))
    as element(ns1:confirmBillResponse) {
        $confirmBillResponse1
};

declare variable $confirmBillResponse1 as element(ns1:confirmBillResponse) external;

xf:confirmBillResponse_confirmBillResponse($confirmBillResponse1)</con:xquery>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Bills_1.0"/>
    </con:dependency>
</con:xqueryEntry>