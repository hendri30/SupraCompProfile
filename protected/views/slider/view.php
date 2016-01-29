<h1><span class="fa fa-desktop"></span> Slider<hr></h1>
<ul class="breadcrumb" style="background-color:#F8F8F8;">
	<li><a href="<?php echo Yii::app()->createUrl('site/admin'); ?>"><span class="fa fa-dashboard"></span> Dashboard</a></li>
	<li><a href="<?php echo Yii::app()->createUrl('slider/admin'); ?>"><span class="fa fa-desktop"></span> Slider</a></li>
	<li class="active"><span class="fa fa-eye"></span> View</li>
	<li class="active"><?php echo $model->caption; ?></li>
</ul><hr>

<a href="<?php echo Yii::app()->createUrl('slider/update&id='.$model->id); ?>" class="btn btn-default"><span class="fa fa-edit"></span> Update</a>
<?php echo  CHtml::link('<div class="btn btn-danger"> <span class="fa fa-remove"></span> Delete</div>','#',array('submit'=>array('delete','id'=>$model->id),'confirm' => 'Are you sure you want to delete this item?')); ?>

<div style="padding-top:20px;">
<?php $this->widget('booster.widgets.TbAlert', array(
	'fade' => true,
	'closeText' => '&times;',
	'events' => array(),
	'htmlOptions' => array(),
	'userComponentId' => 'user',
	'alerts' => array(
		// success, info, warning, error or danger
		'success' => array('closeText' => '&times;'),
	),
));	?>
</div>

<?php $this->widget('booster.widgets.TbDetailView',array(
	'data'=>$model,
	'type'=>'striped bordered',
	'attributes'=>array(
		'id',
		'caption',
		'qoutes',
		array(
			'label'=>'File Slide',
			'type'=>'raw',
			'value'=>CHtml::image(Yii::app()->request->baseUrl.'/images/slider/'.$model->file_name,'image', array("class"=>"img-responsive","alt"=>"","style"=>"width:100%;")),
		),
		'active',
		'sequence',
	),
)); ?>