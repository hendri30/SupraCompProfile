<div class="container" style="margin-bottom:30px;min-height:450px;">

<h1><?php echo TranslateModule::t('Missing Translations')." - ".TranslateModule::translator()->acceptedLanguages[Yii::app()->getLanguage()]?></h1>
<?php 
$source=MessageSource::model()->findAll();
$this->widget('booster.widgets.TbGridView',array(
	'id'=>'message-grid',
    'type'=>'striped bordered',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
        array(
            'name'=>'message',
            'filter'=>CHtml::listData($source,'message','message'),
            'value'=>'strlen($data->message) > 5 ? substr($data->message, 0, 100)."..." : $data->message',
        ),
        array(
            'name'=>'category',
            'filter'=>CHtml::listData($source,'category','category'),
        ),
        array(
            'class'=>'booster.widgets.TbButtonColumn',
            'template'=>'{create} {delete}',
            'deleteButtonUrl'=>'Yii::app()->getController()->createUrl("missingdelete",array("id"=>$data->id))',
            'buttons'=>array(
                'create'=>array(
                    'label'=>TranslateModule::t('Create'),
                    'url'=>'Yii::app()->getController()->createUrl("create",array("id"=>$data->id,"language"=>Yii::app()->getLanguage()))'
                )
            ),
            'header'=>TranslateModule::translator()->dropdown(),
        )
	),
)); ?>

</div>