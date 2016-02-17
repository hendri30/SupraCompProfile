<?php

/**
 * This is the model class for table "tbl_news".
 *
 * The followings are the available columns in table 'tbl_news':
 * @property integer $id
 * @property string $title
 * @property string $file_name
 * @property string $content
 * @property string $date_create
 * @property string $date_update
 * @property string $meta_tags
 * @property string $meta_desc
 */
class News extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_news';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title, file_name, content, date_create, date_update', 'required'),
			array('title', 'length', 'max'=>80),
			array('file_name', 'length', 'max'=>100),
			array('meta_tags, meta_desc', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, title, file_name, content, date_create, date_update, meta_tags, meta_desc', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'title' => 'Title',
			'file_name' => 'File',
			'content' => 'Content',
			'date_create' => 'Date Create',
			'date_update' => 'Date Update',
			'meta_tags' => 'Meta Tags',
			'meta_desc' => 'Meta Desc',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('file_name',$this->file_name,true);
		$criteria->compare('content',$this->content,true);
		$criteria->compare('date_create',$this->date_create,true);
		$criteria->compare('date_update',$this->date_update,true);
		$criteria->compare('meta_tags',$this->meta_tags,true);
		$criteria->compare('meta_desc',$this->meta_desc,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return News the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function afterFind()
	{
		$translate = Yii::app()->translate;
		$bahasaYangPilih=Yii::app()->translate->getLanguage();
		$bahasaDefault = Yii::app()->params['defaultLanguage'];
		$main['title'] = $this->title;
		$main['content'] = $this->content;
		
		$this->title = Yii::t('news\\title\\'.$this->id, 'title' );
		$this->content = Yii::t('news\\content\\'.$this->id, 'content');
		
		if ($bahasaYangPilih == $bahasaDefault) {
			// kalo bahasa nya sama dengan default
			$this->title = $main['title'];
			$this->content = $main['content'];
		}else{
			if($translate->hasMessages()){
				$this->title = $main['title'];
				$this->content = $main['content'];
			}
		}

		return true;
	}
}
