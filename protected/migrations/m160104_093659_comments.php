<?php

class m160104_093659_comments extends CDbMigration
{
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('tbl_comments', array(
			'id'		=>	'pk',
			'name'		=>	'varchar (120) NOT NULL',
			'file_name'	=>	'varchar (100) NOT NULL',
			'link'		=>	'varchar (255)',
		));
	}

	public function safeDown()
	{
		$this->dropTable('tbl_comments');
		// echo "m160104_093659_comments does not support migration down.\n";
		// return false;
	}

}