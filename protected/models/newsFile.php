<?php

/**
 * This is the model class for table "noticiaarchivo".
 *
 * The followings are the available columns in table 'noticiaarchivo':
 * @property integer $idnoticiaArchivo
 * @property integer $noticia_idnoticia
 * @property integer $tipoArchivo_idtipoArchivo
 */
class newsFile extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'noticiaarchivo';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idnoticiaArchivo, noticia_idnoticia, tipoArchivo_idtipoArchivo', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idnoticiaArchivo, noticia_idnoticia, tipoArchivo_idtipoArchivo', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idnoticiaArchivo' => 'Idnoticia Archivo',
			'noticia_idnoticia' => 'Noticia Idnoticia',
			'tipoArchivo_idtipoArchivo' => 'Tipo Archivo Idtipo Archivo',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('idnoticiaArchivo',$this->idnoticiaArchivo);
		$criteria->compare('noticia_idnoticia',$this->noticia_idnoticia);
		$criteria->compare('tipoArchivo_idtipoArchivo',$this->tipoArchivo_idtipoArchivo);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return newsFile the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
