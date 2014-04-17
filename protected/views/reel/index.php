<?php
/* @var $this ReelController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Reels',
);

$this->menu=array(
	array('label'=>'Create Reel', 'url'=>array('create')),
	array('label'=>'Manage Reel', 'url'=>array('admin')),
);
?>

<h1>Reels</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
