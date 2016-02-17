<?php

class m160121_090629_translate_source extends CDbMigration
{
	public function safeUp()
	{
		$this->createTable('tbl_translate_source',array(
			'id'		=>	'INT NOT NULL AUTO_INCREMENT PRIMARY KEY',
			'category'	=>	'VARCHAR (32)',
			'message'	=>	'TEXT',
		));
	}

	public function safeDown()
	{
		$this->dropTable('tbl_translate_source');
		// echo "m160121_090629_translate_source does not support migration down.\n";
		// return false;
	}

}