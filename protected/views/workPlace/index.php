<?php
/* @var $this WorkPlaceController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Work Places',
);

$this->menu=array(
	array('label'=>'Create workPlace', 'url'=>array('create')),
	array('label'=>'Manage workPlace', 'url'=>array('admin')),
);
?>

<h1>Work Places</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
