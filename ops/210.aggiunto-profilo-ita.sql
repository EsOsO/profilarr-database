-- @operation: export
-- @entity: batch
-- @name: Aggiunto profilo ITA
-- @exportedAt: 2026-07-28T14:34:23.403Z
-- @opIds: 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640

-- --- BEGIN op 432 ( create quality_profile "ITA - 1080p Quality" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('ITA - 1080p Quality', '1080p Quality utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent** x264 1080p Encodes. 

- Average Movie Sizes ~ 10 to 15gb per Movie
- Movie Quality Ranking ~ 8/10
- Average TV Sizes ~ 4 to 8gb per Episode
- TV Quality Ranking ~ 8/10', 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('ITA - 1080p Quality', '1080p');

insert into "tags" ("name") values ('Lossy Audio') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('ITA - 1080p Quality', 'Lossy Audio');

insert into "tags" ("name") values ('Quality Focused') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('ITA - 1080p Quality', 'Quality Focused');

insert into "tags" ("name") values ('h264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('ITA - 1080p Quality', 'h264');

insert into "tags" ("name") values ('x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('ITA - 1080p Quality', 'x264');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('ITA - 1080p Quality', '1080p Quality');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'Bluray-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'WEBDL-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'WEBRip-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'Bluray-720p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'WEBDL-720p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'WEBRip-720p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'Bluray-576p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'Bluray-480p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'WEBDL-480p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'DVD', 9);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'HDTV-1080p', 10);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'HDTV-720p', 11);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ITA - 1080p Quality', '1080p Quality', 'SDTV', 12);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', NULL, '1080p Quality', 0, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'Bluray-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'WEBDL-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'WEBRip-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'HDTV-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'Remux-1080p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'WEBRip-480p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'HDTV-480p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'BR-DISK', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'CAM', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'DVD-R', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'DVDSCR', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'Raw-HD', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'REGIONAL', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'TELECINE', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'TELESYNC', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'WORKPRINT', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ITA - 1080p Quality', 'Unknown', NULL, 18, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('ITA - 1080p Quality', 'Any', 'simple');
-- --- END op 432

-- --- BEGIN op 433 ( update quality_profile "ITA - 1080p Quality" )
update "quality_profiles" set "minimum_custom_format_score" = 200000 where "name" = 'ITA - 1080p Quality' and "minimum_custom_format_score" = 0;
-- --- END op 433

-- --- BEGIN op 434 ( update quality_profile "ITA - 1080p Quality" )
update "quality_profiles" set "upgrade_until_score" = 1000000 where "name" = 'ITA - 1080p Quality' and "upgrade_until_score" = 0;
-- --- END op 434

-- --- BEGIN op 435 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Balanced Tier 1', 'radarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 435

-- --- BEGIN op 436 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Balanced Tier 1', 'sonarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 436

-- --- BEGIN op 437 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Balanced Tier 2', 'radarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 437

-- --- BEGIN op 438 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Balanced Tier 2', 'sonarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 438

-- --- BEGIN op 439 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Bluray', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 439

-- --- BEGIN op 440 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Bluray', 'sonarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 440

-- --- BEGIN op 441 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p HDTV', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 441

-- --- BEGIN op 442 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p HDTV', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 442

-- --- BEGIN op 443 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p HDTV Tier 1', 'radarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 443

-- --- BEGIN op 444 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p HDTV Tier 1', 'sonarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 444

-- --- BEGIN op 445 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p HDTV Tier 2', 'radarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 445

-- --- BEGIN op 446 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p HDTV Tier 2', 'sonarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 446

-- --- BEGIN op 447 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p HDTV Tier 3', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 447

-- --- BEGIN op 448 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p HDTV Tier 3', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 448

-- --- BEGIN op 449 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 1', 'all', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 449

-- --- BEGIN op 450 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 1', 'radarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 450

-- --- BEGIN op 451 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 1', 'sonarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 451

-- --- BEGIN op 452 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 2', 'all', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 452

-- --- BEGIN op 453 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 2', 'radarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 453

-- --- BEGIN op 454 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 2', 'sonarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 454

-- --- BEGIN op 455 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 3', 'all', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 455

-- --- BEGIN op 456 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 3', 'radarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 456

-- --- BEGIN op 457 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 3', 'sonarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 457

-- --- BEGIN op 458 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 4', 'all', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 458

-- --- BEGIN op 459 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 4', 'radarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 459

-- --- BEGIN op 460 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 4', 'sonarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 460

-- --- BEGIN op 461 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 5', 'all', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 461

-- --- BEGIN op 462 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 5', 'radarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 462

-- --- BEGIN op 463 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 5', 'sonarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 463

-- --- BEGIN op 464 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 6', 'all', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 464

-- --- BEGIN op 465 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 6', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 465

-- --- BEGIN op 466 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p Quality Tier 6', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 466

-- --- BEGIN op 467 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p WEB-DL', 'radarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 467

-- --- BEGIN op 468 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p WEB-DL', 'sonarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 468

-- --- BEGIN op 469 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '1080p WEBRip', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 469

-- --- BEGIN op 470 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '3D', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 470

-- --- BEGIN op 471 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p Bluray', 'radarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 471

-- --- BEGIN op 472 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p Bluray', 'sonarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 472

-- --- BEGIN op 473 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p Quality Tier 1', 'radarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 473

-- --- BEGIN op 474 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p Quality Tier 1', 'sonarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 474

-- --- BEGIN op 475 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p Quality Tier 2', 'radarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 475

-- --- BEGIN op 476 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p Quality Tier 2', 'sonarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 476

-- --- BEGIN op 477 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p Quality Tier 3', 'radarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 477

-- --- BEGIN op 478 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p Quality Tier 3', 'sonarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 478

-- --- BEGIN op 479 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p Quality Tier 4', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 479

-- --- BEGIN op 480 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p Quality Tier 4', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 480

-- --- BEGIN op 481 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p WEB-DL', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 481

-- --- BEGIN op 482 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '480p WEB-DL', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 482

-- --- BEGIN op 483 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p Bluray', 'radarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 483

-- --- BEGIN op 484 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p Bluray', 'sonarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 484

-- --- BEGIN op 485 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p Quality Tier 1', 'radarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 485

-- --- BEGIN op 486 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p Quality Tier 1', 'sonarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 486

-- --- BEGIN op 487 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p Quality Tier 2', 'radarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 487

-- --- BEGIN op 488 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p Quality Tier 2', 'sonarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 488

-- --- BEGIN op 489 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p Quality Tier 3', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 489

-- --- BEGIN op 490 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p Quality Tier 3', 'sonarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 490

-- --- BEGIN op 491 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p Quality Tier 4', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 491

-- --- BEGIN op 492 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p Quality Tier 4', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 492

-- --- BEGIN op 493 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p WEB-DL', 'radarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 493

-- --- BEGIN op 494 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '576p WEB-DL', 'sonarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 494

-- --- BEGIN op 495 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Balanced Tier 1', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 495

-- --- BEGIN op 496 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Balanced Tier 1', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 496

-- --- BEGIN op 497 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Bluray', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 497

-- --- BEGIN op 498 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Bluray', 'sonarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 498

-- --- BEGIN op 499 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p HDTV', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 499

-- --- BEGIN op 500 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p HDTV', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 500

-- --- BEGIN op 501 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p HDTV Tier 1', 'radarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 501

-- --- BEGIN op 502 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p HDTV Tier 1', 'sonarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 502

-- --- BEGIN op 503 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p HDTV Tier 2', 'radarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 503

-- --- BEGIN op 504 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p HDTV Tier 2', 'sonarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 504

-- --- BEGIN op 505 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p HDTV Tier 3', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 505

-- --- BEGIN op 506 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p HDTV Tier 3', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 506

-- --- BEGIN op 507 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 1', 'all', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 507

-- --- BEGIN op 508 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 1', 'radarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 508

-- --- BEGIN op 509 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 1', 'sonarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 509

-- --- BEGIN op 510 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 2', 'all', 84000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 510

-- --- BEGIN op 511 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 2', 'radarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 511

-- --- BEGIN op 512 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 2', 'sonarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 512

-- --- BEGIN op 513 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 3', 'all', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 513

-- --- BEGIN op 514 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 3', 'radarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 514

-- --- BEGIN op 515 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 3', 'sonarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 515

-- --- BEGIN op 516 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 4', 'all', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 516

-- --- BEGIN op 517 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 4', 'radarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 517

-- --- BEGIN op 518 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 4', 'sonarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 518

-- --- BEGIN op 519 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 5', 'all', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 519

-- --- BEGIN op 520 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 5', 'radarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 520

-- --- BEGIN op 521 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 5', 'sonarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 521

-- --- BEGIN op 522 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 6', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 522

-- --- BEGIN op 523 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 6', 'radarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 523

-- --- BEGIN op 524 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p Quality Tier 6', 'sonarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 524

-- --- BEGIN op 525 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p WEB-DL', 'radarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 525

-- --- BEGIN op 526 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p WEB-DL', 'sonarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 526

-- --- BEGIN op 527 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', '720p WEBRip', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 527

-- --- BEGIN op 528 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'AAC', 'all', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'AAC'
    AND arr_type = 'all'
);
-- --- END op 528

