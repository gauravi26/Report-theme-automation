<?php

/**
 * This is the model class for table "form_theme".
 *
 * The followings are the available columns in table 'form_theme':
 * @property integer $id
 * @property string $form_element
 * @property string $element
 * @property integer $element_id
 * @property string $property
 * @property string $value
 * @property integer $theme_ID
 * @property string $form_theme_name
 *
 * The followings are the available model relations:
 * @property FormElement $element0
 * @property Themes $theme
 */
class FormTheme extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'form_theme';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('element, theme_ID', 'required'),
			array('element_id, theme_ID', 'numerical', 'integerOnly'=>true),
			array('form_element, element, property, value, form_theme_name', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, form_element, element, element_id, property, value, theme_ID, form_theme_name', 'safe', 'on'=>'search'),
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
			'element0' => array(self::BELONGS_TO, 'FormElement', 'element_id'),
			'theme' => array(self::BELONGS_TO, 'Themes', 'theme_ID'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'form_element' => 'Form Element',
			'element' => 'Element',
			'element_id' => 'Element',
			'property' => 'Property',
			'value' => 'Value',
			'theme_ID' => 'Theme',
			'form_theme_name' => 'Form Theme Name',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('form_element',$this->form_element,true);
		$criteria->compare('element',$this->element,true);
		$criteria->compare('element_id',$this->element_id);
		$criteria->compare('property',$this->property,true);
		$criteria->compare('value',$this->value,true);
		$criteria->compare('theme_ID',$this->theme_ID);
		$criteria->compare('form_theme_name',$this->form_theme_name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return FormTheme the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
