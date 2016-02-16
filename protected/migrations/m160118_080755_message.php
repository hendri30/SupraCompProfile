<?php

class m160118_080755_message extends CDbMigration
{
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('tbl_message',array(
			'id'			=>	'INTEGER NOT NULL',
			'language'		=>	'VARCHAR (16)',
			'translation'	=>	'TEXT',
		));
		$this->addPrimaryKey('PK_tbl_message','tbl_message','id, language');
		$this->addForeignKey(
			'FK_tbl_message_tbl_source_message',
			'tbl_message',
			'id',
			'tbl_source_message',
			'id',
			'CASCADE',
			'RESTRICT'
		);
		//$this->execute("ALTER TABLE tbl_message AUTO_INCREMENT = 1");
	}

	public function safeDown()
	{
		$this->dropTable('tbl_message');
		// echo "m160118_080755_message does not support migration down.\n";
		// return false;
	}
	
}