-- --- BEGIN op 529 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'AMZN', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'all'
);
-- --- END op 529

-- --- BEGIN op 530 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'ATVP', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'all'
);
-- --- END op 530

-- --- BEGIN op 531 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 531

-- --- BEGIN op 532 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Amazon Channel Enhancement', 'sonarr', -3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Amazon Channel Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 532

-- --- BEGIN op 533 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Audio Description', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Audio Description'
    AND arr_type = 'all'
);
-- --- END op 533

-- --- BEGIN op 534 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 534

-- --- BEGIN op 535 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 535

-- --- BEGIN op 536 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 536

-- --- BEGIN op 537 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 537

-- --- BEGIN op 538 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Banned Groups', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'all'
);
-- --- END op 538

-- --- BEGIN op 539 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Banned Groups (Regular)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Banned Groups (Regular)'
    AND arr_type = 'radarr'
);
-- --- END op 539

-- --- BEGIN op 540 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Banned Groups (Regular)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Banned Groups (Regular)'
    AND arr_type = 'sonarr'
);
-- --- END op 540

-- --- BEGIN op 541 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Banned Language Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Banned Language Groups'
    AND arr_type = 'radarr'
);
-- --- END op 541

-- --- BEGIN op 542 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Banned Language Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Banned Language Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 542

-- --- BEGIN op 543 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Banned WEBRip', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'all'
);
-- --- END op 543

