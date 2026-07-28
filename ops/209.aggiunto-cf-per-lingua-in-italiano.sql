-- @operation: export
-- @entity: batch
-- @name: Aggiunto CF per lingua in italiano
-- @exportedAt: 2026-07-28T12:12:36.334Z
-- @opIds: 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430

-- --- BEGIN op 419 ( create custom_format "Language: Not Original or Italian" )
insert into "custom_formats" ("name", "description") values ('Language: Not Original or Italian', '');
-- --- END op 419

-- --- BEGIN op 420 ( update custom_format "Language: Not Original or Italian" )
update "custom_formats" set "description" = 'Language: Prefer X but i''ll take Y' where "name" = 'Language: Not Original or Italian' and "description" = '';
-- --- END op 420

-- --- BEGIN op 421 ( update custom_format "Language: Not Original or Italian" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Language: Not Original or Italian', 'Not Original', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Language: Not Original or Italian', 'Not Original', 'Original', 0);
-- --- END op 421

-- --- BEGIN op 422 ( update custom_format "Language: Not Original or Italian" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Language: Not Original or Italian', 'Not Italian', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Language: Not Original or Italian', 'Not Italian', 'Italian', 0);
-- --- END op 422

-- --- BEGIN op 423 ( create custom_format "Language: Prefer Italian" )
insert into "custom_formats" ("name", "description") values ('Language: Prefer Italian', '');
-- --- END op 423

-- --- BEGIN op 424 ( update custom_format "Language: Prefer Italian" )
update "custom_formats" set "description" = 'Prefer Language X' where "name" = 'Language: Prefer Italian' and "description" = '';
-- --- END op 424

-- --- BEGIN op 425 ( update custom_format "Language: Prefer Italian" )
insert into "tags" ("name") values ('language') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Language: Prefer Italian', 'language');
-- --- END op 425

-- --- BEGIN op 426 ( update custom_format "Language: Prefer Italian" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Language: Prefer Italian', 'Italian Language', 'language', 'all', 0, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Language: Prefer Italian', 'Italian Language', 'Italian', 0);
-- --- END op 426

-- --- BEGIN op 427 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'Language: Not Original or Italian', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'Language: Not Original or Italian'
    AND arr_type = 'radarr'
);
-- --- END op 427

-- --- BEGIN op 428 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'Language: Not Original or Italian', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'Language: Not Original or Italian'
    AND arr_type = 'sonarr'
);
-- --- END op 428

-- --- BEGIN op 429 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'Language: Prefer Italian', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'Language: Prefer Italian'
    AND arr_type = 'radarr'
);
-- --- END op 429

-- --- BEGIN op 430 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'Language: Prefer Italian', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'Language: Prefer Italian'
    AND arr_type = 'sonarr'
);
-- --- END op 430
