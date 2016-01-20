<?php

class m160118_080736_source_message extends CDbMigration
{
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('tbl_source_message',array(
			'id'		=>	'INT NOT NULL AUTO_INCREMENT PRIMARY KEY',
			'category'	=>	'VARCHAR (32)',
			'message'	=>	'TEXT',
		));
		//$this->execute("ALTER TABLE tbl_source_message AUTO_INCREMENT = 1");
	}

	public function safeDown()
	{
		$this->dropTable('tbl_source_message');
		// echo "m160118_080736_tbl_source_message does not support migration down.\n";
		// return false;
	}

}