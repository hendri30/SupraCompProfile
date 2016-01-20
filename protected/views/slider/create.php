<h1><span class="fa fa-desktop"></span> Slider<hr></h1>
<ul class="breadcrumb" style="background-color:#F8F8F8;">
	<li><a href="<?php echo Yii::app()->createUrl('site/admin'); ?>"><span class="fa fa-dashboard"></span> Dashboard</a></li>
	<li><a href="<?php echo Yii::app()->createUrl('slider/admin'); ?>"><span class="fa fa-desktop"></span> Slider</a></li>
	<li class="active"><span class="fa fa-plus"></span> Create</li>
</ul><hr>

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

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>