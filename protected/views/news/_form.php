<script src="<?php echo Yii::app()->baseUrl.'/ckeditor/ckeditor.js'; ?>"></script>

<?php
/* @var $this NewsController */
/* @var $model News */
/* @var $form CActiveForm */
?>

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'news-form',
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

<?php //echo $form->errorSummary($model); ?>

<table style="margin-bottom:30px;">
	<tr>
		<td><?php echo $form->labelEx($model,'title'); ?></td><td><?php echo $form->textField($model,'title',array('size'=>'100%','maxlength'=>80,'class'=>'form-control')); ?></td>
	</tr>
	<tr>
		<td><?php echo $form->labelEx($model,'file_name'); ?></td>
		<td>
			<?php if(!empty($model->file_name)){ ?>
				<?php echo CHtml::image(Yii::app()->request->baseUrl.'/images/news/'.$model->file_name.'','image',array("style"=>"width:100px;")); ?>
			<?php } ?>
			<?php echo $form->fileField($model,'file_name',array('size'=>'100%','maxlength'=>80)); ?>
		</td>
	</tr>
	<tr>
		<td><?php echo $form->labelEx($model,'content'); ?></td>
		<td><?php echo $form->textArea($model,'content',array('id'=>'editor1')); ?></td>
	</tr>
	<tr>
		<td><?php echo $form->labelEx($model,'meta_tags'); ?></td><td><?php echo $form->textArea($model,'meta_tags',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?></td>
	</tr>
	<tr>
		<td><?php echo $form->labelEx($model,'meta_desc'); ?></td><td><?php echo $form->textArea($model,'meta_desc',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?></td>
	</tr>
	<tr>
		<td colspan="2">
			<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'btn btn-primary')); ?>
		</td>
	</tr>
</table>

<?php $this->endWidget(); ?>

<script type="text/javascript">
	CKEDITOR.replace('editor1');
</script>