-- --- BEGIN op 544 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 544

-- --- BEGIN op 545 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'CAM', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'CAM'
    AND arr_type = 'radarr'
);
-- --- END op 545

-- --- BEGIN op 546 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'CRAV', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'all'
);
-- --- END op 546

-- --- BEGIN op 547 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'CRIT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 547

-- --- BEGIN op 548 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DRPO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DRPO'
    AND arr_type = 'all'
);
-- --- END op 548

-- --- BEGIN op 549 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DSNP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 549

-- --- BEGIN op 550 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DSNP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 550

-- --- BEGIN op 551 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DTS', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DTS'
    AND arr_type = 'all'
);
-- --- END op 551

-- --- BEGIN op 552 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DTS-ES', 'all', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'all'
);
-- --- END op 552

-- --- BEGIN op 553 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DTS-HD HRA', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'all'
);
-- --- END op 553

-- --- BEGIN op 554 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DVD', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 554

-- --- BEGIN op 555 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DVD', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 555

-- --- BEGIN op 556 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DVD Quality Tier 1', 'radarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 556

-- --- BEGIN op 557 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DVD Quality Tier 1', 'sonarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 557

-- --- BEGIN op 558 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DVD Quality Tier 2', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 558

-- --- BEGIN op 559 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DVD Quality Tier 2', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 559

-- --- BEGIN op 560 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DVD Remux', 'radarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'radarr'
);
-- --- END op 560

-- --- BEGIN op 561 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'DVD Remux', 'sonarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 561

-- --- BEGIN op 562 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Dolby Atmos', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'all'
);
-- --- END op 562

-- --- BEGIN op 563 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Dolby Digital', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 563

-- --- BEGIN op 564 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Dolby Digital +', 'all', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 564

-- --- BEGIN op 565 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Dolby Vision', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'all'
);
-- --- END op 565

-- --- BEGIN op 566 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Extended Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Extended Edition'
    AND arr_type = 'radarr'
);
-- --- END op 566

-- --- BEGIN op 567 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 567

-- --- BEGIN op 568 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 568

-- --- BEGIN op 569 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'FLAC', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'all'
);
-- --- END op 569

-- --- BEGIN op 570 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Full Disc', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'all'
);
-- --- END op 570

