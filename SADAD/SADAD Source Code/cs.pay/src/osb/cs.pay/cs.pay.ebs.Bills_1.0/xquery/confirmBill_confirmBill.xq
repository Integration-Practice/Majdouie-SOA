(:: pragma bea:global-element-parameter parameter="$confirmBill1" element="ns0:confirmBill" location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd" ::)
(:: pragma bea:global-element-return element="ns0:confirmBill" location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd" ::)

declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns0 = "http://www.AlMajdouie.sa/ebs/cs.pay.Bills";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Bills_1.0/xquery/confirmBill_confirmBill/";

declare function xf:confirmBill_confirmBill($confirmBill1 as element(ns0:confirmBill))
    as element(ns0:confirmBill) {
        <ns0:confirmBill>
            <ns0:header>{ $confirmBill1/ns0:header/@* , $confirmBill1/ns0:header/node() }</ns0:header>
            <ns0:body>
                {
                    for $infoError in $confirmBill1/ns0:body/ns1:infoError
                    return
                        <ns1:infoError>{ $infoError/@* , $infoError/node() }</ns1:infoError>
                }
            </ns0:body>
        </ns0:confirmBill>
};

declare variable $confirmBill1 as element(ns0:confirmBill) external;

xf:confirmBill_confirmBill($confirmBill1)
