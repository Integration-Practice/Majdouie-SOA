(:: pragma bea:global-element-parameter parameter="$header1" element="ns1:header" location="../ebo/util.cmn.EBMHeader_1.0.xsd" ::)
(:: pragma  parameter="$inbound" type="anyType" ::)
(:: pragma  parameter="$faultDetail" type="anyType" ::)
(:: pragma  parameter="$errorDVM" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:fault" location="../ebo/util.flt.Fault_1.0.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace ns0 = "http://www.AlMajdouie.sa/ebo/util.flt.Fault";
declare namespace xf = "http://tempuri.org/core/xquery/util.flt.createFault/";
declare namespace dvm = "http://xmlns.oracle.com/dvm";
declare namespace soap = "http://schemas.xmlsoap.org/soap/envelope/";

declare function xf:util($header1 as element(ns1:header),
    $ebmCID as xs:string,
    $inbound as element(*),
    $faultDetail as element(*),
    $errorCodeList as xs:string,
    $errorDVM as element(*),
    $operation as xs:string
    )
    as element(*) {
        let $op := if (exists($operation))
                   		       then $operation
                   		       else "Unknown",
            $uid := if (exists($ebmCID))
		               then data($ebmCID)
		               else ""
        return
        <soap:Fault>
						<faultcode>pre:svcFault</faultcode>
						<faultstring>Service Fault</faultstring>
						<detail>
						
            <ns0:fault>
                <ns0:source>{ fn:concat(string($inbound/*:transport/*:uri),'>>',string($inbound/*:service/*:operation)) }</ns0:source>
                <ns0:errorList>
            	{
            		let $errorCodes := tokenize($errorCodeList, "\,")
					for $errorCode in $errorCodes
					return
                		<ns0:error>
                    		<ns0:errorCode>
								{
									if (string-length($errorDVM/dvm:rows/dvm:row[dvm:cell[1] = $op and contains(dvm:cell[2], $errorCode)]/dvm:cell[3]) = 0 or
										data($errorDVM/dvm:rows/dvm:row[dvm:cell[1] = $op and contains(dvm:cell[2], $errorCode)]/dvm:cell[3]) = "")
									then data($errorDVM/dvm:rows/dvm:row[dvm:cell[1] = $op and contains(dvm:cell[2], "UNEXPECTED")]/dvm:cell[3])
									else data($errorDVM/dvm:rows/dvm:row[dvm:cell[1] = $op and contains(dvm:cell[2], $errorCode)]/dvm:cell[3])
								}
                     		</ns0:errorCode>
                        	<ns0:description>
                        		{
                        			if (string-length($errorDVM/dvm:rows/dvm:row[dvm:cell[1] = $op and contains(dvm:cell[2], $errorCode)]/dvm:cell[3]) = 0 or
										data($errorDVM/dvm:rows/dvm:row[dvm:cell[1] = $op and contains(dvm:cell[2], $errorCode)]/dvm:cell[3]) = "")
									then data($errorDVM/dvm:rows/dvm:row[dvm:cell[1] = $op and contains(dvm:cell[2], "UNEXPECTED")]/dvm:cell[4])
									else data($errorDVM/dvm:rows/dvm:row[dvm:cell[1] = $op and contains(dvm:cell[2], $errorCode)]/dvm:cell[4])
                        	}
                        </ns0:description>
                    </ns0:error>
                  }
                </ns0:errorList>
                <ns0:details>{ $faultDetail/@* , $faultDetail/node() }</ns0:details>
                <ns1:ebmCID>{ $ebmCID }</ns1:ebmCID>
                <ns0:faultInstanceId>{ fn-bea:uuid() }</ns0:faultInstanceId>
                <ns0:timestamp>{ fn:current-dateTime() }</ns0:timestamp>
            </ns0:fault>
            </detail>
		</soap:Fault>

};

declare variable $header1 as element(ns1:header) external;
declare variable $ebmCID as xs:string external;
declare variable $inbound as element(*) external;
declare variable $faultDetail as element(*) external;
declare variable $errorCodeList as xs:string external;
declare variable $errorDVM as element(*) external;
declare variable $operation as xs:string external;


xf:util($header1,
    $ebmCID,
    $inbound,
    $faultDetail,
    $errorCodeList,
    $errorDVM,
    $operation)
