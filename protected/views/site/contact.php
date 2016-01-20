<div id='AjFlash' class="flash-success" style="display:none"></div>

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'contacts-form',
	'enableAjaxValidation'=>false,
)); ?>

	<?php echo $form->textField($model,'name',array('class'=>'form-control','style'=>'margin-bottom:5px;','placeholder'=>'Name')); ?>
	<?php echo $form->error($model,'name'); ?>

	<?php echo $form->textField($model,'email',array('class'=>'form-control','style'=>'margin-bottom:5px;','placeholder'=>'Email')); ?>
	<?php echo $form->error($model,'email'); ?>

	<?php echo $form->textField($model,'subject',array('size'=>60,'maxlength'=>128,'class'=>'form-control','style'=>'margin-bottom:5px;','placeholder'=>'Subject')); ?>
	<?php echo $form->error($model,'subject'); ?>

	<?php echo $form->textArea($model,'message',array('rows'=>3, 'cols'=>50,'class'=>'form-control','style'=>'margin-bottom:5px;','placeholder'=>'Message')); ?>
	<?php echo $form->error($model,'message'); ?>

	<p>
		<?php if(CCaptcha::checkRequirements()): ?>
		<?php $this->widget('CCaptcha'); ?>
		<?php echo $form->textField($model,'verifyCode',array('style'=>'height:50px;text-align:center;margin-top:5px;','placeholder'=>'Captcha')); ?>
		<?php echo $form->error($model,'verifyCode'); ?>
		<?php endif; ?>
	</p>

	<?php echo CHtml::ajaxSubmitButton('Send',
		CHtml::normalizeUrl(array('site/SendContact')),
		array(
			'data'=>'js:jQuery(this).parents("form").serialize()+"&request=added"',
			'success'=>'function(data){
				// $("#eventlist").html(data);
				$("#AjFlash").html(data).fadeIn().animate({opacity: 1.0}, 4000).fadeOut("slow");
			}'
		),
		array(
			'id'=>'ajaxSubmitBtn',
			'name'=>'ajaxSubmitBtn',
			'class'=>'btn btn-primary',
		));
	?>

<?php $this->endWidget(); ?>