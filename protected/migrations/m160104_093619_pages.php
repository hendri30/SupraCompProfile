<?php

class m160104_093619_pages extends CDbMigration
{
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('tbl_pages', array(
			'id'			=>	'pk',
			'key'			=>	'varchar (80) UNIQUE',
			'meta_tag'		=>	'text',
			'meta_desc'		=>	'text',
			'name'			=>	'varchar (120) NOT NULL',
			'content'		=>	'text NOT NULL',
			'thumb_image'	=>	'varchar (100)',
			'last_login'	=>	'datetime',
		));
	}

	public function safeDown()
	{
		$this->dropTable('tbl_pages');
		// echo "m160104_093619_pages does not support migration down.\n";
		// return false;
	}

}