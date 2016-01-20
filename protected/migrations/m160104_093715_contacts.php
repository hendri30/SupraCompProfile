<?php

class m160104_093715_contacts extends CDbMigration
{
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('tbl_contacts', array(
			'id'		=>	'pk',
			'name'		=>	'varchar (120) NOT NULL',
			'email'		=>	'varchar (100) NOT NULL',
			'subject'	=>	'varchar (255) NOT NULL',
			'message'	=>	'text NOT NULL',
			'date'		=>	'datetime NOT NULL',
		));
	}

	public function safeDown()
	{
		$this->dropTable('tbl_contacts');
		// echo "m160104_093715_contacts does not support migration down.\n";
		// return false;
	}

}