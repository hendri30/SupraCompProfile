<h1><span class="fa fa-book"></span> Pages<hr></h1>
<ul class="breadcrumb" style="background-color:#F8F8F8;">
	<li><a href="<?php echo Yii::app()->createUrl('site/admin'); ?>"><span class="fa fa-dashboard"></span> Dashboard</a></li>
	<li><a href="<?php echo Yii::app()->createUrl('pages/admin'); ?>"><span class="fa fa-book"></span> Pages</a></li>
	<li class="active"><span class="fa fa-cog"></span> Manage</li>
</ul><hr>

<a href="<?php echo Yii::app()->createUrl('pages/create'); ?>" class="btn btn-default"><span class="fa fa-plus"></span> Create</a>

<div id='AjFlash' class="flash-success" style="display:none"></div>

<?php $this->widget('booster.widgets.TbGridView',array(
	'id'=>'pages-grid',
	'type'=>'striped bordered',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array(
			'name'=>'id',
			'htmlOptions'=>array('style'=>'width:80px;'),
		),
		'key',
		'meta_tag',
		//'meta_desc',
		'name',
		//'content',
		array(
			'name'=>'thumb_image',
			'type'=>'raw',
			'value'=>'CHtml::image(Yii::app()->baseUrl.\'/images/page/\'.$data->thumb_image,\'\',array("width"=>80,"height"=>50))',
		),
		'last_update',
		array(
			'class'=>'booster.widgets.TbButtonColumn',
			'htmlOptions'=>array('style'=>'width:80px;'),
		),
	),
)); ?>
