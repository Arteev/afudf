-- 1.4.3
--  * using ib_util.ib_util_malloc library
--  * fix GetFieldNameDBFByIndex,GetValueDBFFieldByName: returns value with free_it
--  * Type handle of object: integer -> bigint for x64_86 build

DECLARE EXTERNAL FUNCTION CREATEDBF
    CSTRING(255),
    INTEGER,
    INTEGER,
    INTEGER,
    INTEGER
RETURNS BIGINT BY VALUE
ENTRY_POINT 'CreateDBF' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION CLOSEDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'CloseDBF' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION OpenDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'OpenDBF' MODULE_NAME 'afudbf';


DECLARE EXTERNAL FUNCTION StateDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'StateDBF' MODULE_NAME 'afudbf';


DECLARE EXTERNAL FUNCTION RecNoDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'RecNoDBF' MODULE_NAME 'afudbf';



DECLARE EXTERNAL FUNCTION RecordCountDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'RecordCountDBF' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION SetRecNoDBF
    BIGINT,INTEGER
RETURNS INTEGER BY VALUE
ENTRY_POINT 'SetRecNoDBF' MODULE_NAME 'afudbf';



DECLARE EXTERNAL FUNCTION NextInDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'NextInDBF' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION PrevInDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'PrevInDBF' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION FirstInDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'FirstInDBF' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION LastInDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'LastInDBF' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION EofInDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'EofInDBF' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION EditDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'EditDBF' MODULE_NAME 'afudbf';


DECLARE EXTERNAL FUNCTION PostDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'PostDBF' MODULE_NAME 'afudbf';


DECLARE EXTERNAL FUNCTION AppendDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'AppendDBF' MODULE_NAME 'afudbf';


DECLARE EXTERNAL FUNCTION DeleteDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'DeleteDBF' MODULE_NAME 'afudbf';


DECLARE EXTERNAL FUNCTION CancelDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'CancelDBF' MODULE_NAME 'afudbf';


DECLARE EXTERNAL FUNCTION PackDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'PackDBF' MODULE_NAME 'afudbf';


DECLARE EXTERNAL FUNCTION FieldCountDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'FieldCountDBF' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION FieldExistsDBF
    BIGINT,CSTRING(255)
RETURNS INTEGER BY VALUE
ENTRY_POINT 'FieldExistsDBF' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION GetFieldNameDBFByIndex
    BIGINT,INTEGER
RETURNS CSTRING(32765) FREE_IT
ENTRY_POINT 'GetFieldNameDBFByIndex' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION GetValueDBFFieldByName
    BIGINT,CSTRING(255)
RETURNS CSTRING(32765) FREE_IT
ENTRY_POINT 'GetValueDBFFieldByName' MODULE_NAME 'afudbf';

DECLARE EXTERNAL FUNCTION SETVALUEDBFFIELDBYNAME
    BIGINT,
    CSTRING(255),
    CSTRING(255)
RETURNS INTEGER BY VALUE
ENTRY_POINT 'SetValueDBFFieldByName' MODULE_NAME 'afudbf';


DECLARE EXTERNAL FUNCTION ADDFIELDDBF
    BIGINT,
    CSTRING(255),
    CSTRING(2),
    INTEGER,
    INTEGER
RETURNS INTEGER BY VALUE
ENTRY_POINT 'AddFieldDBF' MODULE_NAME 'afudbf';


DECLARE EXTERNAL FUNCTION CreateTableDBF
    BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'CreateTableDBF' MODULE_NAME 'afudbf';

--1.1.3

DECLARE EXTERNAL FUNCTION ValueIsNullDBF
    BIGINT,CSTRING(255)
RETURNS INTEGER BY VALUE
ENTRY_POINT 'ValueIsNullDBF' MODULE_NAME 'afudbf';

-- 1.3
DECLARE EXTERNAL FUNCTION SetFormatDBF
    BIGINT,INTEGER
RETURNS INTEGER BY VALUE
ENTRY_POINT 'SetFormatDBF' MODULE_NAME 'afudbf';


DECLARE EXTERNAL FUNCTION GetFormatDBF
BIGINT
RETURNS INTEGER BY VALUE
ENTRY_POINT 'GetFormatDBF' MODULE_NAME 'afudbf';
