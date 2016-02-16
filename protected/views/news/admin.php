<h1><span class="fa fa-bullhorn"></span> News<hr></h1>
<ul class="breadcrumb" style="background-color:#F8F8F8;">
	<li><a href="<?php echo Yii::app()->createUrl('site/admin'); ?>"><span class="fa fa-dashboard"></span> Dashboard</a></li>
	<li><a href="<?php echo Yii::app()->createUrl('news/admin'); ?>"><span class="fa fa-bullhorn"></span> News</a></li>
	<li class="active"><span class="fa fa-cog"></span> Manage</li>
</ul><hr>

<a href="<?php echo Yii::app()->createUrl('news/create'); ?>" class="btn btn-default"><span class="fa fa-plus"></span> Create</a>

<?php $this->widget('booster.widgets.TbGridView',array(
	'id'=>'news-grid',
	'type'=>'striped bordered',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array(
			'name'=>'id',
			'htmlOptions'=>array('style'=>'width:100px;'),
		),
		'title',
		array(
			'name'=>'file_name',
			'type'=>'raw',
			'value'=>'CHtml::image(Yii::app()->baseUrl.\'/images/news/\'.$data->file_name,\'\',array("width"=>80,"height"=>50))',
		),
		array(
			'name'=>'content',
			'value'=>'strlen($data->content) > 5 ? substr($data->content, 0, 100)."..." : $data->content',
		),
		array(
			'name'=>'date_create',
			'htmlOptions'=>array('style'=>'width:180px;'),
		),
		array(
			'name'=>'date_update',
			'htmlOptions'=>array('style'=>'width:180px;'),
		),
		
		/*
		'meta_tags',
		'meta_desc',
		*/
		array(
			'class'=>'booster.widgets.TbButtonColumn',
			'htmlOptions'=>array('style'=>'width:80px;'),
		),
	),
)); ?>
