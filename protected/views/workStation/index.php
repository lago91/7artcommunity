<?php
/* @var $this WorkStationController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Work Stations',
);

$this->menu=array(
	array('label'=>'Create workStation', 'url'=>array('create')),
	array('label'=>'Manage workStation', 'url'=>array('admin')),
);
?>

<h1>Work Stations</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
