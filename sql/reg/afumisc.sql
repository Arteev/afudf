
--GETNAMEPREP/GetFirstWord removed

-- 1.4.3
-- * using ib_util.ib_util_malloc library
-- * Fix GENGUID, GETNAMEPREP: return by CSTRING free_it
-- * Fix declaration GETNAMEPREP:CSTRING(255) --> CSTRING(32000)

-- AF UDF Misc v.1.3
DECLARE EXTERNAL FUNCTION GENGUID
RETURNS CSTRING(500) FREE_IT
ENTRY_POINT 'GenGuid'
MODULE_NAME 'afumisc';

--> moved from afcommon
DECLARE EXTERNAL FUNCTION DelCharsFromBlob
BLOB,INTEGER,BLOB
RETURNS PARAMETER 3
ENTRY_POINT 'DelCharsFromBlob' MODULE_NAME 'afumisc';

/*
  --removed 1.5.7
DECLARE EXTERNAL FUNCTION GETNAMEPREP
  CSTRING(32000)
RETURNS CSTRING(32000) FREE_IT
ENTRY_POINT 'GetFirstWord'
MODULE_NAME 'afumisc';*/
