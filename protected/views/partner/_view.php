<?php if($data['category']=='Distributor') { ?>
<div class="col-sm-6 col-md-3">
	<div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="100ms">
		<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/partner/'.$data->file_name; ?>" alt="">
	</div>
</div>

<?php } if($data['category']=='Partner') { ?>
<div class="portfolio-item customer">
	<div class="portfolio-item-inner">
		<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/partner/'.$data->file_name; ?>" alt="">
		<div class="portfolio-info">
			<h3><?php echo $data->name; ?></h3>
			<a class="preview" href="<?php echo Yii::app()->request->baseUrl.'/images/partner/'.$data->file_name; ?>" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
		</div>
	</div>
</div>
<?php } ?>
