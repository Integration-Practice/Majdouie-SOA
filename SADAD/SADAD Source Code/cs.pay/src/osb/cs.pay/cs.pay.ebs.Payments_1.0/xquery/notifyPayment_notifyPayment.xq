(:: pragma bea:global-element-parameter parameter="$notifyPayment1" element="ns0:notifyPayment" location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd" ::)
(:: pragma bea:global-element-return element="ns0:notifyPayment" location="../../../core/ebs/cs.pay.ebs.Payments_1.0.xsd" ::)

declare namespace ns0 = "http://www.AlMajdouie.sa/ebs/cs.pay.Payments";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Payments_1.0/xquery/notifyPayment_notifyPayment/";

declare function xf:notifyPayment_notifyPayment($notifyPayment1 as element(ns0:notifyPayment))
    as element(ns0:notifyPayment) {
        <ns0:notifyPayment>
            <ns0:header>{ $notifyPayment1/ns0:header/@* , $notifyPayment1/ns0:header/node() }</ns0:header>
            <ns0:body>{ $notifyPayment1/ns0:body/@* , $notifyPayment1/ns0:body/node() }</ns0:body>
        </ns0:notifyPayment>
};

declare variable $notifyPayment1 as element(ns0:notifyPayment) external;

xf:notifyPayment_notifyPayment($notifyPayment1)
