<?php

class m160104_093640_partner_logo extends CDbMigration
{
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('tbl_partner_logo', array(
			'id'		=>	'pk',
			'name'		=>	'varchar (120) NOT NULL',
			'file_name'	=>	'varchar (100) NOT NULL',
			'link'		=>	'varchar (255)',
			'category'	=>	'varchar (7) NOT NULL',
			'active'	=>	'boolean NOT NULL',
		));
	}

	public function safeDown()
	{
		$this->dropTable('tbl_partner_logo');
		// echo "m160104_093640_partner_logo does not support migration down.\n";
		// return false;
	}

}