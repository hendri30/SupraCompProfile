<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');
Yii::setPathOfAlias('booster', dirname(__FILE__).'/../extensions/yiibooster');
Yii::setPathOfAlias('editMe', dirname(__FILE__).'/../extensions/editMe');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'PT SUPRABAKTI MANDIRI',

	// preloading 'log' component
	'preload'=>array('log','booster','translate','editMe'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
		'application.modules.translate.TranslateModule',
	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool
		'translate',
		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'suprabakti',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
			'generatorPaths'=>array(
				'booster.gii'
			),
		),
		
	),

	// language
	'language'=>'en',

	// application components
	'components'=>array(

		'user'=>array(
			// enable cookie-based authentication
			'allowAutoLogin'=>true,
		),
		'booster'=>array(
			'class'=>'booster.components.Booster',
		),
		'image'=>array(
			'class'=>'application.extensions.image.CImageComponent',
			'driver'=>'GD',
		),
		'messages' => array(
			'class'=>'CDbMessageSource',
			'onMissingTranslation' => array('TranslateModule', 'missingTranslation'),
			'sourceMessageTable' => 'tbl_translate_source',
			'translatedMessageTable' => 'tbl_translate_result',
		),
		/* setup global translate application component */
		'translate' => array(
			'class'=>'translate.components.MPTranslate',
			'acceptedLanguages'=>array(
				'en'=>'English',
				'id'=>'Indonesian',
			),
		),

		// uncomment the following to enable URLs in path-format
		'urlManager'=>array(
			'urlFormat'=>'path',
			'showScriptName'=>false,
			'caseSensitive'=>false,
			'rules'=>array(
				// 'page/<name:[\w\-]+>'=>'pages/url',
				'<key:(about|features|services|service_conveyor_maintenance|service_overland_belt_installation_belt_change_out|service_belt_splicing|service_pulley_lagging|service_belt_repair|service_belt_clamp|service_surface_protection|belt_care|belt_cleaning_system|air_cannon|transfer_point_solutions|locking_device|fluid_coupling|vulcanizing_equipment|conveyor_belting|conveyor_idler|yeloroll|fabrication|trelleborg|mclanahan)>'=>'pages/url',
				'<controller:\w+>/<id:\d+>'=>'<controller>/view',
				'<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
			),
		),

		// database settings are configured in database.php
		'db'=>require(dirname(__FILE__).'/database.php'),

		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'site/error',
		),

		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
				// uncomment the following to show log messages on web pages
				/*
				array(
					'class'=>'CWebLogRoute',
				),
				*/
			),
		),

	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'webmaster@example.com',
	),
);
