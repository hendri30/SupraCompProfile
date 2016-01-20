<h1><span class="fa fa-envelope"></span> Contact<hr></h1>
<ul class="breadcrumb" style="background-color:#F8F8F8;">
	<li><a href="<?php echo Yii::app()->createUrl('site/admin'); ?>"><span class="fa fa-dashboard"></span> Dashboard</a></li>
	<li><a href="<?php echo Yii::app()->createUrl('contacts/admin'); ?>"><span class="fa fa-envelope"></span> Contact</a></li>
	<li class="active"><span class="fa fa-eye"></span> View</li>
	<li class="active"><?php echo $model->name; ?></li>
</ul><hr>

<div style="margin-bottom:20px;">
<a href="mailto:<?php echo $model->email; ?>" class="btn btn-default"><span class="fa fa-envelope"></span> Reply</a>
<?php echo  CHtml::link('<div class="btn btn-danger"> <span class="fa fa-remove"></span> Delete</div>','#',array('submit'=>array('delete','id'=>$model->id),'confirm' => 'Are you sure you want to delete this item?')); ?>
</div>

<?php $this->widget('booster.widgets.TbDetailView',array(
	'data'=>$model,
	'type'=>'striped bordered',
	'attributes'=>array(
		'id',
		'name',
		'email',
		'subject',
		'message',
		'date',
	),
)); ?>
