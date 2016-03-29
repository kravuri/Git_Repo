<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="urn:sap-com:document:sap:rfc:functions" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/GetLineDetails" exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/EchoStarSOA/SalesOrder/GetLineDetails" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/GetLineDetails.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetLineDetailsOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/GetLineDetails"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SalesOrder.wsdl"/>
            <oracle-xsl-mapper:rootElement name="_-SAPSLL_-API_6800_SYNCH_MASS" namespace="urn:sap-com:document:sap:rfc:functions"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/">
      <tns:_-SAPSLL_-API_6800_SYNCH_MASS>
         <HDR_DATA>
            <item>
               <GUID_HEADER>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ORDER_NUMBER"/>
               </GUID_HEADER>
               <APPLICATION_LEVEL>SDOA</APPLICATION_LEVEL>
               <DOCUMENT_TYPE>ZOR</DOCUMENT_TYPE>
               <COMPANY_CODE>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:company_code"/>
               </COMPANY_CODE>
               <CHANGED_BY>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LAST_UPDATED_BY"/>
               </CHANGED_BY>
               <LANGU_ISO>EN</LANGU_ISO>
               <COMPANY_CODE_CURCY>USD</COMPANY_CODE_CURCY>
               <EXCHANGE_RATE>0</EXCHANGE_RATE>
               <CHANGED_AT>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LAST_UPDATE_DATE"/>
               </CHANGED_AT>
               <GEOGR>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:FREIGHT_TERMS_CODE"/>
               </GEOGR>
               <INCOT>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:FOB_POINT_CODE"/>
               </INCOT>
               <ORGANIZATIONAL_UNIT>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:company_code"/>
               </ORGANIZATIONAL_UNIT>
            </item>
         </HDR_DATA>
         <HDR_DUC_VALUE_DATA>
            <item>
               <QUAL_VAL>GDSVAL</QUAL_VAL>
               <VALUE>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LINE_VALUE"/>
               </VALUE>
               <VALUE_FLOAT>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LINE_VALUE"/>
               </VALUE_FLOAT>
               <VAL_CURR>USD</VAL_CURR>
               <VAL_CURR_ISO>USD</VAL_CURR_ISO>
            </item>
         </HDR_DUC_VALUE_DATA>
         <HDR_PARTNER_DATA>
            <item>
               <PARTNER_FUNCTION>AG</PARTNER_FUNCTION>
               <PARTNER_TYPE>2</PARTNER_TYPE>
               <PARTNER_ID>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:partner_id"/>
               </PARTNER_ID>
               <COUNTRY>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY>
               <COUNTRY_ISO>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY_ISO>
            </item>
            <item>
               <PARTNER_FUNCTION>RE</PARTNER_FUNCTION>
               <PARTNER_TYPE>2</PARTNER_TYPE>
               <PARTNER_ID>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:partner_id"/>
               </PARTNER_ID>
               <COUNTRY>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY>
               <COUNTRY_ISO>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY_ISO>
            </item>
            <item>
               <PARTNER_FUNCTION>RG</PARTNER_FUNCTION>
               <PARTNER_TYPE>2</PARTNER_TYPE>
               <PARTNER_ID>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:partner_id"/>
               </PARTNER_ID>
               <COUNTRY>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY>
               <COUNTRY_ISO>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY_ISO>
            </item>
            <item>
               <PARTNER_FUNCTION>WE</PARTNER_FUNCTION>
               <PARTNER_TYPE>2</PARTNER_TYPE>
               <PARTNER_ID>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:partner_id"/>
               </PARTNER_ID>
               <COUNTRY>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY>
               <COUNTRY_ISO>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY_ISO>
            </item>
            <item>
               <PARTNER_FUNCTION>Z4</PARTNER_FUNCTION>
               <PARTNER_TYPE>2</PARTNER_TYPE>
               <PARTNER_ID>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:partner_id"/>
               </PARTNER_ID>
               <COUNTRY>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY>
               <COUNTRY_ISO>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY_ISO>
            </item>
            <item>
               <PARTNER_FUNCTION>Z5</PARTNER_FUNCTION>
               <PARTNER_TYPE>2</PARTNER_TYPE>
               <PARTNER_ID>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:partner_id"/>
               </PARTNER_ID>
               <COUNTRY>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY>
               <COUNTRY_ISO>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY_ISO>
            </item>
            <item>
               <PARTNER_FUNCTION>Z7</PARTNER_FUNCTION>
               <PARTNER_TYPE>2</PARTNER_TYPE>
               <PARTNER_ID>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:partner_id"/>
               </PARTNER_ID>
               <COUNTRY>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY>
               <COUNTRY_ISO>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY"/>
               </COUNTRY_ISO>
            </item>
         </HDR_PARTNER_DATA>
         <HDR_REFERENCE_DATA>
            <item>
               <QUAL_REFNO>EXTID</QUAL_REFNO>
               <REFNO>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ORDER_NUMBER"/>
               </REFNO>
               <REFDAT>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ordererd_date"/>
               </REFDAT>
               <ORG_LOGSYSTEM>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ORG_LOGICAL_SYSTEM"/>
               </ORG_LOGSYSTEM>
               <OBJTP>BUS2032</OBJTP>
               <REFAPP>ADOA</REFAPP>
               <ERNAM>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:CREATION_DATE"/>
               </ERNAM>
               <AENAM>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LAST_UPDATE_DATE"/>
               </AENAM>
               <BUS_TRANSAC_DOC_TYPE_CODE>114</BUS_TRANSAC_DOC_TYPE_CODE>
            </item>
         </HDR_REFERENCE_DATA>
         <HDR_VALUE_DATA>
            <item>
               <QUAL_VAL>GDSVAL</QUAL_VAL>
               <VALUE>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LINE_VALUE"/>
               </VALUE>
               <VALUE_FLOAT>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LINE_VALUE"/>
               </VALUE_FLOAT>
               <VAL_CURR>USD</VAL_CURR>
               <VAL_CURR_ISO>USD</VAL_CURR_ISO>
            </item>
         </HDR_VALUE_DATA>
         <ITM_DATA>
            <item>
               <ITEM_NUMBER>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ORDERED_ITEM"/>
               </ITEM_NUMBER>
               <LEGAL_ACTIVE>X</LEGAL_ACTIVE>
               <RECHECK_INDICATOR>X</RECHECK_INDICATOR>
               <ITEM_CATEGORY>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ITEM_CATEGORY"/>
               </ITEM_CATEGORY>
               <INVOICING_COUNTRY>US</INVOICING_COUNTRY>
               <INVOICING_COUNTRY_ISO>US</INVOICING_COUNTRY_ISO>
               <ARRIVAL_COUNTRY>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ARRIVAL_COUNTRY"/>
               </ARRIVAL_COUNTRY>
               <ARRIVAL_COUNTRY_ISO>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ARRIVAL_COUNTRY"/>
               </ARRIVAL_COUNTRY_ISO>
               <PRODUCT_ID>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ORDERED_ITEM"/>
               </PRODUCT_ID>
               <NUMERATOR>1</NUMERATOR>
               <DENOMINATOR>1</DENOMINATOR>
               <VAL_CURR>USD</VAL_CURR>
               <VAL_CURR_ISO>USD</VAL_CURR_ISO>
               <COUNTRY_OF_ORIGIN>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY_OF_ORIGIN"/>
               </COUNTRY_OF_ORIGIN>
               <COUNTRY_OF_ORIGIN_ISO>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:COUNTRY_OF_ORIGIN"/>
               </COUNTRY_OF_ORIGIN_ISO>
               <CHANGED_BY>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LAST_UPDATED_BY"/>
               </CHANGED_BY>
               <INCOT>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:FREIGHT_TERMS_CODE"/>
               </INCOT>
               <INCOLO>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:FOB_POINT_CODE"/>
               </INCOLO>
               <PAYMENT_TERMS>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:PAYMENT_TERMS"/>
               </PAYMENT_TERMS>
            </item>
         </ITM_DATA>
         <ITM_DATE_DATA>
            <item>
               <ITEM_NUMBER>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ORDERED_ITEM"/>
               </ITEM_NUMBER>
               <TYPE_OF_DATE>CHECK</TYPE_OF_DATE>
               <REL_POINT_IN_TIME_TS>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ordererd_date"/>
               </REL_POINT_IN_TIME_TS>
            </item>
         </ITM_DATE_DATA>
         <ITM_DUC_VALUE_DATA>
            <item>
               <ITEM_NUMBER>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ORDERED_ITEM"/>
               </ITEM_NUMBER>
               <QUAL_VAL>EXVAL</QUAL_VAL>
               <VALUE>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LINE_VALUE"/>
               </VALUE>
               <VALUE_FLOAT>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LINE_VALUE"/>
               </VALUE_FLOAT>
               <VAL_CURR>USD</VAL_CURR>
               <VAL_CURR_ISO>USD</VAL_CURR_ISO>
            </item>
            <item>
               <ITEM_NUMBER>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:ORDERED_ITEM"/>
               </ITEM_NUMBER>
               <QUAL_VAL>PREVAL</QUAL_VAL>
               <VALUE>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LINE_VALUE"/>
               </VALUE>
               <VALUE_FLOAT>
                  <xsl:value-of select="/ns0:GetLineDetailsOutputCollection/ns0:GetLineDetailsOutput/ns0:LINE_VALUE"/>
               </VALUE_FLOAT>
               <VAL_CURR>USD</VAL_CURR>
               <VAL_CURR_ISO>USD</VAL_CURR_ISO>
            </item>
         </ITM_DUC_VALUE_DATA>
         <RETURN>
            <item>
               <TYPE/>
               <ID/>
               <NUMBER/>
               <MESSAGE/>
               <LOG_NO/>
               <LOG_MSG_NO/>
               <MESSAGE_V1/>
               <MESSAGE_V2/>
               <MESSAGE_V3/>
               <MESSAGE_V4/>
               <PARAMETER/>
               <ROW/>
               <FIELD/>
               <SYSTEM/>
            </item>
         </RETURN>
      </tns:_-SAPSLL_-API_6800_SYNCH_MASS>
   </xsl:template>
</xsl:stylesheet>
