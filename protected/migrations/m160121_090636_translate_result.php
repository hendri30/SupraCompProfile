<?php

class m160121_090636_translate_result extends CDbMigration
{
	public function safeUp()
	{
		$this->createTable('tbl_translate_result',array(
			'id'			=>	'INTEGER NOT NULL',
			'language'		=>	'VARCHAR (16)',
			'translation'	=>	'TEXT',
		));
		$this->addPrimaryKey('PK_tbl_translate_result','tbl_translate_result','id, language');
		$this->addForeignKey(
			'FK_tbl_translate_result_tbl_translate_source',
			'tbl_translate_result',
			'id',
			'tbl_translate_source',
			'id',
			'CASCADE',
			'RESTRICT'
		);
	}

	public function safeDown()
	{
		// echo "m160121_090636_translate_result does not support migration down.\n";
		// return false;
	}

}