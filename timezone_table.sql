CREATE TABLE `time_zone` (
`Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
PRIMARY KEY (`Time_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1676 DEFAULT CHARSET=utf8 COMMENT='Time zones';
CREATE TABLE `time_zone_leap_second` (
`Transition_time` bigint(20) NOT NULL,
`Correction` int(11) NOT NULL,
PRIMARY KEY (`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Leap seconds information for time zones';
CREATE TABLE `time_zone_name` (
`Name` char(64) NOT NULL,
`Time_zone_id` int(10) unsigned NOT NULL,
PRIMARY KEY (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone names';
CREATE TABLE `time_zone_transition` (
`Time_zone_id` int(10) unsigned NOT NULL,
`Transition_time` bigint(20) NOT NULL,
`Transition_type_id` int(10) unsigned NOT NULL,
PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transitions';
CREATE TABLE `time_zone_transition_type` (
`Time_zone_id` int(10) unsigned NOT NULL,
`Transition_type_id` int(10) unsigned NOT NULL,
`Offset` int(11) NOT NULL DEFAULT '0',
`Is_DST` tinyint(3) unsigned NOT NULL DEFAULT '0',
`Abbreviation` char(8) NOT NULL DEFAULT '',
PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transition types';