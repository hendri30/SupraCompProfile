	<section id="meet-team">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown"><?php echo Yii::t('Meet The Team','Meet The Team'); ?></h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row">
				<?php $this->widget('booster.widgets.TbListView',array(
					'dataProvider'=>$dataProvider,
					'itemView'=>'_view',
				)); ?>
			</div>
		</div>
	</section>
