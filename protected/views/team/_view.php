<div class="col-sm-6 col-md-3">
	<div class="team-member wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
		<div class="team-img">
			<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/team/'.$data->file_name; ?>" alt="">
		</div>
		<div class="team-info">
			<h3><?php echo $data->name; ?></h3>
			<span>Position</span>
		</div>
		<p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>
		<ul class="social-icons">
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
		</ul>
	</div>
</div>

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

	<b><?php echo CHtml::encode($data->getAttributeLabel('active')); ?>:</b>
	<?php echo CHtml::encode($data->active); ?>
	<br />

</div>
*/ ?>