<?php if($data['category']=='Partner') { ?>
<div class="portfolio-item customer">
	<div class="portfolio-item-inner">
		<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/partner/'.$data->file_name; ?>" alt="">
		<div class="portfolio-info">
			<h3><?php echo $data->name; ?></h3>
			<a class="preview" href="<?php echo Yii::app()->request->baseUrl.'/images/partner/'.$data->file_name; ?>" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
		</div>
	</div>
</div>
<?php } if($data['category']=='Product') { ?>
<div class="col-sm-6 col-md-3">
	<div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="100ms">
		<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/partner/'.$data->file_name; ?>" alt="">
	</div>
</div>
<?php } ?>

<?php /*
<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id),array('view','id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
	<?php echo CHtml::encode($data->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('file_name')); ?>:</b>
	<?php echo CHtml::encode($data->file_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('link')); ?>:</b>
	<?php echo CHtml::encode($data->link); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('category')); ?>:</b>
	<?php echo CHtml::encode($data->category); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('active')); ?>:</b>
	<?php echo CHtml::encode($data->active); ?>
	<br />


</div>
*/ ?>