-- --- BEGIN op 571 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 571

-- --- BEGIN op 572 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 572

-- --- BEGIN op 573 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 573

-- --- BEGIN op 574 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'HDR', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'HDR'
    AND arr_type = 'all'
);
-- --- END op 574

-- --- BEGIN op 575 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'HDR10+', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'all'
);
-- --- END op 575

-- --- BEGIN op 576 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'HMAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'all'
);
-- --- END op 576

-- --- BEGIN op 577 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'HTSR', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'HTSR'
    AND arr_type = 'all'
);
-- --- END op 577

-- --- BEGIN op 578 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'HULU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'HULU'
    AND arr_type = 'all'
);
-- --- END op 578

-- --- BEGIN op 579 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Language: Not Original or Italian', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Language: Not Original or Italian'
    AND arr_type = 'radarr'
);
-- --- END op 579

-- --- BEGIN op 580 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Language: Not Original or Italian', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Language: Not Original or Italian'
    AND arr_type = 'sonarr'
);
-- --- END op 580

-- --- BEGIN op 581 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Language: Prefer Italian', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Language: Prefer Italian'
    AND arr_type = 'radarr'
);
-- --- END op 581

-- --- BEGIN op 582 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Language: Prefer Italian', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Language: Prefer Italian'
    AND arr_type = 'sonarr'
);
-- --- END op 582

-- --- BEGIN op 583 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'MA', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 583

-- --- BEGIN op 584 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'MAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'MAX'
    AND arr_type = 'all'
);
-- --- END op 584

-- --- BEGIN op 585 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'MUBI', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'MUBI'
    AND arr_type = 'all'
);
-- --- END op 585

-- --- BEGIN op 586 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'NF', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'NF'
    AND arr_type = 'all'
);
-- --- END op 586

-- --- BEGIN op 587 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'NOW', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'NOW'
    AND arr_type = 'all'
);
-- --- END op 587

-- --- BEGIN op 588 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 588

-- --- BEGIN op 589 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 589

-- --- BEGIN op 590 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Opus', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Opus'
    AND arr_type = 'all'
);
-- --- END op 590

-- --- BEGIN op 591 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'PCOK', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'all'
);
-- --- END op 591

-- --- BEGIN op 592 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'PLAY', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'all'
);
-- --- END op 592

-- --- BEGIN op 593 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'PMTP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'all'
);
-- --- END op 593

-- --- BEGIN op 594 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'ROKU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'all'
);
-- --- END op 594

-- --- BEGIN op 595 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Release Group (Missing)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 595

-- --- BEGIN op 596 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Release Group (Missing)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 596

-- --- BEGIN op 597 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Remux', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Remux'
    AND arr_type = 'all'
);
-- --- END op 597

-- --- BEGIN op 598 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Repack1', 'all', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'all'
);
-- --- END op 598

-- --- BEGIN op 599 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Repack2', 'all', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'all'
);
-- --- END op 599

-- --- BEGIN op 600 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Repack3', 'all', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'all'
);
-- --- END op 600

-- --- BEGIN op 601 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'SDTV', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 601

-- --- BEGIN op 602 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'SDTV', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 602

-- --- BEGIN op 603 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'SDTV Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 603

-- --- BEGIN op 604 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'SDTV Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 604

-- --- BEGIN op 605 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'SHO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'SHO'
    AND arr_type = 'all'
);
-- --- END op 605

-- --- BEGIN op 606 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'SKST', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 606

-- --- BEGIN op 607 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'SKST', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 607

-- --- BEGIN op 608 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'STAN', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'STAN'
    AND arr_type = 'all'
);
-- --- END op 608

-- --- BEGIN op 609 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 609

-- --- BEGIN op 610 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Sing Along', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 610

-- --- BEGIN op 611 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 611

-- --- BEGIN op 612 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 612

-- --- BEGIN op 613 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 613

-- --- BEGIN op 614 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'VP9', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'VP9'
    AND arr_type = 'all'
);
-- --- END op 614

-- --- BEGIN op 615 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'VVC', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'VVC'
    AND arr_type = 'all'
);
-- --- END op 615

-- --- BEGIN op 616 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'WEB-DL Tier 1', 'all', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'all'
);
-- --- END op 616

-- --- BEGIN op 617 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'WEB-DL Tier 2', 'all', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'all'
);
-- --- END op 617

