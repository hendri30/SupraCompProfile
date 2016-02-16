<?php

class m160216_085412_add_column_sequence_tbl_slider extends CDbMigration
{
	public function up()
	{
		$this->addColumn('tbl_slider','sequence','int(2) NOT NULL');
		$this->addColumn('tbl_slider','last_update','datetime');
	}

	public function down()
	{
		echo "m160216_085412_add_column_sequence_tbl_slider does not support migration down.\n";
		return false;
	}

	/*
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
	}

	public function safeDown()
	{
	}
	*/
}