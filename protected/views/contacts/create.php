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

<div class="container" style="margin-bottom:30px;">
	<h1>Contact Us</h1>
	<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
</div>