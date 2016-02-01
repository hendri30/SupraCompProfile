<h1><span class="fa fa-user"></span> User<hr></h1>
<ul class="breadcrumb" style="background-color:#F8F8F8;">
	<li><a href="<?php echo Yii::app()->createUrl('site/admin'); ?>"><span class="fa fa-dashboard"></span> Dashboard</a></li>
	<li><a href="<?php echo Yii::app()->createUrl('user/admin'); ?>"><span class="fa fa-user"></span> User</a></li>
	<li class="active"><span class="fa fa-eye"></span> View</li>
	<li class="active"><?php echo $model->username; ?></li>
</ul><hr>

<a href="<?php echo Yii::app()->createUrl('user/update',['id'=>$model->id]); ?>" class="btn btn-default"><span class="fa fa-edit"></span> Update</a>

<div style="padding-top:20px;">
<?php $this->widget('booster.widgets.TbDetailView',array(
	'data'=>$model,
	'type'=>'striped bordered',
	'attributes'=>array(
		'username',
		array(
			'name'=>'level_id',
			'value'=>$model->level->level,
		),
		'last_login',
	),
)); ?>
</div>