<?php
$this->breadcrumbs=array(
	'Contacts',
);

$this->menu=array(
array('label'=>'Create Contacts','url'=>array('create')),
array('label'=>'Manage Contacts','url'=>array('admin')),
);
?>

<h1>Contacts</h1>

<?php $this->widget('booster.widgets.TbListView',array(
'dataProvider'=>$dataProvider,
'itemView'=>'_view',
)); ?>