(:: pragma bea:global-element-parameter parameter="$confirmAccount1" element="ns0:confirmAccount" location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd" ::)
(:: pragma bea:global-element-return element="ns0:confirmAccount" location="../../../core/ebs/cs.pay.ebs.Accounts_1.0.xsd" ::)

declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns0 = "http://www.AlMajdouie.sa/ebs/cs.pay.Accounts";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Accounts_1.0/xquery/confirmAccount_confirmAccount/";

declare function xf:confirmAccount_confirmAccount($confirmAccount1 as element(ns0:confirmAccount))
    as element(ns0:confirmAccount) {
        $confirmAccount1
};

declare variable $confirmAccount1 as element(ns0:confirmAccount) external;

xf:confirmAccount_confirmAccount($confirmAccount1)
