<?php

/**
 * This is the model class for table "trabajousuario".
 *
 * The followings are the available columns in table 'trabajousuario':
 * @property integer $idtrabajoUsuario
 * @property integer $usuario_idusuario
 * @property integer $lugarTrabajo_idlugarTrabajo
 * @property integer $puestoTrabajo_idpuestoTrabajo
 */
class userWork extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'trabajousuario';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('usuario_idusuario, lugarTrabajo_idlugarTrabajo, puestoTrabajo_idpuestoTrabajo', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idtrabajoUsuario, usuario_idusuario, lugarTrabajo_idlugarTrabajo, puestoTrabajo_idpuestoTrabajo', 'safe', 'on'=>'search'),
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
			'idtrabajoUsuario' => 'Idtrabajo Usuario',
			'usuario_idusuario' => 'Usuario Idusuario',
			'lugarTrabajo_idlugarTrabajo' => 'Lugar Trabajo Idlugar Trabajo',
			'puestoTrabajo_idpuestoTrabajo' => 'Puesto Trabajo Idpuesto Trabajo',
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

		$criteria->compare('idtrabajoUsuario',$this->idtrabajoUsuario);
		$criteria->compare('usuario_idusuario',$this->usuario_idusuario);
		$criteria->compare('lugarTrabajo_idlugarTrabajo',$this->lugarTrabajo_idlugarTrabajo);
		$criteria->compare('puestoTrabajo_idpuestoTrabajo',$this->puestoTrabajo_idpuestoTrabajo);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return userWork the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
