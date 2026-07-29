-- @operation: export
-- @entity: batch
-- @name: Modifica la selezione della lingua
-- @exportedAt: 2026-07-29T08:11:54.894Z
-- @opIds: 642, 643

-- --- BEGIN op 642 ( update custom_format "Language: Not Original or Italian" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Language: Not Original or Italian'
	  AND name = 'Not English'
	  AND type = 'language'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 642

-- --- BEGIN op 643 ( update quality_profile "ITA - 1080p Quality" )
update "quality_profiles" set "description" = '1080p Quality utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent** x264 1080p Encodes. 

- Average Movie Sizes ~ 10 to 15gb per Movie
- Movie Quality Ranking ~ 8/10
- Average TV Sizes ~ 4 to 8gb per Episode
- TV Quality Ranking ~ 8/10
- Italian language' where "name" = 'ITA - 1080p Quality' and "description" = '1080p Quality utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent** x264 1080p Encodes. 

- Average Movie Sizes ~ 10 to 15gb per Movie
- Movie Quality Ranking ~ 8/10
- Average TV Sizes ~ 4 to 8gb per Episode
- TV Quality Ranking ~ 8/10';
-- --- END op 643
