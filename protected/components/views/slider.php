<?php if($models != null): ?>
	<?php $i=1; foreach($models as $model): ?>
		<div class="item" style="background:url(images/slider/<?php echo $model->file_name; ?>);">
			<div class="slider-inner">
				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<div class="carousel-content">
								<h2><?php echo $model->caption; ?></h2>
								<p><?php echo $model->qoutes; ?></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php $i++; endforeach; ?>
<?php endif; ?>