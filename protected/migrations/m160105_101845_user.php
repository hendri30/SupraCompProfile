<?php

class m160105_101845_user extends CDbMigration
{
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('tbl_user', array(
			'id'			=>	'pk',
			'username'		=>	'varchar (64) NOT NULL',
			'password'		=>	'varchar (128) NOT NULL',
			'level_id'		=>	'int NOT NULL',
			'last_login'	=>	'datetime NOT NULL',
		));
	}

	public function safeDown()
	{
		$this->dropTable('tbl_user');
		// echo "m160105_101845_user does not support migration down.\n";
		// return false;
	}

}