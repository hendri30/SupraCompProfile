<script src="<?php echo Yii::app()->baseUrl.'/ckeditor/ckeditor.js'; ?>"></script>

<div class="container">

<?php $action=$model->getIsNewRecord() ? 'Create' : 'Update';?>
<h1><?php echo TranslateModule::t(($action) . ' Message')." # ".$model->id." - ".TranslateModule::translator()->acceptedLanguages[$model->language]; ?></h1>

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'message-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->hiddenField($model,'id',array('size'=>10,'maxlength'=>10)); ?>
	<?php echo $form->hiddenField($model,'language',array('size'=>16,'maxlength'=>16)); ?>

	<table>
		<tr>
			<td><?php echo $form->label($model->source,'category'); ?></td>
			<td><?php echo $form->textField($model->source,'category',array('disabled'=>'disabled')); ?></td>
		</tr>
		<tr>
			<td><?php echo $form->label($model->source,'message'); ?></td>
			<td><?php echo $form->textField($model->source,'message',array('disabled'=>'disabled')); ?></td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($model,'translation'); ?></td>
			<td><?php //echo $form->textArea($model,'translation',array('rows'=>2, 'cols'=>80)); ?>
				<?php echo $form->textArea($model,'translation',array('id'=>'editor1')); ?>
				<?php echo $form->error($model,'translation'); ?></td>
		</tr>
		<tr>
			<td colspan="2"><?php echo CHtml::submitButton(TranslateModule::t($action)); ?></td>
		</tr>
	</table>

<?php $this->endWidget(); ?>

</div><!-- container -->

<script type="text/javascript">
	CKEDITOR.replace('editor1',
		{
			"extraPlugins": "imagebrowser",
			"imageBrowser_listUrl": '<?php echo Yii::app()->createUrl("site/images"); ?>'
		}
	);
</script>