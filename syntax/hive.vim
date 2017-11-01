" Vim syntax file
" Language:	Hive
" Maintainer: Jon Parise <jon@indelible.org>
" Original Author: dgold
"
" Based off Oracle SQL syntax highlighting

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

" The SQL reserved words, defined as keywords.

syn keyword sqlSpecial  false null true

syn keyword sqlKeyword	access add as asc begin by change check cluster column
syn keyword sqlKeyword	compress connect current cursor default desc database
syn keyword sqlKeyword	else elsif end exception exclusive file for from
syn keyword sqlKeyword	function group having identified if immediate increment
syn keyword sqlKeyword	index initial into is level loop maxextents mode modify
syn keyword sqlKeyword	nocompress nowait of offline on online start
syn keyword sqlKeyword	successful synonym table then to trigger uid
syn keyword sqlKeyword	unique user validate values view whenever hivevar
syn keyword sqlKeyword	where with option order pctfree privileges procedure
syn keyword sqlKeyword	public range resource return row rowlabel rownum rows
syn keyword sqlKeyword	session share size smallint type using full outer join left right inner true false semi cross
syn keyword sqlKeyword	format delimited fields terminated collection items external
syn keyword sqlKeyword	stored sequencefile partition partitioned data local inpath overwrite clustered buckets sorted
syn keyword sqlKeyword	keys extended textfile location distribute directory tablesample reduce lateral
syn keyword sqlKeyword	case when sort limit over unbounded preceding following window
syn keyword sqlKeyword	schema repair dbproperties temporary skewed escaped lines
syn keyword sqlKeyword	defined serde rcfile orc parquet avro
syn keyword sqlKeyword	inputformat outputformat primary key constraint foreign
syn keyword sqlKeyword	references serdeproperties tblproperties directories
syn keyword sqlKeyword	exchange ignore protection purge archive unarchive
syn keyword sqlKeyword	fileformat enable disable no_drop cascade compact
syn keyword sqlKeyword	wait restrict first after replace columns deferred
syn keyword sqlKeyword	rebuild idxproperties macro jar role roles principals
syn keyword sqlKeyword	nulls last


syn keyword sqlOperator	not and or < <= == >= > <> !=
syn keyword sqlOperator	in any some all between exists
syn keyword sqlOperator	like escape rlike regexp coalesce
syn keyword sqlOperator union intersect minus
syn keyword sqlOperator prior distinct isnull isnotnull count
syn keyword sqlOperator	sysdate out
syn keyword sqlOperator	round floor ceil rand concat substr upper ucase
syn keyword sqlOperator	lower lcase trim ltrim rtrim regexp_replace size
syn keyword sqlOperator	cast from_unixtime to_date year month day get_json_object
syn keyword sqlOperator	sum avg min max transform
syn keyword sqlOperator	variance var_samp stddev_pop stddev_samp
syn keyword sqlOperator	covar_pop covar_samp corr percentile percentil_approx
syn keyword sqlOperator	histogram_numeric collect_set collect_list inline explode
syn keyword sqlOperator	exp ln log10 log2 log pow sqrt bin hex unhex conv
syn keyword sqlOperator	abs pmod sin asin cos acos tan atan degrees radians
syn keyword sqlOperator	positive negative sign e pi
syn keyword sqlOperator	map_keys map_values array_contains sort_array
syn keyword sqlOperator	unix_timestamp dayofmonth hour minute second weekofyear
syn keyword sqlOperator	datediff date_add date_sub from_utc_timestamp to_utc_timestamp
syn keyword sqlOperator	ascii context_ngrams concate_ws find_in_set format_number
syn keyword sqlOperator	in_file instr length locate lpad ltrim ngrams parse_url
syn keyword sqlOperator	printf regexp_extract repeat reverse rpad trim sentences
syn keyword sqlOperator	space split str_to_map translate trim java_method reflect
syn keyword sqlOperator	xpath xpath_string xpath_boolean xpath_short xpath_int xpath_long xpath_float xpath_double xpath_number
syn keyword sqlOperator rank row_number dense_rank cume_dist percent_rank ntile lead lag first_value last_value


syn keyword sqlStatement alter analyze audit comment commit create
syn keyword sqlStatement delete drop execute explain grant insert lock noaudit
syn keyword sqlStatement rename revoke rollback savepoint select set
syn keyword sqlStatement truncate update describe load use show msck
syn keyword sqlStatement source reload

syn keyword sqlType tinyint smallint int bigint float double precision boolean string decimal
syn keyword sqlType array map struct named_struct create_union timestamp date varchar char binary uniontype

syn match hiveVar     "hive\.[a-zA-Z.]\+"
syn match hiveVar     "mapred\(uce\)\=\.[a-zA-Z.]\+"
" Variable Substitution like ${hiveconf:XX}
syn match hiveVarSubst "\${[a-zA-Z0-9_.${}:]\+}"

" Strings and characters:
syn region sqlString		start=+"+  skip=+\\\\\|\\"+  end=+"+ contains=hiveVarSubst
syn region sqlString		start=+'+  skip=+\\\\\|\\'+  end=+'+ contains=hiveVarSubst

" Numbers:
syn match sqlNumber		"-\=\<\d*\.\=[0-9_]\>"

" Comments:
syn region sqlComment    start="/\*"  end="\*/" contains=sqlTodo
syn match sqlComment	"--.*$" contains=sqlTodo

syn sync ccomment sqlComment

" Todo.
syn keyword sqlTodo contained TODO FIXME XXX DEBUG NOTE

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_sql_syn_inits")
  if version < 508
    let did_sql_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink sqlComment	Comment
  "HiLink sqlKeyword	sqlSpecial
  HiLink sqlKeyword	Identifier
  HiLink sqlNumber	Number
  HiLink sqlOperator	Constant
  "HiLink sqlSpecial	Special
  HiLink sqlStatement	Statement
  HiLink sqlString	String
  HiLink sqlType	Type
  HiLink sqlTodo	Todo
  HiLink hiveVar        Special
  HiLink hiveVarSubst   Special

  delcommand HiLink
endif

let b:current_syntax = "hive"

" vim: ts=8
