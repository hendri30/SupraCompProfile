<?php

class m160104_093544_slider extends CDbMigration
{
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('tbl_slider', array(
			'id'		=>	'pk',
			'caption'	=>	'varchar (100)',
			'qoutes'	=>	'text',
			'file_name'	=>	'varchar (255) NOT NULL',
			'active'	=>	'boolean NOT NULL',
		));
	}

	public function safeDown()
	{
		$this->dropTable('tbl_slider');
		// echo "m160104_093544_slider does not support migration down.\n";
		// return false;
	}

}