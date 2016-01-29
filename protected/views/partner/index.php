	<section id="portfolio">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown"><?php echo Yii::t('Our Partners','Our Partners'); ?></h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="portfolio-items">
				<?php $this->widget('booster.widgets.TbListView',array(
					'dataProvider'=>$dataProviderPartner,
					'itemView'=>'_view',
					'summaryText'=>false,
				)); ?>
			</div>
		</div>
	</section>

	<section id="work-process">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown"><?php echo Yii::t('Our Product','Our Product'); ?></h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row text-center">
				<?php $this->widget('booster.widgets.TbListView',array(
					'dataProvider'=>$dataProviderProduct,
					'itemView'=>'_view',
					'summaryText'=>false,
				)); ?>
			</div>
		</div>
	</section><!--/#work-process-->