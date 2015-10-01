<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="../xsd/APPS_WF_EVENT_T_cs.pay.abcs.Accounts.xsd"/>
      <rootElement name="WF_EVENT_T" namespace="http://xmlns.oracle.com/xdb/APPS/cs.pay.abcs.Accounts"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../selectAccounts.wsdl"/>
      <rootElement name="selectAccountsInput" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/selectAccounts"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 130301.0647.0008) AT [MON MAY 18 19:42:26 AST 2015]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:APPS="http://xmlns.oracle.com/xdb/APPS/cs.pay.abcs.Accounts"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/selectAccounts"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/cs.pay.application/cs.pay.Accounts/selectAccounts"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl APPS xsd plt wsdl db tns aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <db:selectAccountsInput>
      <xsl:for-each select="/APPS:WF_EVENT_T/PARAMETER_LIST/PARAMETER_LIST_ITEM">
        <xsl:choose>
          <xsl:when test='NAME = "REQ_ID"'>
            <db:reqid>
              <xsl:if test="VALUE/@xsi:nil">
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="VALUE/@xsi:nil"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="VALUE"/>
            </db:reqid>
          </xsl:when>
        </xsl:choose>
      </xsl:for-each>
      <xsl:for-each select="/APPS:WF_EVENT_T/PARAMETER_LIST/PARAMETER_LIST_ITEM">
        <xsl:choose>
          <xsl:when test='NAME = "STATUS_CODE"'>
            <db:statusCode>
              <xsl:if test="VALUE/@xsi:nil">
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="VALUE/@xsi:nil"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="VALUE"/>
            </db:statusCode>
          </xsl:when>
        </xsl:choose>
      </xsl:for-each>
    </db:selectAccountsInput>
  </xsl:template>
</xsl:stylesheet>