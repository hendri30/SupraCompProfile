<?php

class m160216_085804_add_column_last_update_tbl_pages extends CDbMigration
{
	public function up()
	{
		$this->addColumn('tbl_pages','last_update','datetime');
	}

	public function down()
	{
		echo "m160216_085804_add_column_last_update_tbl_pages does not support migration down.\n";
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