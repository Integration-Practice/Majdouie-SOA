(:: pragma bea:global-element-parameter parameter="$confirmPaymentResponse1" element="ns1:confirmPaymentResponse" location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd" ::)
(:: pragma bea:global-element-return element="ns1:confirmPaymentResponse" location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebs/cs.pay.Payments";
declare namespace ns0 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Payments_1.0/xquery/confirmPaymentResponse_confirmPaymentResponse/";

declare function xf:confirmPaymentResponse_confirmPaymentResponse($confirmPaymentResponse1 as element(ns1:confirmPaymentResponse))
    as element(ns1:confirmPaymentResponse) {
        $confirmPaymentResponse1
};

declare variable $confirmPaymentResponse1 as element(ns1:confirmPaymentResponse) external;

xf:confirmPaymentResponse_confirmPaymentResponse($confirmPaymentResponse1)
