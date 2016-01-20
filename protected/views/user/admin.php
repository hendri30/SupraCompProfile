<h1><span class="fa fa-user"></span> User<hr></h1>
<ul class="breadcrumb" style="background-color:#F8F8F8;">
	<li><a href="<?php echo Yii::app()->createUrl('site/admin'); ?>"><span class="fa fa-dashboard"></span> Dashboard</a></li>
	<li><a href="<?php echo Yii::app()->createUrl('user/admin'); ?>"><span class="fa fa-user"></span> User</a></li>
	<li class="active"><span class="fa fa-cog"></span> Manage</li>
</ul><hr>

<?php if(Yii::app()->user->getState('level')==1){ ?>
<a href="<?php echo Yii::app()->createUrl('user/create'); ?>" class="btn btn-default"><span class="fa fa-plus"></span> Create</a>

<?php $this->widget('booster.widgets.TbGridView',array(
	'id'=>'user-grid',
	'type'=>'striped bordered',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'username',
		'password',
		array(
			'name'=>'level_id',
			'value'=>'$data->level->level',
			'filter'=>CHtml::listData(Level::model()->findAll(array('order'=>'id')),'id','level'),
		),
		'last_login',
		array(
			'class'=>'booster.widgets.TbButtonColumn',
			'htmlOptions'=>array('style'=>'width:80px;'),
		),
),
)); ?>
<?php } if(Yii::app()->user->getState('level')!=1){ ?>
Anda tidak dapat mengakses halaman ini. Kembali ke <a href="<?php echo Yii::app()->createUrl('site/admin'); ?>">Beranda</a>
<?php } ?>
