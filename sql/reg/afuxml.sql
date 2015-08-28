-- 1.5
-- + DTD XML: CreateXmlDocFromFileDTD, CreateXmlDocFromStringDTD, CreateXmlDocFromBLOBDTD

-- 1.4.3 
-- * using ib_util.ib_util_malloc library
-- * Fix all functions: return by CSTRING free_it and size
-- + XPath: XmlXPathEval,XmlXPathNodeSetCount,XmlXPathEvalValueStr,XmlXPathEvalValueNum,XmlXPathNodeSetItem

-- dtd
DECLARE EXTERNAL FUNCTION CreateXmlDocFromFileDTD
    CSTRING(255)
RETURNS CSTRING(32765) FREE_IT
ENTRY_POINT 'CreateXmlDocFromFileDTD' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION CreateXmlDocFromStringDTD
    CSTRING(32765)
RETURNS CSTRING(32765) FREE_IT
ENTRY_POINT 'CreateXmlDocFromStringDTD' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION CreateXmlDocFromBLOBDTD
    BLOB
RETURNS CSTRING(32765) FREE_IT
ENTRY_POINT 'CreateXmlDocFromBLOBDTD' MODULE_NAME 'afuxml';

 -- create and load xml
DECLARE EXTERNAL FUNCTION CreateXmlDocument
RETURNS BIGINT BY VALUE
ENTRY_POINT 'CreateXmlDocument' MODULE_NAME 'afuxml';

DECLARE EXTERNAL FUNCTION CreateXmlDocFromString
    CSTRING(32765)
RETURNS BIGINT BY VALUE
ENTRY_POINT 'CreateXmlDocFromString' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION CreateXmlDocFromBLOB
    BLOB
RETURNS BIGINT BY VALUE
ENTRY_POINT 'CreateXmlDocFromBLOB' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION CreateXmlDocFromFile
    CSTRING(255)
RETURNS BIGINT BY VALUE
ENTRY_POINT 'CreateXmlDocFromFile' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION XMLSetVersion
    BIGINT,CSTRING(255)
RETURNS INTEGER BY VALUE
ENTRY_POINT 'XMLSetVersion' MODULE_NAME 'afuxml';

DECLARE EXTERNAL FUNCTION XMLEncoding
    BIGINT,CSTRING(255)
RETURNS INTEGER BY VALUE
ENTRY_POINT 'XMLEncoding' MODULE_NAME 'afuxml';

DECLARE EXTERNAL FUNCTION XMLToString
    BIGINT
RETURNS CSTRING(32765) FREE_IT 
ENTRY_POINT 'XMLToString' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION XMLToBlob
    BIGINT,BLOB
RETURNS PARAMETER 2
ENTRY_POINT 'XMLToBlob' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION XMLAddNode
    BIGINT,BIGINT,CSTRING(32765),INTEGER
RETURNS BIGINT BY VALUE
ENTRY_POINT 'XMLAddNode' MODULE_NAME 'afuxml';



DECLARE EXTERNAL FUNCTION XMLTextNode
    BIGINT,BIGINT
RETURNS CSTRING(32765) FREE_IT
ENTRY_POINT 'XMLTextNode' MODULE_NAME 'afuxml';

DECLARE EXTERNAL FUNCTION XMLXmlNode
    BIGINT,BIGINT
RETURNS CSTRING(32765) FREE_IT
ENTRY_POINT 'XMLXmlNode' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION XmlNodeHasAttribute
    BIGINT,BIGINT,CSTRING(255)
RETURNS INTEGER BY VALUE
ENTRY_POINT 'XmlNodeHasAttribute' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION XmlNodeHasChildNodes
    BIGINT,BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'XmlNodeHasChildNodes' MODULE_NAME 'afuxml';

DECLARE EXTERNAL FUNCTION XmlNodeCountNodes
    BIGINT,BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'XmlNodeCountNodes' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION XmlNodeByIndex
    BIGINT,BIGINT,INTEGER
RETURNS BIGINT BY VALUE
ENTRY_POINT 'XmlNodeByIndex' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION XmlNodeByName
    BIGINT,BIGINT,CSTRING(255)
RETURNS BIGINT BY VALUE
ENTRY_POINT 'XmlNodeByName' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION XmlNodeCountAtt
    BIGINT,BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'XmlNodeCountAtt' MODULE_NAME 'afuxml';




