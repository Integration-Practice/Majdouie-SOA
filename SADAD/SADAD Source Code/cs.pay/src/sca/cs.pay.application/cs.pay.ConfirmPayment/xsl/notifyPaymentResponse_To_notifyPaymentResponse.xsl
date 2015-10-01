<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../cs.pay.ebs.Payments_1.0Wrapper.wsdl"/>
      <rootElement name="notifyPaymentResponse" namespace="http://www.AlMajdouie.sa/ebs/cs.pay.Payments"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="oramds:/apps/core/ebs/cs.pay.ebs.Payments_1.0.wsdl"/>
      <rootElement name="notifyPaymentResponse" namespace="http://www.AlMajdouie.sa/ebs/cs.pay.Payments"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 130301.0647.0008) AT [SAT MAY 23 12:41:55 AST 2015]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="http://www.AlMajdouie.sa/ebs/cs.pay.Payments"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:ns0="http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns1="http://www.AlMajdouie.sa/ebs/cs.pay.Payments/types"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:waseu="http://www.AlMajdouie.sa/ebo/util.flt.Fault"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ns2="http://www.AlMajdouie.sa/ebo/util.cmn.Basic"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns soap12 ns0 soap ns1 mime waseu ns2 xsd aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <tns:notifyPaymentResponse>
      <tns:header>
        <xsl:if test="/tns:notifyPaymentResponse/tns:header/ns0:senderID">
          <ns0:senderID>
            <xsl:value-of select="/tns:notifyPaymentResponse/tns:header/ns0:senderID"/>
          </ns0:senderID>
        </xsl:if>
        <xsl:if test="/tns:notifyPaymentResponse/tns:header/ns0:receiverID">
          <ns0:receiverID>
            <xsl:value-of select="/tns:notifyPaymentResponse/tns:header/ns0:receiverID"/>
          </ns0:receiverID>
        </xsl:if>
        <xsl:if test="/tns:notifyPaymentResponse/tns:header/ns0:rquid">
          <ns0:rquid>
            <xsl:value-of select="/tns:notifyPaymentResponse/tns:header/ns0:rquid"/>
          </ns0:rquid>
        </xsl:if>
        <xsl:if test="/tns:notifyPaymentResponse/tns:header/ns0:contentType">
          <ns0:contentType>
            <xsl:value-of select="/tns:notifyPaymentResponse/tns:header/ns0:contentType"/>
          </ns0:contentType>
        </xsl:if>
      </tns:header>
      <tns:body>
        <tns:loacalSender>
          <xsl:value-of select="/tns:notifyPaymentResponse/tns:body/tns:loacalSender"/>
        </tns:loacalSender>
        <tns:clientDate>
          <xsl:value-of select="/tns:notifyPaymentResponse/tns:body/tns:clientDate"/>
        </tns:clientDate>
        <tns:messageCode>
          <xsl:value-of select="/tns:notifyPaymentResponse/tns:body/tns:messageCode"/>
        </tns:messageCode>
        <tns:statusCode>
          <xsl:value-of select="/tns:notifyPaymentResponse/tns:body/tns:statusCode"/>
        </tns:statusCode>
        <tns:paymentID>
          <xsl:value-of select="/tns:notifyPaymentResponse/tns:body/tns:paymentID"/>
        </tns:paymentID>
        <tns:processingDate>
          <xsl:value-of select="/tns:notifyPaymentResponse/tns:body/tns:processingDate"/>
        </tns:processingDate>
      </tns:body>
    </tns:notifyPaymentResponse>
  </xsl:template>
</xsl:stylesheet>
