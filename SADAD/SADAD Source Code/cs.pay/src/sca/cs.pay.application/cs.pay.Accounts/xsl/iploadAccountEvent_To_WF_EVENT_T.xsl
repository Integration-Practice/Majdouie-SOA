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
      <schema location="../cs_pay_abcs_Accounts.wsdl"/>
      <rootElement name="WF_EVENT_T" namespace="http://xmlns.oracle.com/xdb/APPS/cs.pay.abcs.Accounts"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 130301.0647.0008) AT [MON MAY 18 09:55:17 AST 2015]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:APPS="http://xmlns.oracle.com/xdb/APPS/cs.pay.abcs.Accounts"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/apps/cs.pay.application/cs.pay.Accounts/cs_pay_abcs_Accounts"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl APPS xsd plt tns wsdl xp20 bpws aia mhdr bpel oraext dvm hwf med ids bpm xdk xref bpmn ora socket ldap">
  <xsl:template match="/">
    <APPS:WF_EVENT_T>
      <xsl:if test="/APPS:WF_EVENT_T/PRIORITY">
        <PRIORITY>
          <xsl:if test="/APPS:WF_EVENT_T/PRIORITY/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/APPS:WF_EVENT_T/PRIORITY/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/APPS:WF_EVENT_T/PRIORITY"/>
        </PRIORITY>
      </xsl:if>
      <xsl:if test="/APPS:WF_EVENT_T/SEND_DATE">
        <SEND_DATE>
          <xsl:if test="/APPS:WF_EVENT_T/SEND_DATE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/APPS:WF_EVENT_T/SEND_DATE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/APPS:WF_EVENT_T/SEND_DATE"/>
        </SEND_DATE>
      </xsl:if>
      <xsl:if test="/APPS:WF_EVENT_T/RECEIVE_DATE">
        <RECEIVE_DATE>
          <xsl:if test="/APPS:WF_EVENT_T/RECEIVE_DATE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/APPS:WF_EVENT_T/RECEIVE_DATE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/APPS:WF_EVENT_T/RECEIVE_DATE"/>
        </RECEIVE_DATE>
      </xsl:if>
      <xsl:if test="/APPS:WF_EVENT_T/CORRELATION_ID">
        <CORRELATION_ID>
          <xsl:if test="/APPS:WF_EVENT_T/CORRELATION_ID/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/APPS:WF_EVENT_T/CORRELATION_ID/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/APPS:WF_EVENT_T/CORRELATION_ID"/>
        </CORRELATION_ID>
      </xsl:if>
      <PARAMETER_LIST>
        <xsl:if test="/APPS:WF_EVENT_T/PARAMETER_LIST/@xsi:nil">
          <xsl:attribute name="xsi:nil">
            <xsl:value-of select="/APPS:WF_EVENT_T/PARAMETER_LIST/@xsi:nil"/>
          </xsl:attribute>
        </xsl:if>
        <xsl:for-each select="/APPS:WF_EVENT_T/PARAMETER_LIST/PARAMETER_LIST_ITEM">
          <PARAMETER_LIST_ITEM>
            <xsl:if test="@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="NAME">
              <NAME>
                <xsl:if test="NAME/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="NAME/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="NAME"/>
              </NAME>
            </xsl:if>
            <xsl:if test="VALUE">
              <VALUE>
                <xsl:if test="VALUE/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="VALUE/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="VALUE"/>
              </VALUE>
            </xsl:if>
          </PARAMETER_LIST_ITEM>
        </xsl:for-each>
      </PARAMETER_LIST>
      <xsl:if test="/APPS:WF_EVENT_T/EVENT_NAME">
        <EVENT_NAME>
          <xsl:if test="/APPS:WF_EVENT_T/EVENT_NAME/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/APPS:WF_EVENT_T/EVENT_NAME/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/APPS:WF_EVENT_T/EVENT_NAME"/>
        </EVENT_NAME>
      </xsl:if>
      <xsl:if test="/APPS:WF_EVENT_T/EVENT_KEY">
        <EVENT_KEY>
          <xsl:if test="/APPS:WF_EVENT_T/EVENT_KEY/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/APPS:WF_EVENT_T/EVENT_KEY/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/APPS:WF_EVENT_T/EVENT_KEY"/>
        </EVENT_KEY>
      </xsl:if>
      <EVENT_DATA>
        <xsl:if test="/APPS:WF_EVENT_T/EVENT_DATA/@xsi:nil">
          <xsl:attribute name="xsi:nil">
            <xsl:value-of select="/APPS:WF_EVENT_T/EVENT_DATA/@xsi:nil"/>
          </xsl:attribute>
        </xsl:if>
      </EVENT_DATA>
      <FROM_AGENT>
        <xsl:if test="/APPS:WF_EVENT_T/FROM_AGENT/@xsi:nil">
          <xsl:attribute name="xsi:nil">
            <xsl:value-of select="/APPS:WF_EVENT_T/FROM_AGENT/@xsi:nil"/>
          </xsl:attribute>
        </xsl:if>
        <xsl:if test="/APPS:WF_EVENT_T/FROM_AGENT/NAME">
          <NAME>
            <xsl:if test="/APPS:WF_EVENT_T/FROM_AGENT/NAME/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/APPS:WF_EVENT_T/FROM_AGENT/NAME/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/APPS:WF_EVENT_T/FROM_AGENT/NAME"/>
          </NAME>
        </xsl:if>
        <xsl:if test="/APPS:WF_EVENT_T/FROM_AGENT/SYSTEM">
          <SYSTEM>
            <xsl:if test="/APPS:WF_EVENT_T/FROM_AGENT/SYSTEM/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/APPS:WF_EVENT_T/FROM_AGENT/SYSTEM/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/APPS:WF_EVENT_T/FROM_AGENT/SYSTEM"/>
          </SYSTEM>
        </xsl:if>
      </FROM_AGENT>
      <TO_AGENT>
        <xsl:if test="/APPS:WF_EVENT_T/TO_AGENT/@xsi:nil">
          <xsl:attribute name="xsi:nil">
            <xsl:value-of select="/APPS:WF_EVENT_T/TO_AGENT/@xsi:nil"/>
          </xsl:attribute>
        </xsl:if>
        <xsl:if test="/APPS:WF_EVENT_T/TO_AGENT/NAME">
          <NAME>
            <xsl:if test="/APPS:WF_EVENT_T/TO_AGENT/NAME/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/APPS:WF_EVENT_T/TO_AGENT/NAME/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/APPS:WF_EVENT_T/TO_AGENT/NAME"/>
          </NAME>
        </xsl:if>
        <xsl:if test="/APPS:WF_EVENT_T/TO_AGENT/SYSTEM">
          <SYSTEM>
            <xsl:if test="/APPS:WF_EVENT_T/TO_AGENT/SYSTEM/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/APPS:WF_EVENT_T/TO_AGENT/SYSTEM/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/APPS:WF_EVENT_T/TO_AGENT/SYSTEM"/>
          </SYSTEM>
        </xsl:if>
      </TO_AGENT>
      <xsl:if test="/APPS:WF_EVENT_T/ERROR_SUBSCRIPTION">
        <ERROR_SUBSCRIPTION>
          <xsl:if test="/APPS:WF_EVENT_T/ERROR_SUBSCRIPTION/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/APPS:WF_EVENT_T/ERROR_SUBSCRIPTION/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/APPS:WF_EVENT_T/ERROR_SUBSCRIPTION"/>
        </ERROR_SUBSCRIPTION>
      </xsl:if>
      <xsl:if test="/APPS:WF_EVENT_T/ERROR_MESSAGE">
        <ERROR_MESSAGE>
          <xsl:if test="/APPS:WF_EVENT_T/ERROR_MESSAGE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/APPS:WF_EVENT_T/ERROR_MESSAGE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/APPS:WF_EVENT_T/ERROR_MESSAGE"/>
        </ERROR_MESSAGE>
      </xsl:if>
      <xsl:if test="/APPS:WF_EVENT_T/ERROR_STACK">
        <ERROR_STACK>
          <xsl:if test="/APPS:WF_EVENT_T/ERROR_STACK/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/APPS:WF_EVENT_T/ERROR_STACK/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/APPS:WF_EVENT_T/ERROR_STACK"/>
        </ERROR_STACK>
      </xsl:if>
    </APPS:WF_EVENT_T>
  </xsl:template>
</xsl:stylesheet>
