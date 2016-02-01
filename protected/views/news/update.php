<h1><span class="fa fa-bullhorn"></span> News<hr></h1>
<ul class="breadcrumb" style="background-color:#F8F8F8;">
	<li><a href="<?php echo Yii::app()->createUrl('site/admin'); ?>"><span class="fa fa-dashboard"></span> Dashboard</a></li>
	<li><a href="<?php echo Yii::app()->createUrl('news/admin'); ?>"><span class="fa fa-bullhorn"></span> News</a></li>
	<li class="active"><span class="fa fa-edit"></span> Update</li>
	<li class="active"><?php echo $model->title; ?></li>
</ul><hr>

<a href="<?php echo Yii::app()->createUrl('news/view',['id'=>$model->id]); ?>" class="btn btn-default"><span class="fa fa-edit"></span> Inline Editing</a>

<?php $this->widget('booster.widgets.TbAlert', array(
	'fade' => true,
	'closeText' => '&times;',
	'events' => array(),
	'htmlOptions' => array(),
	'userComponentId' => 'user',
	'alerts' => array(
		// success, info, warning, error or danger
		'error' => array('closeText' => '&times;'),
	),
));	?>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>