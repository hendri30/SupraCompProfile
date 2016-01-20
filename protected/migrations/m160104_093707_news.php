<?php

class m160104_093707_news extends CDbMigration
{
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('tbl_news', array(
			'id'			=>	'pk',
			'title'			=>	'varchar (80) NOT NULL',
			'file_name'		=>	'varchar (100) NOT NULL',
			'content'		=>	'text NOT NULL',
			'date_create'	=>	'datetime NOT NULL',
			'date_update'	=>	'datetime NOT NULL',
			'meta_tags'		=>	'text',
			'meta_desc'		=>	'text',
		));
	}

	public function safeDown()
	{
		$this->dropTable('tbl_news');
		// echo "m160104_093707_news does not support migration down.\n";
		// return false;
	}

}