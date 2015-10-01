(:: pragma bea:global-element-parameter parameter="$confirmPayment1" element="ns0:confirmPayment" location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd" ::)
(:: pragma bea:global-element-return element="ns0:confirmPayment" location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd" ::)

declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns0 = "http://www.AlMajdouie.sa/ebs/cs.pay.Payments";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Payments_1.0/xquery/confirmPayment_confirmPayment/";

declare function xf:confirmPayment_confirmPayment($confirmPayment1 as element(ns0:confirmPayment))
    as element(ns0:confirmPayment) {
        $confirmPayment1
};

declare variable $confirmPayment1 as element(ns0:confirmPayment) external;

xf:confirmPayment_confirmPayment($confirmPayment1)