DECLARE EXTERNAL FUNCTION XmlNodeAttByNameVal
    BIGINT,BIGINT,CSTRING(255)
RETURNS CSTRING(32765) FREE_IT
ENTRY_POINT 'XmlNodeAttByNameVal' MODULE_NAME 'afuxml';




DECLARE EXTERNAL FUNCTION XmlNodeAttByIndex
    BIGINT,BIGINT,INTEGER
RETURNS INTEGER BY VALUE
ENTRY_POINT 'XmlNodeAttByIndex' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION XmlNodeAttByName
    BIGINT,BIGINT,CSTRING(255)
RETURNS BIGINT BY VALUE
ENTRY_POINT 'XmlNodeAttByName' MODULE_NAME 'afuxml';

DECLARE EXTERNAL FUNCTION XmlNodeName
    BIGINT,BIGINT
RETURNS CSTRING(32765) FREE_IT
ENTRY_POINT 'XmlNodeName' MODULE_NAME 'afuxml';




DECLARE EXTERNAL FUNCTION XMLAddAtt
    BIGINT,BIGINT,CSTRING(255),CSTRING(32765),INTEGER
RETURNS BIGINT BY VALUE
ENTRY_POINT 'XMLAddAtt' MODULE_NAME 'afuxml';




DECLARE EXTERNAL FUNCTION XMLNodeSetText
    BIGINT,BIGINT,CSTRING(32765)
RETURNS INTEGER BY VALUE
ENTRY_POINT 'XMLNodeSetText' MODULE_NAME 'afuxml';



DECLARE EXTERNAL FUNCTION XMLXmlNodeBlob
    BIGINT,BIGINT,BLOB
RETURNS parameter 3
ENTRY_POINT 'XMLXmlNodeBlob' MODULE_NAME 'afuxml';

DECLARE EXTERNAL FUNCTION XMLTextNodeBlob
    BIGINT,BIGINT,BLOB
RETURNS parameter 3
ENTRY_POINT 'XMLTextNodeBlob' MODULE_NAME 'afuxml';

--1.3

DECLARE EXTERNAL FUNCTION XMLGetEncodingXML
    BIGINT
RETURNS CSTRING(32765) FREE_IT
ENTRY_POINT 'XMLGetEncodingXML' MODULE_NAME 'afuxml';

DECLARE EXTERNAL FUNCTION XMLEncodingXML
    BIGINT,CSTRING(255)
RETURNS INTEGER BY VALUE
ENTRY_POINT 'XMLEncodingXML' MODULE_NAME 'afuxml';

DECLARE EXTERNAL FUNCTION XmlToFile
BIGINT,CSTRING(32765)
RETURNS INTEGER BY VALUE
ENTRY_POINT 'XmlToFile' MODULE_NAME 'afuxml';


--1.1.3
/*DECLARE EXTERNAL FUNCTION StrToUnicode
CSTRING(32765),CSTRING(32765),CSTRING(32765)
RETURNS PARAMETER 3
ENTRY_POINT 'StrToUnicode' MODULE_NAME 'afuxml';*/

-- 1.4.3
--XPath
DECLARE EXTERNAL FUNCTION XmlXPathEval
    BIGINT,CSTRING(32765),BIGINT
RETURNS BIGINT BY VALUE
ENTRY_POINT 'XmlXPathEval' MODULE_NAME 'afuxml';

DECLARE EXTERNAL FUNCTION XmlXPathNodeSetCount
    BIGINT,BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'XmlXPathNodeSetCount' MODULE_NAME 'afuxml';


DECLARE EXTERNAL FUNCTION XmlXPathEvalValueStr
    BIGINT,CSTRING(32765),BIGINT
RETURNS CSTRING(32765) FREE_IT
ENTRY_POINT 'XmlXPathEvalValueStr' MODULE_NAME 'afuxml';

DECLARE EXTERNAL FUNCTION XmlXPathEvalValueNum
    BIGINT,CSTRING(32765),BIGINT
RETURNS Double precision BY VALUE
ENTRY_POINT 'XmlXPathEvalValueNum' MODULE_NAME 'afuxml';
                         
DECLARE EXTERNAL FUNCTION XmlXPathNodeSetItem
    BIGINT,BIGINT,INTEGER
RETURNS BIGINT  BY VALUE
ENTRY_POINT 'XmlXPathNodeSetItem' MODULE_NAME 'afuxml';
                  
            