-- --- BEGIN op 618 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'WEB-DL Tier 3', 'all', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'all'
);
-- --- END op 618

-- --- BEGIN op 619 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'WEB-DL Tier 4', 'all', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'all'
);
-- --- END op 619

-- --- BEGIN op 620 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'WEB-DL Tier 5', 'all', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'all'
);
-- --- END op 620

-- --- BEGIN op 621 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'Xvid', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'Xvid'
    AND arr_type = 'all'
);
-- --- END op 621

-- --- BEGIN op 622 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'h265', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'h265'
    AND arr_type = 'all'
);
-- --- END op 622

-- --- BEGIN op 623 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'iP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'iP'
    AND arr_type = 'all'
);
-- --- END op 623

-- --- BEGIN op 624 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'iT', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'iT'
    AND arr_type = 'all'
);
-- --- END op 624

-- --- BEGIN op 625 ( update quality_profile "ITA - 1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ITA - 1080p Quality', 'x265', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ITA - 1080p Quality'
    AND custom_format_name = 'x265'
    AND arr_type = 'all'
);
-- --- END op 625

-- --- BEGIN op 626 ( update quality_profile "1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'Language: Not Original or Italian'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 626

-- --- BEGIN op 627 ( update quality_profile "1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'Language: Not Original or Italian'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 627

-- --- BEGIN op 628 ( update quality_profile "1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'Language: Prefer Italian'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 628

-- --- BEGIN op 629 ( update quality_profile "1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'Language: Prefer Italian'
  AND arr_type = 'sonarr'
  AND score = 100000;
-- --- END op 629

-- --- BEGIN op 630 ( update custom_format "Language: Not Original or Italian" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Language: Not Original or Italian', 'Not English', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Language: Not Original or Italian', 'Not English', 'English', 0);
-- --- END op 630

-- --- BEGIN op 631 ( update quality_profile "ITA - 1080p Quality" )
UPDATE quality_profile_custom_formats
SET score = 800000
WHERE quality_profile_name = 'ITA - 1080p Quality'
  AND custom_format_name = 'Language: Prefer Italian'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 631

-- --- BEGIN op 632 ( update quality_profile "ITA - 1080p Quality" )
UPDATE quality_profile_custom_formats
SET score = 400000
WHERE quality_profile_name = 'ITA - 1080p Quality'
  AND custom_format_name = 'Language: Prefer Italian'
  AND arr_type = 'sonarr'
  AND score = 100000;
-- --- END op 632

-- --- BEGIN op 633 ( update quality_profile "ITA - 1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'ITA - 1080p Quality'
  AND custom_format_name = 'Not Original or English'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 633

-- --- BEGIN op 634 ( update quality_profile "ITA - 1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'ITA - 1080p Quality'
  AND custom_format_name = 'Not Original or English'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 634

-- --- BEGIN op 635 ( update quality_profile "ITA - 1080p Quality" )
UPDATE quality_profile_custom_formats
SET score = 870000
WHERE quality_profile_name = 'ITA - 1080p Quality'
  AND custom_format_name = 'Language: Prefer Italian'
  AND arr_type = 'radarr'
  AND score = 800000;
-- --- END op 635

-- --- BEGIN op 636 ( update quality_profile "ITA - 1080p Quality" )
UPDATE quality_profile_custom_formats
SET score = 870000
WHERE quality_profile_name = 'ITA - 1080p Quality'
  AND custom_format_name = 'Language: Prefer Italian'
  AND arr_type = 'sonarr'
  AND score = 400000;
-- --- END op 636

-- --- BEGIN op 637 ( create custom_format "Italian scene" )
insert into "custom_formats" ("name", "description") values ('Italian scene', '');
-- --- END op 637

-- --- BEGIN op 638 ( update custom_format "Italian scene" )
update "custom_formats" set "description" = 'I gruppi migliori della scena italiana' where "name" = 'Italian scene' and "description" = '';
-- --- END op 638

-- --- BEGIN op 639 ( update custom_format "Italian scene" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Italian scene', 'New Condition', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Italian scene', 'New Condition', 'NAHOM');
-- --- END op 639

-- --- BEGIN op 640 ( delete custom_format "Italian scene" )
delete from "custom_formats" where "name" = 'Italian scene';
-- --- END op 640
