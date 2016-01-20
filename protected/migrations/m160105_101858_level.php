<?php

class m160105_101858_level extends CDbMigration
{
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('tbl_level', array(
			'id'	=>	'pk',
			'level'	=>	'varchar (16) NOT NULL',
		));
	}

	public function safeDown()
	{
		$this->dropTable('tbl_level');
		// echo "m160105_101858_level does not support migration down.\n";
		// return false;
	}

}