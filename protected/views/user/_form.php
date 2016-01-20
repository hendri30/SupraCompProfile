<?php $form=$this->beginWidget('booster.widgets.TbActiveForm',array(
	'id'=>'user-form',
	'enableAjaxValidation'=>false,
)); ?>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldGroup($model,'username',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>64)))); ?>

	<?php echo $form->passwordFieldGroup($model,'password',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>128)))); ?>

	<?php echo $form->dropDownListGroup($model,'level_id',array(
		'wrapperHtmlOptions'=>array(
			'class'=>'col-sm-5',
		),
		'widgetOptions'=>array(
			'data'=>CHtml::listData(Level::model()->findAll(array('order'=>'level ASC')),'id','level'),
			'htmlOptions'=>array(
				'empty'=>'Choose',
			),
		),
	)); ?>

	<div class="form-actions">
		<?php $this->widget('booster.widgets.TbButton', array(
			'buttonType'=>'submit',
			'context'=>'primary',
			'label'=>$model->isNewRecord ? 'Create' : 'Save',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
