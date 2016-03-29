<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/GetOrderHeader" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/GetAllLineDetails" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="urn:sap-com:document:sap:rfc:functions" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns1 tns xp20 oraxsl mhdr oraext dvm xref socket" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/db/EchoStarSOA/SalesOrder/GetAllLineDetails" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/EchoStarSOA/SalesOrder/GetOrderHeader" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/GetDimData" xmlns:ns5="http://xmlns.oracle.com/pcbpel/adapter/db/GetPartnerTypes">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/GetOrderHeader.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetOrderHeaderOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/GetOrderHeader"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/GetAllLineDetails.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetAllLineDetailsOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/GetAllLineDetails"/>
            <oracle-xsl-mapper:param name="Line_GetAllLineDetails_OutputVariable.GetAllLineDetailsOutputCollection"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/GetDimData.xsd"/>
            <oracle-xsl-mapper:rootElement name="GetDimDataOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/GetDimData"/>
            <oracle-xsl-mapper:param name="Invoke1_GetDimData_OutputVariable.GetDimDataOutputCollection"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/GetPartnerTypes.xsd"/>
            <oracle-xsl-mapper:rootElement name="GetPartnerTypesOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/GetPartnerTypes"/>
            <oracle-xsl-mapper:param name="InvokeGetPartnerTypes_OutputVariable.GetPartnerTypesOutputCollection"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SalesOrder.wsdl"/>
            <oracle-xsl-mapper:rootElement name="_-SAPSLL_-API_6800_SYNCH_MASS" namespace="urn:sap-com:document:sap:rfc:functions"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:param name="Line_GetAllLineDetails_OutputVariable.GetAllLineDetailsOutputCollection"/>
   <xsl:param name="Invoke1_GetDimData_OutputVariable.GetDimDataOutputCollection"/>
   <xsl:param name="InvokeGetPartnerTypes_OutputVariable.GetPartnerTypesOutputCollection"/>
   <xsl:template match="/">
      <tns:_-SAPSLL_-API_6800_SYNCH_MASS>
         <HDR_DATA>
            <item>
               <REFNO_HEADER>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_NUMBER"/>
               </REFNO_HEADER>
               <GUID_HEADER/>
               <APPLICATION_LEVEL>SD0A</APPLICATION_LEVEL>
               <DOCUMENT_TYPE>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:GTS_ORDER_TYPE"/>
               </DOCUMENT_TYPE>
               <COMPANY_CODE>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:company_code"/>
               </COMPANY_CODE>
               <CHANGED_BY>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:LAST_UPDATED_BY"/>
               </CHANGED_BY>
               <LANGU_ISO>EN</LANGU_ISO>
               <COMPANY_CODE_CURCY>USD</COMPANY_CODE_CURCY>
               <EXCHANGE_RATE>0</EXCHANGE_RATE>
               <CHANGED_AT>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:LAST_UPDATE_DATE"/>
               </CHANGED_AT>
               <INCOT>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:FREIGHT_TERMS_CODE"/>
               </INCOT>
               <INCOLO>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:FOB_POINT_CODE"/>
               </INCOLO>
               <ORGANIZATIONAL_UNIT>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:company_code"/>
               </ORGANIZATIONAL_UNIT>
            </item>
         </HDR_DATA>
         <HDR_DUC_VALUE_DATA>
            <item>
               <REFNO_HEADER>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_NUMBER"/>
               </REFNO_HEADER>
               <QUAL_VAL>GDSVAL</QUAL_VAL>
               <VALUE>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_TOTAL"/>
               </VALUE>
               <VALUE_FLOAT>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_TOTAL"/>
               </VALUE_FLOAT>
               <VAL_CURR>USD</VAL_CURR>
               <VAL_CURR_ISO>USD</VAL_CURR_ISO>
            </item>
         </HDR_DUC_VALUE_DATA>
         <HDR_PARTNER_DATA>
            <xsl:for-each select="$InvokeGetPartnerTypes_OutputVariable.GetPartnerTypesOutputCollection/ns5:GetPartnerTypesOutputCollection/ns5:GetPartnerTypesOutput">
               <item>
                  <REFNO_HEADER>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_NUMBER"/>
                  </REFNO_HEADER>
                  <PARTNER_FUNCTION>
                     <xsl:value-of select="ns5:partner_function"/>
                  </PARTNER_FUNCTION>
                  <PARTNER_TYPE>02</PARTNER_TYPE>
                  <PARTNER_ID>
                     <xsl:value-of select="ns5:partner_id"/>
                  </PARTNER_ID>
                  <COUNTRY>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:COUNTRY"/>
                  </COUNTRY>
                  <COUNTRY_ISO>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:COUNTRY"/>
                  </COUNTRY_ISO>
               </item>
            </xsl:for-each>
         </HDR_PARTNER_DATA>
         <HDR_REFERENCE_DATA>
            <item>
               <REFNO_HEADER>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_NUMBER"/>
               </REFNO_HEADER>
               <QUAL_REFNO>EXTID</QUAL_REFNO>
               <REFNO>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_NUMBER"/>
               </REFNO>
               <REFDAT>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ordererd_date"/>
               </REFDAT>
               <ORG_LOGSYSTEM>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORG_LOGICAL_SYSTEM"/>
               </ORG_LOGSYSTEM>
               <OBJTP>BUS2032</OBJTP>
               <REFAPP>SD0A</REFAPP>
               <ERNAM>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:CREATED_BY"/>
               </ERNAM>
               <AENAM>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:LAST_UPDATED_BY"/>
               </AENAM>
               <BUS_TRANSAC_DOC_TYPE_CODE>114</BUS_TRANSAC_DOC_TYPE_CODE>
            </item>
         </HDR_REFERENCE_DATA>
         <HDR_VALUE_DATA>
            <item>
               <REFNO_HEADER>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_NUMBER"/>
               </REFNO_HEADER>
               <QUAL_VAL>GDSVAL</QUAL_VAL>
               <VALUE>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_TOTAL"/>
               </VALUE>
               <VALUE_FLOAT>
                  <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_TOTAL"/>
               </VALUE_FLOAT>
               <VAL_CURR>USD</VAL_CURR>
               <VAL_CURR_ISO>USD</VAL_CURR_ISO>
            </item>
         </HDR_VALUE_DATA>
         <ITM_DATA>
            <xsl:for-each select="$Line_GetAllLineDetails_OutputVariable.GetAllLineDetailsOutputCollection/ns1:GetAllLineDetailsOutputCollection/ns1:GetAllLineDetailsOutput">
               <item>
                  <REFNO_HEADER>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_NUMBER"/>
                  </REFNO_HEADER>
                  <ITEM_NUMBER>
                     <xsl:value-of select="ns1:ORDERED_ITEM"/>
                  </ITEM_NUMBER>
                  <LEGAL_ACTIVE>X</LEGAL_ACTIVE>
                  <RECHECK_INDICATOR>X</RECHECK_INDICATOR>
                  <ITEM_CATEGORY>
                     <xsl:value-of select="ns1:item_category"/>
                  </ITEM_CATEGORY>
                  <INVOICING_COUNTRY>US</INVOICING_COUNTRY>
                  <INVOICING_COUNTRY_ISO>US</INVOICING_COUNTRY_ISO>
                  <ARRIVAL_COUNTRY>
                     <xsl:value-of select="ns1:ARRIVAL_COUNTRY"/>
                  </ARRIVAL_COUNTRY>
                  <ARRIVAL_COUNTRY_ISO>
                     <xsl:value-of select="ns1:ARRIVAL_COUNTRY"/>
                  </ARRIVAL_COUNTRY_ISO>
                  <PRODUCT_ID>
                     <xsl:value-of select="ns1:ORDERED_ITEM"/>
                  </PRODUCT_ID>
                  <DIM_UOM>
                     <xsl:value-of select="ns1:PRIMARY_UOM_CODE"/>
                  </DIM_UOM>
                  <DIM_UOM_ISO>
                     <xsl:value-of select="ns1:PRIMARY_UOM_CODE"/>
                  </DIM_UOM_ISO>
                  <NUMERATOR>1</NUMERATOR>
                  <DENOMINATOR>1</DENOMINATOR>
                  <VAL_CURR>USD</VAL_CURR>
                  <VAL_CURR_ISO>USD</VAL_CURR_ISO>
                  <COUNTRY_OF_ORIGIN>
                     <xsl:value-of select="ns1:country_of_origin"/>
                  </COUNTRY_OF_ORIGIN>
                  <COUNTRY_OF_ORIGIN_ISO>
                     <xsl:value-of select="ns1:country_of_origin"/>
                  </COUNTRY_OF_ORIGIN_ISO>
                  <PLANT>
                     <xsl:value-of select="ns1:PLANT"/>
                  </PLANT>
                  <CHANGED_BY>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:LAST_UPDATED_BY"/>
                  </CHANGED_BY>
                  <INCOT>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:FREIGHT_TERMS_CODE"/>
                  </INCOT>
                  <INCOLO>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:FOB_POINT_CODE"/>
                  </INCOLO>
                  <PAYMENT_TERMS>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:PAYMENT_TERMS"/>
                  </PAYMENT_TERMS>
               </item>
            </xsl:for-each>
         </ITM_DATA>
         <ITM_DATE_DATA>
            <xsl:for-each select="$Line_GetAllLineDetails_OutputVariable.GetAllLineDetailsOutputCollection/ns1:GetAllLineDetailsOutputCollection/ns1:GetAllLineDetailsOutput">
               <item>
                  <REFNO_HEADER>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_NUMBER"/>
                  </REFNO_HEADER>
                  <ITEM_NUMBER>
                     <xsl:value-of select="ns1:ORDERED_ITEM"/>
                  </ITEM_NUMBER>
                  <TYPE_OF_DATE>CHECK</TYPE_OF_DATE>
                  <REL_POINT_IN_TIME_TS>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ordererd_date"/>
                  </REL_POINT_IN_TIME_TS>
               </item>
            </xsl:for-each>
         </ITM_DATE_DATA>
         <ITM_DIMENSION_DATA>
            <xsl:for-each select="$Invoke1_GetDimData_OutputVariable.GetDimDataOutputCollection/ns4:GetDimDataOutputCollection/ns4:GetDimDataOutput">
               <item>
                  <REFNO_HEADER>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_NUMBER"/>
                  </REFNO_HEADER>
                  <ITEM_NUMBER>
                     <xsl:value-of select="$Line_GetAllLineDetails_OutputVariable.GetAllLineDetailsOutputCollection/ns1:GetAllLineDetailsOutputCollection/ns1:GetAllLineDetailsOutput/ns1:ORDERED_ITEM"/>
                  </ITEM_NUMBER>
                  <QUAL_DIM>
                     <xsl:value-of select="ns4:qual_dim"/>
                  </QUAL_DIM>
                  <DIMEN>
                     <xsl:value-of select="ns4:dimen"/>
                  </DIMEN>
                  <DIMEN_FLT>
                     <xsl:value-of select="ns4:dimen_flt"/>
                  </DIMEN_FLT>
                  <DIM_UOM>
                     <xsl:value-of select="ns4:dimen_uom"/>
                  </DIM_UOM>
                  <DIM_UOM_ISO>
                     <xsl:value-of select="ns4:dimen_uom"/>
                  </DIM_UOM_ISO>
               </item>
            </xsl:for-each>
         </ITM_DIMENSION_DATA>
         <ITM_PARTNER_DATA>
            <item>
               <PARTNER_FUNCTION/>
               <PARTNER_TYPE/>
               <PARTNER_ID/>
               <COUNTRY/>
               <COUNTRY_ISO/>
            </item>
         </ITM_PARTNER_DATA>
         <ITM_VALUE_DATA>
            <xsl:for-each select="$Line_GetAllLineDetails_OutputVariable.GetAllLineDetailsOutputCollection/ns1:GetAllLineDetailsOutputCollection/ns1:GetAllLineDetailsOutput">
               <item>
                  <REFNO_HEADER>
                     <xsl:value-of select="/ns0:GetOrderHeaderOutputCollection/ns0:GetOrderHeaderOutput/ns0:ORDER_NUMBER"/>
                  </REFNO_HEADER>
                  <ITEM_NUMBER>
                     <xsl:value-of select="ns1:ORDERED_ITEM"/>
                  </ITEM_NUMBER>
                  <QUAL_VAL>GDSVAL</QUAL_VAL>
                  <VALUE>
                     <xsl:value-of select="ns1:line_value"/>
                  </VALUE>
                  <VALUE_FLOAT>
                     <xsl:value-of select="ns1:line_value"/>
                  </VALUE_FLOAT>
                  <VAL_CURR>USD</VAL_CURR>
                  <VAL_CURR_ISO>USD</VAL_CURR_ISO>
               </item>
            </xsl:for-each>
         </ITM_VALUE_DATA>
         <MAP_ERR>
            <item>
               <DOCUMENT_NUMBER/>
               <OBJT/>
               <OBJ_NUM/>
            </item>
         </MAP_ERR>
         <RESULT_LEGAL_CONTROL>
            <item>
               <DOCUMENT_NUMBER/>
               <GUID_HEADER/>
               <SERV_STAH/>
               <QUAL_STAH/>
               <ITEM_NUMBER/>
               <GUID_ITEM/>
               <SERV_STAI/>
               <QUAL_STAI/>
               <SERVIC_TEXT/>
               <STATUS_TEXT/>
               <CHANGED_AT/>
               <CD_ACCESS/>
               <ENQUEUE/>
               <ENQUEUE_PRE/>
               <ORG_UNIT/>
               <DOCUMENT_TYPE/>
               <ITEM_CATEGORY/>
               <LOG_SYSTEM/>
               <PARTNER/>
               <PARTNER_FUNCTION/>
               <PRODUCT/>
               <NUMBER_RANGE/>
               <CHECK_IND/>
               <BOM_SUBITEM/>
               <SUBSEQUENT_FUNCTION/>
               <LDT_RELEVANT/>
            </item>
         </RESULT_LEGAL_CONTROL>
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
