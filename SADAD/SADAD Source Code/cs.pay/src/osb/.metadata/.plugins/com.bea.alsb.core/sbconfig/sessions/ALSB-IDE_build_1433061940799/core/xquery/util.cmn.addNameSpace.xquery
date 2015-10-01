<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>xquery version "1.0" encoding "Cp1252";
(:: pragma parameter="$noNamespaceXML" type="xs:anyType" ::)
(:: pragma parameter="$namespaceURI" type="xs:string" ::)
(:: pragma type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/core/xquery/util.cmn.addNameSpace/";


declare function xf:change-element-ns
  ( $elements as element()* ,
    $newns as xs:string ,
    $prefix as xs:string )  as element()? {

   for $element in $elements
   return
   element {fn:expanded-QName ($newns,
                      concat($prefix,
                                if ($prefix = '')
                                then ''
                                else ':',
                                local-name($element)))}
           {$element/@*, $element/node()}
 } ;
 
declare variable $elements as element()* external;
declare variable $newns as xs:string external ;
declare variable $prefix as xs:string external ;

xf:change-element-ns($elements, $newns, $prefix)</con:xquery>
</con:xqueryEntry>