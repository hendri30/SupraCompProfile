<?php

class m160104_093631_team extends CDbMigration
{
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('tbl_team', array(
			'id'		=>	'pk',
			'name'		=>	'varchar (120) NOT NULL',
			'file_name'	=>	'varchar (100) NOT NULL',
			'link'		=>	'varchar (255)',
			'active'	=>	'boolean NOT NULL',
			'sequence'	=>	'boolean NOT NULL',
		));
	}

	public function safeDown()
	{
		$this->dropTable('tbl_team');
		// echo "m160104_093631_team does not support migration down.\n";
		// return false;
	}

}