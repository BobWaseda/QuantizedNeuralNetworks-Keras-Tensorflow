       �K"	  �A�}�Abrain.Event:2S�}�d     PW!�	�Q�A�}�A"��
�
quantized_conv2d_1_inputPlaceholder*
dtype0*$
shape:���������  */
_output_shapes
:���������  
�
'quantized_conv2d_1/random_uniform/shapeConst*
dtype0*%
valueB"         @   *
_output_shapes
:
j
%quantized_conv2d_1/random_uniform/minConst*
dtype0*
valueB
 *  ��*
_output_shapes
: 
j
%quantized_conv2d_1/random_uniform/maxConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
/quantized_conv2d_1/random_uniform/RandomUniformRandomUniform'quantized_conv2d_1/random_uniform/shape*
dtype0*
seed2���*
seed���)*
T0*&
_output_shapes
:@
�
%quantized_conv2d_1/random_uniform/subSub%quantized_conv2d_1/random_uniform/max%quantized_conv2d_1/random_uniform/min*
T0*
_output_shapes
: 
�
%quantized_conv2d_1/random_uniform/mulMul/quantized_conv2d_1/random_uniform/RandomUniform%quantized_conv2d_1/random_uniform/sub*
T0*&
_output_shapes
:@
�
!quantized_conv2d_1/random_uniformAdd%quantized_conv2d_1/random_uniform/mul%quantized_conv2d_1/random_uniform/min*
T0*&
_output_shapes
:@
�
quantized_conv2d_1/kernel
VariableV2*
dtype0*
shape:@*
	container *
shared_name *&
_output_shapes
:@
�
 quantized_conv2d_1/kernel/AssignAssignquantized_conv2d_1/kernel!quantized_conv2d_1/random_uniform*
validate_shape(*,
_class"
 loc:@quantized_conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
:@
�
quantized_conv2d_1/kernel/readIdentityquantized_conv2d_1/kernel*,
_class"
 loc:@quantized_conv2d_1/kernel*
T0*&
_output_shapes
:@
e
quantized_conv2d_1/ConstConst*
dtype0*
valueB@*    *
_output_shapes
:@
�
quantized_conv2d_1/bias
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
quantized_conv2d_1/bias/AssignAssignquantized_conv2d_1/biasquantized_conv2d_1/Const*
validate_shape(**
_class 
loc:@quantized_conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
�
quantized_conv2d_1/bias/readIdentityquantized_conv2d_1/bias**
_class 
loc:@quantized_conv2d_1/bias*
T0*
_output_shapes
:@
]
quantized_conv2d_1/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_1/mulMulquantized_conv2d_1/kernel/readquantized_conv2d_1/mul/y*
T0*&
_output_shapes
:@
j
quantized_conv2d_1/RoundRoundquantized_conv2d_1/mul*
T0*&
_output_shapes
:@
�
quantized_conv2d_1/subSubquantized_conv2d_1/Roundquantized_conv2d_1/mul*
T0*&
_output_shapes
:@
x
quantized_conv2d_1/StopGradientStopGradientquantized_conv2d_1/sub*
T0*&
_output_shapes
:@
�
quantized_conv2d_1/addAddquantized_conv2d_1/mulquantized_conv2d_1/StopGradient*
T0*&
_output_shapes
:@
e
quantized_conv2d_1/Const_1Const*
dtype0*
valueB :
���������*
_output_shapes
: 
k
quantized_conv2d_1/CastCastquantized_conv2d_1/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
\
quantized_conv2d_1/Const_2Const*
dtype0*
value	B :*
_output_shapes
: 
m
quantized_conv2d_1/Cast_1Castquantized_conv2d_1/Const_2*

DstT0*

SrcT0*
_output_shapes
: 
�
(quantized_conv2d_1/clip_by_value/MinimumMinimumquantized_conv2d_1/addquantized_conv2d_1/Cast_1*
T0*&
_output_shapes
:@
�
 quantized_conv2d_1/clip_by_valueMaximum(quantized_conv2d_1/clip_by_value/Minimumquantized_conv2d_1/Cast*
T0*&
_output_shapes
:@
]
quantized_conv2d_1/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_1/divRealDiv quantized_conv2d_1/clip_by_valuequantized_conv2d_1/div/y*
T0*&
_output_shapes
:@
�
!quantized_conv2d_1/StopGradient_1StopGradientquantized_conv2d_1_input*
T0*/
_output_shapes
:���������  
_
quantized_conv2d_1/mul_1/xConst*
dtype0*
valueB
 *  �*
_output_shapes
: 
�
quantized_conv2d_1/mul_1Mulquantized_conv2d_1/mul_1/x!quantized_conv2d_1/StopGradient_1*
T0*/
_output_shapes
:���������  
�
quantized_conv2d_1/sub_1Subquantized_conv2d_1_inputquantized_conv2d_1/mul_1*
T0*/
_output_shapes
:���������  
_
quantized_conv2d_1/mul_2/yConst*
dtype0*
valueB
 *���=*
_output_shapes
: 
�
quantized_conv2d_1/mul_2Mulquantized_conv2d_1/sub_1quantized_conv2d_1/mul_2/y*
T0*/
_output_shapes
:���������  
}
$quantized_conv2d_1/convolution/ShapeConst*
dtype0*%
valueB"         @   *
_output_shapes
:
}
,quantized_conv2d_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
quantized_conv2d_1/convolutionConv2Dquantized_conv2d_1/mul_2quantized_conv2d_1/div*/
_output_shapes
:���������  @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
!quantized_conv2d_1/StopGradient_2StopGradientquantized_conv2d_1/convolution*
T0*/
_output_shapes
:���������  @
_
quantized_conv2d_1/mul_3/xConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
�
quantized_conv2d_1/mul_3Mulquantized_conv2d_1/mul_3/x!quantized_conv2d_1/StopGradient_2*
T0*/
_output_shapes
:���������  @
�
quantized_conv2d_1/sub_2Subquantized_conv2d_1/convolutionquantized_conv2d_1/mul_3*
T0*/
_output_shapes
:���������  @
_
quantized_conv2d_1/mul_4/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_1/mul_4Mulquantized_conv2d_1/sub_2quantized_conv2d_1/mul_4/y*
T0*/
_output_shapes
:���������  @
�
quantized_conv2d_1/BiasAddBiasAddquantized_conv2d_1/mul_4quantized_conv2d_1/bias/read*/
_output_shapes
:���������  @*
T0*
data_formatNHWC
h
batch_normalization_1/ConstConst*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
batch_normalization_1/gamma
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gammabatch_normalization_1/Const*
validate_shape(*.
_class$
" loc:@batch_normalization_1/gamma*
use_locking(*
T0*
_output_shapes
:@
�
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
T0*
_output_shapes
:@
j
batch_normalization_1/Const_1Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
batch_normalization_1/beta
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/betabatch_normalization_1/Const_1*
validate_shape(*-
_class#
!loc:@batch_normalization_1/beta*
use_locking(*
T0*
_output_shapes
:@
�
batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
T0*
_output_shapes
:@
j
batch_normalization_1/Const_2Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
!batch_normalization_1/moving_mean
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_meanbatch_normalization_1/Const_2*
validate_shape(*4
_class*
(&loc:@batch_normalization_1/moving_mean*
use_locking(*
T0*
_output_shapes
:@
�
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
T0*
_output_shapes
:@
j
batch_normalization_1/Const_3Const*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
%batch_normalization_1/moving_variance
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variancebatch_normalization_1/Const_3*
validate_shape(*8
_class.
,*loc:@batch_normalization_1/moving_variance*
use_locking(*
T0*
_output_shapes
:@
�
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
T0*
_output_shapes
:@
�
4batch_normalization_1/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
"batch_normalization_1/moments/MeanMeanquantized_conv2d_1/BiasAdd4batch_normalization_1/moments/Mean/reduction_indices*&
_output_shapes
:@*
T0*
	keep_dims(*

Tidx0
�
*batch_normalization_1/moments/StopGradientStopGradient"batch_normalization_1/moments/Mean*
T0*&
_output_shapes
:@
�
!batch_normalization_1/moments/SubSubquantized_conv2d_1/BiasAdd*batch_normalization_1/moments/StopGradient*
T0*/
_output_shapes
:���������  @
�
<batch_normalization_1/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
*batch_normalization_1/moments/shifted_meanMean!batch_normalization_1/moments/Sub<batch_normalization_1/moments/shifted_mean/reduction_indices*&
_output_shapes
:@*
T0*
	keep_dims(*

Tidx0
�
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferencequantized_conv2d_1/BiasAdd*batch_normalization_1/moments/StopGradient*
T0*/
_output_shapes
:���������  @
�
6batch_normalization_1/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
$batch_normalization_1/moments/Mean_1Mean/batch_normalization_1/moments/SquaredDifference6batch_normalization_1/moments/Mean_1/reduction_indices*&
_output_shapes
:@*
T0*
	keep_dims(*

Tidx0
�
$batch_normalization_1/moments/SquareSquare*batch_normalization_1/moments/shifted_mean*
T0*&
_output_shapes
:@
�
&batch_normalization_1/moments/varianceSub$batch_normalization_1/moments/Mean_1$batch_normalization_1/moments/Square*
T0*&
_output_shapes
:@
�
"batch_normalization_1/moments/meanAdd*batch_normalization_1/moments/shifted_mean*batch_normalization_1/moments/StopGradient*
T0*&
_output_shapes
:@
�
%batch_normalization_1/moments/SqueezeSqueeze"batch_normalization_1/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@
�
'batch_normalization_1/moments/Squeeze_1Squeeze&batch_normalization_1/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@
j
%batch_normalization_1/batchnorm/add/yConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
#batch_normalization_1/batchnorm/addAdd'batch_normalization_1/moments/Squeeze_1%batch_normalization_1/batchnorm/add/y*
T0*
_output_shapes
:@
x
%batch_normalization_1/batchnorm/RsqrtRsqrt#batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:@
�
#batch_normalization_1/batchnorm/mulMul%batch_normalization_1/batchnorm/Rsqrt batch_normalization_1/gamma/read*
T0*
_output_shapes
:@
�
%batch_normalization_1/batchnorm/mul_1Mulquantized_conv2d_1/BiasAdd#batch_normalization_1/batchnorm/mul*
T0*/
_output_shapes
:���������  @
�
%batch_normalization_1/batchnorm/mul_2Mul%batch_normalization_1/moments/Squeeze#batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:@
�
#batch_normalization_1/batchnorm/subSubbatch_normalization_1/beta/read%batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:@
�
%batch_normalization_1/batchnorm/add_1Add%batch_normalization_1/batchnorm/mul_1#batch_normalization_1/batchnorm/sub*
T0*/
_output_shapes
:���������  @
�
+batch_normalization_1/AssignMovingAvg/decayConst*
dtype0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB
 *
�#<*
_output_shapes
: 
�
)batch_normalization_1/AssignMovingAvg/subSub&batch_normalization_1/moving_mean/read%batch_normalization_1/moments/Squeeze*4
_class*
(&loc:@batch_normalization_1/moving_mean*
T0*
_output_shapes
:@
�
)batch_normalization_1/AssignMovingAvg/mulMul)batch_normalization_1/AssignMovingAvg/sub+batch_normalization_1/AssignMovingAvg/decay*4
_class*
(&loc:@batch_normalization_1/moving_mean*
T0*
_output_shapes
:@
�
%batch_normalization_1/AssignMovingAvg	AssignSub!batch_normalization_1/moving_mean)batch_normalization_1/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_1/moving_mean*
use_locking( *
T0*
_output_shapes
:@
�
-batch_normalization_1/AssignMovingAvg_1/decayConst*
dtype0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB
 *
�#<*
_output_shapes
: 
�
+batch_normalization_1/AssignMovingAvg_1/subSub*batch_normalization_1/moving_variance/read'batch_normalization_1/moments/Squeeze_1*8
_class.
,*loc:@batch_normalization_1/moving_variance*
T0*
_output_shapes
:@
�
+batch_normalization_1/AssignMovingAvg_1/mulMul+batch_normalization_1/AssignMovingAvg_1/sub-batch_normalization_1/AssignMovingAvg_1/decay*8
_class.
,*loc:@batch_normalization_1/moving_variance*
T0*
_output_shapes
:@
�
'batch_normalization_1/AssignMovingAvg_1	AssignSub%batch_normalization_1/moving_variance+batch_normalization_1/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_1/moving_variance*
use_locking( *
T0*
_output_shapes
:@
o
*batch_normalization_1/keras_learning_phasePlaceholder*
dtype0
*
shape:*
_output_shapes
:
�
!batch_normalization_1/cond/SwitchSwitch*batch_normalization_1/keras_learning_phase*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes

::
w
#batch_normalization_1/cond/switch_tIdentity#batch_normalization_1/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_1/cond/switch_fIdentity!batch_normalization_1/cond/Switch*
T0
*
_output_shapes
:
}
"batch_normalization_1/cond/pred_idIdentity*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
:
�
#batch_normalization_1/cond/Switch_1Switch%batch_normalization_1/batchnorm/add_1"batch_normalization_1/cond/pred_id*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*J
_output_shapes8
6:���������  @:���������  @
�
*batch_normalization_1/cond/batchnorm/add/yConst$^batch_normalization_1/cond/switch_f*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
/batch_normalization_1/cond/batchnorm/add/SwitchSwitch*batch_normalization_1/moving_variance/read"batch_normalization_1/cond/pred_id*8
_class.
,*loc:@batch_normalization_1/moving_variance*
T0* 
_output_shapes
:@:@
�
(batch_normalization_1/cond/batchnorm/addAdd/batch_normalization_1/cond/batchnorm/add/Switch*batch_normalization_1/cond/batchnorm/add/y*
T0*
_output_shapes
:@
�
*batch_normalization_1/cond/batchnorm/RsqrtRsqrt(batch_normalization_1/cond/batchnorm/add*
T0*
_output_shapes
:@
�
/batch_normalization_1/cond/batchnorm/mul/SwitchSwitch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id*.
_class$
" loc:@batch_normalization_1/gamma*
T0* 
_output_shapes
:@:@
�
(batch_normalization_1/cond/batchnorm/mulMul*batch_normalization_1/cond/batchnorm/Rsqrt/batch_normalization_1/cond/batchnorm/mul/Switch*
T0*
_output_shapes
:@
�
1batch_normalization_1/cond/batchnorm/mul_1/SwitchSwitchquantized_conv2d_1/BiasAdd"batch_normalization_1/cond/pred_id*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
T0*J
_output_shapes8
6:���������  @:���������  @
�
*batch_normalization_1/cond/batchnorm/mul_1Mul1batch_normalization_1/cond/batchnorm/mul_1/Switch(batch_normalization_1/cond/batchnorm/mul*
T0*/
_output_shapes
:���������  @
�
1batch_normalization_1/cond/batchnorm/mul_2/SwitchSwitch&batch_normalization_1/moving_mean/read"batch_normalization_1/cond/pred_id*4
_class*
(&loc:@batch_normalization_1/moving_mean*
T0* 
_output_shapes
:@:@
�
*batch_normalization_1/cond/batchnorm/mul_2Mul1batch_normalization_1/cond/batchnorm/mul_2/Switch(batch_normalization_1/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
/batch_normalization_1/cond/batchnorm/sub/SwitchSwitchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id*-
_class#
!loc:@batch_normalization_1/beta*
T0* 
_output_shapes
:@:@
�
(batch_normalization_1/cond/batchnorm/subSub/batch_normalization_1/cond/batchnorm/sub/Switch*batch_normalization_1/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
*batch_normalization_1/cond/batchnorm/add_1Add*batch_normalization_1/cond/batchnorm/mul_1(batch_normalization_1/cond/batchnorm/sub*
T0*/
_output_shapes
:���������  @
�
 batch_normalization_1/cond/MergeMerge*batch_normalization_1/cond/batchnorm/add_1%batch_normalization_1/cond/Switch_1:1*1
_output_shapes
:���������  @: *
T0*
N
W
activation_1/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_1/mulMul batch_normalization_1/cond/Mergeactivation_1/mul/y*
T0*/
_output_shapes
:���������  @
g
activation_1/RoundRoundactivation_1/mul*
T0*/
_output_shapes
:���������  @
w
activation_1/subSubactivation_1/Roundactivation_1/mul*
T0*/
_output_shapes
:���������  @
u
activation_1/StopGradientStopGradientactivation_1/sub*
T0*/
_output_shapes
:���������  @
~
activation_1/addAddactivation_1/mulactivation_1/StopGradient*
T0*/
_output_shapes
:���������  @
T
activation_1/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
]
activation_1/CastCastactivation_1/Const*

DstT0*

SrcT0*
_output_shapes
: 
V
activation_1/Const_1Const*
dtype0*
value	B :*
_output_shapes
: 
a
activation_1/Cast_1Castactivation_1/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
�
"activation_1/clip_by_value/MinimumMinimumactivation_1/addactivation_1/Cast_1*
T0*/
_output_shapes
:���������  @
�
activation_1/clip_by_valueMaximum"activation_1/clip_by_value/Minimumactivation_1/Cast*
T0*/
_output_shapes
:���������  @
W
activation_1/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_1/divRealDivactivation_1/clip_by_valueactivation_1/div/y*
T0*/
_output_shapes
:���������  @
�
max_pooling2d_1/MaxPoolMaxPoolactivation_1/div*/
_output_shapes
:���������@*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
�
'quantized_conv2d_2/random_uniform/shapeConst*
dtype0*%
valueB"      @   @   *
_output_shapes
:
j
%quantized_conv2d_2/random_uniform/minConst*
dtype0*
valueB
 *  ��*
_output_shapes
: 
j
%quantized_conv2d_2/random_uniform/maxConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
/quantized_conv2d_2/random_uniform/RandomUniformRandomUniform'quantized_conv2d_2/random_uniform/shape*
dtype0*
seed2�ո*
seed���)*
T0*&
_output_shapes
:@@
�
%quantized_conv2d_2/random_uniform/subSub%quantized_conv2d_2/random_uniform/max%quantized_conv2d_2/random_uniform/min*
T0*
_output_shapes
: 
�
%quantized_conv2d_2/random_uniform/mulMul/quantized_conv2d_2/random_uniform/RandomUniform%quantized_conv2d_2/random_uniform/sub*
T0*&
_output_shapes
:@@
�
!quantized_conv2d_2/random_uniformAdd%quantized_conv2d_2/random_uniform/mul%quantized_conv2d_2/random_uniform/min*
T0*&
_output_shapes
:@@
�
quantized_conv2d_2/kernel
VariableV2*
dtype0*
shape:@@*
	container *
shared_name *&
_output_shapes
:@@
�
 quantized_conv2d_2/kernel/AssignAssignquantized_conv2d_2/kernel!quantized_conv2d_2/random_uniform*
validate_shape(*,
_class"
 loc:@quantized_conv2d_2/kernel*
use_locking(*
T0*&
_output_shapes
:@@
�
quantized_conv2d_2/kernel/readIdentityquantized_conv2d_2/kernel*,
_class"
 loc:@quantized_conv2d_2/kernel*
T0*&
_output_shapes
:@@
e
quantized_conv2d_2/ConstConst*
dtype0*
valueB@*    *
_output_shapes
:@
�
quantized_conv2d_2/bias
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
quantized_conv2d_2/bias/AssignAssignquantized_conv2d_2/biasquantized_conv2d_2/Const*
validate_shape(**
_class 
loc:@quantized_conv2d_2/bias*
use_locking(*
T0*
_output_shapes
:@
�
quantized_conv2d_2/bias/readIdentityquantized_conv2d_2/bias**
_class 
loc:@quantized_conv2d_2/bias*
T0*
_output_shapes
:@
]
quantized_conv2d_2/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_2/mulMulquantized_conv2d_2/kernel/readquantized_conv2d_2/mul/y*
T0*&
_output_shapes
:@@
j
quantized_conv2d_2/RoundRoundquantized_conv2d_2/mul*
T0*&
_output_shapes
:@@
�
quantized_conv2d_2/subSubquantized_conv2d_2/Roundquantized_conv2d_2/mul*
T0*&
_output_shapes
:@@
x
quantized_conv2d_2/StopGradientStopGradientquantized_conv2d_2/sub*
T0*&
_output_shapes
:@@
�
quantized_conv2d_2/addAddquantized_conv2d_2/mulquantized_conv2d_2/StopGradient*
T0*&
_output_shapes
:@@
e
quantized_conv2d_2/Const_1Const*
dtype0*
valueB :
���������*
_output_shapes
: 
k
quantized_conv2d_2/CastCastquantized_conv2d_2/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
\
quantized_conv2d_2/Const_2Const*
dtype0*
value	B :*
_output_shapes
: 
m
quantized_conv2d_2/Cast_1Castquantized_conv2d_2/Const_2*

DstT0*

SrcT0*
_output_shapes
: 
�
(quantized_conv2d_2/clip_by_value/MinimumMinimumquantized_conv2d_2/addquantized_conv2d_2/Cast_1*
T0*&
_output_shapes
:@@
�
 quantized_conv2d_2/clip_by_valueMaximum(quantized_conv2d_2/clip_by_value/Minimumquantized_conv2d_2/Cast*
T0*&
_output_shapes
:@@
]
quantized_conv2d_2/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_2/divRealDiv quantized_conv2d_2/clip_by_valuequantized_conv2d_2/div/y*
T0*&
_output_shapes
:@@
�
!quantized_conv2d_2/StopGradient_1StopGradientmax_pooling2d_1/MaxPool*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_2/mul_1/xConst*
dtype0*
valueB
 *  �*
_output_shapes
: 
�
quantized_conv2d_2/mul_1Mulquantized_conv2d_2/mul_1/x!quantized_conv2d_2/StopGradient_1*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_2/sub_1Submax_pooling2d_1/MaxPoolquantized_conv2d_2/mul_1*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_2/mul_2/yConst*
dtype0*
valueB
 *���=*
_output_shapes
: 
�
quantized_conv2d_2/mul_2Mulquantized_conv2d_2/sub_1quantized_conv2d_2/mul_2/y*
T0*/
_output_shapes
:���������@
}
$quantized_conv2d_2/convolution/ShapeConst*
dtype0*%
valueB"      @   @   *
_output_shapes
:
}
,quantized_conv2d_2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
quantized_conv2d_2/convolutionConv2Dquantized_conv2d_2/mul_2quantized_conv2d_2/div*/
_output_shapes
:���������@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
!quantized_conv2d_2/StopGradient_2StopGradientquantized_conv2d_2/convolution*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_2/mul_3/xConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
�
quantized_conv2d_2/mul_3Mulquantized_conv2d_2/mul_3/x!quantized_conv2d_2/StopGradient_2*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_2/sub_2Subquantized_conv2d_2/convolutionquantized_conv2d_2/mul_3*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_2/mul_4/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_2/mul_4Mulquantized_conv2d_2/sub_2quantized_conv2d_2/mul_4/y*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_2/BiasAddBiasAddquantized_conv2d_2/mul_4quantized_conv2d_2/bias/read*/
_output_shapes
:���������@*
T0*
data_formatNHWC
h
batch_normalization_2/ConstConst*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
batch_normalization_2/gamma
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gammabatch_normalization_2/Const*
validate_shape(*.
_class$
" loc:@batch_normalization_2/gamma*
use_locking(*
T0*
_output_shapes
:@
�
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*.
_class$
" loc:@batch_normalization_2/gamma*
T0*
_output_shapes
:@
j
batch_normalization_2/Const_1Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
batch_normalization_2/beta
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/betabatch_normalization_2/Const_1*
validate_shape(*-
_class#
!loc:@batch_normalization_2/beta*
use_locking(*
T0*
_output_shapes
:@
�
batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*-
_class#
!loc:@batch_normalization_2/beta*
T0*
_output_shapes
:@
j
batch_normalization_2/Const_2Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
!batch_normalization_2/moving_mean
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_meanbatch_normalization_2/Const_2*
validate_shape(*4
_class*
(&loc:@batch_normalization_2/moving_mean*
use_locking(*
T0*
_output_shapes
:@
�
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*4
_class*
(&loc:@batch_normalization_2/moving_mean*
T0*
_output_shapes
:@
j
batch_normalization_2/Const_3Const*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
%batch_normalization_2/moving_variance
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variancebatch_normalization_2/Const_3*
validate_shape(*8
_class.
,*loc:@batch_normalization_2/moving_variance*
use_locking(*
T0*
_output_shapes
:@
�
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*8
_class.
,*loc:@batch_normalization_2/moving_variance*
T0*
_output_shapes
:@
�
4batch_normalization_2/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
"batch_normalization_2/moments/MeanMeanquantized_conv2d_2/BiasAdd4batch_normalization_2/moments/Mean/reduction_indices*&
_output_shapes
:@*
T0*
	keep_dims(*

Tidx0
�
*batch_normalization_2/moments/StopGradientStopGradient"batch_normalization_2/moments/Mean*
T0*&
_output_shapes
:@
�
!batch_normalization_2/moments/SubSubquantized_conv2d_2/BiasAdd*batch_normalization_2/moments/StopGradient*
T0*/
_output_shapes
:���������@
�
<batch_normalization_2/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
*batch_normalization_2/moments/shifted_meanMean!batch_normalization_2/moments/Sub<batch_normalization_2/moments/shifted_mean/reduction_indices*&
_output_shapes
:@*
T0*
	keep_dims(*

Tidx0
�
/batch_normalization_2/moments/SquaredDifferenceSquaredDifferencequantized_conv2d_2/BiasAdd*batch_normalization_2/moments/StopGradient*
T0*/
_output_shapes
:���������@
�
6batch_normalization_2/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
$batch_normalization_2/moments/Mean_1Mean/batch_normalization_2/moments/SquaredDifference6batch_normalization_2/moments/Mean_1/reduction_indices*&
_output_shapes
:@*
T0*
	keep_dims(*

Tidx0
�
$batch_normalization_2/moments/SquareSquare*batch_normalization_2/moments/shifted_mean*
T0*&
_output_shapes
:@
�
&batch_normalization_2/moments/varianceSub$batch_normalization_2/moments/Mean_1$batch_normalization_2/moments/Square*
T0*&
_output_shapes
:@
�
"batch_normalization_2/moments/meanAdd*batch_normalization_2/moments/shifted_mean*batch_normalization_2/moments/StopGradient*
T0*&
_output_shapes
:@
�
%batch_normalization_2/moments/SqueezeSqueeze"batch_normalization_2/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@
�
'batch_normalization_2/moments/Squeeze_1Squeeze&batch_normalization_2/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@
j
%batch_normalization_2/batchnorm/add/yConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
#batch_normalization_2/batchnorm/addAdd'batch_normalization_2/moments/Squeeze_1%batch_normalization_2/batchnorm/add/y*
T0*
_output_shapes
:@
x
%batch_normalization_2/batchnorm/RsqrtRsqrt#batch_normalization_2/batchnorm/add*
T0*
_output_shapes
:@
�
#batch_normalization_2/batchnorm/mulMul%batch_normalization_2/batchnorm/Rsqrt batch_normalization_2/gamma/read*
T0*
_output_shapes
:@
�
%batch_normalization_2/batchnorm/mul_1Mulquantized_conv2d_2/BiasAdd#batch_normalization_2/batchnorm/mul*
T0*/
_output_shapes
:���������@
�
%batch_normalization_2/batchnorm/mul_2Mul%batch_normalization_2/moments/Squeeze#batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@
�
#batch_normalization_2/batchnorm/subSubbatch_normalization_2/beta/read%batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@
�
%batch_normalization_2/batchnorm/add_1Add%batch_normalization_2/batchnorm/mul_1#batch_normalization_2/batchnorm/sub*
T0*/
_output_shapes
:���������@
�
+batch_normalization_2/AssignMovingAvg/decayConst*
dtype0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB
 *
�#<*
_output_shapes
: 
�
)batch_normalization_2/AssignMovingAvg/subSub&batch_normalization_2/moving_mean/read%batch_normalization_2/moments/Squeeze*4
_class*
(&loc:@batch_normalization_2/moving_mean*
T0*
_output_shapes
:@
�
)batch_normalization_2/AssignMovingAvg/mulMul)batch_normalization_2/AssignMovingAvg/sub+batch_normalization_2/AssignMovingAvg/decay*4
_class*
(&loc:@batch_normalization_2/moving_mean*
T0*
_output_shapes
:@
�
%batch_normalization_2/AssignMovingAvg	AssignSub!batch_normalization_2/moving_mean)batch_normalization_2/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_2/moving_mean*
use_locking( *
T0*
_output_shapes
:@
�
-batch_normalization_2/AssignMovingAvg_1/decayConst*
dtype0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB
 *
�#<*
_output_shapes
: 
�
+batch_normalization_2/AssignMovingAvg_1/subSub*batch_normalization_2/moving_variance/read'batch_normalization_2/moments/Squeeze_1*8
_class.
,*loc:@batch_normalization_2/moving_variance*
T0*
_output_shapes
:@
�
+batch_normalization_2/AssignMovingAvg_1/mulMul+batch_normalization_2/AssignMovingAvg_1/sub-batch_normalization_2/AssignMovingAvg_1/decay*8
_class.
,*loc:@batch_normalization_2/moving_variance*
T0*
_output_shapes
:@
�
'batch_normalization_2/AssignMovingAvg_1	AssignSub%batch_normalization_2/moving_variance+batch_normalization_2/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_2/moving_variance*
use_locking( *
T0*
_output_shapes
:@
�
!batch_normalization_2/cond/SwitchSwitch*batch_normalization_1/keras_learning_phase*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes

::
w
#batch_normalization_2/cond/switch_tIdentity#batch_normalization_2/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_2/cond/switch_fIdentity!batch_normalization_2/cond/Switch*
T0
*
_output_shapes
:
}
"batch_normalization_2/cond/pred_idIdentity*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
:
�
#batch_normalization_2/cond/Switch_1Switch%batch_normalization_2/batchnorm/add_1"batch_normalization_2/cond/pred_id*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*J
_output_shapes8
6:���������@:���������@
�
*batch_normalization_2/cond/batchnorm/add/yConst$^batch_normalization_2/cond/switch_f*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
/batch_normalization_2/cond/batchnorm/add/SwitchSwitch*batch_normalization_2/moving_variance/read"batch_normalization_2/cond/pred_id*8
_class.
,*loc:@batch_normalization_2/moving_variance*
T0* 
_output_shapes
:@:@
�
(batch_normalization_2/cond/batchnorm/addAdd/batch_normalization_2/cond/batchnorm/add/Switch*batch_normalization_2/cond/batchnorm/add/y*
T0*
_output_shapes
:@
�
*batch_normalization_2/cond/batchnorm/RsqrtRsqrt(batch_normalization_2/cond/batchnorm/add*
T0*
_output_shapes
:@
�
/batch_normalization_2/cond/batchnorm/mul/SwitchSwitch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id*.
_class$
" loc:@batch_normalization_2/gamma*
T0* 
_output_shapes
:@:@
�
(batch_normalization_2/cond/batchnorm/mulMul*batch_normalization_2/cond/batchnorm/Rsqrt/batch_normalization_2/cond/batchnorm/mul/Switch*
T0*
_output_shapes
:@
�
1batch_normalization_2/cond/batchnorm/mul_1/SwitchSwitchquantized_conv2d_2/BiasAdd"batch_normalization_2/cond/pred_id*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
T0*J
_output_shapes8
6:���������@:���������@
�
*batch_normalization_2/cond/batchnorm/mul_1Mul1batch_normalization_2/cond/batchnorm/mul_1/Switch(batch_normalization_2/cond/batchnorm/mul*
T0*/
_output_shapes
:���������@
�
1batch_normalization_2/cond/batchnorm/mul_2/SwitchSwitch&batch_normalization_2/moving_mean/read"batch_normalization_2/cond/pred_id*4
_class*
(&loc:@batch_normalization_2/moving_mean*
T0* 
_output_shapes
:@:@
�
*batch_normalization_2/cond/batchnorm/mul_2Mul1batch_normalization_2/cond/batchnorm/mul_2/Switch(batch_normalization_2/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
/batch_normalization_2/cond/batchnorm/sub/SwitchSwitchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id*-
_class#
!loc:@batch_normalization_2/beta*
T0* 
_output_shapes
:@:@
�
(batch_normalization_2/cond/batchnorm/subSub/batch_normalization_2/cond/batchnorm/sub/Switch*batch_normalization_2/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
*batch_normalization_2/cond/batchnorm/add_1Add*batch_normalization_2/cond/batchnorm/mul_1(batch_normalization_2/cond/batchnorm/sub*
T0*/
_output_shapes
:���������@
�
 batch_normalization_2/cond/MergeMerge*batch_normalization_2/cond/batchnorm/add_1%batch_normalization_2/cond/Switch_1:1*1
_output_shapes
:���������@: *
T0*
N
W
activation_2/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_2/mulMul batch_normalization_2/cond/Mergeactivation_2/mul/y*
T0*/
_output_shapes
:���������@
g
activation_2/RoundRoundactivation_2/mul*
T0*/
_output_shapes
:���������@
w
activation_2/subSubactivation_2/Roundactivation_2/mul*
T0*/
_output_shapes
:���������@
u
activation_2/StopGradientStopGradientactivation_2/sub*
T0*/
_output_shapes
:���������@
~
activation_2/addAddactivation_2/mulactivation_2/StopGradient*
T0*/
_output_shapes
:���������@
T
activation_2/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
]
activation_2/CastCastactivation_2/Const*

DstT0*

SrcT0*
_output_shapes
: 
V
activation_2/Const_1Const*
dtype0*
value	B :*
_output_shapes
: 
a
activation_2/Cast_1Castactivation_2/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
�
"activation_2/clip_by_value/MinimumMinimumactivation_2/addactivation_2/Cast_1*
T0*/
_output_shapes
:���������@
�
activation_2/clip_by_valueMaximum"activation_2/clip_by_value/Minimumactivation_2/Cast*
T0*/
_output_shapes
:���������@
W
activation_2/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_2/divRealDivactivation_2/clip_by_valueactivation_2/div/y*
T0*/
_output_shapes
:���������@
�
max_pooling2d_2/MaxPoolMaxPoolactivation_2/div*/
_output_shapes
:���������@*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
�
'quantized_conv2d_3/random_uniform/shapeConst*
dtype0*%
valueB"      @   @   *
_output_shapes
:
j
%quantized_conv2d_3/random_uniform/minConst*
dtype0*
valueB
 *  ��*
_output_shapes
: 
j
%quantized_conv2d_3/random_uniform/maxConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
/quantized_conv2d_3/random_uniform/RandomUniformRandomUniform'quantized_conv2d_3/random_uniform/shape*
dtype0*
seed2�֘*
seed���)*
T0*&
_output_shapes
:@@
�
%quantized_conv2d_3/random_uniform/subSub%quantized_conv2d_3/random_uniform/max%quantized_conv2d_3/random_uniform/min*
T0*
_output_shapes
: 
�
%quantized_conv2d_3/random_uniform/mulMul/quantized_conv2d_3/random_uniform/RandomUniform%quantized_conv2d_3/random_uniform/sub*
T0*&
_output_shapes
:@@
�
!quantized_conv2d_3/random_uniformAdd%quantized_conv2d_3/random_uniform/mul%quantized_conv2d_3/random_uniform/min*
T0*&
_output_shapes
:@@
�
quantized_conv2d_3/kernel
VariableV2*
dtype0*
shape:@@*
	container *
shared_name *&
_output_shapes
:@@
�
 quantized_conv2d_3/kernel/AssignAssignquantized_conv2d_3/kernel!quantized_conv2d_3/random_uniform*
validate_shape(*,
_class"
 loc:@quantized_conv2d_3/kernel*
use_locking(*
T0*&
_output_shapes
:@@
�
quantized_conv2d_3/kernel/readIdentityquantized_conv2d_3/kernel*,
_class"
 loc:@quantized_conv2d_3/kernel*
T0*&
_output_shapes
:@@
e
quantized_conv2d_3/ConstConst*
dtype0*
valueB@*    *
_output_shapes
:@
�
quantized_conv2d_3/bias
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
quantized_conv2d_3/bias/AssignAssignquantized_conv2d_3/biasquantized_conv2d_3/Const*
validate_shape(**
_class 
loc:@quantized_conv2d_3/bias*
use_locking(*
T0*
_output_shapes
:@
�
quantized_conv2d_3/bias/readIdentityquantized_conv2d_3/bias**
_class 
loc:@quantized_conv2d_3/bias*
T0*
_output_shapes
:@
]
quantized_conv2d_3/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_3/mulMulquantized_conv2d_3/kernel/readquantized_conv2d_3/mul/y*
T0*&
_output_shapes
:@@
j
quantized_conv2d_3/RoundRoundquantized_conv2d_3/mul*
T0*&
_output_shapes
:@@
�
quantized_conv2d_3/subSubquantized_conv2d_3/Roundquantized_conv2d_3/mul*
T0*&
_output_shapes
:@@
x
quantized_conv2d_3/StopGradientStopGradientquantized_conv2d_3/sub*
T0*&
_output_shapes
:@@
�
quantized_conv2d_3/addAddquantized_conv2d_3/mulquantized_conv2d_3/StopGradient*
T0*&
_output_shapes
:@@
e
quantized_conv2d_3/Const_1Const*
dtype0*
valueB :
���������*
_output_shapes
: 
k
quantized_conv2d_3/CastCastquantized_conv2d_3/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
\
quantized_conv2d_3/Const_2Const*
dtype0*
value	B :*
_output_shapes
: 
m
quantized_conv2d_3/Cast_1Castquantized_conv2d_3/Const_2*

DstT0*

SrcT0*
_output_shapes
: 
�
(quantized_conv2d_3/clip_by_value/MinimumMinimumquantized_conv2d_3/addquantized_conv2d_3/Cast_1*
T0*&
_output_shapes
:@@
�
 quantized_conv2d_3/clip_by_valueMaximum(quantized_conv2d_3/clip_by_value/Minimumquantized_conv2d_3/Cast*
T0*&
_output_shapes
:@@
]
quantized_conv2d_3/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_3/divRealDiv quantized_conv2d_3/clip_by_valuequantized_conv2d_3/div/y*
T0*&
_output_shapes
:@@
�
!quantized_conv2d_3/StopGradient_1StopGradientmax_pooling2d_2/MaxPool*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_3/mul_1/xConst*
dtype0*
valueB
 *  �*
_output_shapes
: 
�
quantized_conv2d_3/mul_1Mulquantized_conv2d_3/mul_1/x!quantized_conv2d_3/StopGradient_1*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_3/sub_1Submax_pooling2d_2/MaxPoolquantized_conv2d_3/mul_1*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_3/mul_2/yConst*
dtype0*
valueB
 *���=*
_output_shapes
: 
�
quantized_conv2d_3/mul_2Mulquantized_conv2d_3/sub_1quantized_conv2d_3/mul_2/y*
T0*/
_output_shapes
:���������@
}
$quantized_conv2d_3/convolution/ShapeConst*
dtype0*%
valueB"      @   @   *
_output_shapes
:
}
,quantized_conv2d_3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
quantized_conv2d_3/convolutionConv2Dquantized_conv2d_3/mul_2quantized_conv2d_3/div*/
_output_shapes
:���������@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
!quantized_conv2d_3/StopGradient_2StopGradientquantized_conv2d_3/convolution*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_3/mul_3/xConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
�
quantized_conv2d_3/mul_3Mulquantized_conv2d_3/mul_3/x!quantized_conv2d_3/StopGradient_2*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_3/sub_2Subquantized_conv2d_3/convolutionquantized_conv2d_3/mul_3*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_3/mul_4/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_3/mul_4Mulquantized_conv2d_3/sub_2quantized_conv2d_3/mul_4/y*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_3/BiasAddBiasAddquantized_conv2d_3/mul_4quantized_conv2d_3/bias/read*/
_output_shapes
:���������@*
T0*
data_formatNHWC
h
batch_normalization_3/ConstConst*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
batch_normalization_3/gamma
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
"batch_normalization_3/gamma/AssignAssignbatch_normalization_3/gammabatch_normalization_3/Const*
validate_shape(*.
_class$
" loc:@batch_normalization_3/gamma*
use_locking(*
T0*
_output_shapes
:@
�
 batch_normalization_3/gamma/readIdentitybatch_normalization_3/gamma*.
_class$
" loc:@batch_normalization_3/gamma*
T0*
_output_shapes
:@
j
batch_normalization_3/Const_1Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
batch_normalization_3/beta
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
!batch_normalization_3/beta/AssignAssignbatch_normalization_3/betabatch_normalization_3/Const_1*
validate_shape(*-
_class#
!loc:@batch_normalization_3/beta*
use_locking(*
T0*
_output_shapes
:@
�
batch_normalization_3/beta/readIdentitybatch_normalization_3/beta*-
_class#
!loc:@batch_normalization_3/beta*
T0*
_output_shapes
:@
j
batch_normalization_3/Const_2Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
!batch_normalization_3/moving_mean
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
(batch_normalization_3/moving_mean/AssignAssign!batch_normalization_3/moving_meanbatch_normalization_3/Const_2*
validate_shape(*4
_class*
(&loc:@batch_normalization_3/moving_mean*
use_locking(*
T0*
_output_shapes
:@
�
&batch_normalization_3/moving_mean/readIdentity!batch_normalization_3/moving_mean*4
_class*
(&loc:@batch_normalization_3/moving_mean*
T0*
_output_shapes
:@
j
batch_normalization_3/Const_3Const*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
%batch_normalization_3/moving_variance
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
,batch_normalization_3/moving_variance/AssignAssign%batch_normalization_3/moving_variancebatch_normalization_3/Const_3*
validate_shape(*8
_class.
,*loc:@batch_normalization_3/moving_variance*
use_locking(*
T0*
_output_shapes
:@
�
*batch_normalization_3/moving_variance/readIdentity%batch_normalization_3/moving_variance*8
_class.
,*loc:@batch_normalization_3/moving_variance*
T0*
_output_shapes
:@
�
4batch_normalization_3/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
"batch_normalization_3/moments/MeanMeanquantized_conv2d_3/BiasAdd4batch_normalization_3/moments/Mean/reduction_indices*&
_output_shapes
:@*
T0*
	keep_dims(*

Tidx0
�
*batch_normalization_3/moments/StopGradientStopGradient"batch_normalization_3/moments/Mean*
T0*&
_output_shapes
:@
�
!batch_normalization_3/moments/SubSubquantized_conv2d_3/BiasAdd*batch_normalization_3/moments/StopGradient*
T0*/
_output_shapes
:���������@
�
<batch_normalization_3/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
*batch_normalization_3/moments/shifted_meanMean!batch_normalization_3/moments/Sub<batch_normalization_3/moments/shifted_mean/reduction_indices*&
_output_shapes
:@*
T0*
	keep_dims(*

Tidx0
�
/batch_normalization_3/moments/SquaredDifferenceSquaredDifferencequantized_conv2d_3/BiasAdd*batch_normalization_3/moments/StopGradient*
T0*/
_output_shapes
:���������@
�
6batch_normalization_3/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
$batch_normalization_3/moments/Mean_1Mean/batch_normalization_3/moments/SquaredDifference6batch_normalization_3/moments/Mean_1/reduction_indices*&
_output_shapes
:@*
T0*
	keep_dims(*

Tidx0
�
$batch_normalization_3/moments/SquareSquare*batch_normalization_3/moments/shifted_mean*
T0*&
_output_shapes
:@
�
&batch_normalization_3/moments/varianceSub$batch_normalization_3/moments/Mean_1$batch_normalization_3/moments/Square*
T0*&
_output_shapes
:@
�
"batch_normalization_3/moments/meanAdd*batch_normalization_3/moments/shifted_mean*batch_normalization_3/moments/StopGradient*
T0*&
_output_shapes
:@
�
%batch_normalization_3/moments/SqueezeSqueeze"batch_normalization_3/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@
�
'batch_normalization_3/moments/Squeeze_1Squeeze&batch_normalization_3/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@
j
%batch_normalization_3/batchnorm/add/yConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
#batch_normalization_3/batchnorm/addAdd'batch_normalization_3/moments/Squeeze_1%batch_normalization_3/batchnorm/add/y*
T0*
_output_shapes
:@
x
%batch_normalization_3/batchnorm/RsqrtRsqrt#batch_normalization_3/batchnorm/add*
T0*
_output_shapes
:@
�
#batch_normalization_3/batchnorm/mulMul%batch_normalization_3/batchnorm/Rsqrt batch_normalization_3/gamma/read*
T0*
_output_shapes
:@
�
%batch_normalization_3/batchnorm/mul_1Mulquantized_conv2d_3/BiasAdd#batch_normalization_3/batchnorm/mul*
T0*/
_output_shapes
:���������@
�
%batch_normalization_3/batchnorm/mul_2Mul%batch_normalization_3/moments/Squeeze#batch_normalization_3/batchnorm/mul*
T0*
_output_shapes
:@
�
#batch_normalization_3/batchnorm/subSubbatch_normalization_3/beta/read%batch_normalization_3/batchnorm/mul_2*
T0*
_output_shapes
:@
�
%batch_normalization_3/batchnorm/add_1Add%batch_normalization_3/batchnorm/mul_1#batch_normalization_3/batchnorm/sub*
T0*/
_output_shapes
:���������@
�
+batch_normalization_3/AssignMovingAvg/decayConst*
dtype0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
valueB
 *
�#<*
_output_shapes
: 
�
)batch_normalization_3/AssignMovingAvg/subSub&batch_normalization_3/moving_mean/read%batch_normalization_3/moments/Squeeze*4
_class*
(&loc:@batch_normalization_3/moving_mean*
T0*
_output_shapes
:@
�
)batch_normalization_3/AssignMovingAvg/mulMul)batch_normalization_3/AssignMovingAvg/sub+batch_normalization_3/AssignMovingAvg/decay*4
_class*
(&loc:@batch_normalization_3/moving_mean*
T0*
_output_shapes
:@
�
%batch_normalization_3/AssignMovingAvg	AssignSub!batch_normalization_3/moving_mean)batch_normalization_3/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_3/moving_mean*
use_locking( *
T0*
_output_shapes
:@
�
-batch_normalization_3/AssignMovingAvg_1/decayConst*
dtype0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
valueB
 *
�#<*
_output_shapes
: 
�
+batch_normalization_3/AssignMovingAvg_1/subSub*batch_normalization_3/moving_variance/read'batch_normalization_3/moments/Squeeze_1*8
_class.
,*loc:@batch_normalization_3/moving_variance*
T0*
_output_shapes
:@
�
+batch_normalization_3/AssignMovingAvg_1/mulMul+batch_normalization_3/AssignMovingAvg_1/sub-batch_normalization_3/AssignMovingAvg_1/decay*8
_class.
,*loc:@batch_normalization_3/moving_variance*
T0*
_output_shapes
:@
�
'batch_normalization_3/AssignMovingAvg_1	AssignSub%batch_normalization_3/moving_variance+batch_normalization_3/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_3/moving_variance*
use_locking( *
T0*
_output_shapes
:@
�
!batch_normalization_3/cond/SwitchSwitch*batch_normalization_1/keras_learning_phase*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes

::
w
#batch_normalization_3/cond/switch_tIdentity#batch_normalization_3/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_3/cond/switch_fIdentity!batch_normalization_3/cond/Switch*
T0
*
_output_shapes
:
}
"batch_normalization_3/cond/pred_idIdentity*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
:
�
#batch_normalization_3/cond/Switch_1Switch%batch_normalization_3/batchnorm/add_1"batch_normalization_3/cond/pred_id*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*J
_output_shapes8
6:���������@:���������@
�
*batch_normalization_3/cond/batchnorm/add/yConst$^batch_normalization_3/cond/switch_f*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
/batch_normalization_3/cond/batchnorm/add/SwitchSwitch*batch_normalization_3/moving_variance/read"batch_normalization_3/cond/pred_id*8
_class.
,*loc:@batch_normalization_3/moving_variance*
T0* 
_output_shapes
:@:@
�
(batch_normalization_3/cond/batchnorm/addAdd/batch_normalization_3/cond/batchnorm/add/Switch*batch_normalization_3/cond/batchnorm/add/y*
T0*
_output_shapes
:@
�
*batch_normalization_3/cond/batchnorm/RsqrtRsqrt(batch_normalization_3/cond/batchnorm/add*
T0*
_output_shapes
:@
�
/batch_normalization_3/cond/batchnorm/mul/SwitchSwitch batch_normalization_3/gamma/read"batch_normalization_3/cond/pred_id*.
_class$
" loc:@batch_normalization_3/gamma*
T0* 
_output_shapes
:@:@
�
(batch_normalization_3/cond/batchnorm/mulMul*batch_normalization_3/cond/batchnorm/Rsqrt/batch_normalization_3/cond/batchnorm/mul/Switch*
T0*
_output_shapes
:@
�
1batch_normalization_3/cond/batchnorm/mul_1/SwitchSwitchquantized_conv2d_3/BiasAdd"batch_normalization_3/cond/pred_id*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
T0*J
_output_shapes8
6:���������@:���������@
�
*batch_normalization_3/cond/batchnorm/mul_1Mul1batch_normalization_3/cond/batchnorm/mul_1/Switch(batch_normalization_3/cond/batchnorm/mul*
T0*/
_output_shapes
:���������@
�
1batch_normalization_3/cond/batchnorm/mul_2/SwitchSwitch&batch_normalization_3/moving_mean/read"batch_normalization_3/cond/pred_id*4
_class*
(&loc:@batch_normalization_3/moving_mean*
T0* 
_output_shapes
:@:@
�
*batch_normalization_3/cond/batchnorm/mul_2Mul1batch_normalization_3/cond/batchnorm/mul_2/Switch(batch_normalization_3/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
/batch_normalization_3/cond/batchnorm/sub/SwitchSwitchbatch_normalization_3/beta/read"batch_normalization_3/cond/pred_id*-
_class#
!loc:@batch_normalization_3/beta*
T0* 
_output_shapes
:@:@
�
(batch_normalization_3/cond/batchnorm/subSub/batch_normalization_3/cond/batchnorm/sub/Switch*batch_normalization_3/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
*batch_normalization_3/cond/batchnorm/add_1Add*batch_normalization_3/cond/batchnorm/mul_1(batch_normalization_3/cond/batchnorm/sub*
T0*/
_output_shapes
:���������@
�
 batch_normalization_3/cond/MergeMerge*batch_normalization_3/cond/batchnorm/add_1%batch_normalization_3/cond/Switch_1:1*1
_output_shapes
:���������@: *
T0*
N
W
activation_3/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_3/mulMul batch_normalization_3/cond/Mergeactivation_3/mul/y*
T0*/
_output_shapes
:���������@
g
activation_3/RoundRoundactivation_3/mul*
T0*/
_output_shapes
:���������@
w
activation_3/subSubactivation_3/Roundactivation_3/mul*
T0*/
_output_shapes
:���������@
u
activation_3/StopGradientStopGradientactivation_3/sub*
T0*/
_output_shapes
:���������@
~
activation_3/addAddactivation_3/mulactivation_3/StopGradient*
T0*/
_output_shapes
:���������@
T
activation_3/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
]
activation_3/CastCastactivation_3/Const*

DstT0*

SrcT0*
_output_shapes
: 
V
activation_3/Const_1Const*
dtype0*
value	B :*
_output_shapes
: 
a
activation_3/Cast_1Castactivation_3/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
�
"activation_3/clip_by_value/MinimumMinimumactivation_3/addactivation_3/Cast_1*
T0*/
_output_shapes
:���������@
�
activation_3/clip_by_valueMaximum"activation_3/clip_by_value/Minimumactivation_3/Cast*
T0*/
_output_shapes
:���������@
W
activation_3/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_3/divRealDivactivation_3/clip_by_valueactivation_3/div/y*
T0*/
_output_shapes
:���������@
�
max_pooling2d_3/MaxPoolMaxPoolactivation_3/div*/
_output_shapes
:���������@*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
f
flatten_1/ShapeShapemax_pooling2d_3/MaxPool*
out_type0*
T0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
Y
flatten_1/ConstConst*
dtype0*
valueB: *
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
\
flatten_1/stack/0Const*
dtype0*
valueB :
���������*
_output_shapes
: 
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
N*
T0*
_output_shapes
:*

axis 
�
flatten_1/ReshapeReshapemax_pooling2d_3/MaxPoolflatten_1/stack*0
_output_shapes
:������������������*
T0*
Tshape0
m
dense_1/random_uniform/shapeConst*
dtype0*
valueB"   
   *
_output_shapes
:
_
dense_1/random_uniform/minConst*
dtype0*
valueB
 *���*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
dtype0*
valueB
 *��=*
_output_shapes
: 
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
dtype0*
seed2Ҁ�*
seed���)*
T0*
_output_shapes
:	�

z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes
:	�


dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes
:	�

�
dense_1/kernel
VariableV2*
dtype0*
shape:	�
*
	container *
shared_name *
_output_shapes
:	�

�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0*
_output_shapes
:	�

|
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	�

�
dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������

h
batch_normalization_4/ConstConst*
dtype0*
valueB
*  �?*
_output_shapes
:

�
batch_normalization_4/gamma
VariableV2*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

�
"batch_normalization_4/gamma/AssignAssignbatch_normalization_4/gammabatch_normalization_4/Const*
validate_shape(*.
_class$
" loc:@batch_normalization_4/gamma*
use_locking(*
T0*
_output_shapes
:

�
 batch_normalization_4/gamma/readIdentitybatch_normalization_4/gamma*.
_class$
" loc:@batch_normalization_4/gamma*
T0*
_output_shapes
:

j
batch_normalization_4/Const_1Const*
dtype0*
valueB
*    *
_output_shapes
:

�
batch_normalization_4/beta
VariableV2*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

�
!batch_normalization_4/beta/AssignAssignbatch_normalization_4/betabatch_normalization_4/Const_1*
validate_shape(*-
_class#
!loc:@batch_normalization_4/beta*
use_locking(*
T0*
_output_shapes
:

�
batch_normalization_4/beta/readIdentitybatch_normalization_4/beta*-
_class#
!loc:@batch_normalization_4/beta*
T0*
_output_shapes
:

j
batch_normalization_4/Const_2Const*
dtype0*
valueB
*    *
_output_shapes
:

�
!batch_normalization_4/moving_mean
VariableV2*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

�
(batch_normalization_4/moving_mean/AssignAssign!batch_normalization_4/moving_meanbatch_normalization_4/Const_2*
validate_shape(*4
_class*
(&loc:@batch_normalization_4/moving_mean*
use_locking(*
T0*
_output_shapes
:

�
&batch_normalization_4/moving_mean/readIdentity!batch_normalization_4/moving_mean*4
_class*
(&loc:@batch_normalization_4/moving_mean*
T0*
_output_shapes
:

j
batch_normalization_4/Const_3Const*
dtype0*
valueB
*  �?*
_output_shapes
:

�
%batch_normalization_4/moving_variance
VariableV2*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

�
,batch_normalization_4/moving_variance/AssignAssign%batch_normalization_4/moving_variancebatch_normalization_4/Const_3*
validate_shape(*8
_class.
,*loc:@batch_normalization_4/moving_variance*
use_locking(*
T0*
_output_shapes
:

�
*batch_normalization_4/moving_variance/readIdentity%batch_normalization_4/moving_variance*8
_class.
,*loc:@batch_normalization_4/moving_variance*
T0*
_output_shapes
:

~
4batch_normalization_4/moments/Mean/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
�
"batch_normalization_4/moments/MeanMeandense_1/MatMul4batch_normalization_4/moments/Mean/reduction_indices*
_output_shapes

:
*
T0*
	keep_dims(*

Tidx0
�
*batch_normalization_4/moments/StopGradientStopGradient"batch_normalization_4/moments/Mean*
T0*
_output_shapes

:

�
!batch_normalization_4/moments/SubSubdense_1/MatMul*batch_normalization_4/moments/StopGradient*
T0*'
_output_shapes
:���������

�
<batch_normalization_4/moments/shifted_mean/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
�
*batch_normalization_4/moments/shifted_meanMean!batch_normalization_4/moments/Sub<batch_normalization_4/moments/shifted_mean/reduction_indices*
_output_shapes

:
*
T0*
	keep_dims(*

Tidx0
�
/batch_normalization_4/moments/SquaredDifferenceSquaredDifferencedense_1/MatMul*batch_normalization_4/moments/StopGradient*
T0*'
_output_shapes
:���������

�
6batch_normalization_4/moments/Mean_1/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
�
$batch_normalization_4/moments/Mean_1Mean/batch_normalization_4/moments/SquaredDifference6batch_normalization_4/moments/Mean_1/reduction_indices*
_output_shapes

:
*
T0*
	keep_dims(*

Tidx0
�
$batch_normalization_4/moments/SquareSquare*batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes

:

�
&batch_normalization_4/moments/varianceSub$batch_normalization_4/moments/Mean_1$batch_normalization_4/moments/Square*
T0*
_output_shapes

:

�
"batch_normalization_4/moments/meanAdd*batch_normalization_4/moments/shifted_mean*batch_normalization_4/moments/StopGradient*
T0*
_output_shapes

:

�
%batch_normalization_4/moments/SqueezeSqueeze"batch_normalization_4/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:

�
'batch_normalization_4/moments/Squeeze_1Squeeze&batch_normalization_4/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:

j
%batch_normalization_4/batchnorm/add/yConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
#batch_normalization_4/batchnorm/addAdd'batch_normalization_4/moments/Squeeze_1%batch_normalization_4/batchnorm/add/y*
T0*
_output_shapes
:

x
%batch_normalization_4/batchnorm/RsqrtRsqrt#batch_normalization_4/batchnorm/add*
T0*
_output_shapes
:

�
#batch_normalization_4/batchnorm/mulMul%batch_normalization_4/batchnorm/Rsqrt batch_normalization_4/gamma/read*
T0*
_output_shapes
:

�
%batch_normalization_4/batchnorm/mul_1Muldense_1/MatMul#batch_normalization_4/batchnorm/mul*
T0*'
_output_shapes
:���������

�
%batch_normalization_4/batchnorm/mul_2Mul%batch_normalization_4/moments/Squeeze#batch_normalization_4/batchnorm/mul*
T0*
_output_shapes
:

�
#batch_normalization_4/batchnorm/subSubbatch_normalization_4/beta/read%batch_normalization_4/batchnorm/mul_2*
T0*
_output_shapes
:

�
%batch_normalization_4/batchnorm/add_1Add%batch_normalization_4/batchnorm/mul_1#batch_normalization_4/batchnorm/sub*
T0*'
_output_shapes
:���������

�
+batch_normalization_4/AssignMovingAvg/decayConst*
dtype0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
valueB
 *
�#<*
_output_shapes
: 
�
)batch_normalization_4/AssignMovingAvg/subSub&batch_normalization_4/moving_mean/read%batch_normalization_4/moments/Squeeze*4
_class*
(&loc:@batch_normalization_4/moving_mean*
T0*
_output_shapes
:

�
)batch_normalization_4/AssignMovingAvg/mulMul)batch_normalization_4/AssignMovingAvg/sub+batch_normalization_4/AssignMovingAvg/decay*4
_class*
(&loc:@batch_normalization_4/moving_mean*
T0*
_output_shapes
:

�
%batch_normalization_4/AssignMovingAvg	AssignSub!batch_normalization_4/moving_mean)batch_normalization_4/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_4/moving_mean*
use_locking( *
T0*
_output_shapes
:

�
-batch_normalization_4/AssignMovingAvg_1/decayConst*
dtype0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
valueB
 *
�#<*
_output_shapes
: 
�
+batch_normalization_4/AssignMovingAvg_1/subSub*batch_normalization_4/moving_variance/read'batch_normalization_4/moments/Squeeze_1*8
_class.
,*loc:@batch_normalization_4/moving_variance*
T0*
_output_shapes
:

�
+batch_normalization_4/AssignMovingAvg_1/mulMul+batch_normalization_4/AssignMovingAvg_1/sub-batch_normalization_4/AssignMovingAvg_1/decay*8
_class.
,*loc:@batch_normalization_4/moving_variance*
T0*
_output_shapes
:

�
'batch_normalization_4/AssignMovingAvg_1	AssignSub%batch_normalization_4/moving_variance+batch_normalization_4/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_4/moving_variance*
use_locking( *
T0*
_output_shapes
:

�
!batch_normalization_4/cond/SwitchSwitch*batch_normalization_1/keras_learning_phase*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes

::
w
#batch_normalization_4/cond/switch_tIdentity#batch_normalization_4/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_4/cond/switch_fIdentity!batch_normalization_4/cond/Switch*
T0
*
_output_shapes
:
}
"batch_normalization_4/cond/pred_idIdentity*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
:
�
#batch_normalization_4/cond/Switch_1Switch%batch_normalization_4/batchnorm/add_1"batch_normalization_4/cond/pred_id*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*:
_output_shapes(
&:���������
:���������

�
*batch_normalization_4/cond/batchnorm/add/yConst$^batch_normalization_4/cond/switch_f*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
/batch_normalization_4/cond/batchnorm/add/SwitchSwitch*batch_normalization_4/moving_variance/read"batch_normalization_4/cond/pred_id*8
_class.
,*loc:@batch_normalization_4/moving_variance*
T0* 
_output_shapes
:
:

�
(batch_normalization_4/cond/batchnorm/addAdd/batch_normalization_4/cond/batchnorm/add/Switch*batch_normalization_4/cond/batchnorm/add/y*
T0*
_output_shapes
:

�
*batch_normalization_4/cond/batchnorm/RsqrtRsqrt(batch_normalization_4/cond/batchnorm/add*
T0*
_output_shapes
:

�
/batch_normalization_4/cond/batchnorm/mul/SwitchSwitch batch_normalization_4/gamma/read"batch_normalization_4/cond/pred_id*.
_class$
" loc:@batch_normalization_4/gamma*
T0* 
_output_shapes
:
:

�
(batch_normalization_4/cond/batchnorm/mulMul*batch_normalization_4/cond/batchnorm/Rsqrt/batch_normalization_4/cond/batchnorm/mul/Switch*
T0*
_output_shapes
:

�
1batch_normalization_4/cond/batchnorm/mul_1/SwitchSwitchdense_1/MatMul"batch_normalization_4/cond/pred_id*!
_class
loc:@dense_1/MatMul*
T0*:
_output_shapes(
&:���������
:���������

�
*batch_normalization_4/cond/batchnorm/mul_1Mul1batch_normalization_4/cond/batchnorm/mul_1/Switch(batch_normalization_4/cond/batchnorm/mul*
T0*'
_output_shapes
:���������

�
1batch_normalization_4/cond/batchnorm/mul_2/SwitchSwitch&batch_normalization_4/moving_mean/read"batch_normalization_4/cond/pred_id*4
_class*
(&loc:@batch_normalization_4/moving_mean*
T0* 
_output_shapes
:
:

�
*batch_normalization_4/cond/batchnorm/mul_2Mul1batch_normalization_4/cond/batchnorm/mul_2/Switch(batch_normalization_4/cond/batchnorm/mul*
T0*
_output_shapes
:

�
/batch_normalization_4/cond/batchnorm/sub/SwitchSwitchbatch_normalization_4/beta/read"batch_normalization_4/cond/pred_id*-
_class#
!loc:@batch_normalization_4/beta*
T0* 
_output_shapes
:
:

�
(batch_normalization_4/cond/batchnorm/subSub/batch_normalization_4/cond/batchnorm/sub/Switch*batch_normalization_4/cond/batchnorm/mul_2*
T0*
_output_shapes
:

�
*batch_normalization_4/cond/batchnorm/add_1Add*batch_normalization_4/cond/batchnorm/mul_1(batch_normalization_4/cond/batchnorm/sub*
T0*'
_output_shapes
:���������

�
 batch_normalization_4/cond/MergeMerge*batch_normalization_4/cond/batchnorm/add_1%batch_normalization_4/cond/Switch_1:1*)
_output_shapes
:���������
: *
T0*
N
]
iterations/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
n

iterations
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
�
iterations/AssignAssign
iterationsiterations/initial_value*
validate_shape(*
_class
loc:@iterations*
use_locking(*
T0*
_output_shapes
: 
g
iterations/readIdentity
iterations*
_class
loc:@iterations*
T0*
_output_shapes
: 
U
lr/initial_valueConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
f
lr
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
�
	lr/AssignAssignlrlr/initial_value*
validate_shape(*
_class
	loc:@lr*
use_locking(*
T0*
_output_shapes
: 
O
lr/readIdentitylr*
_class
	loc:@lr*
T0*
_output_shapes
: 
[
momentum/initial_valueConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
l
momentum
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
�
momentum/AssignAssignmomentummomentum/initial_value*
validate_shape(*
_class
loc:@momentum*
use_locking(*
T0*
_output_shapes
: 
a
momentum/readIdentitymomentum*
_class
loc:@momentum*
T0*
_output_shapes
: 
X
decay/initial_valueConst*
dtype0*
valueB
 *o:*
_output_shapes
: 
i
decay
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
�
decay/AssignAssigndecaydecay/initial_value*
validate_shape(*
_class

loc:@decay*
use_locking(*
T0*
_output_shapes
: 
X

decay/readIdentitydecay*
_class

loc:@decay*
T0*
_output_shapes
: 

$batch_normalization_4_sample_weightsPlaceholder*
dtype0*
shape:���������*#
_output_shapes
:���������
�
batch_normalization_4_targetPlaceholder*
dtype0*%
shape:������������������*0
_output_shapes
:������������������
|
mulMulbatch_normalization_4_target batch_normalization_4/cond/Merge*
T0*'
_output_shapes
:���������

J
sub/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
H
subSubsub/xmul*
T0*'
_output_shapes
:���������

N
	Maximum/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
T
MaximumMaximumsub	Maximum/y*
T0*'
_output_shapes
:���������

K
SquareSquareMaximum*
T0*'
_output_shapes
:���������

X
Mean/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
w
MeanMeanSquareMean/reduction_indices*#
_output_shapes
:���������*
T0*
	keep_dims( *

Tidx0
[
Mean_1/reduction_indicesConst*
dtype0*
valueB *
_output_shapes
: 
y
Mean_1MeanMeanMean_1/reduction_indices*#
_output_shapes
:���������*
T0*
	keep_dims( *

Tidx0
h
mul_1MulMean_1$batch_normalization_4_sample_weights*
T0*#
_output_shapes
:���������
O

NotEqual/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
t
NotEqualNotEqual$batch_normalization_4_sample_weights
NotEqual/y*
T0*#
_output_shapes
:���������
S
CastCastNotEqual*

DstT0*

SrcT0
*#
_output_shapes
:���������
O
ConstConst*
dtype0*
valueB: *
_output_shapes
:
Y
Mean_2MeanCastConst*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
K
divRealDivmul_1Mean_2*
T0*#
_output_shapes
:���������
Q
Const_1Const*
dtype0*
valueB: *
_output_shapes
:
Z
Mean_3MeandivConst_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
L
mul_2/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
>
mul_2Mulmul_2/xMean_3*
T0*
_output_shapes
: 
J
add/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
9
addAddmul_2add/y*
T0*
_output_shapes
: 
L
add_1/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
;
add_1Addaddadd_1/y*
T0*
_output_shapes
: 
L
add_2/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
=
add_2Addadd_1add_2/y*
T0*
_output_shapes
: 


group_depsNoOp^add_2
l
gradients/ShapeConst*
dtype0*
_class

loc:@add_2*
valueB *
_output_shapes
: 
n
gradients/ConstConst*
dtype0*
_class

loc:@add_2*
valueB
 *  �?*
_output_shapes
: 
s
gradients/FillFillgradients/Shapegradients/Const*
_class

loc:@add_2*
T0*
_output_shapes
: 
w
gradients/add_2_grad/ShapeConst*
dtype0*
_class

loc:@add_2*
valueB *
_output_shapes
: 
y
gradients/add_2_grad/Shape_1Const*
dtype0*
_class

loc:@add_2*
valueB *
_output_shapes
: 
�
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
_class

loc:@add_2*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_2_grad/SumSumgradients/Fill*gradients/add_2_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@add_2*
T0*
	keep_dims( *

Tidx0
�
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
_class

loc:@add_2*
T0*
_output_shapes
: *
Tshape0
�
gradients/add_2_grad/Sum_1Sumgradients/Fill,gradients/add_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@add_2*
T0*
	keep_dims( *

Tidx0
�
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
_class

loc:@add_2*
T0*
_output_shapes
: *
Tshape0
w
gradients/add_1_grad/ShapeConst*
dtype0*
_class

loc:@add_1*
valueB *
_output_shapes
: 
y
gradients/add_1_grad/Shape_1Const*
dtype0*
_class

loc:@add_1*
valueB *
_output_shapes
: 
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
_class

loc:@add_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_1_grad/SumSumgradients/add_2_grad/Reshape*gradients/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@add_1*
T0*
	keep_dims( *

Tidx0
�
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
_class

loc:@add_1*
T0*
_output_shapes
: *
Tshape0
�
gradients/add_1_grad/Sum_1Sumgradients/add_2_grad/Reshape,gradients/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@add_1*
T0*
	keep_dims( *

Tidx0
�
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
_class

loc:@add_1*
T0*
_output_shapes
: *
Tshape0
s
gradients/add_grad/ShapeConst*
dtype0*
_class

loc:@add*
valueB *
_output_shapes
: 
u
gradients/add_grad/Shape_1Const*
dtype0*
_class

loc:@add*
valueB *
_output_shapes
: 
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
_class

loc:@add*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_grad/SumSumgradients/add_1_grad/Reshape(gradients/add_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@add*
T0*
	keep_dims( *

Tidx0
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
_class

loc:@add*
T0*
_output_shapes
: *
Tshape0
�
gradients/add_grad/Sum_1Sumgradients/add_1_grad/Reshape*gradients/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@add*
T0*
	keep_dims( *

Tidx0
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
_class

loc:@add*
T0*
_output_shapes
: *
Tshape0
w
gradients/mul_2_grad/ShapeConst*
dtype0*
_class

loc:@mul_2*
valueB *
_output_shapes
: 
y
gradients/mul_2_grad/Shape_1Const*
dtype0*
_class

loc:@mul_2*
valueB *
_output_shapes
: 
�
*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*
_class

loc:@mul_2*
T0*2
_output_shapes 
:���������:���������
~
gradients/mul_2_grad/mulMulgradients/add_grad/ReshapeMean_3*
_class

loc:@mul_2*
T0*
_output_shapes
: 
�
gradients/mul_2_grad/SumSumgradients/mul_2_grad/mul*gradients/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@mul_2*
T0*
	keep_dims( *

Tidx0
�
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
_class

loc:@mul_2*
T0*
_output_shapes
: *
Tshape0
�
gradients/mul_2_grad/mul_1Mulmul_2/xgradients/add_grad/Reshape*
_class

loc:@mul_2*
T0*
_output_shapes
: 
�
gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@mul_2*
T0*
	keep_dims( *

Tidx0
�
gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
_class

loc:@mul_2*
T0*
_output_shapes
: *
Tshape0
�
#gradients/Mean_3_grad/Reshape/shapeConst*
dtype0*
_class
loc:@Mean_3*
valueB:*
_output_shapes
:
�
gradients/Mean_3_grad/ReshapeReshapegradients/mul_2_grad/Reshape_1#gradients/Mean_3_grad/Reshape/shape*
_class
loc:@Mean_3*
T0*
_output_shapes
:*
Tshape0
y
gradients/Mean_3_grad/ShapeShapediv*
out_type0*
T0*
_output_shapes
:*
_class
loc:@Mean_3
�
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*

Tmultiples0*
_class
loc:@Mean_3*
T0*#
_output_shapes
:���������
{
gradients/Mean_3_grad/Shape_1Shapediv*
out_type0*
T0*
_output_shapes
:*
_class
loc:@Mean_3
{
gradients/Mean_3_grad/Shape_2Const*
dtype0*
_class
loc:@Mean_3*
valueB *
_output_shapes
: 
�
gradients/Mean_3_grad/ConstConst*
dtype0*
_class
loc:@Mean_3*
valueB: *
_output_shapes
:
�
gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*
_output_shapes
: *
_class
loc:@Mean_3*
T0*
	keep_dims( *

Tidx0
�
gradients/Mean_3_grad/Const_1Const*
dtype0*
_class
loc:@Mean_3*
valueB: *
_output_shapes
:
�
gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*
_output_shapes
: *
_class
loc:@Mean_3*
T0*
	keep_dims( *

Tidx0
|
gradients/Mean_3_grad/Maximum/yConst*
dtype0*
_class
loc:@Mean_3*
value	B :*
_output_shapes
: 
�
gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
_class
loc:@Mean_3*
T0*
_output_shapes
: 
�
gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
_class
loc:@Mean_3*
T0*
_output_shapes
: 
�
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*

DstT0*
_class
loc:@Mean_3*

SrcT0*
_output_shapes
: 
�
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
_class
loc:@Mean_3*
T0*#
_output_shapes
:���������
u
gradients/div_grad/ShapeShapemul_1*
out_type0*
T0*
_output_shapes
:*
_class

loc:@div
u
gradients/div_grad/Shape_1Const*
dtype0*
_class

loc:@div*
valueB *
_output_shapes
: 
�
(gradients/div_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/div_grad/Shapegradients/div_grad/Shape_1*
_class

loc:@div*
T0*2
_output_shapes 
:���������:���������
�
gradients/div_grad/RealDivRealDivgradients/Mean_3_grad/truedivMean_2*
_class

loc:@div*
T0*#
_output_shapes
:���������
�
gradients/div_grad/SumSumgradients/div_grad/RealDiv(gradients/div_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@div*
T0*
	keep_dims( *

Tidx0
�
gradients/div_grad/ReshapeReshapegradients/div_grad/Sumgradients/div_grad/Shape*
_class

loc:@div*
T0*#
_output_shapes
:���������*
Tshape0
j
gradients/div_grad/NegNegmul_1*
_class

loc:@div*
T0*#
_output_shapes
:���������
�
gradients/div_grad/RealDiv_1RealDivgradients/div_grad/NegMean_2*
_class

loc:@div*
T0*#
_output_shapes
:���������
�
gradients/div_grad/RealDiv_2RealDivgradients/div_grad/RealDiv_1Mean_2*
_class

loc:@div*
T0*#
_output_shapes
:���������
�
gradients/div_grad/mulMulgradients/Mean_3_grad/truedivgradients/div_grad/RealDiv_2*
_class

loc:@div*
T0*#
_output_shapes
:���������
�
gradients/div_grad/Sum_1Sumgradients/div_grad/mul*gradients/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@div*
T0*
	keep_dims( *

Tidx0
�
gradients/div_grad/Reshape_1Reshapegradients/div_grad/Sum_1gradients/div_grad/Shape_1*
_class

loc:@div*
T0*
_output_shapes
: *
Tshape0
z
gradients/mul_1_grad/ShapeShapeMean_1*
out_type0*
T0*
_output_shapes
:*
_class

loc:@mul_1
�
gradients/mul_1_grad/Shape_1Shape$batch_normalization_4_sample_weights*
out_type0*
T0*
_output_shapes
:*
_class

loc:@mul_1
�
*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
_class

loc:@mul_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/mul_1_grad/mulMulgradients/div_grad/Reshape$batch_normalization_4_sample_weights*
_class

loc:@mul_1*
T0*#
_output_shapes
:���������
�
gradients/mul_1_grad/SumSumgradients/mul_1_grad/mul*gradients/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@mul_1*
T0*
	keep_dims( *

Tidx0
�
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
_class

loc:@mul_1*
T0*#
_output_shapes
:���������*
Tshape0
�
gradients/mul_1_grad/mul_1MulMean_1gradients/div_grad/Reshape*
_class

loc:@mul_1*
T0*#
_output_shapes
:���������
�
gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@mul_1*
T0*
	keep_dims( *

Tidx0
�
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
_class

loc:@mul_1*
T0*#
_output_shapes
:���������*
Tshape0
z
gradients/Mean_1_grad/ShapeShapeMean*
out_type0*
T0*
_output_shapes
:*
_class
loc:@Mean_1
w
gradients/Mean_1_grad/SizeConst*
dtype0*
_class
loc:@Mean_1*
value	B :*
_output_shapes
: 
�
gradients/Mean_1_grad/addAddMean_1/reduction_indicesgradients/Mean_1_grad/Size*
_class
loc:@Mean_1*
T0*
_output_shapes
: 
�
gradients/Mean_1_grad/modFloorModgradients/Mean_1_grad/addgradients/Mean_1_grad/Size*
_class
loc:@Mean_1*
T0*
_output_shapes
: 
�
gradients/Mean_1_grad/Shape_1Const*
dtype0*
_class
loc:@Mean_1*
valueB: *
_output_shapes
:
~
!gradients/Mean_1_grad/range/startConst*
dtype0*
_class
loc:@Mean_1*
value	B : *
_output_shapes
: 
~
!gradients/Mean_1_grad/range/deltaConst*
dtype0*
_class
loc:@Mean_1*
value	B :*
_output_shapes
: 
�
gradients/Mean_1_grad/rangeRange!gradients/Mean_1_grad/range/startgradients/Mean_1_grad/Size!gradients/Mean_1_grad/range/delta*
_class
loc:@Mean_1*

Tidx0*
_output_shapes
:
}
 gradients/Mean_1_grad/Fill/valueConst*
dtype0*
_class
loc:@Mean_1*
value	B :*
_output_shapes
: 
�
gradients/Mean_1_grad/FillFillgradients/Mean_1_grad/Shape_1 gradients/Mean_1_grad/Fill/value*
_class
loc:@Mean_1*
T0*
_output_shapes
: 
�
#gradients/Mean_1_grad/DynamicStitchDynamicStitchgradients/Mean_1_grad/rangegradients/Mean_1_grad/modgradients/Mean_1_grad/Shapegradients/Mean_1_grad/Fill*
_class
loc:@Mean_1*
T0*#
_output_shapes
:���������*
N
|
gradients/Mean_1_grad/Maximum/yConst*
dtype0*
_class
loc:@Mean_1*
value	B :*
_output_shapes
: 
�
gradients/Mean_1_grad/MaximumMaximum#gradients/Mean_1_grad/DynamicStitchgradients/Mean_1_grad/Maximum/y*
_class
loc:@Mean_1*
T0*#
_output_shapes
:���������
�
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Shapegradients/Mean_1_grad/Maximum*
_class
loc:@Mean_1*
T0*#
_output_shapes
:���������
�
gradients/Mean_1_grad/ReshapeReshapegradients/mul_1_grad/Reshape#gradients/Mean_1_grad/DynamicStitch*
_class
loc:@Mean_1*
T0*
_output_shapes
:*
Tshape0
�
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/floordiv*

Tmultiples0*
_class
loc:@Mean_1*
T0*
_output_shapes
:
|
gradients/Mean_1_grad/Shape_2ShapeMean*
out_type0*
T0*
_output_shapes
:*
_class
loc:@Mean_1
~
gradients/Mean_1_grad/Shape_3ShapeMean_1*
out_type0*
T0*
_output_shapes
:*
_class
loc:@Mean_1
�
gradients/Mean_1_grad/ConstConst*
dtype0*
_class
loc:@Mean_1*
valueB: *
_output_shapes
:
�
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const*
_output_shapes
: *
_class
loc:@Mean_1*
T0*
	keep_dims( *

Tidx0
�
gradients/Mean_1_grad/Const_1Const*
dtype0*
_class
loc:@Mean_1*
valueB: *
_output_shapes
:
�
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_3gradients/Mean_1_grad/Const_1*
_output_shapes
: *
_class
loc:@Mean_1*
T0*
	keep_dims( *

Tidx0
~
!gradients/Mean_1_grad/Maximum_1/yConst*
dtype0*
_class
loc:@Mean_1*
value	B :*
_output_shapes
: 
�
gradients/Mean_1_grad/Maximum_1Maximumgradients/Mean_1_grad/Prod_1!gradients/Mean_1_grad/Maximum_1/y*
_class
loc:@Mean_1*
T0*
_output_shapes
: 
�
 gradients/Mean_1_grad/floordiv_1FloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum_1*
_class
loc:@Mean_1*
T0*
_output_shapes
: 
�
gradients/Mean_1_grad/CastCast gradients/Mean_1_grad/floordiv_1*

DstT0*
_class
loc:@Mean_1*

SrcT0*
_output_shapes
: 
�
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
_class
loc:@Mean_1*
T0*#
_output_shapes
:���������
x
gradients/Mean_grad/ShapeShapeSquare*
out_type0*
T0*
_output_shapes
:*
_class
	loc:@Mean
s
gradients/Mean_grad/SizeConst*
dtype0*
_class
	loc:@Mean*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/addAddMean/reduction_indicesgradients/Mean_grad/Size*
_class
	loc:@Mean*
T0*
_output_shapes
: 
�
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
_class
	loc:@Mean*
T0*
_output_shapes
: 
w
gradients/Mean_grad/Shape_1Const*
dtype0*
_class
	loc:@Mean*
valueB *
_output_shapes
: 
z
gradients/Mean_grad/range/startConst*
dtype0*
_class
	loc:@Mean*
value	B : *
_output_shapes
: 
z
gradients/Mean_grad/range/deltaConst*
dtype0*
_class
	loc:@Mean*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*
_class
	loc:@Mean*

Tidx0*
_output_shapes
:
y
gradients/Mean_grad/Fill/valueConst*
dtype0*
_class
	loc:@Mean*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
_class
	loc:@Mean*
T0*
_output_shapes
: 
�
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
_class
	loc:@Mean*
T0*#
_output_shapes
:���������*
N
x
gradients/Mean_grad/Maximum/yConst*
dtype0*
_class
	loc:@Mean*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
_class
	loc:@Mean*
T0*#
_output_shapes
:���������
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
_class
	loc:@Mean*
T0*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Mean_1_grad/truediv!gradients/Mean_grad/DynamicStitch*
_class
	loc:@Mean*
T0*
_output_shapes
:*
Tshape0
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*

Tmultiples0*
_class
	loc:@Mean*
T0*0
_output_shapes
:������������������
z
gradients/Mean_grad/Shape_2ShapeSquare*
out_type0*
T0*
_output_shapes
:*
_class
	loc:@Mean
x
gradients/Mean_grad/Shape_3ShapeMean*
out_type0*
T0*
_output_shapes
:*
_class
	loc:@Mean
|
gradients/Mean_grad/ConstConst*
dtype0*
_class
	loc:@Mean*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
_output_shapes
: *
_class
	loc:@Mean*
T0*
	keep_dims( *

Tidx0
~
gradients/Mean_grad/Const_1Const*
dtype0*
_class
	loc:@Mean*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
_output_shapes
: *
_class
	loc:@Mean*
T0*
	keep_dims( *

Tidx0
z
gradients/Mean_grad/Maximum_1/yConst*
dtype0*
_class
	loc:@Mean*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
_class
	loc:@Mean*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
_class
	loc:@Mean*
T0*
_output_shapes
: 
�
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

DstT0*
_class
	loc:@Mean*

SrcT0*
_output_shapes
: 
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
_class
	loc:@Mean*
T0*'
_output_shapes
:���������

�
gradients/Square_grad/mul/xConst^gradients/Mean_grad/truediv*
dtype0*
_class
loc:@Square*
valueB
 *   @*
_output_shapes
: 
�
gradients/Square_grad/mulMulgradients/Square_grad/mul/xMaximum*
_class
loc:@Square*
T0*'
_output_shapes
:���������

�
gradients/Square_grad/mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/mul*
_class
loc:@Square*
T0*'
_output_shapes
:���������

{
gradients/Maximum_grad/ShapeShapesub*
out_type0*
T0*
_output_shapes
:*
_class
loc:@Maximum
}
gradients/Maximum_grad/Shape_1Const*
dtype0*
_class
loc:@Maximum*
valueB *
_output_shapes
: 
�
gradients/Maximum_grad/Shape_2Shapegradients/Square_grad/mul_1*
out_type0*
T0*
_output_shapes
:*
_class
loc:@Maximum
�
"gradients/Maximum_grad/zeros/ConstConst*
dtype0*
_class
loc:@Maximum*
valueB
 *    *
_output_shapes
: 
�
gradients/Maximum_grad/zerosFillgradients/Maximum_grad/Shape_2"gradients/Maximum_grad/zeros/Const*
_class
loc:@Maximum*
T0*'
_output_shapes
:���������

�
#gradients/Maximum_grad/GreaterEqualGreaterEqualsub	Maximum/y*
_class
loc:@Maximum*
T0*'
_output_shapes
:���������

�
,gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Maximum_grad/Shapegradients/Maximum_grad/Shape_1*
_class
loc:@Maximum*
T0*2
_output_shapes 
:���������:���������
�
gradients/Maximum_grad/SelectSelect#gradients/Maximum_grad/GreaterEqualgradients/Square_grad/mul_1gradients/Maximum_grad/zeros*
_class
loc:@Maximum*
T0*'
_output_shapes
:���������

�
!gradients/Maximum_grad/LogicalNot
LogicalNot#gradients/Maximum_grad/GreaterEqual*
_class
loc:@Maximum*'
_output_shapes
:���������

�
gradients/Maximum_grad/Select_1Select!gradients/Maximum_grad/LogicalNotgradients/Square_grad/mul_1gradients/Maximum_grad/zeros*
_class
loc:@Maximum*
T0*'
_output_shapes
:���������

�
gradients/Maximum_grad/SumSumgradients/Maximum_grad/Select,gradients/Maximum_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@Maximum*
T0*
	keep_dims( *

Tidx0
�
gradients/Maximum_grad/ReshapeReshapegradients/Maximum_grad/Sumgradients/Maximum_grad/Shape*
_class
loc:@Maximum*
T0*'
_output_shapes
:���������
*
Tshape0
�
gradients/Maximum_grad/Sum_1Sumgradients/Maximum_grad/Select_1.gradients/Maximum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@Maximum*
T0*
	keep_dims( *

Tidx0
�
 gradients/Maximum_grad/Reshape_1Reshapegradients/Maximum_grad/Sum_1gradients/Maximum_grad/Shape_1*
_class
loc:@Maximum*
T0*
_output_shapes
: *
Tshape0
s
gradients/sub_grad/ShapeConst*
dtype0*
_class

loc:@sub*
valueB *
_output_shapes
: 
u
gradients/sub_grad/Shape_1Shapemul*
out_type0*
T0*
_output_shapes
:*
_class

loc:@sub
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
_class

loc:@sub*
T0*2
_output_shapes 
:���������:���������
�
gradients/sub_grad/SumSumgradients/Maximum_grad/Reshape(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@sub*
T0*
	keep_dims( *

Tidx0
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
_class

loc:@sub*
T0*
_output_shapes
: *
Tshape0
�
gradients/sub_grad/Sum_1Sumgradients/Maximum_grad/Reshape*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@sub*
T0*
	keep_dims( *

Tidx0
r
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
_class

loc:@sub*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
_class

loc:@sub*
T0*'
_output_shapes
:���������
*
Tshape0
�
gradients/mul_grad/ShapeShapebatch_normalization_4_target*
out_type0*
T0*
_output_shapes
:*
_class

loc:@mul
�
gradients/mul_grad/Shape_1Shape batch_normalization_4/cond/Merge*
out_type0*
T0*
_output_shapes
:*
_class

loc:@mul
�
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
_class

loc:@mul*
T0*2
_output_shapes 
:���������:���������
�
gradients/mul_grad/mulMulgradients/sub_grad/Reshape_1 batch_normalization_4/cond/Merge*
_class

loc:@mul*
T0*'
_output_shapes
:���������

�
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@mul*
T0*
	keep_dims( *

Tidx0
�
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
_class

loc:@mul*
T0*0
_output_shapes
:������������������*
Tshape0
�
gradients/mul_grad/mul_1Mulbatch_normalization_4_targetgradients/sub_grad/Reshape_1*
_class

loc:@mul*
T0*'
_output_shapes
:���������

�
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@mul*
T0*
	keep_dims( *

Tidx0
�
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
_class

loc:@mul*
T0*'
_output_shapes
:���������
*
Tshape0
�
9gradients/batch_normalization_4/cond/Merge_grad/cond_gradSwitchgradients/mul_grad/Reshape_1"batch_normalization_4/cond/pred_id*
_class

loc:@mul*
T0*:
_output_shapes(
&:���������
:���������

�
?gradients/batch_normalization_4/cond/batchnorm/add_1_grad/ShapeShape*batch_normalization_4/cond/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1
�
Agradients/batch_normalization_4/cond/batchnorm/add_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*
valueB:
*
_output_shapes
:
�
Ogradients/batch_normalization_4/cond/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_4/cond/batchnorm/add_1_grad/ShapeAgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_4/cond/batchnorm/add_1_grad/SumSum9gradients/batch_normalization_4/cond/Merge_grad/cond_gradOgradients/batch_normalization_4/cond/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_4/cond/batchnorm/add_1_grad/ReshapeReshape=gradients/batch_normalization_4/cond/batchnorm/add_1_grad/Sum?gradients/batch_normalization_4/cond/batchnorm/add_1_grad/Shape*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*
T0*'
_output_shapes
:���������
*
Tshape0
�
?gradients/batch_normalization_4/cond/batchnorm/add_1_grad/Sum_1Sum9gradients/batch_normalization_4/cond/Merge_grad/cond_gradQgradients/batch_normalization_4/cond/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Reshape_1Reshape?gradients/batch_normalization_4/cond/batchnorm/add_1_grad/Sum_1Agradients/batch_normalization_4/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*
T0*
_output_shapes
:
*
Tshape0
�
gradients/SwitchSwitch%batch_normalization_4/batchnorm/add_1"batch_normalization_4/cond/pred_id*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*:
_output_shapes(
&:���������
:���������

�
gradients/Shape_1Shapegradients/Switch*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1
�
gradients/zeros/ConstConst*
dtype0*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
valueB
 *    *
_output_shapes
: 
�
gradients/zerosFillgradients/Shape_1gradients/zeros/Const*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*'
_output_shapes
:���������

�
<gradients/batch_normalization_4/cond/Switch_1_grad/cond_gradMerge;gradients/batch_normalization_4/cond/Merge_grad/cond_grad:1gradients/zeros*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*)
_output_shapes
:���������
: *
N
�
?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/ShapeShape1batch_normalization_4/cond/batchnorm/mul_1/Switch*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1
�
Agradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
valueB:
*
_output_shapes
:
�
Ogradients/batch_normalization_4/cond/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/ShapeAgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/mulMulAgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Reshape(batch_normalization_4/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*'
_output_shapes
:���������

�
=gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/SumSum=gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/mulOgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_4/cond/batchnorm/mul_1_grad/ReshapeReshape=gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Sum?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Shape*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*'
_output_shapes
:���������
*
Tshape0
�
?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/mul_1Mul1batch_normalization_4/cond/batchnorm/mul_1/SwitchAgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Reshape*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*'
_output_shapes
:���������

�
?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Sum_1Sum?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/mul_1Qgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Reshape_1Reshape?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Sum_1Agradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*
_output_shapes
:
*
Tshape0
�
=gradients/batch_normalization_4/cond/batchnorm/sub_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
valueB:
*
_output_shapes
:
�
?gradients/batch_normalization_4/cond/batchnorm/sub_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
valueB:
*
_output_shapes
:
�
Mgradients/batch_normalization_4/cond/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_4/cond/batchnorm/sub_grad/Shape?gradients/batch_normalization_4/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_4/cond/batchnorm/sub_grad/SumSumCgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Reshape_1Mgradients/batch_normalization_4/cond/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_4/cond/batchnorm/sub_grad/ReshapeReshape;gradients/batch_normalization_4/cond/batchnorm/sub_grad/Sum=gradients/batch_normalization_4/cond/batchnorm/sub_grad/Shape*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
T0*
_output_shapes
:
*
Tshape0
�
=gradients/batch_normalization_4/cond/batchnorm/sub_grad/Sum_1SumCgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Reshape_1Ogradients/batch_normalization_4/cond/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_4/cond/batchnorm/sub_grad/NegNeg=gradients/batch_normalization_4/cond/batchnorm/sub_grad/Sum_1*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
T0*
_output_shapes
:
�
Agradients/batch_normalization_4/cond/batchnorm/sub_grad/Reshape_1Reshape;gradients/batch_normalization_4/cond/batchnorm/sub_grad/Neg?gradients/batch_normalization_4/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
T0*
_output_shapes
:
*
Tshape0
�
:gradients/batch_normalization_4/batchnorm/add_1_grad/ShapeShape%batch_normalization_4/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1
�
<gradients/batch_normalization_4/batchnorm/add_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
valueB:
*
_output_shapes
:
�
Jgradients/batch_normalization_4/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_4/batchnorm/add_1_grad/Shape<gradients/batch_normalization_4/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_4/batchnorm/add_1_grad/SumSum<gradients/batch_normalization_4/cond/Switch_1_grad/cond_gradJgradients/batch_normalization_4/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_4/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_4/batchnorm/add_1_grad/Sum:gradients/batch_normalization_4/batchnorm/add_1_grad/Shape*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*'
_output_shapes
:���������
*
Tshape0
�
:gradients/batch_normalization_4/batchnorm/add_1_grad/Sum_1Sum<gradients/batch_normalization_4/cond/Switch_1_grad/cond_gradLgradients/batch_normalization_4/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_4/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_4/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_4/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*
_output_shapes
:
*
Tshape0
�
gradients/Switch_1Switchdense_1/MatMul"batch_normalization_4/cond/pred_id*!
_class
loc:@dense_1/MatMul*
T0*:
_output_shapes(
&:���������
:���������

�
gradients/Shape_2Shapegradients/Switch_1:1*
out_type0*
T0*
_output_shapes
:*!
_class
loc:@dense_1/MatMul

gradients/zeros_1/ConstConst*
dtype0*!
_class
loc:@dense_1/MatMul*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*!
_class
loc:@dense_1/MatMul*
T0*'
_output_shapes
:���������

�
Jgradients/batch_normalization_4/cond/batchnorm/mul_1/Switch_grad/cond_gradMergeAgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Reshapegradients/zeros_1*!
_class
loc:@dense_1/MatMul*
T0*)
_output_shapes
:���������
: *
N
�
gradients/Switch_2Switchbatch_normalization_4/beta/read"batch_normalization_4/cond/pred_id*-
_class#
!loc:@batch_normalization_4/beta*
T0* 
_output_shapes
:
:

�
gradients/Shape_3Shapegradients/Switch_2:1*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@batch_normalization_4/beta
�
gradients/zeros_2/ConstConst*
dtype0*-
_class#
!loc:@batch_normalization_4/beta*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*-
_class#
!loc:@batch_normalization_4/beta*
T0*
_output_shapes
:

�
Hgradients/batch_normalization_4/cond/batchnorm/sub/Switch_grad/cond_gradMerge?gradients/batch_normalization_4/cond/batchnorm/sub_grad/Reshapegradients/zeros_2*-
_class#
!loc:@batch_normalization_4/beta*
T0*
_output_shapes

:
: *
N
�
?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/ShapeConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
valueB:
*
_output_shapes
:
�
Agradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
valueB:
*
_output_shapes
:
�
Ogradients/batch_normalization_4/cond/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/ShapeAgradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/mulMulAgradients/batch_normalization_4/cond/batchnorm/sub_grad/Reshape_1(batch_normalization_4/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*
_output_shapes
:

�
=gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/SumSum=gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/mulOgradients/batch_normalization_4/cond/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_4/cond/batchnorm/mul_2_grad/ReshapeReshape=gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Sum?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Shape*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*
_output_shapes
:
*
Tshape0
�
?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/mul_1Mul1batch_normalization_4/cond/batchnorm/mul_2/SwitchAgradients/batch_normalization_4/cond/batchnorm/sub_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*
_output_shapes
:

�
?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Sum_1Sum?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/mul_1Qgradients/batch_normalization_4/cond/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Reshape_1Reshape?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Sum_1Agradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*
_output_shapes
:
*
Tshape0
�
:gradients/batch_normalization_4/batchnorm/mul_1_grad/ShapeShapedense_1/MatMul*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1
�
<gradients/batch_normalization_4/batchnorm/mul_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
valueB:
*
_output_shapes
:
�
Jgradients/batch_normalization_4/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_4/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_4/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_4/batchnorm/mul_1_grad/mulMul<gradients/batch_normalization_4/batchnorm/add_1_grad/Reshape#batch_normalization_4/batchnorm/mul*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*'
_output_shapes
:���������

�
8gradients/batch_normalization_4/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_4/batchnorm/mul_1_grad/mulJgradients/batch_normalization_4/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_4/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_4/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_4/batchnorm/mul_1_grad/Shape*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*'
_output_shapes
:���������
*
Tshape0
�
:gradients/batch_normalization_4/batchnorm/mul_1_grad/mul_1Muldense_1/MatMul<gradients/batch_normalization_4/batchnorm/add_1_grad/Reshape*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*'
_output_shapes
:���������

�
:gradients/batch_normalization_4/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_4/batchnorm/mul_1_grad/mul_1Lgradients/batch_normalization_4/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_4/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_4/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_4/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*
_output_shapes
:
*
Tshape0
�
8gradients/batch_normalization_4/batchnorm/sub_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
valueB:
*
_output_shapes
:
�
:gradients/batch_normalization_4/batchnorm/sub_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
valueB:
*
_output_shapes
:
�
Hgradients/batch_normalization_4/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_4/batchnorm/sub_grad/Shape:gradients/batch_normalization_4/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_4/batchnorm/sub_grad/SumSum>gradients/batch_normalization_4/batchnorm/add_1_grad/Reshape_1Hgradients/batch_normalization_4/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_4/batchnorm/sub_grad/ReshapeReshape6gradients/batch_normalization_4/batchnorm/sub_grad/Sum8gradients/batch_normalization_4/batchnorm/sub_grad/Shape*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
T0*
_output_shapes
:
*
Tshape0
�
8gradients/batch_normalization_4/batchnorm/sub_grad/Sum_1Sum>gradients/batch_normalization_4/batchnorm/add_1_grad/Reshape_1Jgradients/batch_normalization_4/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
6gradients/batch_normalization_4/batchnorm/sub_grad/NegNeg8gradients/batch_normalization_4/batchnorm/sub_grad/Sum_1*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
T0*
_output_shapes
:
�
<gradients/batch_normalization_4/batchnorm/sub_grad/Reshape_1Reshape6gradients/batch_normalization_4/batchnorm/sub_grad/Neg:gradients/batch_normalization_4/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
T0*
_output_shapes
:
*
Tshape0
�
gradients/AddNAddNCgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Reshape_1Cgradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*
_output_shapes
:
*
N
�
=gradients/batch_normalization_4/cond/batchnorm/mul_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
valueB:
*
_output_shapes
:
�
?gradients/batch_normalization_4/cond/batchnorm/mul_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
valueB:
*
_output_shapes
:
�
Mgradients/batch_normalization_4/cond/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_4/cond/batchnorm/mul_grad/Shape?gradients/batch_normalization_4/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_4/cond/batchnorm/mul_grad/mulMulgradients/AddN/batch_normalization_4/cond/batchnorm/mul/Switch*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*
_output_shapes
:

�
;gradients/batch_normalization_4/cond/batchnorm/mul_grad/SumSum;gradients/batch_normalization_4/cond/batchnorm/mul_grad/mulMgradients/batch_normalization_4/cond/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_4/cond/batchnorm/mul_grad/ReshapeReshape;gradients/batch_normalization_4/cond/batchnorm/mul_grad/Sum=gradients/batch_normalization_4/cond/batchnorm/mul_grad/Shape*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*
_output_shapes
:
*
Tshape0
�
=gradients/batch_normalization_4/cond/batchnorm/mul_grad/mul_1Mul*batch_normalization_4/cond/batchnorm/Rsqrtgradients/AddN*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*
_output_shapes
:

�
=gradients/batch_normalization_4/cond/batchnorm/mul_grad/Sum_1Sum=gradients/batch_normalization_4/cond/batchnorm/mul_grad/mul_1Ogradients/batch_normalization_4/cond/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_4/cond/batchnorm/mul_grad/Reshape_1Reshape=gradients/batch_normalization_4/cond/batchnorm/mul_grad/Sum_1?gradients/batch_normalization_4/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*
_output_shapes
:
*
Tshape0
�
gradients/AddN_1AddNHgradients/batch_normalization_4/cond/batchnorm/sub/Switch_grad/cond_grad:gradients/batch_normalization_4/batchnorm/sub_grad/Reshape*-
_class#
!loc:@batch_normalization_4/beta*
T0*
_output_shapes
:
*
N
�
:gradients/batch_normalization_4/batchnorm/mul_2_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
valueB:
*
_output_shapes
:
�
<gradients/batch_normalization_4/batchnorm/mul_2_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
valueB:
*
_output_shapes
:
�
Jgradients/batch_normalization_4/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_4/batchnorm/mul_2_grad/Shape<gradients/batch_normalization_4/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_4/batchnorm/mul_2_grad/mulMul<gradients/batch_normalization_4/batchnorm/sub_grad/Reshape_1#batch_normalization_4/batchnorm/mul*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*
_output_shapes
:

�
8gradients/batch_normalization_4/batchnorm/mul_2_grad/SumSum8gradients/batch_normalization_4/batchnorm/mul_2_grad/mulJgradients/batch_normalization_4/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_4/batchnorm/mul_2_grad/ReshapeReshape8gradients/batch_normalization_4/batchnorm/mul_2_grad/Sum:gradients/batch_normalization_4/batchnorm/mul_2_grad/Shape*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*
_output_shapes
:
*
Tshape0
�
:gradients/batch_normalization_4/batchnorm/mul_2_grad/mul_1Mul%batch_normalization_4/moments/Squeeze<gradients/batch_normalization_4/batchnorm/sub_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*
_output_shapes
:

�
:gradients/batch_normalization_4/batchnorm/mul_2_grad/Sum_1Sum:gradients/batch_normalization_4/batchnorm/mul_2_grad/mul_1Lgradients/batch_normalization_4/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_4/batchnorm/mul_2_grad/Reshape_1Reshape:gradients/batch_normalization_4/batchnorm/mul_2_grad/Sum_1<gradients/batch_normalization_4/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*
_output_shapes
:
*
Tshape0
�
gradients/Switch_3Switch batch_normalization_4/gamma/read"batch_normalization_4/cond/pred_id*.
_class$
" loc:@batch_normalization_4/gamma*
T0* 
_output_shapes
:
:

�
gradients/Shape_4Shapegradients/Switch_3:1*
out_type0*
T0*
_output_shapes
:*.
_class$
" loc:@batch_normalization_4/gamma
�
gradients/zeros_3/ConstConst*
dtype0*.
_class$
" loc:@batch_normalization_4/gamma*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*.
_class$
" loc:@batch_normalization_4/gamma*
T0*
_output_shapes
:

�
Hgradients/batch_normalization_4/cond/batchnorm/mul/Switch_grad/cond_gradMergeAgradients/batch_normalization_4/cond/batchnorm/mul_grad/Reshape_1gradients/zeros_3*.
_class$
" loc:@batch_normalization_4/gamma*
T0*
_output_shapes

:
: *
N
�
:gradients/batch_normalization_4/moments/Squeeze_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_4/moments/Squeeze*
valueB"   
   *
_output_shapes
:
�
<gradients/batch_normalization_4/moments/Squeeze_grad/ReshapeReshape<gradients/batch_normalization_4/batchnorm/mul_2_grad/Reshape:gradients/batch_normalization_4/moments/Squeeze_grad/Shape*8
_class.
,*loc:@batch_normalization_4/moments/Squeeze*
T0*
_output_shapes

:
*
Tshape0
�
gradients/AddN_2AddN>gradients/batch_normalization_4/batchnorm/mul_1_grad/Reshape_1>gradients/batch_normalization_4/batchnorm/mul_2_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*
_output_shapes
:
*
N
�
8gradients/batch_normalization_4/batchnorm/mul_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
valueB:
*
_output_shapes
:
�
:gradients/batch_normalization_4/batchnorm/mul_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
valueB:
*
_output_shapes
:
�
Hgradients/batch_normalization_4/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_4/batchnorm/mul_grad/Shape:gradients/batch_normalization_4/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_4/batchnorm/mul_grad/mulMulgradients/AddN_2 batch_normalization_4/gamma/read*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*
_output_shapes
:

�
6gradients/batch_normalization_4/batchnorm/mul_grad/SumSum6gradients/batch_normalization_4/batchnorm/mul_grad/mulHgradients/batch_normalization_4/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_4/batchnorm/mul_grad/ReshapeReshape6gradients/batch_normalization_4/batchnorm/mul_grad/Sum8gradients/batch_normalization_4/batchnorm/mul_grad/Shape*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*
_output_shapes
:
*
Tshape0
�
8gradients/batch_normalization_4/batchnorm/mul_grad/mul_1Mul%batch_normalization_4/batchnorm/Rsqrtgradients/AddN_2*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*
_output_shapes
:

�
8gradients/batch_normalization_4/batchnorm/mul_grad/Sum_1Sum8gradients/batch_normalization_4/batchnorm/mul_grad/mul_1Jgradients/batch_normalization_4/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_4/batchnorm/mul_grad/Reshape_1Reshape8gradients/batch_normalization_4/batchnorm/mul_grad/Sum_1:gradients/batch_normalization_4/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*
_output_shapes
:
*
Tshape0
�
7gradients/batch_normalization_4/moments/mean_grad/ShapeConst*
dtype0*5
_class+
)'loc:@batch_normalization_4/moments/mean*
valueB"   
   *
_output_shapes
:
�
9gradients/batch_normalization_4/moments/mean_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@batch_normalization_4/moments/mean*
valueB"   
   *
_output_shapes
:
�
Ggradients/batch_normalization_4/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/batch_normalization_4/moments/mean_grad/Shape9gradients/batch_normalization_4/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*2
_output_shapes 
:���������:���������
�
5gradients/batch_normalization_4/moments/mean_grad/SumSum<gradients/batch_normalization_4/moments/Squeeze_grad/ReshapeGgradients/batch_normalization_4/moments/mean_grad/BroadcastGradientArgs*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*
	keep_dims( *

Tidx0
�
9gradients/batch_normalization_4/moments/mean_grad/ReshapeReshape5gradients/batch_normalization_4/moments/mean_grad/Sum7gradients/batch_normalization_4/moments/mean_grad/Shape*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*
_output_shapes

:
*
Tshape0
�
7gradients/batch_normalization_4/moments/mean_grad/Sum_1Sum<gradients/batch_normalization_4/moments/Squeeze_grad/ReshapeIgradients/batch_normalization_4/moments/mean_grad/BroadcastGradientArgs:1*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_4/moments/mean_grad/Reshape_1Reshape7gradients/batch_normalization_4/moments/mean_grad/Sum_19gradients/batch_normalization_4/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*
_output_shapes

:
*
Tshape0
�
>gradients/batch_normalization_4/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad%batch_normalization_4/batchnorm/Rsqrt:gradients/batch_normalization_4/batchnorm/mul_grad/Reshape*8
_class.
,*loc:@batch_normalization_4/batchnorm/Rsqrt*
T0*
_output_shapes
:

�
gradients/AddN_3AddNHgradients/batch_normalization_4/cond/batchnorm/mul/Switch_grad/cond_grad<gradients/batch_normalization_4/batchnorm/mul_grad/Reshape_1*.
_class$
" loc:@batch_normalization_4/gamma*
T0*
_output_shapes
:
*
N
�
8gradients/batch_normalization_4/batchnorm/add_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
valueB:
*
_output_shapes
:
�
:gradients/batch_normalization_4/batchnorm/add_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
valueB *
_output_shapes
: 
�
Hgradients/batch_normalization_4/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_4/batchnorm/add_grad/Shape:gradients/batch_normalization_4/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_4/batchnorm/add_grad/SumSum>gradients/batch_normalization_4/batchnorm/Rsqrt_grad/RsqrtGradHgradients/batch_normalization_4/batchnorm/add_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_4/batchnorm/add_grad/ReshapeReshape6gradients/batch_normalization_4/batchnorm/add_grad/Sum8gradients/batch_normalization_4/batchnorm/add_grad/Shape*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
T0*
_output_shapes
:
*
Tshape0
�
8gradients/batch_normalization_4/batchnorm/add_grad/Sum_1Sum>gradients/batch_normalization_4/batchnorm/Rsqrt_grad/RsqrtGradJgradients/batch_normalization_4/batchnorm/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_4/batchnorm/add_grad/Reshape_1Reshape8gradients/batch_normalization_4/batchnorm/add_grad/Sum_1:gradients/batch_normalization_4/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
T0*
_output_shapes
: *
Tshape0
�
<gradients/batch_normalization_4/moments/Squeeze_1_grad/ShapeConst*
dtype0*:
_class0
.,loc:@batch_normalization_4/moments/Squeeze_1*
valueB"   
   *
_output_shapes
:
�
>gradients/batch_normalization_4/moments/Squeeze_1_grad/ReshapeReshape:gradients/batch_normalization_4/batchnorm/add_grad/Reshape<gradients/batch_normalization_4/moments/Squeeze_1_grad/Shape*:
_class0
.,loc:@batch_normalization_4/moments/Squeeze_1*
T0*
_output_shapes

:
*
Tshape0
�
;gradients/batch_normalization_4/moments/variance_grad/ShapeConst*
dtype0*9
_class/
-+loc:@batch_normalization_4/moments/variance*
valueB"   
   *
_output_shapes
:
�
=gradients/batch_normalization_4/moments/variance_grad/Shape_1Const*
dtype0*9
_class/
-+loc:@batch_normalization_4/moments/variance*
valueB"   
   *
_output_shapes
:
�
Kgradients/batch_normalization_4/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients/batch_normalization_4/moments/variance_grad/Shape=gradients/batch_normalization_4/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_4/moments/variance*
T0*2
_output_shapes 
:���������:���������
�
9gradients/batch_normalization_4/moments/variance_grad/SumSum>gradients/batch_normalization_4/moments/Squeeze_1_grad/ReshapeKgradients/batch_normalization_4/moments/variance_grad/BroadcastGradientArgs*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_4/moments/variance*
T0*
	keep_dims( *

Tidx0
�
=gradients/batch_normalization_4/moments/variance_grad/ReshapeReshape9gradients/batch_normalization_4/moments/variance_grad/Sum;gradients/batch_normalization_4/moments/variance_grad/Shape*9
_class/
-+loc:@batch_normalization_4/moments/variance*
T0*
_output_shapes

:
*
Tshape0
�
;gradients/batch_normalization_4/moments/variance_grad/Sum_1Sum>gradients/batch_normalization_4/moments/Squeeze_1_grad/ReshapeMgradients/batch_normalization_4/moments/variance_grad/BroadcastGradientArgs:1*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_4/moments/variance*
T0*
	keep_dims( *

Tidx0
�
9gradients/batch_normalization_4/moments/variance_grad/NegNeg;gradients/batch_normalization_4/moments/variance_grad/Sum_1*9
_class/
-+loc:@batch_normalization_4/moments/variance*
T0*
_output_shapes
:
�
?gradients/batch_normalization_4/moments/variance_grad/Reshape_1Reshape9gradients/batch_normalization_4/moments/variance_grad/Neg=gradients/batch_normalization_4/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_4/moments/variance*
T0*
_output_shapes

:
*
Tshape0
�
9gradients/batch_normalization_4/moments/Mean_1_grad/ShapeShape/batch_normalization_4/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1
�
8gradients/batch_normalization_4/moments/Mean_1_grad/SizeConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B :*
_output_shapes
: 
�
7gradients/batch_normalization_4/moments/Mean_1_grad/addAdd6batch_normalization_4/moments/Mean_1/reduction_indices8gradients/batch_normalization_4/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
:
�
7gradients/batch_normalization_4/moments/Mean_1_grad/modFloorMod7gradients/batch_normalization_4/moments/Mean_1_grad/add8gradients/batch_normalization_4/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
valueB:*
_output_shapes
:
�
?gradients/batch_normalization_4/moments/Mean_1_grad/range/startConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B : *
_output_shapes
: 
�
?gradients/batch_normalization_4/moments/Mean_1_grad/range/deltaConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B :*
_output_shapes
: 
�
9gradients/batch_normalization_4/moments/Mean_1_grad/rangeRange?gradients/batch_normalization_4/moments/Mean_1_grad/range/start8gradients/batch_normalization_4/moments/Mean_1_grad/Size?gradients/batch_normalization_4/moments/Mean_1_grad/range/delta*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*

Tidx0*
_output_shapes
:
�
>gradients/batch_normalization_4/moments/Mean_1_grad/Fill/valueConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B :*
_output_shapes
: 
�
8gradients/batch_normalization_4/moments/Mean_1_grad/FillFill;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_1>gradients/batch_normalization_4/moments/Mean_1_grad/Fill/value*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
:
�
Agradients/batch_normalization_4/moments/Mean_1_grad/DynamicStitchDynamicStitch9gradients/batch_normalization_4/moments/Mean_1_grad/range7gradients/batch_normalization_4/moments/Mean_1_grad/mod9gradients/batch_normalization_4/moments/Mean_1_grad/Shape8gradients/batch_normalization_4/moments/Mean_1_grad/Fill*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*#
_output_shapes
:���������*
N
�
=gradients/batch_normalization_4/moments/Mean_1_grad/Maximum/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B :*
_output_shapes
: 
�
;gradients/batch_normalization_4/moments/Mean_1_grad/MaximumMaximumAgradients/batch_normalization_4/moments/Mean_1_grad/DynamicStitch=gradients/batch_normalization_4/moments/Mean_1_grad/Maximum/y*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*#
_output_shapes
:���������
�
<gradients/batch_normalization_4/moments/Mean_1_grad/floordivFloorDiv9gradients/batch_normalization_4/moments/Mean_1_grad/Shape;gradients/batch_normalization_4/moments/Mean_1_grad/Maximum*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_4/moments/Mean_1_grad/ReshapeReshape=gradients/batch_normalization_4/moments/variance_grad/ReshapeAgradients/batch_normalization_4/moments/Mean_1_grad/DynamicStitch*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
:*
Tshape0
�
8gradients/batch_normalization_4/moments/Mean_1_grad/TileTile;gradients/batch_normalization_4/moments/Mean_1_grad/Reshape<gradients/batch_normalization_4/moments/Mean_1_grad/floordiv*

Tmultiples0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*0
_output_shapes
:������������������
�
;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_2Shape/batch_normalization_4/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1
�
;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_3Const*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
valueB"   
   *
_output_shapes
:
�
9gradients/batch_normalization_4/moments/Mean_1_grad/ConstConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
valueB: *
_output_shapes
:
�
8gradients/batch_normalization_4/moments/Mean_1_grad/ProdProd;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_29gradients/batch_normalization_4/moments/Mean_1_grad/Const*
_output_shapes
: *7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_4/moments/Mean_1_grad/Const_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
valueB: *
_output_shapes
:
�
:gradients/batch_normalization_4/moments/Mean_1_grad/Prod_1Prod;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_3;gradients/batch_normalization_4/moments/Mean_1_grad/Const_1*
_output_shapes
: *7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_4/moments/Mean_1_grad/Maximum_1/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_4/moments/Mean_1_grad/Maximum_1Maximum:gradients/batch_normalization_4/moments/Mean_1_grad/Prod_1?gradients/batch_normalization_4/moments/Mean_1_grad/Maximum_1/y*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_4/moments/Mean_1_grad/floordiv_1FloorDiv8gradients/batch_normalization_4/moments/Mean_1_grad/Prod=gradients/batch_normalization_4/moments/Mean_1_grad/Maximum_1*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
: 
�
8gradients/batch_normalization_4/moments/Mean_1_grad/CastCast>gradients/batch_normalization_4/moments/Mean_1_grad/floordiv_1*

DstT0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*

SrcT0*
_output_shapes
: 
�
;gradients/batch_normalization_4/moments/Mean_1_grad/truedivRealDiv8gradients/batch_normalization_4/moments/Mean_1_grad/Tile8gradients/batch_normalization_4/moments/Mean_1_grad/Cast*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*'
_output_shapes
:���������

�
9gradients/batch_normalization_4/moments/Square_grad/mul/xConst@^gradients/batch_normalization_4/moments/variance_grad/Reshape_1*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Square*
valueB
 *   @*
_output_shapes
: 
�
7gradients/batch_normalization_4/moments/Square_grad/mulMul9gradients/batch_normalization_4/moments/Square_grad/mul/x*batch_normalization_4/moments/shifted_mean*7
_class-
+)loc:@batch_normalization_4/moments/Square*
T0*
_output_shapes

:

�
9gradients/batch_normalization_4/moments/Square_grad/mul_1Mul?gradients/batch_normalization_4/moments/variance_grad/Reshape_17gradients/batch_normalization_4/moments/Square_grad/mul*7
_class-
+)loc:@batch_normalization_4/moments/Square*
T0*
_output_shapes

:

�
Dgradients/batch_normalization_4/moments/SquaredDifference_grad/ShapeShapedense_1/MatMul*
out_type0*
T0*
_output_shapes
:*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference
�
Fgradients/batch_normalization_4/moments/SquaredDifference_grad/Shape_1Const*
dtype0*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
valueB"   
   *
_output_shapes
:
�
Tgradients/batch_normalization_4/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/batch_normalization_4/moments/SquaredDifference_grad/ShapeFgradients/batch_normalization_4/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*2
_output_shapes 
:���������:���������
�
Egradients/batch_normalization_4/moments/SquaredDifference_grad/scalarConst<^gradients/batch_normalization_4/moments/Mean_1_grad/truediv*
dtype0*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
valueB
 *   @*
_output_shapes
: 
�
Bgradients/batch_normalization_4/moments/SquaredDifference_grad/mulMulEgradients/batch_normalization_4/moments/SquaredDifference_grad/scalar;gradients/batch_normalization_4/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*'
_output_shapes
:���������

�
Bgradients/batch_normalization_4/moments/SquaredDifference_grad/subSubdense_1/MatMul*batch_normalization_4/moments/StopGradient<^gradients/batch_normalization_4/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*'
_output_shapes
:���������

�
Dgradients/batch_normalization_4/moments/SquaredDifference_grad/mul_1MulBgradients/batch_normalization_4/moments/SquaredDifference_grad/mulBgradients/batch_normalization_4/moments/SquaredDifference_grad/sub*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*'
_output_shapes
:���������

�
Bgradients/batch_normalization_4/moments/SquaredDifference_grad/SumSumDgradients/batch_normalization_4/moments/SquaredDifference_grad/mul_1Tgradients/batch_normalization_4/moments/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes
:*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*
	keep_dims( *

Tidx0
�
Fgradients/batch_normalization_4/moments/SquaredDifference_grad/ReshapeReshapeBgradients/batch_normalization_4/moments/SquaredDifference_grad/SumDgradients/batch_normalization_4/moments/SquaredDifference_grad/Shape*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*'
_output_shapes
:���������
*
Tshape0
�
Dgradients/batch_normalization_4/moments/SquaredDifference_grad/Sum_1SumDgradients/batch_normalization_4/moments/SquaredDifference_grad/mul_1Vgradients/batch_normalization_4/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*
	keep_dims( *

Tidx0
�
Hgradients/batch_normalization_4/moments/SquaredDifference_grad/Reshape_1ReshapeDgradients/batch_normalization_4/moments/SquaredDifference_grad/Sum_1Fgradients/batch_normalization_4/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*
_output_shapes

:
*
Tshape0
�
Bgradients/batch_normalization_4/moments/SquaredDifference_grad/NegNegHgradients/batch_normalization_4/moments/SquaredDifference_grad/Reshape_1*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*
_output_shapes

:

�
gradients/AddN_4AddN9gradients/batch_normalization_4/moments/mean_grad/Reshape9gradients/batch_normalization_4/moments/Square_grad/mul_1*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*
_output_shapes

:
*
N
�
?gradients/batch_normalization_4/moments/shifted_mean_grad/ShapeShape!batch_normalization_4/moments/Sub*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean
�
>gradients/batch_normalization_4/moments/shifted_mean_grad/SizeConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_4/moments/shifted_mean_grad/addAdd<batch_normalization_4/moments/shifted_mean/reduction_indices>gradients/batch_normalization_4/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
:
�
=gradients/batch_normalization_4/moments/shifted_mean_grad/modFloorMod=gradients/batch_normalization_4/moments/shifted_mean_grad/add>gradients/batch_normalization_4/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
valueB:*
_output_shapes
:
�
Egradients/batch_normalization_4/moments/shifted_mean_grad/range/startConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B : *
_output_shapes
: 
�
Egradients/batch_normalization_4/moments/shifted_mean_grad/range/deltaConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
?gradients/batch_normalization_4/moments/shifted_mean_grad/rangeRangeEgradients/batch_normalization_4/moments/shifted_mean_grad/range/start>gradients/batch_normalization_4/moments/shifted_mean_grad/SizeEgradients/batch_normalization_4/moments/shifted_mean_grad/range/delta*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*

Tidx0*
_output_shapes
:
�
Dgradients/batch_normalization_4/moments/shifted_mean_grad/Fill/valueConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
>gradients/batch_normalization_4/moments/shifted_mean_grad/FillFillAgradients/batch_normalization_4/moments/shifted_mean_grad/Shape_1Dgradients/batch_normalization_4/moments/shifted_mean_grad/Fill/value*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
:
�
Ggradients/batch_normalization_4/moments/shifted_mean_grad/DynamicStitchDynamicStitch?gradients/batch_normalization_4/moments/shifted_mean_grad/range=gradients/batch_normalization_4/moments/shifted_mean_grad/mod?gradients/batch_normalization_4/moments/shifted_mean_grad/Shape>gradients/batch_normalization_4/moments/shifted_mean_grad/Fill*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*#
_output_shapes
:���������*
N
�
Cgradients/batch_normalization_4/moments/shifted_mean_grad/Maximum/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/MaximumMaximumGgradients/batch_normalization_4/moments/shifted_mean_grad/DynamicStitchCgradients/batch_normalization_4/moments/shifted_mean_grad/Maximum/y*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Bgradients/batch_normalization_4/moments/shifted_mean_grad/floordivFloorDiv?gradients/batch_normalization_4/moments/shifted_mean_grad/ShapeAgradients/batch_normalization_4/moments/shifted_mean_grad/Maximum*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_4Ggradients/batch_normalization_4/moments/shifted_mean_grad/DynamicStitch*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
:*
Tshape0
�
>gradients/batch_normalization_4/moments/shifted_mean_grad/TileTileAgradients/batch_normalization_4/moments/shifted_mean_grad/ReshapeBgradients/batch_normalization_4/moments/shifted_mean_grad/floordiv*

Tmultiples0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*0
_output_shapes
:������������������
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/Shape_2Shape!batch_normalization_4/moments/Sub*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/Shape_3Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
valueB"   
   *
_output_shapes
:
�
?gradients/batch_normalization_4/moments/shifted_mean_grad/ConstConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
valueB: *
_output_shapes
:
�
>gradients/batch_normalization_4/moments/shifted_mean_grad/ProdProdAgradients/batch_normalization_4/moments/shifted_mean_grad/Shape_2?gradients/batch_normalization_4/moments/shifted_mean_grad/Const*
_output_shapes
: *=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/Const_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
valueB: *
_output_shapes
:
�
@gradients/batch_normalization_4/moments/shifted_mean_grad/Prod_1ProdAgradients/batch_normalization_4/moments/shifted_mean_grad/Shape_3Agradients/batch_normalization_4/moments/shifted_mean_grad/Const_1*
_output_shapes
: *=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
	keep_dims( *

Tidx0
�
Egradients/batch_normalization_4/moments/shifted_mean_grad/Maximum_1/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Cgradients/batch_normalization_4/moments/shifted_mean_grad/Maximum_1Maximum@gradients/batch_normalization_4/moments/shifted_mean_grad/Prod_1Egradients/batch_normalization_4/moments/shifted_mean_grad/Maximum_1/y*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
: 
�
Dgradients/batch_normalization_4/moments/shifted_mean_grad/floordiv_1FloorDiv>gradients/batch_normalization_4/moments/shifted_mean_grad/ProdCgradients/batch_normalization_4/moments/shifted_mean_grad/Maximum_1*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_4/moments/shifted_mean_grad/CastCastDgradients/batch_normalization_4/moments/shifted_mean_grad/floordiv_1*

DstT0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*

SrcT0*
_output_shapes
: 
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/truedivRealDiv>gradients/batch_normalization_4/moments/shifted_mean_grad/Tile>gradients/batch_normalization_4/moments/shifted_mean_grad/Cast*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*'
_output_shapes
:���������

�
6gradients/batch_normalization_4/moments/Sub_grad/ShapeShapedense_1/MatMul*
out_type0*
T0*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_4/moments/Sub
�
8gradients/batch_normalization_4/moments/Sub_grad/Shape_1Const*
dtype0*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
valueB"   
   *
_output_shapes
:
�
Fgradients/batch_normalization_4/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/batch_normalization_4/moments/Sub_grad/Shape8gradients/batch_normalization_4/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
T0*2
_output_shapes 
:���������:���������
�
4gradients/batch_normalization_4/moments/Sub_grad/SumSumAgradients/batch_normalization_4/moments/shifted_mean_grad/truedivFgradients/batch_normalization_4/moments/Sub_grad/BroadcastGradientArgs*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
T0*
	keep_dims( *

Tidx0
�
8gradients/batch_normalization_4/moments/Sub_grad/ReshapeReshape4gradients/batch_normalization_4/moments/Sub_grad/Sum6gradients/batch_normalization_4/moments/Sub_grad/Shape*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
T0*'
_output_shapes
:���������
*
Tshape0
�
6gradients/batch_normalization_4/moments/Sub_grad/Sum_1SumAgradients/batch_normalization_4/moments/shifted_mean_grad/truedivHgradients/batch_normalization_4/moments/Sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
T0*
	keep_dims( *

Tidx0
�
4gradients/batch_normalization_4/moments/Sub_grad/NegNeg6gradients/batch_normalization_4/moments/Sub_grad/Sum_1*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
T0*
_output_shapes
:
�
:gradients/batch_normalization_4/moments/Sub_grad/Reshape_1Reshape4gradients/batch_normalization_4/moments/Sub_grad/Neg8gradients/batch_normalization_4/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
T0*
_output_shapes

:
*
Tshape0
�
gradients/AddN_5AddN;gradients/batch_normalization_4/moments/mean_grad/Reshape_1Bgradients/batch_normalization_4/moments/SquaredDifference_grad/Neg:gradients/batch_normalization_4/moments/Sub_grad/Reshape_1*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*
_output_shapes

:
*
N
�
gradients/AddN_6AddNJgradients/batch_normalization_4/cond/batchnorm/mul_1/Switch_grad/cond_grad<gradients/batch_normalization_4/batchnorm/mul_1_grad/ReshapeFgradients/batch_normalization_4/moments/SquaredDifference_grad/Reshape8gradients/batch_normalization_4/moments/Sub_grad/Reshape*!
_class
loc:@dense_1/MatMul*
T0*'
_output_shapes
:���������
*
N
�
$gradients/dense_1/MatMul_grad/MatMulMatMulgradients/AddN_6dense_1/kernel/read*
transpose_b(*
transpose_a( *!
_class
loc:@dense_1/MatMul*
T0*(
_output_shapes
:����������
�
&gradients/dense_1/MatMul_grad/MatMul_1MatMulflatten_1/Reshapegradients/AddN_6*
transpose_b( *
transpose_a(*!
_class
loc:@dense_1/MatMul*
T0*
_output_shapes
:	�

�
&gradients/flatten_1/Reshape_grad/ShapeShapemax_pooling2d_3/MaxPool*
out_type0*
T0*
_output_shapes
:*$
_class
loc:@flatten_1/Reshape
�
(gradients/flatten_1/Reshape_grad/ReshapeReshape$gradients/dense_1/MatMul_grad/MatMul&gradients/flatten_1/Reshape_grad/Shape*$
_class
loc:@flatten_1/Reshape*
T0*/
_output_shapes
:���������@*
Tshape0
�
2gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGradactivation_3/divmax_pooling2d_3/MaxPool(gradients/flatten_1/Reshape_grad/Reshape*/
_output_shapes
:���������@*
data_formatNHWC*
paddingVALID*
strides
*
ksize
**
_class 
loc:@max_pooling2d_3/MaxPool*
T0
�
%gradients/activation_3/div_grad/ShapeShapeactivation_3/clip_by_value*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_3/div
�
'gradients/activation_3/div_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_3/div*
valueB *
_output_shapes
: 
�
5gradients/activation_3/div_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_3/div_grad/Shape'gradients/activation_3/div_grad/Shape_1*#
_class
loc:@activation_3/div*
T0*2
_output_shapes 
:���������:���������
�
'gradients/activation_3/div_grad/RealDivRealDiv2gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradactivation_3/div/y*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@
�
#gradients/activation_3/div_grad/SumSum'gradients/activation_3/div_grad/RealDiv5gradients/activation_3/div_grad/BroadcastGradientArgs*
_output_shapes
:*#
_class
loc:@activation_3/div*
T0*
	keep_dims( *

Tidx0
�
'gradients/activation_3/div_grad/ReshapeReshape#gradients/activation_3/div_grad/Sum%gradients/activation_3/div_grad/Shape*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@*
Tshape0
�
#gradients/activation_3/div_grad/NegNegactivation_3/clip_by_value*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@
�
)gradients/activation_3/div_grad/RealDiv_1RealDiv#gradients/activation_3/div_grad/Negactivation_3/div/y*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@
�
)gradients/activation_3/div_grad/RealDiv_2RealDiv)gradients/activation_3/div_grad/RealDiv_1activation_3/div/y*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@
�
#gradients/activation_3/div_grad/mulMul2gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGrad)gradients/activation_3/div_grad/RealDiv_2*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@
�
%gradients/activation_3/div_grad/Sum_1Sum#gradients/activation_3/div_grad/mul7gradients/activation_3/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*#
_class
loc:@activation_3/div*
T0*
	keep_dims( *

Tidx0
�
)gradients/activation_3/div_grad/Reshape_1Reshape%gradients/activation_3/div_grad/Sum_1'gradients/activation_3/div_grad/Shape_1*#
_class
loc:@activation_3/div*
T0*
_output_shapes
: *
Tshape0
�
/gradients/activation_3/clip_by_value_grad/ShapeShape"activation_3/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@activation_3/clip_by_value
�
1gradients/activation_3/clip_by_value_grad/Shape_1Const*
dtype0*-
_class#
!loc:@activation_3/clip_by_value*
valueB *
_output_shapes
: 
�
1gradients/activation_3/clip_by_value_grad/Shape_2Shape'gradients/activation_3/div_grad/Reshape*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@activation_3/clip_by_value
�
5gradients/activation_3/clip_by_value_grad/zeros/ConstConst*
dtype0*-
_class#
!loc:@activation_3/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
/gradients/activation_3/clip_by_value_grad/zerosFill1gradients/activation_3/clip_by_value_grad/Shape_25gradients/activation_3/clip_by_value_grad/zeros/Const*-
_class#
!loc:@activation_3/clip_by_value*
T0*/
_output_shapes
:���������@
�
6gradients/activation_3/clip_by_value_grad/GreaterEqualGreaterEqual"activation_3/clip_by_value/Minimumactivation_3/Cast*-
_class#
!loc:@activation_3/clip_by_value*
T0*/
_output_shapes
:���������@
�
?gradients/activation_3/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/activation_3/clip_by_value_grad/Shape1gradients/activation_3/clip_by_value_grad/Shape_1*-
_class#
!loc:@activation_3/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
0gradients/activation_3/clip_by_value_grad/SelectSelect6gradients/activation_3/clip_by_value_grad/GreaterEqual'gradients/activation_3/div_grad/Reshape/gradients/activation_3/clip_by_value_grad/zeros*-
_class#
!loc:@activation_3/clip_by_value*
T0*/
_output_shapes
:���������@
�
4gradients/activation_3/clip_by_value_grad/LogicalNot
LogicalNot6gradients/activation_3/clip_by_value_grad/GreaterEqual*-
_class#
!loc:@activation_3/clip_by_value*/
_output_shapes
:���������@
�
2gradients/activation_3/clip_by_value_grad/Select_1Select4gradients/activation_3/clip_by_value_grad/LogicalNot'gradients/activation_3/div_grad/Reshape/gradients/activation_3/clip_by_value_grad/zeros*-
_class#
!loc:@activation_3/clip_by_value*
T0*/
_output_shapes
:���������@
�
-gradients/activation_3/clip_by_value_grad/SumSum0gradients/activation_3/clip_by_value_grad/Select?gradients/activation_3/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*-
_class#
!loc:@activation_3/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
1gradients/activation_3/clip_by_value_grad/ReshapeReshape-gradients/activation_3/clip_by_value_grad/Sum/gradients/activation_3/clip_by_value_grad/Shape*-
_class#
!loc:@activation_3/clip_by_value*
T0*/
_output_shapes
:���������@*
Tshape0
�
/gradients/activation_3/clip_by_value_grad/Sum_1Sum2gradients/activation_3/clip_by_value_grad/Select_1Agradients/activation_3/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*-
_class#
!loc:@activation_3/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
3gradients/activation_3/clip_by_value_grad/Reshape_1Reshape/gradients/activation_3/clip_by_value_grad/Sum_11gradients/activation_3/clip_by_value_grad/Shape_1*-
_class#
!loc:@activation_3/clip_by_value*
T0*
_output_shapes
: *
Tshape0
�
7gradients/activation_3/clip_by_value/Minimum_grad/ShapeShapeactivation_3/add*
out_type0*
T0*
_output_shapes
:*5
_class+
)'loc:@activation_3/clip_by_value/Minimum
�
9gradients/activation_3/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
9gradients/activation_3/clip_by_value/Minimum_grad/Shape_2Shape1gradients/activation_3/clip_by_value_grad/Reshape*
out_type0*
T0*
_output_shapes
:*5
_class+
)'loc:@activation_3/clip_by_value/Minimum
�
=gradients/activation_3/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
7gradients/activation_3/clip_by_value/Minimum_grad/zerosFill9gradients/activation_3/clip_by_value/Minimum_grad/Shape_2=gradients/activation_3/clip_by_value/Minimum_grad/zeros/Const*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
;gradients/activation_3/clip_by_value/Minimum_grad/LessEqual	LessEqualactivation_3/addactivation_3/Cast_1*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
Ggradients/activation_3/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/activation_3/clip_by_value/Minimum_grad/Shape9gradients/activation_3/clip_by_value/Minimum_grad/Shape_1*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
8gradients/activation_3/clip_by_value/Minimum_grad/SelectSelect;gradients/activation_3/clip_by_value/Minimum_grad/LessEqual1gradients/activation_3/clip_by_value_grad/Reshape7gradients/activation_3/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
<gradients/activation_3/clip_by_value/Minimum_grad/LogicalNot
LogicalNot;gradients/activation_3/clip_by_value/Minimum_grad/LessEqual*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*/
_output_shapes
:���������@
�
:gradients/activation_3/clip_by_value/Minimum_grad/Select_1Select<gradients/activation_3/clip_by_value/Minimum_grad/LogicalNot1gradients/activation_3/clip_by_value_grad/Reshape7gradients/activation_3/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
5gradients/activation_3/clip_by_value/Minimum_grad/SumSum8gradients/activation_3/clip_by_value/Minimum_grad/SelectGgradients/activation_3/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
9gradients/activation_3/clip_by_value/Minimum_grad/ReshapeReshape5gradients/activation_3/clip_by_value/Minimum_grad/Sum7gradients/activation_3/clip_by_value/Minimum_grad/Shape*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@*
Tshape0
�
7gradients/activation_3/clip_by_value/Minimum_grad/Sum_1Sum:gradients/activation_3/clip_by_value/Minimum_grad/Select_1Igradients/activation_3/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
;gradients/activation_3/clip_by_value/Minimum_grad/Reshape_1Reshape7gradients/activation_3/clip_by_value/Minimum_grad/Sum_19gradients/activation_3/clip_by_value/Minimum_grad/Shape_1*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*
_output_shapes
: *
Tshape0
�
%gradients/activation_3/add_grad/ShapeShapeactivation_3/mul*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_3/add
�
'gradients/activation_3/add_grad/Shape_1Shapeactivation_3/StopGradient*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_3/add
�
5gradients/activation_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_3/add_grad/Shape'gradients/activation_3/add_grad/Shape_1*#
_class
loc:@activation_3/add*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_3/add_grad/SumSum9gradients/activation_3/clip_by_value/Minimum_grad/Reshape5gradients/activation_3/add_grad/BroadcastGradientArgs*
_output_shapes
:*#
_class
loc:@activation_3/add*
T0*
	keep_dims( *

Tidx0
�
'gradients/activation_3/add_grad/ReshapeReshape#gradients/activation_3/add_grad/Sum%gradients/activation_3/add_grad/Shape*#
_class
loc:@activation_3/add*
T0*/
_output_shapes
:���������@*
Tshape0
�
%gradients/activation_3/add_grad/Sum_1Sum9gradients/activation_3/clip_by_value/Minimum_grad/Reshape7gradients/activation_3/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*#
_class
loc:@activation_3/add*
T0*
	keep_dims( *

Tidx0
�
)gradients/activation_3/add_grad/Reshape_1Reshape%gradients/activation_3/add_grad/Sum_1'gradients/activation_3/add_grad/Shape_1*#
_class
loc:@activation_3/add*
T0*/
_output_shapes
:���������@*
Tshape0
�
%gradients/activation_3/mul_grad/ShapeShape batch_normalization_3/cond/Merge*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_3/mul
�
'gradients/activation_3/mul_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_3/mul*
valueB *
_output_shapes
: 
�
5gradients/activation_3/mul_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_3/mul_grad/Shape'gradients/activation_3/mul_grad/Shape_1*#
_class
loc:@activation_3/mul*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_3/mul_grad/mulMul'gradients/activation_3/add_grad/Reshapeactivation_3/mul/y*#
_class
loc:@activation_3/mul*
T0*/
_output_shapes
:���������@
�
#gradients/activation_3/mul_grad/SumSum#gradients/activation_3/mul_grad/mul5gradients/activation_3/mul_grad/BroadcastGradientArgs*
_output_shapes
:*#
_class
loc:@activation_3/mul*
T0*
	keep_dims( *

Tidx0
�
'gradients/activation_3/mul_grad/ReshapeReshape#gradients/activation_3/mul_grad/Sum%gradients/activation_3/mul_grad/Shape*#
_class
loc:@activation_3/mul*
T0*/
_output_shapes
:���������@*
Tshape0
�
%gradients/activation_3/mul_grad/mul_1Mul batch_normalization_3/cond/Merge'gradients/activation_3/add_grad/Reshape*#
_class
loc:@activation_3/mul*
T0*/
_output_shapes
:���������@
�
%gradients/activation_3/mul_grad/Sum_1Sum%gradients/activation_3/mul_grad/mul_17gradients/activation_3/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*#
_class
loc:@activation_3/mul*
T0*
	keep_dims( *

Tidx0
�
)gradients/activation_3/mul_grad/Reshape_1Reshape%gradients/activation_3/mul_grad/Sum_1'gradients/activation_3/mul_grad/Shape_1*#
_class
loc:@activation_3/mul*
T0*
_output_shapes
: *
Tshape0
�
9gradients/batch_normalization_3/cond/Merge_grad/cond_gradSwitch'gradients/activation_3/mul_grad/Reshape"batch_normalization_3/cond/pred_id*#
_class
loc:@activation_3/mul*
T0*J
_output_shapes8
6:���������@:���������@
�
?gradients/batch_normalization_3/cond/batchnorm/add_1_grad/ShapeShape*batch_normalization_3/cond/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1
�
Agradients/batch_normalization_3/cond/batchnorm/add_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_3/cond/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_3/cond/batchnorm/add_1_grad/ShapeAgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_3/cond/batchnorm/add_1_grad/SumSum9gradients/batch_normalization_3/cond/Merge_grad/cond_gradOgradients/batch_normalization_3/cond/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_3/cond/batchnorm/add_1_grad/ReshapeReshape=gradients/batch_normalization_3/cond/batchnorm/add_1_grad/Sum?gradients/batch_normalization_3/cond/batchnorm/add_1_grad/Shape*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
?gradients/batch_normalization_3/cond/batchnorm/add_1_grad/Sum_1Sum9gradients/batch_normalization_3/cond/Merge_grad/cond_gradQgradients/batch_normalization_3/cond/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Reshape_1Reshape?gradients/batch_normalization_3/cond/batchnorm/add_1_grad/Sum_1Agradients/batch_normalization_3/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*
T0*
_output_shapes
:@*
Tshape0
�
gradients/Switch_4Switch%batch_normalization_3/batchnorm/add_1"batch_normalization_3/cond/pred_id*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*J
_output_shapes8
6:���������@:���������@
�
gradients/Shape_5Shapegradients/Switch_4*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1
�
gradients/zeros_4/ConstConst*
dtype0*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_4Fillgradients/Shape_5gradients/zeros_4/Const*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*/
_output_shapes
:���������@
�
<gradients/batch_normalization_3/cond/Switch_1_grad/cond_gradMerge;gradients/batch_normalization_3/cond/Merge_grad/cond_grad:1gradients/zeros_4*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*1
_output_shapes
:���������@: *
N
�
?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/ShapeShape1batch_normalization_3/cond/batchnorm/mul_1/Switch*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1
�
Agradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_3/cond/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/ShapeAgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/mulMulAgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Reshape(batch_normalization_3/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
=gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/SumSum=gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/mulOgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_3/cond/batchnorm/mul_1_grad/ReshapeReshape=gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Sum?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Shape*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/mul_1Mul1batch_normalization_3/cond/batchnorm/mul_1/SwitchAgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Reshape*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Sum_1Sum?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/mul_1Qgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Reshape_1Reshape?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Sum_1Agradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*
_output_shapes
:@*
Tshape0
�
=gradients/batch_normalization_3/cond/batchnorm/sub_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_3/cond/batchnorm/sub_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_3/cond/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_3/cond/batchnorm/sub_grad/Shape?gradients/batch_normalization_3/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_3/cond/batchnorm/sub_grad/SumSumCgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Reshape_1Mgradients/batch_normalization_3/cond/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_3/cond/batchnorm/sub_grad/ReshapeReshape;gradients/batch_normalization_3/cond/batchnorm/sub_grad/Sum=gradients/batch_normalization_3/cond/batchnorm/sub_grad/Shape*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
=gradients/batch_normalization_3/cond/batchnorm/sub_grad/Sum_1SumCgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Reshape_1Ogradients/batch_normalization_3/cond/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_3/cond/batchnorm/sub_grad/NegNeg=gradients/batch_normalization_3/cond/batchnorm/sub_grad/Sum_1*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
T0*
_output_shapes
:
�
Agradients/batch_normalization_3/cond/batchnorm/sub_grad/Reshape_1Reshape;gradients/batch_normalization_3/cond/batchnorm/sub_grad/Neg?gradients/batch_normalization_3/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
:gradients/batch_normalization_3/batchnorm/add_1_grad/ShapeShape%batch_normalization_3/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1
�
<gradients/batch_normalization_3/batchnorm/add_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_3/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_3/batchnorm/add_1_grad/Shape<gradients/batch_normalization_3/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_3/batchnorm/add_1_grad/SumSum<gradients/batch_normalization_3/cond/Switch_1_grad/cond_gradJgradients/batch_normalization_3/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_3/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_3/batchnorm/add_1_grad/Sum:gradients/batch_normalization_3/batchnorm/add_1_grad/Shape*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
:gradients/batch_normalization_3/batchnorm/add_1_grad/Sum_1Sum<gradients/batch_normalization_3/cond/Switch_1_grad/cond_gradLgradients/batch_normalization_3/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_3/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_3/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_3/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*
_output_shapes
:@*
Tshape0
�
gradients/Switch_5Switchquantized_conv2d_3/BiasAdd"batch_normalization_3/cond/pred_id*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
T0*J
_output_shapes8
6:���������@:���������@
�
gradients/Shape_6Shapegradients/Switch_5:1*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@quantized_conv2d_3/BiasAdd
�
gradients/zeros_5/ConstConst*
dtype0*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_5Fillgradients/Shape_6gradients/zeros_5/Const*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
T0*/
_output_shapes
:���������@
�
Jgradients/batch_normalization_3/cond/batchnorm/mul_1/Switch_grad/cond_gradMergeAgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Reshapegradients/zeros_5*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
T0*1
_output_shapes
:���������@: *
N
�
gradients/Switch_6Switchbatch_normalization_3/beta/read"batch_normalization_3/cond/pred_id*-
_class#
!loc:@batch_normalization_3/beta*
T0* 
_output_shapes
:@:@
�
gradients/Shape_7Shapegradients/Switch_6:1*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@batch_normalization_3/beta
�
gradients/zeros_6/ConstConst*
dtype0*-
_class#
!loc:@batch_normalization_3/beta*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_6Fillgradients/Shape_7gradients/zeros_6/Const*-
_class#
!loc:@batch_normalization_3/beta*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_3/cond/batchnorm/sub/Switch_grad/cond_gradMerge?gradients/batch_normalization_3/cond/batchnorm/sub_grad/Reshapegradients/zeros_6*-
_class#
!loc:@batch_normalization_3/beta*
T0*
_output_shapes

:@: *
N
�
?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/ShapeConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Agradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_3/cond/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/ShapeAgradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/mulMulAgradients/batch_normalization_3/cond/batchnorm/sub_grad/Reshape_1(batch_normalization_3/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/SumSum=gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/mulOgradients/batch_normalization_3/cond/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_3/cond/batchnorm/mul_2_grad/ReshapeReshape=gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Sum?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Shape*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/mul_1Mul1batch_normalization_3/cond/batchnorm/mul_2/SwitchAgradients/batch_normalization_3/cond/batchnorm/sub_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Sum_1Sum?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/mul_1Qgradients/batch_normalization_3/cond/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Reshape_1Reshape?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Sum_1Agradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
:gradients/batch_normalization_3/batchnorm/mul_1_grad/ShapeShapequantized_conv2d_3/BiasAdd*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1
�
<gradients/batch_normalization_3/batchnorm/mul_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_3/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_3/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_3/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_3/batchnorm/mul_1_grad/mulMul<gradients/batch_normalization_3/batchnorm/add_1_grad/Reshape#batch_normalization_3/batchnorm/mul*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
8gradients/batch_normalization_3/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_3/batchnorm/mul_1_grad/mulJgradients/batch_normalization_3/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_3/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_3/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_3/batchnorm/mul_1_grad/Shape*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
:gradients/batch_normalization_3/batchnorm/mul_1_grad/mul_1Mulquantized_conv2d_3/BiasAdd<gradients/batch_normalization_3/batchnorm/add_1_grad/Reshape*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
:gradients/batch_normalization_3/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_3/batchnorm/mul_1_grad/mul_1Lgradients/batch_normalization_3/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_3/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_3/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_3/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_3/batchnorm/sub_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_3/batchnorm/sub_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_3/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_3/batchnorm/sub_grad/Shape:gradients/batch_normalization_3/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_3/batchnorm/sub_grad/SumSum>gradients/batch_normalization_3/batchnorm/add_1_grad/Reshape_1Hgradients/batch_normalization_3/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_3/batchnorm/sub_grad/ReshapeReshape6gradients/batch_normalization_3/batchnorm/sub_grad/Sum8gradients/batch_normalization_3/batchnorm/sub_grad/Shape*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_3/batchnorm/sub_grad/Sum_1Sum>gradients/batch_normalization_3/batchnorm/add_1_grad/Reshape_1Jgradients/batch_normalization_3/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
6gradients/batch_normalization_3/batchnorm/sub_grad/NegNeg8gradients/batch_normalization_3/batchnorm/sub_grad/Sum_1*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
T0*
_output_shapes
:
�
<gradients/batch_normalization_3/batchnorm/sub_grad/Reshape_1Reshape6gradients/batch_normalization_3/batchnorm/sub_grad/Neg:gradients/batch_normalization_3/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
gradients/AddN_7AddNCgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Reshape_1Cgradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*
_output_shapes
:@*
N
�
=gradients/batch_normalization_3/cond/batchnorm/mul_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_3/cond/batchnorm/mul_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_3/cond/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_3/cond/batchnorm/mul_grad/Shape?gradients/batch_normalization_3/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_3/cond/batchnorm/mul_grad/mulMulgradients/AddN_7/batch_normalization_3/cond/batchnorm/mul/Switch*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
;gradients/batch_normalization_3/cond/batchnorm/mul_grad/SumSum;gradients/batch_normalization_3/cond/batchnorm/mul_grad/mulMgradients/batch_normalization_3/cond/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_3/cond/batchnorm/mul_grad/ReshapeReshape;gradients/batch_normalization_3/cond/batchnorm/mul_grad/Sum=gradients/batch_normalization_3/cond/batchnorm/mul_grad/Shape*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
=gradients/batch_normalization_3/cond/batchnorm/mul_grad/mul_1Mul*batch_normalization_3/cond/batchnorm/Rsqrtgradients/AddN_7*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_3/cond/batchnorm/mul_grad/Sum_1Sum=gradients/batch_normalization_3/cond/batchnorm/mul_grad/mul_1Ogradients/batch_normalization_3/cond/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_3/cond/batchnorm/mul_grad/Reshape_1Reshape=gradients/batch_normalization_3/cond/batchnorm/mul_grad/Sum_1?gradients/batch_normalization_3/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
gradients/AddN_8AddNHgradients/batch_normalization_3/cond/batchnorm/sub/Switch_grad/cond_grad:gradients/batch_normalization_3/batchnorm/sub_grad/Reshape*-
_class#
!loc:@batch_normalization_3/beta*
T0*
_output_shapes
:@*
N
�
:gradients/batch_normalization_3/batchnorm/mul_2_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
<gradients/batch_normalization_3/batchnorm/mul_2_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_3/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_3/batchnorm/mul_2_grad/Shape<gradients/batch_normalization_3/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_3/batchnorm/mul_2_grad/mulMul<gradients/batch_normalization_3/batchnorm/sub_grad/Reshape_1#batch_normalization_3/batchnorm/mul*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_3/batchnorm/mul_2_grad/SumSum8gradients/batch_normalization_3/batchnorm/mul_2_grad/mulJgradients/batch_normalization_3/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_3/batchnorm/mul_2_grad/ReshapeReshape8gradients/batch_normalization_3/batchnorm/mul_2_grad/Sum:gradients/batch_normalization_3/batchnorm/mul_2_grad/Shape*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
:gradients/batch_normalization_3/batchnorm/mul_2_grad/mul_1Mul%batch_normalization_3/moments/Squeeze<gradients/batch_normalization_3/batchnorm/sub_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_3/batchnorm/mul_2_grad/Sum_1Sum:gradients/batch_normalization_3/batchnorm/mul_2_grad/mul_1Lgradients/batch_normalization_3/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_3/batchnorm/mul_2_grad/Reshape_1Reshape:gradients/batch_normalization_3/batchnorm/mul_2_grad/Sum_1<gradients/batch_normalization_3/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
gradients/Switch_7Switch batch_normalization_3/gamma/read"batch_normalization_3/cond/pred_id*.
_class$
" loc:@batch_normalization_3/gamma*
T0* 
_output_shapes
:@:@
�
gradients/Shape_8Shapegradients/Switch_7:1*
out_type0*
T0*
_output_shapes
:*.
_class$
" loc:@batch_normalization_3/gamma
�
gradients/zeros_7/ConstConst*
dtype0*.
_class$
" loc:@batch_normalization_3/gamma*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_7Fillgradients/Shape_8gradients/zeros_7/Const*.
_class$
" loc:@batch_normalization_3/gamma*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_3/cond/batchnorm/mul/Switch_grad/cond_gradMergeAgradients/batch_normalization_3/cond/batchnorm/mul_grad/Reshape_1gradients/zeros_7*.
_class$
" loc:@batch_normalization_3/gamma*
T0*
_output_shapes

:@: *
N
�
:gradients/batch_normalization_3/moments/Squeeze_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_3/moments/Squeeze*%
valueB"         @   *
_output_shapes
:
�
<gradients/batch_normalization_3/moments/Squeeze_grad/ReshapeReshape<gradients/batch_normalization_3/batchnorm/mul_2_grad/Reshape:gradients/batch_normalization_3/moments/Squeeze_grad/Shape*8
_class.
,*loc:@batch_normalization_3/moments/Squeeze*
T0*&
_output_shapes
:@*
Tshape0
�
gradients/AddN_9AddN>gradients/batch_normalization_3/batchnorm/mul_1_grad/Reshape_1>gradients/batch_normalization_3/batchnorm/mul_2_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*
_output_shapes
:@*
N
�
8gradients/batch_normalization_3/batchnorm/mul_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_3/batchnorm/mul_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_3/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_3/batchnorm/mul_grad/Shape:gradients/batch_normalization_3/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_3/batchnorm/mul_grad/mulMulgradients/AddN_9 batch_normalization_3/gamma/read*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*
_output_shapes
:@
�
6gradients/batch_normalization_3/batchnorm/mul_grad/SumSum6gradients/batch_normalization_3/batchnorm/mul_grad/mulHgradients/batch_normalization_3/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_3/batchnorm/mul_grad/ReshapeReshape6gradients/batch_normalization_3/batchnorm/mul_grad/Sum8gradients/batch_normalization_3/batchnorm/mul_grad/Shape*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_3/batchnorm/mul_grad/mul_1Mul%batch_normalization_3/batchnorm/Rsqrtgradients/AddN_9*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_3/batchnorm/mul_grad/Sum_1Sum8gradients/batch_normalization_3/batchnorm/mul_grad/mul_1Jgradients/batch_normalization_3/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_3/batchnorm/mul_grad/Reshape_1Reshape8gradients/batch_normalization_3/batchnorm/mul_grad/Sum_1:gradients/batch_normalization_3/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
7gradients/batch_normalization_3/moments/mean_grad/ShapeConst*
dtype0*5
_class+
)'loc:@batch_normalization_3/moments/mean*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_3/moments/mean_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@batch_normalization_3/moments/mean*%
valueB"         @   *
_output_shapes
:
�
Ggradients/batch_normalization_3/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/batch_normalization_3/moments/mean_grad/Shape9gradients/batch_normalization_3/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*2
_output_shapes 
:���������:���������
�
5gradients/batch_normalization_3/moments/mean_grad/SumSum<gradients/batch_normalization_3/moments/Squeeze_grad/ReshapeGgradients/batch_normalization_3/moments/mean_grad/BroadcastGradientArgs*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*
	keep_dims( *

Tidx0
�
9gradients/batch_normalization_3/moments/mean_grad/ReshapeReshape5gradients/batch_normalization_3/moments/mean_grad/Sum7gradients/batch_normalization_3/moments/mean_grad/Shape*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*&
_output_shapes
:@*
Tshape0
�
7gradients/batch_normalization_3/moments/mean_grad/Sum_1Sum<gradients/batch_normalization_3/moments/Squeeze_grad/ReshapeIgradients/batch_normalization_3/moments/mean_grad/BroadcastGradientArgs:1*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_3/moments/mean_grad/Reshape_1Reshape7gradients/batch_normalization_3/moments/mean_grad/Sum_19gradients/batch_normalization_3/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*&
_output_shapes
:@*
Tshape0
�
>gradients/batch_normalization_3/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad%batch_normalization_3/batchnorm/Rsqrt:gradients/batch_normalization_3/batchnorm/mul_grad/Reshape*8
_class.
,*loc:@batch_normalization_3/batchnorm/Rsqrt*
T0*
_output_shapes
:@
�
gradients/AddN_10AddNHgradients/batch_normalization_3/cond/batchnorm/mul/Switch_grad/cond_grad<gradients/batch_normalization_3/batchnorm/mul_grad/Reshape_1*.
_class$
" loc:@batch_normalization_3/gamma*
T0*
_output_shapes
:@*
N
�
8gradients/batch_normalization_3/batchnorm/add_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_3/batchnorm/add_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
valueB *
_output_shapes
: 
�
Hgradients/batch_normalization_3/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_3/batchnorm/add_grad/Shape:gradients/batch_normalization_3/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_3/batchnorm/add_grad/SumSum>gradients/batch_normalization_3/batchnorm/Rsqrt_grad/RsqrtGradHgradients/batch_normalization_3/batchnorm/add_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_3/batchnorm/add_grad/ReshapeReshape6gradients/batch_normalization_3/batchnorm/add_grad/Sum8gradients/batch_normalization_3/batchnorm/add_grad/Shape*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_3/batchnorm/add_grad/Sum_1Sum>gradients/batch_normalization_3/batchnorm/Rsqrt_grad/RsqrtGradJgradients/batch_normalization_3/batchnorm/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_3/batchnorm/add_grad/Reshape_1Reshape8gradients/batch_normalization_3/batchnorm/add_grad/Sum_1:gradients/batch_normalization_3/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
T0*
_output_shapes
: *
Tshape0
�
<gradients/batch_normalization_3/moments/Squeeze_1_grad/ShapeConst*
dtype0*:
_class0
.,loc:@batch_normalization_3/moments/Squeeze_1*%
valueB"         @   *
_output_shapes
:
�
>gradients/batch_normalization_3/moments/Squeeze_1_grad/ReshapeReshape:gradients/batch_normalization_3/batchnorm/add_grad/Reshape<gradients/batch_normalization_3/moments/Squeeze_1_grad/Shape*:
_class0
.,loc:@batch_normalization_3/moments/Squeeze_1*
T0*&
_output_shapes
:@*
Tshape0
�
;gradients/batch_normalization_3/moments/variance_grad/ShapeConst*
dtype0*9
_class/
-+loc:@batch_normalization_3/moments/variance*%
valueB"         @   *
_output_shapes
:
�
=gradients/batch_normalization_3/moments/variance_grad/Shape_1Const*
dtype0*9
_class/
-+loc:@batch_normalization_3/moments/variance*%
valueB"         @   *
_output_shapes
:
�
Kgradients/batch_normalization_3/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients/batch_normalization_3/moments/variance_grad/Shape=gradients/batch_normalization_3/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_3/moments/variance*
T0*2
_output_shapes 
:���������:���������
�
9gradients/batch_normalization_3/moments/variance_grad/SumSum>gradients/batch_normalization_3/moments/Squeeze_1_grad/ReshapeKgradients/batch_normalization_3/moments/variance_grad/BroadcastGradientArgs*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_3/moments/variance*
T0*
	keep_dims( *

Tidx0
�
=gradients/batch_normalization_3/moments/variance_grad/ReshapeReshape9gradients/batch_normalization_3/moments/variance_grad/Sum;gradients/batch_normalization_3/moments/variance_grad/Shape*9
_class/
-+loc:@batch_normalization_3/moments/variance*
T0*&
_output_shapes
:@*
Tshape0
�
;gradients/batch_normalization_3/moments/variance_grad/Sum_1Sum>gradients/batch_normalization_3/moments/Squeeze_1_grad/ReshapeMgradients/batch_normalization_3/moments/variance_grad/BroadcastGradientArgs:1*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_3/moments/variance*
T0*
	keep_dims( *

Tidx0
�
9gradients/batch_normalization_3/moments/variance_grad/NegNeg;gradients/batch_normalization_3/moments/variance_grad/Sum_1*9
_class/
-+loc:@batch_normalization_3/moments/variance*
T0*
_output_shapes
:
�
?gradients/batch_normalization_3/moments/variance_grad/Reshape_1Reshape9gradients/batch_normalization_3/moments/variance_grad/Neg=gradients/batch_normalization_3/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_3/moments/variance*
T0*&
_output_shapes
:@*
Tshape0
�
9gradients/batch_normalization_3/moments/Mean_1_grad/ShapeShape/batch_normalization_3/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1
�
8gradients/batch_normalization_3/moments/Mean_1_grad/SizeConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B :*
_output_shapes
: 
�
7gradients/batch_normalization_3/moments/Mean_1_grad/addAdd6batch_normalization_3/moments/Mean_1/reduction_indices8gradients/batch_normalization_3/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
:
�
7gradients/batch_normalization_3/moments/Mean_1_grad/modFloorMod7gradients/batch_normalization_3/moments/Mean_1_grad/add8gradients/batch_normalization_3/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
valueB:*
_output_shapes
:
�
?gradients/batch_normalization_3/moments/Mean_1_grad/range/startConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B : *
_output_shapes
: 
�
?gradients/batch_normalization_3/moments/Mean_1_grad/range/deltaConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B :*
_output_shapes
: 
�
9gradients/batch_normalization_3/moments/Mean_1_grad/rangeRange?gradients/batch_normalization_3/moments/Mean_1_grad/range/start8gradients/batch_normalization_3/moments/Mean_1_grad/Size?gradients/batch_normalization_3/moments/Mean_1_grad/range/delta*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*

Tidx0*
_output_shapes
:
�
>gradients/batch_normalization_3/moments/Mean_1_grad/Fill/valueConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B :*
_output_shapes
: 
�
8gradients/batch_normalization_3/moments/Mean_1_grad/FillFill;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_1>gradients/batch_normalization_3/moments/Mean_1_grad/Fill/value*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
:
�
Agradients/batch_normalization_3/moments/Mean_1_grad/DynamicStitchDynamicStitch9gradients/batch_normalization_3/moments/Mean_1_grad/range7gradients/batch_normalization_3/moments/Mean_1_grad/mod9gradients/batch_normalization_3/moments/Mean_1_grad/Shape8gradients/batch_normalization_3/moments/Mean_1_grad/Fill*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*#
_output_shapes
:���������*
N
�
=gradients/batch_normalization_3/moments/Mean_1_grad/Maximum/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B :*
_output_shapes
: 
�
;gradients/batch_normalization_3/moments/Mean_1_grad/MaximumMaximumAgradients/batch_normalization_3/moments/Mean_1_grad/DynamicStitch=gradients/batch_normalization_3/moments/Mean_1_grad/Maximum/y*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*#
_output_shapes
:���������
�
<gradients/batch_normalization_3/moments/Mean_1_grad/floordivFloorDiv9gradients/batch_normalization_3/moments/Mean_1_grad/Shape;gradients/batch_normalization_3/moments/Mean_1_grad/Maximum*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_3/moments/Mean_1_grad/ReshapeReshape=gradients/batch_normalization_3/moments/variance_grad/ReshapeAgradients/batch_normalization_3/moments/Mean_1_grad/DynamicStitch*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
:*
Tshape0
�
8gradients/batch_normalization_3/moments/Mean_1_grad/TileTile;gradients/batch_normalization_3/moments/Mean_1_grad/Reshape<gradients/batch_normalization_3/moments/Mean_1_grad/floordiv*

Tmultiples0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*J
_output_shapes8
6:4������������������������������������
�
;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_2Shape/batch_normalization_3/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1
�
;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_3Const*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_3/moments/Mean_1_grad/ConstConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
valueB: *
_output_shapes
:
�
8gradients/batch_normalization_3/moments/Mean_1_grad/ProdProd;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_29gradients/batch_normalization_3/moments/Mean_1_grad/Const*
_output_shapes
: *7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_3/moments/Mean_1_grad/Const_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
valueB: *
_output_shapes
:
�
:gradients/batch_normalization_3/moments/Mean_1_grad/Prod_1Prod;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_3;gradients/batch_normalization_3/moments/Mean_1_grad/Const_1*
_output_shapes
: *7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_3/moments/Mean_1_grad/Maximum_1/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_3/moments/Mean_1_grad/Maximum_1Maximum:gradients/batch_normalization_3/moments/Mean_1_grad/Prod_1?gradients/batch_normalization_3/moments/Mean_1_grad/Maximum_1/y*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_3/moments/Mean_1_grad/floordiv_1FloorDiv8gradients/batch_normalization_3/moments/Mean_1_grad/Prod=gradients/batch_normalization_3/moments/Mean_1_grad/Maximum_1*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
: 
�
8gradients/batch_normalization_3/moments/Mean_1_grad/CastCast>gradients/batch_normalization_3/moments/Mean_1_grad/floordiv_1*

DstT0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*

SrcT0*
_output_shapes
: 
�
;gradients/batch_normalization_3/moments/Mean_1_grad/truedivRealDiv8gradients/batch_normalization_3/moments/Mean_1_grad/Tile8gradients/batch_normalization_3/moments/Mean_1_grad/Cast*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*/
_output_shapes
:���������@
�
9gradients/batch_normalization_3/moments/Square_grad/mul/xConst@^gradients/batch_normalization_3/moments/variance_grad/Reshape_1*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Square*
valueB
 *   @*
_output_shapes
: 
�
7gradients/batch_normalization_3/moments/Square_grad/mulMul9gradients/batch_normalization_3/moments/Square_grad/mul/x*batch_normalization_3/moments/shifted_mean*7
_class-
+)loc:@batch_normalization_3/moments/Square*
T0*&
_output_shapes
:@
�
9gradients/batch_normalization_3/moments/Square_grad/mul_1Mul?gradients/batch_normalization_3/moments/variance_grad/Reshape_17gradients/batch_normalization_3/moments/Square_grad/mul*7
_class-
+)loc:@batch_normalization_3/moments/Square*
T0*&
_output_shapes
:@
�
Dgradients/batch_normalization_3/moments/SquaredDifference_grad/ShapeShapequantized_conv2d_3/BiasAdd*
out_type0*
T0*
_output_shapes
:*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference
�
Fgradients/batch_normalization_3/moments/SquaredDifference_grad/Shape_1Const*
dtype0*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*%
valueB"         @   *
_output_shapes
:
�
Tgradients/batch_normalization_3/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/batch_normalization_3/moments/SquaredDifference_grad/ShapeFgradients/batch_normalization_3/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*2
_output_shapes 
:���������:���������
�
Egradients/batch_normalization_3/moments/SquaredDifference_grad/scalarConst<^gradients/batch_normalization_3/moments/Mean_1_grad/truediv*
dtype0*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
valueB
 *   @*
_output_shapes
: 
�
Bgradients/batch_normalization_3/moments/SquaredDifference_grad/mulMulEgradients/batch_normalization_3/moments/SquaredDifference_grad/scalar;gradients/batch_normalization_3/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Bgradients/batch_normalization_3/moments/SquaredDifference_grad/subSubquantized_conv2d_3/BiasAdd*batch_normalization_3/moments/StopGradient<^gradients/batch_normalization_3/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Dgradients/batch_normalization_3/moments/SquaredDifference_grad/mul_1MulBgradients/batch_normalization_3/moments/SquaredDifference_grad/mulBgradients/batch_normalization_3/moments/SquaredDifference_grad/sub*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Bgradients/batch_normalization_3/moments/SquaredDifference_grad/SumSumDgradients/batch_normalization_3/moments/SquaredDifference_grad/mul_1Tgradients/batch_normalization_3/moments/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes
:*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*
	keep_dims( *

Tidx0
�
Fgradients/batch_normalization_3/moments/SquaredDifference_grad/ReshapeReshapeBgradients/batch_normalization_3/moments/SquaredDifference_grad/SumDgradients/batch_normalization_3/moments/SquaredDifference_grad/Shape*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*/
_output_shapes
:���������@*
Tshape0
�
Dgradients/batch_normalization_3/moments/SquaredDifference_grad/Sum_1SumDgradients/batch_normalization_3/moments/SquaredDifference_grad/mul_1Vgradients/batch_normalization_3/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*
	keep_dims( *

Tidx0
�
Hgradients/batch_normalization_3/moments/SquaredDifference_grad/Reshape_1ReshapeDgradients/batch_normalization_3/moments/SquaredDifference_grad/Sum_1Fgradients/batch_normalization_3/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*&
_output_shapes
:@*
Tshape0
�
Bgradients/batch_normalization_3/moments/SquaredDifference_grad/NegNegHgradients/batch_normalization_3/moments/SquaredDifference_grad/Reshape_1*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*&
_output_shapes
:@
�
gradients/AddN_11AddN9gradients/batch_normalization_3/moments/mean_grad/Reshape9gradients/batch_normalization_3/moments/Square_grad/mul_1*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*&
_output_shapes
:@*
N
�
?gradients/batch_normalization_3/moments/shifted_mean_grad/ShapeShape!batch_normalization_3/moments/Sub*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean
�
>gradients/batch_normalization_3/moments/shifted_mean_grad/SizeConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_3/moments/shifted_mean_grad/addAdd<batch_normalization_3/moments/shifted_mean/reduction_indices>gradients/batch_normalization_3/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
:
�
=gradients/batch_normalization_3/moments/shifted_mean_grad/modFloorMod=gradients/batch_normalization_3/moments/shifted_mean_grad/add>gradients/batch_normalization_3/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
valueB:*
_output_shapes
:
�
Egradients/batch_normalization_3/moments/shifted_mean_grad/range/startConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B : *
_output_shapes
: 
�
Egradients/batch_normalization_3/moments/shifted_mean_grad/range/deltaConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
?gradients/batch_normalization_3/moments/shifted_mean_grad/rangeRangeEgradients/batch_normalization_3/moments/shifted_mean_grad/range/start>gradients/batch_normalization_3/moments/shifted_mean_grad/SizeEgradients/batch_normalization_3/moments/shifted_mean_grad/range/delta*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*

Tidx0*
_output_shapes
:
�
Dgradients/batch_normalization_3/moments/shifted_mean_grad/Fill/valueConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
>gradients/batch_normalization_3/moments/shifted_mean_grad/FillFillAgradients/batch_normalization_3/moments/shifted_mean_grad/Shape_1Dgradients/batch_normalization_3/moments/shifted_mean_grad/Fill/value*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
:
�
Ggradients/batch_normalization_3/moments/shifted_mean_grad/DynamicStitchDynamicStitch?gradients/batch_normalization_3/moments/shifted_mean_grad/range=gradients/batch_normalization_3/moments/shifted_mean_grad/mod?gradients/batch_normalization_3/moments/shifted_mean_grad/Shape>gradients/batch_normalization_3/moments/shifted_mean_grad/Fill*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*#
_output_shapes
:���������*
N
�
Cgradients/batch_normalization_3/moments/shifted_mean_grad/Maximum/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/MaximumMaximumGgradients/batch_normalization_3/moments/shifted_mean_grad/DynamicStitchCgradients/batch_normalization_3/moments/shifted_mean_grad/Maximum/y*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Bgradients/batch_normalization_3/moments/shifted_mean_grad/floordivFloorDiv?gradients/batch_normalization_3/moments/shifted_mean_grad/ShapeAgradients/batch_normalization_3/moments/shifted_mean_grad/Maximum*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_11Ggradients/batch_normalization_3/moments/shifted_mean_grad/DynamicStitch*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
:*
Tshape0
�
>gradients/batch_normalization_3/moments/shifted_mean_grad/TileTileAgradients/batch_normalization_3/moments/shifted_mean_grad/ReshapeBgradients/batch_normalization_3/moments/shifted_mean_grad/floordiv*

Tmultiples0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*J
_output_shapes8
6:4������������������������������������
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/Shape_2Shape!batch_normalization_3/moments/Sub*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/Shape_3Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*%
valueB"         @   *
_output_shapes
:
�
?gradients/batch_normalization_3/moments/shifted_mean_grad/ConstConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
valueB: *
_output_shapes
:
�
>gradients/batch_normalization_3/moments/shifted_mean_grad/ProdProdAgradients/batch_normalization_3/moments/shifted_mean_grad/Shape_2?gradients/batch_normalization_3/moments/shifted_mean_grad/Const*
_output_shapes
: *=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/Const_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
valueB: *
_output_shapes
:
�
@gradients/batch_normalization_3/moments/shifted_mean_grad/Prod_1ProdAgradients/batch_normalization_3/moments/shifted_mean_grad/Shape_3Agradients/batch_normalization_3/moments/shifted_mean_grad/Const_1*
_output_shapes
: *=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
	keep_dims( *

Tidx0
�
Egradients/batch_normalization_3/moments/shifted_mean_grad/Maximum_1/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Cgradients/batch_normalization_3/moments/shifted_mean_grad/Maximum_1Maximum@gradients/batch_normalization_3/moments/shifted_mean_grad/Prod_1Egradients/batch_normalization_3/moments/shifted_mean_grad/Maximum_1/y*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
: 
�
Dgradients/batch_normalization_3/moments/shifted_mean_grad/floordiv_1FloorDiv>gradients/batch_normalization_3/moments/shifted_mean_grad/ProdCgradients/batch_normalization_3/moments/shifted_mean_grad/Maximum_1*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_3/moments/shifted_mean_grad/CastCastDgradients/batch_normalization_3/moments/shifted_mean_grad/floordiv_1*

DstT0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*

SrcT0*
_output_shapes
: 
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/truedivRealDiv>gradients/batch_normalization_3/moments/shifted_mean_grad/Tile>gradients/batch_normalization_3/moments/shifted_mean_grad/Cast*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*/
_output_shapes
:���������@
�
6gradients/batch_normalization_3/moments/Sub_grad/ShapeShapequantized_conv2d_3/BiasAdd*
out_type0*
T0*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_3/moments/Sub
�
8gradients/batch_normalization_3/moments/Sub_grad/Shape_1Const*
dtype0*4
_class*
(&loc:@batch_normalization_3/moments/Sub*%
valueB"         @   *
_output_shapes
:
�
Fgradients/batch_normalization_3/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/batch_normalization_3/moments/Sub_grad/Shape8gradients/batch_normalization_3/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_3/moments/Sub*
T0*2
_output_shapes 
:���������:���������
�
4gradients/batch_normalization_3/moments/Sub_grad/SumSumAgradients/batch_normalization_3/moments/shifted_mean_grad/truedivFgradients/batch_normalization_3/moments/Sub_grad/BroadcastGradientArgs*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_3/moments/Sub*
T0*
	keep_dims( *

Tidx0
�
8gradients/batch_normalization_3/moments/Sub_grad/ReshapeReshape4gradients/batch_normalization_3/moments/Sub_grad/Sum6gradients/batch_normalization_3/moments/Sub_grad/Shape*4
_class*
(&loc:@batch_normalization_3/moments/Sub*
T0*/
_output_shapes
:���������@*
Tshape0
�
6gradients/batch_normalization_3/moments/Sub_grad/Sum_1SumAgradients/batch_normalization_3/moments/shifted_mean_grad/truedivHgradients/batch_normalization_3/moments/Sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_3/moments/Sub*
T0*
	keep_dims( *

Tidx0
�
4gradients/batch_normalization_3/moments/Sub_grad/NegNeg6gradients/batch_normalization_3/moments/Sub_grad/Sum_1*4
_class*
(&loc:@batch_normalization_3/moments/Sub*
T0*
_output_shapes
:
�
:gradients/batch_normalization_3/moments/Sub_grad/Reshape_1Reshape4gradients/batch_normalization_3/moments/Sub_grad/Neg8gradients/batch_normalization_3/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_3/moments/Sub*
T0*&
_output_shapes
:@*
Tshape0
�
gradients/AddN_12AddN;gradients/batch_normalization_3/moments/mean_grad/Reshape_1Bgradients/batch_normalization_3/moments/SquaredDifference_grad/Neg:gradients/batch_normalization_3/moments/Sub_grad/Reshape_1*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*&
_output_shapes
:@*
N
�
gradients/AddN_13AddNJgradients/batch_normalization_3/cond/batchnorm/mul_1/Switch_grad/cond_grad<gradients/batch_normalization_3/batchnorm/mul_1_grad/ReshapeFgradients/batch_normalization_3/moments/SquaredDifference_grad/Reshape8gradients/batch_normalization_3/moments/Sub_grad/Reshape*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
T0*/
_output_shapes
:���������@*
N
�
5gradients/quantized_conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_13*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
T0*
_output_shapes
:@*
data_formatNHWC
�
-gradients/quantized_conv2d_3/mul_4_grad/ShapeShapequantized_conv2d_3/sub_2*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_4
�
/gradients/quantized_conv2d_3/mul_4_grad/Shape_1Const*
dtype0*+
_class!
loc:@quantized_conv2d_3/mul_4*
valueB *
_output_shapes
: 
�
=gradients/quantized_conv2d_3/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/mul_4_grad/Shape/gradients/quantized_conv2d_3/mul_4_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/mul_4_grad/mulMulgradients/AddN_13quantized_conv2d_3/mul_4/y*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_3/mul_4_grad/SumSum+gradients/quantized_conv2d_3/mul_4_grad/mul=gradients/quantized_conv2d_3/mul_4_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_3/mul_4_grad/ReshapeReshape+gradients/quantized_conv2d_3/mul_4_grad/Sum-gradients/quantized_conv2d_3/mul_4_grad/Shape*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*/
_output_shapes
:���������@*
Tshape0
�
-gradients/quantized_conv2d_3/mul_4_grad/mul_1Mulquantized_conv2d_3/sub_2gradients/AddN_13*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/mul_4_grad/Sum_1Sum-gradients/quantized_conv2d_3/mul_4_grad/mul_1?gradients/quantized_conv2d_3/mul_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*
	keep_dims( *

Tidx0
�
1gradients/quantized_conv2d_3/mul_4_grad/Reshape_1Reshape-gradients/quantized_conv2d_3/mul_4_grad/Sum_1/gradients/quantized_conv2d_3/mul_4_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_3/sub_2_grad/ShapeShapequantized_conv2d_3/convolution*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/sub_2
�
/gradients/quantized_conv2d_3/sub_2_grad/Shape_1Shapequantized_conv2d_3/mul_3*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/sub_2
�
=gradients/quantized_conv2d_3/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/sub_2_grad/Shape/gradients/quantized_conv2d_3/sub_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/sub_2*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/sub_2_grad/SumSum/gradients/quantized_conv2d_3/mul_4_grad/Reshape=gradients/quantized_conv2d_3/sub_2_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/sub_2*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_3/sub_2_grad/ReshapeReshape+gradients/quantized_conv2d_3/sub_2_grad/Sum-gradients/quantized_conv2d_3/sub_2_grad/Shape*+
_class!
loc:@quantized_conv2d_3/sub_2*
T0*/
_output_shapes
:���������@*
Tshape0
�
-gradients/quantized_conv2d_3/sub_2_grad/Sum_1Sum/gradients/quantized_conv2d_3/mul_4_grad/Reshape?gradients/quantized_conv2d_3/sub_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/sub_2*
T0*
	keep_dims( *

Tidx0
�
+gradients/quantized_conv2d_3/sub_2_grad/NegNeg-gradients/quantized_conv2d_3/sub_2_grad/Sum_1*+
_class!
loc:@quantized_conv2d_3/sub_2*
T0*
_output_shapes
:
�
1gradients/quantized_conv2d_3/sub_2_grad/Reshape_1Reshape+gradients/quantized_conv2d_3/sub_2_grad/Neg/gradients/quantized_conv2d_3/sub_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/sub_2*
T0*/
_output_shapes
:���������@*
Tshape0
�
-gradients/quantized_conv2d_3/mul_3_grad/ShapeConst*
dtype0*+
_class!
loc:@quantized_conv2d_3/mul_3*
valueB *
_output_shapes
: 
�
/gradients/quantized_conv2d_3/mul_3_grad/Shape_1Shape!quantized_conv2d_3/StopGradient_2*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_3
�
=gradients/quantized_conv2d_3/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/mul_3_grad/Shape/gradients/quantized_conv2d_3/mul_3_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/mul_3_grad/mulMul1gradients/quantized_conv2d_3/sub_2_grad/Reshape_1!quantized_conv2d_3/StopGradient_2*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_3/mul_3_grad/SumSum+gradients/quantized_conv2d_3/mul_3_grad/mul=gradients/quantized_conv2d_3/mul_3_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_3/mul_3_grad/ReshapeReshape+gradients/quantized_conv2d_3/mul_3_grad/Sum-gradients/quantized_conv2d_3/mul_3_grad/Shape*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_3/mul_3_grad/mul_1Mulquantized_conv2d_3/mul_3/x1gradients/quantized_conv2d_3/sub_2_grad/Reshape_1*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/mul_3_grad/Sum_1Sum-gradients/quantized_conv2d_3/mul_3_grad/mul_1?gradients/quantized_conv2d_3/mul_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*
	keep_dims( *

Tidx0
�
1gradients/quantized_conv2d_3/mul_3_grad/Reshape_1Reshape-gradients/quantized_conv2d_3/mul_3_grad/Sum_1/gradients/quantized_conv2d_3/mul_3_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*/
_output_shapes
:���������@*
Tshape0
�
3gradients/quantized_conv2d_3/convolution_grad/ShapeShapequantized_conv2d_3/mul_2*
out_type0*
T0*
_output_shapes
:*1
_class'
%#loc:@quantized_conv2d_3/convolution
�
Agradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput3gradients/quantized_conv2d_3/convolution_grad/Shapequantized_conv2d_3/div/gradients/quantized_conv2d_3/sub_2_grad/Reshape*/
_output_shapes
:���������@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_3/convolution
�
5gradients/quantized_conv2d_3/convolution_grad/Shape_1Const*
dtype0*1
_class'
%#loc:@quantized_conv2d_3/convolution*%
valueB"      @   @   *
_output_shapes
:
�
Bgradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterquantized_conv2d_3/mul_25gradients/quantized_conv2d_3/convolution_grad/Shape_1/gradients/quantized_conv2d_3/sub_2_grad/Reshape*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_3/convolution
�
-gradients/quantized_conv2d_3/mul_2_grad/ShapeShapequantized_conv2d_3/sub_1*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_2
�
/gradients/quantized_conv2d_3/mul_2_grad/Shape_1Const*
dtype0*+
_class!
loc:@quantized_conv2d_3/mul_2*
valueB *
_output_shapes
: 
�
=gradients/quantized_conv2d_3/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/mul_2_grad/Shape/gradients/quantized_conv2d_3/mul_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/mul_2_grad/mulMulAgradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropInputquantized_conv2d_3/mul_2/y*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_3/mul_2_grad/SumSum+gradients/quantized_conv2d_3/mul_2_grad/mul=gradients/quantized_conv2d_3/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_3/mul_2_grad/ReshapeReshape+gradients/quantized_conv2d_3/mul_2_grad/Sum-gradients/quantized_conv2d_3/mul_2_grad/Shape*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*/
_output_shapes
:���������@*
Tshape0
�
-gradients/quantized_conv2d_3/mul_2_grad/mul_1Mulquantized_conv2d_3/sub_1Agradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropInput*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/mul_2_grad/Sum_1Sum-gradients/quantized_conv2d_3/mul_2_grad/mul_1?gradients/quantized_conv2d_3/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*
	keep_dims( *

Tidx0
�
1gradients/quantized_conv2d_3/mul_2_grad/Reshape_1Reshape-gradients/quantized_conv2d_3/mul_2_grad/Sum_1/gradients/quantized_conv2d_3/mul_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*
_output_shapes
: *
Tshape0
�
+gradients/quantized_conv2d_3/div_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_3/div*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_3/div_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_3/div*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_3/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_3/div_grad/Shape-gradients/quantized_conv2d_3/div_grad/Shape_1*)
_class
loc:@quantized_conv2d_3/div*
T0*2
_output_shapes 
:���������:���������
�
-gradients/quantized_conv2d_3/div_grad/RealDivRealDivBgradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropFilterquantized_conv2d_3/div/y*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_3/div_grad/SumSum-gradients/quantized_conv2d_3/div_grad/RealDiv;gradients/quantized_conv2d_3/div_grad/BroadcastGradientArgs*
_output_shapes
:*)
_class
loc:@quantized_conv2d_3/div*
T0*
	keep_dims( *

Tidx0
�
-gradients/quantized_conv2d_3/div_grad/ReshapeReshape)gradients/quantized_conv2d_3/div_grad/Sum+gradients/quantized_conv2d_3/div_grad/Shape*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@*
Tshape0
�
)gradients/quantized_conv2d_3/div_grad/NegNeg quantized_conv2d_3/clip_by_value*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@
�
/gradients/quantized_conv2d_3/div_grad/RealDiv_1RealDiv)gradients/quantized_conv2d_3/div_grad/Negquantized_conv2d_3/div/y*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@
�
/gradients/quantized_conv2d_3/div_grad/RealDiv_2RealDiv/gradients/quantized_conv2d_3/div_grad/RealDiv_1quantized_conv2d_3/div/y*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_3/div_grad/mulMulBgradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropFilter/gradients/quantized_conv2d_3/div_grad/RealDiv_2*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_3/div_grad/Sum_1Sum)gradients/quantized_conv2d_3/div_grad/mul=gradients/quantized_conv2d_3/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*)
_class
loc:@quantized_conv2d_3/div*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_3/div_grad/Reshape_1Reshape+gradients/quantized_conv2d_3/div_grad/Sum_1-gradients/quantized_conv2d_3/div_grad/Shape_1*)
_class
loc:@quantized_conv2d_3/div*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_3/sub_1_grad/ShapeShapemax_pooling2d_2/MaxPool*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/sub_1
�
/gradients/quantized_conv2d_3/sub_1_grad/Shape_1Shapequantized_conv2d_3/mul_1*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/sub_1
�
=gradients/quantized_conv2d_3/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/sub_1_grad/Shape/gradients/quantized_conv2d_3/sub_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/sub_1*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/sub_1_grad/SumSum/gradients/quantized_conv2d_3/mul_2_grad/Reshape=gradients/quantized_conv2d_3/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/sub_1*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_3/sub_1_grad/ReshapeReshape+gradients/quantized_conv2d_3/sub_1_grad/Sum-gradients/quantized_conv2d_3/sub_1_grad/Shape*+
_class!
loc:@quantized_conv2d_3/sub_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
-gradients/quantized_conv2d_3/sub_1_grad/Sum_1Sum/gradients/quantized_conv2d_3/mul_2_grad/Reshape?gradients/quantized_conv2d_3/sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/sub_1*
T0*
	keep_dims( *

Tidx0
�
+gradients/quantized_conv2d_3/sub_1_grad/NegNeg-gradients/quantized_conv2d_3/sub_1_grad/Sum_1*+
_class!
loc:@quantized_conv2d_3/sub_1*
T0*
_output_shapes
:
�
1gradients/quantized_conv2d_3/sub_1_grad/Reshape_1Reshape+gradients/quantized_conv2d_3/sub_1_grad/Neg/gradients/quantized_conv2d_3/sub_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/sub_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
5gradients/quantized_conv2d_3/clip_by_value_grad/ShapeConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*%
valueB"      @   @   *
_output_shapes
:
�
7gradients/quantized_conv2d_3/clip_by_value_grad/Shape_1Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
valueB *
_output_shapes
: 
�
7gradients/quantized_conv2d_3/clip_by_value_grad/Shape_2Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*%
valueB"      @   @   *
_output_shapes
:
�
;gradients/quantized_conv2d_3/clip_by_value_grad/zeros/ConstConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
5gradients/quantized_conv2d_3/clip_by_value_grad/zerosFill7gradients/quantized_conv2d_3/clip_by_value_grad/Shape_2;gradients/quantized_conv2d_3/clip_by_value_grad/zeros/Const*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*&
_output_shapes
:@@
�
<gradients/quantized_conv2d_3/clip_by_value_grad/GreaterEqualGreaterEqual(quantized_conv2d_3/clip_by_value/Minimumquantized_conv2d_3/Cast*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*&
_output_shapes
:@@
�
Egradients/quantized_conv2d_3/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients/quantized_conv2d_3/clip_by_value_grad/Shape7gradients/quantized_conv2d_3/clip_by_value_grad/Shape_1*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
6gradients/quantized_conv2d_3/clip_by_value_grad/SelectSelect<gradients/quantized_conv2d_3/clip_by_value_grad/GreaterEqual-gradients/quantized_conv2d_3/div_grad/Reshape5gradients/quantized_conv2d_3/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*&
_output_shapes
:@@
�
:gradients/quantized_conv2d_3/clip_by_value_grad/LogicalNot
LogicalNot<gradients/quantized_conv2d_3/clip_by_value_grad/GreaterEqual*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*&
_output_shapes
:@@
�
8gradients/quantized_conv2d_3/clip_by_value_grad/Select_1Select:gradients/quantized_conv2d_3/clip_by_value_grad/LogicalNot-gradients/quantized_conv2d_3/div_grad/Reshape5gradients/quantized_conv2d_3/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*&
_output_shapes
:@@
�
3gradients/quantized_conv2d_3/clip_by_value_grad/SumSum6gradients/quantized_conv2d_3/clip_by_value_grad/SelectEgradients/quantized_conv2d_3/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
7gradients/quantized_conv2d_3/clip_by_value_grad/ReshapeReshape3gradients/quantized_conv2d_3/clip_by_value_grad/Sum5gradients/quantized_conv2d_3/clip_by_value_grad/Shape*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*&
_output_shapes
:@@*
Tshape0
�
5gradients/quantized_conv2d_3/clip_by_value_grad/Sum_1Sum8gradients/quantized_conv2d_3/clip_by_value_grad/Select_1Ggradients/quantized_conv2d_3/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
9gradients/quantized_conv2d_3/clip_by_value_grad/Reshape_1Reshape5gradients/quantized_conv2d_3/clip_by_value_grad/Sum_17gradients/quantized_conv2d_3/clip_by_value_grad/Shape_1*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_3/mul_1_grad/ShapeConst*
dtype0*+
_class!
loc:@quantized_conv2d_3/mul_1*
valueB *
_output_shapes
: 
�
/gradients/quantized_conv2d_3/mul_1_grad/Shape_1Shape!quantized_conv2d_3/StopGradient_1*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_1
�
=gradients/quantized_conv2d_3/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/mul_1_grad/Shape/gradients/quantized_conv2d_3/mul_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/mul_1_grad/mulMul1gradients/quantized_conv2d_3/sub_1_grad/Reshape_1!quantized_conv2d_3/StopGradient_1*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_3/mul_1_grad/SumSum+gradients/quantized_conv2d_3/mul_1_grad/mul=gradients/quantized_conv2d_3/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_3/mul_1_grad/ReshapeReshape+gradients/quantized_conv2d_3/mul_1_grad/Sum-gradients/quantized_conv2d_3/mul_1_grad/Shape*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_3/mul_1_grad/mul_1Mulquantized_conv2d_3/mul_1/x1gradients/quantized_conv2d_3/sub_1_grad/Reshape_1*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/mul_1_grad/Sum_1Sum-gradients/quantized_conv2d_3/mul_1_grad/mul_1?gradients/quantized_conv2d_3/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*
	keep_dims( *

Tidx0
�
1gradients/quantized_conv2d_3/mul_1_grad/Reshape_1Reshape-gradients/quantized_conv2d_3/mul_1_grad/Sum_1/gradients/quantized_conv2d_3/mul_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/ShapeConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*%
valueB"      @   @   *
_output_shapes
:
�
?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape_2Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*%
valueB"      @   @   *
_output_shapes
:
�
Cgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/zerosFill?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape_2Cgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/zeros/Const*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Agradients/quantized_conv2d_3/clip_by_value/Minimum_grad/LessEqual	LessEqualquantized_conv2d_3/addquantized_conv2d_3/Cast_1*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Mgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape_1*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
>gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/SelectSelectAgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/LessEqual7gradients/quantized_conv2d_3/clip_by_value_grad/Reshape=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Bgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/LogicalNot
LogicalNotAgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/LessEqual*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*&
_output_shapes
:@@
�
@gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Select_1SelectBgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/LogicalNot7gradients/quantized_conv2d_3/clip_by_value_grad/Reshape=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
;gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/SumSum>gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/SelectMgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/ReshapeReshape;gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Sum=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*&
_output_shapes
:@@*
Tshape0
�
=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Sum_1Sum@gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Select_1Ogradients/quantized_conv2d_3/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
Agradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Reshape_1Reshape=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Sum_1?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape_1*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*
_output_shapes
: *
Tshape0
�
+gradients/quantized_conv2d_3/add_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_3/add*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_3/add_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_3/add*%
valueB"      @   @   *
_output_shapes
:
�
;gradients/quantized_conv2d_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_3/add_grad/Shape-gradients/quantized_conv2d_3/add_grad/Shape_1*)
_class
loc:@quantized_conv2d_3/add*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_3/add_grad/SumSum?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Reshape;gradients/quantized_conv2d_3/add_grad/BroadcastGradientArgs*
_output_shapes
:*)
_class
loc:@quantized_conv2d_3/add*
T0*
	keep_dims( *

Tidx0
�
-gradients/quantized_conv2d_3/add_grad/ReshapeReshape)gradients/quantized_conv2d_3/add_grad/Sum+gradients/quantized_conv2d_3/add_grad/Shape*)
_class
loc:@quantized_conv2d_3/add*
T0*&
_output_shapes
:@@*
Tshape0
�
+gradients/quantized_conv2d_3/add_grad/Sum_1Sum?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Reshape=gradients/quantized_conv2d_3/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*)
_class
loc:@quantized_conv2d_3/add*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_3/add_grad/Reshape_1Reshape+gradients/quantized_conv2d_3/add_grad/Sum_1-gradients/quantized_conv2d_3/add_grad/Shape_1*)
_class
loc:@quantized_conv2d_3/add*
T0*&
_output_shapes
:@@*
Tshape0
�
2gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradactivation_2/divmax_pooling2d_2/MaxPool/gradients/quantized_conv2d_3/sub_1_grad/Reshape*/
_output_shapes
:���������@*
data_formatNHWC*
paddingVALID*
strides
*
ksize
**
_class 
loc:@max_pooling2d_2/MaxPool*
T0
�
%gradients/activation_2/div_grad/ShapeShapeactivation_2/clip_by_value*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_2/div
�
'gradients/activation_2/div_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_2/div*
valueB *
_output_shapes
: 
�
5gradients/activation_2/div_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_2/div_grad/Shape'gradients/activation_2/div_grad/Shape_1*#
_class
loc:@activation_2/div*
T0*2
_output_shapes 
:���������:���������
�
'gradients/activation_2/div_grad/RealDivRealDiv2gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradactivation_2/div/y*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@
�
#gradients/activation_2/div_grad/SumSum'gradients/activation_2/div_grad/RealDiv5gradients/activation_2/div_grad/BroadcastGradientArgs*
_output_shapes
:*#
_class
loc:@activation_2/div*
T0*
	keep_dims( *

Tidx0
�
'gradients/activation_2/div_grad/ReshapeReshape#gradients/activation_2/div_grad/Sum%gradients/activation_2/div_grad/Shape*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@*
Tshape0
�
#gradients/activation_2/div_grad/NegNegactivation_2/clip_by_value*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@
�
)gradients/activation_2/div_grad/RealDiv_1RealDiv#gradients/activation_2/div_grad/Negactivation_2/div/y*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@
�
)gradients/activation_2/div_grad/RealDiv_2RealDiv)gradients/activation_2/div_grad/RealDiv_1activation_2/div/y*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@
�
#gradients/activation_2/div_grad/mulMul2gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGrad)gradients/activation_2/div_grad/RealDiv_2*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@
�
%gradients/activation_2/div_grad/Sum_1Sum#gradients/activation_2/div_grad/mul7gradients/activation_2/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*#
_class
loc:@activation_2/div*
T0*
	keep_dims( *

Tidx0
�
)gradients/activation_2/div_grad/Reshape_1Reshape%gradients/activation_2/div_grad/Sum_1'gradients/activation_2/div_grad/Shape_1*#
_class
loc:@activation_2/div*
T0*
_output_shapes
: *
Tshape0
�
/gradients/activation_2/clip_by_value_grad/ShapeShape"activation_2/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@activation_2/clip_by_value
�
1gradients/activation_2/clip_by_value_grad/Shape_1Const*
dtype0*-
_class#
!loc:@activation_2/clip_by_value*
valueB *
_output_shapes
: 
�
1gradients/activation_2/clip_by_value_grad/Shape_2Shape'gradients/activation_2/div_grad/Reshape*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@activation_2/clip_by_value
�
5gradients/activation_2/clip_by_value_grad/zeros/ConstConst*
dtype0*-
_class#
!loc:@activation_2/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
/gradients/activation_2/clip_by_value_grad/zerosFill1gradients/activation_2/clip_by_value_grad/Shape_25gradients/activation_2/clip_by_value_grad/zeros/Const*-
_class#
!loc:@activation_2/clip_by_value*
T0*/
_output_shapes
:���������@
�
6gradients/activation_2/clip_by_value_grad/GreaterEqualGreaterEqual"activation_2/clip_by_value/Minimumactivation_2/Cast*-
_class#
!loc:@activation_2/clip_by_value*
T0*/
_output_shapes
:���������@
�
?gradients/activation_2/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/activation_2/clip_by_value_grad/Shape1gradients/activation_2/clip_by_value_grad/Shape_1*-
_class#
!loc:@activation_2/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
0gradients/activation_2/clip_by_value_grad/SelectSelect6gradients/activation_2/clip_by_value_grad/GreaterEqual'gradients/activation_2/div_grad/Reshape/gradients/activation_2/clip_by_value_grad/zeros*-
_class#
!loc:@activation_2/clip_by_value*
T0*/
_output_shapes
:���������@
�
4gradients/activation_2/clip_by_value_grad/LogicalNot
LogicalNot6gradients/activation_2/clip_by_value_grad/GreaterEqual*-
_class#
!loc:@activation_2/clip_by_value*/
_output_shapes
:���������@
�
2gradients/activation_2/clip_by_value_grad/Select_1Select4gradients/activation_2/clip_by_value_grad/LogicalNot'gradients/activation_2/div_grad/Reshape/gradients/activation_2/clip_by_value_grad/zeros*-
_class#
!loc:@activation_2/clip_by_value*
T0*/
_output_shapes
:���������@
�
-gradients/activation_2/clip_by_value_grad/SumSum0gradients/activation_2/clip_by_value_grad/Select?gradients/activation_2/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*-
_class#
!loc:@activation_2/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
1gradients/activation_2/clip_by_value_grad/ReshapeReshape-gradients/activation_2/clip_by_value_grad/Sum/gradients/activation_2/clip_by_value_grad/Shape*-
_class#
!loc:@activation_2/clip_by_value*
T0*/
_output_shapes
:���������@*
Tshape0
�
/gradients/activation_2/clip_by_value_grad/Sum_1Sum2gradients/activation_2/clip_by_value_grad/Select_1Agradients/activation_2/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*-
_class#
!loc:@activation_2/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
3gradients/activation_2/clip_by_value_grad/Reshape_1Reshape/gradients/activation_2/clip_by_value_grad/Sum_11gradients/activation_2/clip_by_value_grad/Shape_1*-
_class#
!loc:@activation_2/clip_by_value*
T0*
_output_shapes
: *
Tshape0
�
7gradients/activation_2/clip_by_value/Minimum_grad/ShapeShapeactivation_2/add*
out_type0*
T0*
_output_shapes
:*5
_class+
)'loc:@activation_2/clip_by_value/Minimum
�
9gradients/activation_2/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
9gradients/activation_2/clip_by_value/Minimum_grad/Shape_2Shape1gradients/activation_2/clip_by_value_grad/Reshape*
out_type0*
T0*
_output_shapes
:*5
_class+
)'loc:@activation_2/clip_by_value/Minimum
�
=gradients/activation_2/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
7gradients/activation_2/clip_by_value/Minimum_grad/zerosFill9gradients/activation_2/clip_by_value/Minimum_grad/Shape_2=gradients/activation_2/clip_by_value/Minimum_grad/zeros/Const*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
;gradients/activation_2/clip_by_value/Minimum_grad/LessEqual	LessEqualactivation_2/addactivation_2/Cast_1*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
Ggradients/activation_2/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/activation_2/clip_by_value/Minimum_grad/Shape9gradients/activation_2/clip_by_value/Minimum_grad/Shape_1*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
8gradients/activation_2/clip_by_value/Minimum_grad/SelectSelect;gradients/activation_2/clip_by_value/Minimum_grad/LessEqual1gradients/activation_2/clip_by_value_grad/Reshape7gradients/activation_2/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
<gradients/activation_2/clip_by_value/Minimum_grad/LogicalNot
LogicalNot;gradients/activation_2/clip_by_value/Minimum_grad/LessEqual*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*/
_output_shapes
:���������@
�
:gradients/activation_2/clip_by_value/Minimum_grad/Select_1Select<gradients/activation_2/clip_by_value/Minimum_grad/LogicalNot1gradients/activation_2/clip_by_value_grad/Reshape7gradients/activation_2/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
5gradients/activation_2/clip_by_value/Minimum_grad/SumSum8gradients/activation_2/clip_by_value/Minimum_grad/SelectGgradients/activation_2/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
9gradients/activation_2/clip_by_value/Minimum_grad/ReshapeReshape5gradients/activation_2/clip_by_value/Minimum_grad/Sum7gradients/activation_2/clip_by_value/Minimum_grad/Shape*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@*
Tshape0
�
7gradients/activation_2/clip_by_value/Minimum_grad/Sum_1Sum:gradients/activation_2/clip_by_value/Minimum_grad/Select_1Igradients/activation_2/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
;gradients/activation_2/clip_by_value/Minimum_grad/Reshape_1Reshape7gradients/activation_2/clip_by_value/Minimum_grad/Sum_19gradients/activation_2/clip_by_value/Minimum_grad/Shape_1*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*
_output_shapes
: *
Tshape0
�
+gradients/quantized_conv2d_3/mul_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_3/mul*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_3/mul_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_3/mul*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_3/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_3/mul_grad/Shape-gradients/quantized_conv2d_3/mul_grad/Shape_1*)
_class
loc:@quantized_conv2d_3/mul*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_3/mul_grad/mulMul-gradients/quantized_conv2d_3/add_grad/Reshapequantized_conv2d_3/mul/y*)
_class
loc:@quantized_conv2d_3/mul*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_3/mul_grad/SumSum)gradients/quantized_conv2d_3/mul_grad/mul;gradients/quantized_conv2d_3/mul_grad/BroadcastGradientArgs*
_output_shapes
:*)
_class
loc:@quantized_conv2d_3/mul*
T0*
	keep_dims( *

Tidx0
�
-gradients/quantized_conv2d_3/mul_grad/ReshapeReshape)gradients/quantized_conv2d_3/mul_grad/Sum+gradients/quantized_conv2d_3/mul_grad/Shape*)
_class
loc:@quantized_conv2d_3/mul*
T0*&
_output_shapes
:@@*
Tshape0
�
+gradients/quantized_conv2d_3/mul_grad/mul_1Mulquantized_conv2d_3/kernel/read-gradients/quantized_conv2d_3/add_grad/Reshape*)
_class
loc:@quantized_conv2d_3/mul*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_3/mul_grad/Sum_1Sum+gradients/quantized_conv2d_3/mul_grad/mul_1=gradients/quantized_conv2d_3/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*)
_class
loc:@quantized_conv2d_3/mul*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_3/mul_grad/Reshape_1Reshape+gradients/quantized_conv2d_3/mul_grad/Sum_1-gradients/quantized_conv2d_3/mul_grad/Shape_1*)
_class
loc:@quantized_conv2d_3/mul*
T0*
_output_shapes
: *
Tshape0
�
%gradients/activation_2/add_grad/ShapeShapeactivation_2/mul*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_2/add
�
'gradients/activation_2/add_grad/Shape_1Shapeactivation_2/StopGradient*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_2/add
�
5gradients/activation_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_2/add_grad/Shape'gradients/activation_2/add_grad/Shape_1*#
_class
loc:@activation_2/add*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_2/add_grad/SumSum9gradients/activation_2/clip_by_value/Minimum_grad/Reshape5gradients/activation_2/add_grad/BroadcastGradientArgs*
_output_shapes
:*#
_class
loc:@activation_2/add*
T0*
	keep_dims( *

Tidx0
�
'gradients/activation_2/add_grad/ReshapeReshape#gradients/activation_2/add_grad/Sum%gradients/activation_2/add_grad/Shape*#
_class
loc:@activation_2/add*
T0*/
_output_shapes
:���������@*
Tshape0
�
%gradients/activation_2/add_grad/Sum_1Sum9gradients/activation_2/clip_by_value/Minimum_grad/Reshape7gradients/activation_2/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*#
_class
loc:@activation_2/add*
T0*
	keep_dims( *

Tidx0
�
)gradients/activation_2/add_grad/Reshape_1Reshape%gradients/activation_2/add_grad/Sum_1'gradients/activation_2/add_grad/Shape_1*#
_class
loc:@activation_2/add*
T0*/
_output_shapes
:���������@*
Tshape0
�
%gradients/activation_2/mul_grad/ShapeShape batch_normalization_2/cond/Merge*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_2/mul
�
'gradients/activation_2/mul_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_2/mul*
valueB *
_output_shapes
: 
�
5gradients/activation_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_2/mul_grad/Shape'gradients/activation_2/mul_grad/Shape_1*#
_class
loc:@activation_2/mul*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_2/mul_grad/mulMul'gradients/activation_2/add_grad/Reshapeactivation_2/mul/y*#
_class
loc:@activation_2/mul*
T0*/
_output_shapes
:���������@
�
#gradients/activation_2/mul_grad/SumSum#gradients/activation_2/mul_grad/mul5gradients/activation_2/mul_grad/BroadcastGradientArgs*
_output_shapes
:*#
_class
loc:@activation_2/mul*
T0*
	keep_dims( *

Tidx0
�
'gradients/activation_2/mul_grad/ReshapeReshape#gradients/activation_2/mul_grad/Sum%gradients/activation_2/mul_grad/Shape*#
_class
loc:@activation_2/mul*
T0*/
_output_shapes
:���������@*
Tshape0
�
%gradients/activation_2/mul_grad/mul_1Mul batch_normalization_2/cond/Merge'gradients/activation_2/add_grad/Reshape*#
_class
loc:@activation_2/mul*
T0*/
_output_shapes
:���������@
�
%gradients/activation_2/mul_grad/Sum_1Sum%gradients/activation_2/mul_grad/mul_17gradients/activation_2/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*#
_class
loc:@activation_2/mul*
T0*
	keep_dims( *

Tidx0
�
)gradients/activation_2/mul_grad/Reshape_1Reshape%gradients/activation_2/mul_grad/Sum_1'gradients/activation_2/mul_grad/Shape_1*#
_class
loc:@activation_2/mul*
T0*
_output_shapes
: *
Tshape0
�
9gradients/batch_normalization_2/cond/Merge_grad/cond_gradSwitch'gradients/activation_2/mul_grad/Reshape"batch_normalization_2/cond/pred_id*#
_class
loc:@activation_2/mul*
T0*J
_output_shapes8
6:���������@:���������@
�
?gradients/batch_normalization_2/cond/batchnorm/add_1_grad/ShapeShape*batch_normalization_2/cond/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1
�
Agradients/batch_normalization_2/cond/batchnorm/add_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_2/cond/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_2/cond/batchnorm/add_1_grad/ShapeAgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_2/cond/batchnorm/add_1_grad/SumSum9gradients/batch_normalization_2/cond/Merge_grad/cond_gradOgradients/batch_normalization_2/cond/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_2/cond/batchnorm/add_1_grad/ReshapeReshape=gradients/batch_normalization_2/cond/batchnorm/add_1_grad/Sum?gradients/batch_normalization_2/cond/batchnorm/add_1_grad/Shape*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
?gradients/batch_normalization_2/cond/batchnorm/add_1_grad/Sum_1Sum9gradients/batch_normalization_2/cond/Merge_grad/cond_gradQgradients/batch_normalization_2/cond/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Reshape_1Reshape?gradients/batch_normalization_2/cond/batchnorm/add_1_grad/Sum_1Agradients/batch_normalization_2/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*
T0*
_output_shapes
:@*
Tshape0
�
gradients/Switch_8Switch%batch_normalization_2/batchnorm/add_1"batch_normalization_2/cond/pred_id*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*J
_output_shapes8
6:���������@:���������@
�
gradients/Shape_9Shapegradients/Switch_8*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1
�
gradients/zeros_8/ConstConst*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_8Fillgradients/Shape_9gradients/zeros_8/Const*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*/
_output_shapes
:���������@
�
<gradients/batch_normalization_2/cond/Switch_1_grad/cond_gradMerge;gradients/batch_normalization_2/cond/Merge_grad/cond_grad:1gradients/zeros_8*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*1
_output_shapes
:���������@: *
N
�
?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/ShapeShape1batch_normalization_2/cond/batchnorm/mul_1/Switch*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1
�
Agradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_2/cond/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/ShapeAgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/mulMulAgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Reshape(batch_normalization_2/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
=gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/SumSum=gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/mulOgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_2/cond/batchnorm/mul_1_grad/ReshapeReshape=gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Sum?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Shape*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/mul_1Mul1batch_normalization_2/cond/batchnorm/mul_1/SwitchAgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Reshape*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Sum_1Sum?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/mul_1Qgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Reshape_1Reshape?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Sum_1Agradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*
_output_shapes
:@*
Tshape0
�
=gradients/batch_normalization_2/cond/batchnorm/sub_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_2/cond/batchnorm/sub_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_2/cond/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_2/cond/batchnorm/sub_grad/Shape?gradients/batch_normalization_2/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_2/cond/batchnorm/sub_grad/SumSumCgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Reshape_1Mgradients/batch_normalization_2/cond/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_2/cond/batchnorm/sub_grad/ReshapeReshape;gradients/batch_normalization_2/cond/batchnorm/sub_grad/Sum=gradients/batch_normalization_2/cond/batchnorm/sub_grad/Shape*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
=gradients/batch_normalization_2/cond/batchnorm/sub_grad/Sum_1SumCgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Reshape_1Ogradients/batch_normalization_2/cond/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_2/cond/batchnorm/sub_grad/NegNeg=gradients/batch_normalization_2/cond/batchnorm/sub_grad/Sum_1*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
T0*
_output_shapes
:
�
Agradients/batch_normalization_2/cond/batchnorm/sub_grad/Reshape_1Reshape;gradients/batch_normalization_2/cond/batchnorm/sub_grad/Neg?gradients/batch_normalization_2/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
:gradients/batch_normalization_2/batchnorm/add_1_grad/ShapeShape%batch_normalization_2/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1
�
<gradients/batch_normalization_2/batchnorm/add_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_2/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_2/batchnorm/add_1_grad/Shape<gradients/batch_normalization_2/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_2/batchnorm/add_1_grad/SumSum<gradients/batch_normalization_2/cond/Switch_1_grad/cond_gradJgradients/batch_normalization_2/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_2/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_2/batchnorm/add_1_grad/Sum:gradients/batch_normalization_2/batchnorm/add_1_grad/Shape*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
:gradients/batch_normalization_2/batchnorm/add_1_grad/Sum_1Sum<gradients/batch_normalization_2/cond/Switch_1_grad/cond_gradLgradients/batch_normalization_2/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_2/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_2/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*
_output_shapes
:@*
Tshape0
�
gradients/Switch_9Switchquantized_conv2d_2/BiasAdd"batch_normalization_2/cond/pred_id*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
T0*J
_output_shapes8
6:���������@:���������@
�
gradients/Shape_10Shapegradients/Switch_9:1*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@quantized_conv2d_2/BiasAdd
�
gradients/zeros_9/ConstConst*
dtype0*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_9Fillgradients/Shape_10gradients/zeros_9/Const*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
T0*/
_output_shapes
:���������@
�
Jgradients/batch_normalization_2/cond/batchnorm/mul_1/Switch_grad/cond_gradMergeAgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Reshapegradients/zeros_9*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
T0*1
_output_shapes
:���������@: *
N
�
gradients/Switch_10Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id*-
_class#
!loc:@batch_normalization_2/beta*
T0* 
_output_shapes
:@:@
�
gradients/Shape_11Shapegradients/Switch_10:1*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@batch_normalization_2/beta
�
gradients/zeros_10/ConstConst*
dtype0*-
_class#
!loc:@batch_normalization_2/beta*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_10Fillgradients/Shape_11gradients/zeros_10/Const*-
_class#
!loc:@batch_normalization_2/beta*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_2/cond/batchnorm/sub/Switch_grad/cond_gradMerge?gradients/batch_normalization_2/cond/batchnorm/sub_grad/Reshapegradients/zeros_10*-
_class#
!loc:@batch_normalization_2/beta*
T0*
_output_shapes

:@: *
N
�
?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/ShapeConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Agradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_2/cond/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/ShapeAgradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/mulMulAgradients/batch_normalization_2/cond/batchnorm/sub_grad/Reshape_1(batch_normalization_2/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/SumSum=gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/mulOgradients/batch_normalization_2/cond/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_2/cond/batchnorm/mul_2_grad/ReshapeReshape=gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Sum?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Shape*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/mul_1Mul1batch_normalization_2/cond/batchnorm/mul_2/SwitchAgradients/batch_normalization_2/cond/batchnorm/sub_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Sum_1Sum?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/mul_1Qgradients/batch_normalization_2/cond/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Reshape_1Reshape?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Sum_1Agradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
:gradients/batch_normalization_2/batchnorm/mul_1_grad/ShapeShapequantized_conv2d_2/BiasAdd*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1
�
<gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_2/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_2/batchnorm/mul_1_grad/mulMul<gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape#batch_normalization_2/batchnorm/mul*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
8gradients/batch_normalization_2/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_2/batchnorm/mul_1_grad/mulJgradients/batch_normalization_2/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_2/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_2/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
:gradients/batch_normalization_2/batchnorm/mul_1_grad/mul_1Mulquantized_conv2d_2/BiasAdd<gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
:gradients/batch_normalization_2/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_2/batchnorm/mul_1_grad/mul_1Lgradients/batch_normalization_2/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_2/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_2/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_2/batchnorm/sub_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_2/batchnorm/sub_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_2/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_2/batchnorm/sub_grad/Shape:gradients/batch_normalization_2/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_2/batchnorm/sub_grad/SumSum>gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape_1Hgradients/batch_normalization_2/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_2/batchnorm/sub_grad/ReshapeReshape6gradients/batch_normalization_2/batchnorm/sub_grad/Sum8gradients/batch_normalization_2/batchnorm/sub_grad/Shape*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_2/batchnorm/sub_grad/Sum_1Sum>gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape_1Jgradients/batch_normalization_2/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
6gradients/batch_normalization_2/batchnorm/sub_grad/NegNeg8gradients/batch_normalization_2/batchnorm/sub_grad/Sum_1*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
T0*
_output_shapes
:
�
<gradients/batch_normalization_2/batchnorm/sub_grad/Reshape_1Reshape6gradients/batch_normalization_2/batchnorm/sub_grad/Neg:gradients/batch_normalization_2/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
gradients/AddN_14AddNCgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Reshape_1Cgradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*
_output_shapes
:@*
N
�
=gradients/batch_normalization_2/cond/batchnorm/mul_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_2/cond/batchnorm/mul_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_2/cond/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_2/cond/batchnorm/mul_grad/Shape?gradients/batch_normalization_2/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_2/cond/batchnorm/mul_grad/mulMulgradients/AddN_14/batch_normalization_2/cond/batchnorm/mul/Switch*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
;gradients/batch_normalization_2/cond/batchnorm/mul_grad/SumSum;gradients/batch_normalization_2/cond/batchnorm/mul_grad/mulMgradients/batch_normalization_2/cond/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_2/cond/batchnorm/mul_grad/ReshapeReshape;gradients/batch_normalization_2/cond/batchnorm/mul_grad/Sum=gradients/batch_normalization_2/cond/batchnorm/mul_grad/Shape*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
=gradients/batch_normalization_2/cond/batchnorm/mul_grad/mul_1Mul*batch_normalization_2/cond/batchnorm/Rsqrtgradients/AddN_14*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_2/cond/batchnorm/mul_grad/Sum_1Sum=gradients/batch_normalization_2/cond/batchnorm/mul_grad/mul_1Ogradients/batch_normalization_2/cond/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_2/cond/batchnorm/mul_grad/Reshape_1Reshape=gradients/batch_normalization_2/cond/batchnorm/mul_grad/Sum_1?gradients/batch_normalization_2/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
gradients/AddN_15AddNHgradients/batch_normalization_2/cond/batchnorm/sub/Switch_grad/cond_grad:gradients/batch_normalization_2/batchnorm/sub_grad/Reshape*-
_class#
!loc:@batch_normalization_2/beta*
T0*
_output_shapes
:@*
N
�
:gradients/batch_normalization_2/batchnorm/mul_2_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
<gradients/batch_normalization_2/batchnorm/mul_2_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_2/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_2/batchnorm/mul_2_grad/Shape<gradients/batch_normalization_2/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_2/batchnorm/mul_2_grad/mulMul<gradients/batch_normalization_2/batchnorm/sub_grad/Reshape_1#batch_normalization_2/batchnorm/mul*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_2/batchnorm/mul_2_grad/SumSum8gradients/batch_normalization_2/batchnorm/mul_2_grad/mulJgradients/batch_normalization_2/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_2/batchnorm/mul_2_grad/ReshapeReshape8gradients/batch_normalization_2/batchnorm/mul_2_grad/Sum:gradients/batch_normalization_2/batchnorm/mul_2_grad/Shape*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
:gradients/batch_normalization_2/batchnorm/mul_2_grad/mul_1Mul%batch_normalization_2/moments/Squeeze<gradients/batch_normalization_2/batchnorm/sub_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_2/batchnorm/mul_2_grad/Sum_1Sum:gradients/batch_normalization_2/batchnorm/mul_2_grad/mul_1Lgradients/batch_normalization_2/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_2/batchnorm/mul_2_grad/Reshape_1Reshape:gradients/batch_normalization_2/batchnorm/mul_2_grad/Sum_1<gradients/batch_normalization_2/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
gradients/Switch_11Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id*.
_class$
" loc:@batch_normalization_2/gamma*
T0* 
_output_shapes
:@:@
�
gradients/Shape_12Shapegradients/Switch_11:1*
out_type0*
T0*
_output_shapes
:*.
_class$
" loc:@batch_normalization_2/gamma
�
gradients/zeros_11/ConstConst*
dtype0*.
_class$
" loc:@batch_normalization_2/gamma*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_11Fillgradients/Shape_12gradients/zeros_11/Const*.
_class$
" loc:@batch_normalization_2/gamma*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_2/cond/batchnorm/mul/Switch_grad/cond_gradMergeAgradients/batch_normalization_2/cond/batchnorm/mul_grad/Reshape_1gradients/zeros_11*.
_class$
" loc:@batch_normalization_2/gamma*
T0*
_output_shapes

:@: *
N
�
:gradients/batch_normalization_2/moments/Squeeze_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_2/moments/Squeeze*%
valueB"         @   *
_output_shapes
:
�
<gradients/batch_normalization_2/moments/Squeeze_grad/ReshapeReshape<gradients/batch_normalization_2/batchnorm/mul_2_grad/Reshape:gradients/batch_normalization_2/moments/Squeeze_grad/Shape*8
_class.
,*loc:@batch_normalization_2/moments/Squeeze*
T0*&
_output_shapes
:@*
Tshape0
�
gradients/AddN_16AddN>gradients/batch_normalization_2/batchnorm/mul_1_grad/Reshape_1>gradients/batch_normalization_2/batchnorm/mul_2_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*
_output_shapes
:@*
N
�
8gradients/batch_normalization_2/batchnorm/mul_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_2/batchnorm/mul_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_2/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_2/batchnorm/mul_grad/Shape:gradients/batch_normalization_2/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_2/batchnorm/mul_grad/mulMulgradients/AddN_16 batch_normalization_2/gamma/read*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@
�
6gradients/batch_normalization_2/batchnorm/mul_grad/SumSum6gradients/batch_normalization_2/batchnorm/mul_grad/mulHgradients/batch_normalization_2/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_2/batchnorm/mul_grad/ReshapeReshape6gradients/batch_normalization_2/batchnorm/mul_grad/Sum8gradients/batch_normalization_2/batchnorm/mul_grad/Shape*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_2/batchnorm/mul_grad/mul_1Mul%batch_normalization_2/batchnorm/Rsqrtgradients/AddN_16*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_2/batchnorm/mul_grad/Sum_1Sum8gradients/batch_normalization_2/batchnorm/mul_grad/mul_1Jgradients/batch_normalization_2/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_2/batchnorm/mul_grad/Reshape_1Reshape8gradients/batch_normalization_2/batchnorm/mul_grad/Sum_1:gradients/batch_normalization_2/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
7gradients/batch_normalization_2/moments/mean_grad/ShapeConst*
dtype0*5
_class+
)'loc:@batch_normalization_2/moments/mean*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_2/moments/mean_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@batch_normalization_2/moments/mean*%
valueB"         @   *
_output_shapes
:
�
Ggradients/batch_normalization_2/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/batch_normalization_2/moments/mean_grad/Shape9gradients/batch_normalization_2/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*2
_output_shapes 
:���������:���������
�
5gradients/batch_normalization_2/moments/mean_grad/SumSum<gradients/batch_normalization_2/moments/Squeeze_grad/ReshapeGgradients/batch_normalization_2/moments/mean_grad/BroadcastGradientArgs*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*
	keep_dims( *

Tidx0
�
9gradients/batch_normalization_2/moments/mean_grad/ReshapeReshape5gradients/batch_normalization_2/moments/mean_grad/Sum7gradients/batch_normalization_2/moments/mean_grad/Shape*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*&
_output_shapes
:@*
Tshape0
�
7gradients/batch_normalization_2/moments/mean_grad/Sum_1Sum<gradients/batch_normalization_2/moments/Squeeze_grad/ReshapeIgradients/batch_normalization_2/moments/mean_grad/BroadcastGradientArgs:1*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_2/moments/mean_grad/Reshape_1Reshape7gradients/batch_normalization_2/moments/mean_grad/Sum_19gradients/batch_normalization_2/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*&
_output_shapes
:@*
Tshape0
�
>gradients/batch_normalization_2/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad%batch_normalization_2/batchnorm/Rsqrt:gradients/batch_normalization_2/batchnorm/mul_grad/Reshape*8
_class.
,*loc:@batch_normalization_2/batchnorm/Rsqrt*
T0*
_output_shapes
:@
�
gradients/AddN_17AddNHgradients/batch_normalization_2/cond/batchnorm/mul/Switch_grad/cond_grad<gradients/batch_normalization_2/batchnorm/mul_grad/Reshape_1*.
_class$
" loc:@batch_normalization_2/gamma*
T0*
_output_shapes
:@*
N
�
8gradients/batch_normalization_2/batchnorm/add_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_2/batchnorm/add_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
valueB *
_output_shapes
: 
�
Hgradients/batch_normalization_2/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_2/batchnorm/add_grad/Shape:gradients/batch_normalization_2/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_2/batchnorm/add_grad/SumSum>gradients/batch_normalization_2/batchnorm/Rsqrt_grad/RsqrtGradHgradients/batch_normalization_2/batchnorm/add_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_2/batchnorm/add_grad/ReshapeReshape6gradients/batch_normalization_2/batchnorm/add_grad/Sum8gradients/batch_normalization_2/batchnorm/add_grad/Shape*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_2/batchnorm/add_grad/Sum_1Sum>gradients/batch_normalization_2/batchnorm/Rsqrt_grad/RsqrtGradJgradients/batch_normalization_2/batchnorm/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_2/batchnorm/add_grad/Reshape_1Reshape8gradients/batch_normalization_2/batchnorm/add_grad/Sum_1:gradients/batch_normalization_2/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
T0*
_output_shapes
: *
Tshape0
�
<gradients/batch_normalization_2/moments/Squeeze_1_grad/ShapeConst*
dtype0*:
_class0
.,loc:@batch_normalization_2/moments/Squeeze_1*%
valueB"         @   *
_output_shapes
:
�
>gradients/batch_normalization_2/moments/Squeeze_1_grad/ReshapeReshape:gradients/batch_normalization_2/batchnorm/add_grad/Reshape<gradients/batch_normalization_2/moments/Squeeze_1_grad/Shape*:
_class0
.,loc:@batch_normalization_2/moments/Squeeze_1*
T0*&
_output_shapes
:@*
Tshape0
�
;gradients/batch_normalization_2/moments/variance_grad/ShapeConst*
dtype0*9
_class/
-+loc:@batch_normalization_2/moments/variance*%
valueB"         @   *
_output_shapes
:
�
=gradients/batch_normalization_2/moments/variance_grad/Shape_1Const*
dtype0*9
_class/
-+loc:@batch_normalization_2/moments/variance*%
valueB"         @   *
_output_shapes
:
�
Kgradients/batch_normalization_2/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients/batch_normalization_2/moments/variance_grad/Shape=gradients/batch_normalization_2/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_2/moments/variance*
T0*2
_output_shapes 
:���������:���������
�
9gradients/batch_normalization_2/moments/variance_grad/SumSum>gradients/batch_normalization_2/moments/Squeeze_1_grad/ReshapeKgradients/batch_normalization_2/moments/variance_grad/BroadcastGradientArgs*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_2/moments/variance*
T0*
	keep_dims( *

Tidx0
�
=gradients/batch_normalization_2/moments/variance_grad/ReshapeReshape9gradients/batch_normalization_2/moments/variance_grad/Sum;gradients/batch_normalization_2/moments/variance_grad/Shape*9
_class/
-+loc:@batch_normalization_2/moments/variance*
T0*&
_output_shapes
:@*
Tshape0
�
;gradients/batch_normalization_2/moments/variance_grad/Sum_1Sum>gradients/batch_normalization_2/moments/Squeeze_1_grad/ReshapeMgradients/batch_normalization_2/moments/variance_grad/BroadcastGradientArgs:1*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_2/moments/variance*
T0*
	keep_dims( *

Tidx0
�
9gradients/batch_normalization_2/moments/variance_grad/NegNeg;gradients/batch_normalization_2/moments/variance_grad/Sum_1*9
_class/
-+loc:@batch_normalization_2/moments/variance*
T0*
_output_shapes
:
�
?gradients/batch_normalization_2/moments/variance_grad/Reshape_1Reshape9gradients/batch_normalization_2/moments/variance_grad/Neg=gradients/batch_normalization_2/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_2/moments/variance*
T0*&
_output_shapes
:@*
Tshape0
�
9gradients/batch_normalization_2/moments/Mean_1_grad/ShapeShape/batch_normalization_2/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1
�
8gradients/batch_normalization_2/moments/Mean_1_grad/SizeConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B :*
_output_shapes
: 
�
7gradients/batch_normalization_2/moments/Mean_1_grad/addAdd6batch_normalization_2/moments/Mean_1/reduction_indices8gradients/batch_normalization_2/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
:
�
7gradients/batch_normalization_2/moments/Mean_1_grad/modFloorMod7gradients/batch_normalization_2/moments/Mean_1_grad/add8gradients/batch_normalization_2/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
valueB:*
_output_shapes
:
�
?gradients/batch_normalization_2/moments/Mean_1_grad/range/startConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B : *
_output_shapes
: 
�
?gradients/batch_normalization_2/moments/Mean_1_grad/range/deltaConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B :*
_output_shapes
: 
�
9gradients/batch_normalization_2/moments/Mean_1_grad/rangeRange?gradients/batch_normalization_2/moments/Mean_1_grad/range/start8gradients/batch_normalization_2/moments/Mean_1_grad/Size?gradients/batch_normalization_2/moments/Mean_1_grad/range/delta*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*

Tidx0*
_output_shapes
:
�
>gradients/batch_normalization_2/moments/Mean_1_grad/Fill/valueConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B :*
_output_shapes
: 
�
8gradients/batch_normalization_2/moments/Mean_1_grad/FillFill;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_1>gradients/batch_normalization_2/moments/Mean_1_grad/Fill/value*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
:
�
Agradients/batch_normalization_2/moments/Mean_1_grad/DynamicStitchDynamicStitch9gradients/batch_normalization_2/moments/Mean_1_grad/range7gradients/batch_normalization_2/moments/Mean_1_grad/mod9gradients/batch_normalization_2/moments/Mean_1_grad/Shape8gradients/batch_normalization_2/moments/Mean_1_grad/Fill*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*#
_output_shapes
:���������*
N
�
=gradients/batch_normalization_2/moments/Mean_1_grad/Maximum/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B :*
_output_shapes
: 
�
;gradients/batch_normalization_2/moments/Mean_1_grad/MaximumMaximumAgradients/batch_normalization_2/moments/Mean_1_grad/DynamicStitch=gradients/batch_normalization_2/moments/Mean_1_grad/Maximum/y*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*#
_output_shapes
:���������
�
<gradients/batch_normalization_2/moments/Mean_1_grad/floordivFloorDiv9gradients/batch_normalization_2/moments/Mean_1_grad/Shape;gradients/batch_normalization_2/moments/Mean_1_grad/Maximum*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_2/moments/Mean_1_grad/ReshapeReshape=gradients/batch_normalization_2/moments/variance_grad/ReshapeAgradients/batch_normalization_2/moments/Mean_1_grad/DynamicStitch*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
:*
Tshape0
�
8gradients/batch_normalization_2/moments/Mean_1_grad/TileTile;gradients/batch_normalization_2/moments/Mean_1_grad/Reshape<gradients/batch_normalization_2/moments/Mean_1_grad/floordiv*

Tmultiples0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*J
_output_shapes8
6:4������������������������������������
�
;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_2Shape/batch_normalization_2/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1
�
;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_3Const*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_2/moments/Mean_1_grad/ConstConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
valueB: *
_output_shapes
:
�
8gradients/batch_normalization_2/moments/Mean_1_grad/ProdProd;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_29gradients/batch_normalization_2/moments/Mean_1_grad/Const*
_output_shapes
: *7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_2/moments/Mean_1_grad/Const_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
valueB: *
_output_shapes
:
�
:gradients/batch_normalization_2/moments/Mean_1_grad/Prod_1Prod;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_3;gradients/batch_normalization_2/moments/Mean_1_grad/Const_1*
_output_shapes
: *7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_2/moments/Mean_1_grad/Maximum_1/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_2/moments/Mean_1_grad/Maximum_1Maximum:gradients/batch_normalization_2/moments/Mean_1_grad/Prod_1?gradients/batch_normalization_2/moments/Mean_1_grad/Maximum_1/y*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_2/moments/Mean_1_grad/floordiv_1FloorDiv8gradients/batch_normalization_2/moments/Mean_1_grad/Prod=gradients/batch_normalization_2/moments/Mean_1_grad/Maximum_1*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
: 
�
8gradients/batch_normalization_2/moments/Mean_1_grad/CastCast>gradients/batch_normalization_2/moments/Mean_1_grad/floordiv_1*

DstT0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*

SrcT0*
_output_shapes
: 
�
;gradients/batch_normalization_2/moments/Mean_1_grad/truedivRealDiv8gradients/batch_normalization_2/moments/Mean_1_grad/Tile8gradients/batch_normalization_2/moments/Mean_1_grad/Cast*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*/
_output_shapes
:���������@
�
9gradients/batch_normalization_2/moments/Square_grad/mul/xConst@^gradients/batch_normalization_2/moments/variance_grad/Reshape_1*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Square*
valueB
 *   @*
_output_shapes
: 
�
7gradients/batch_normalization_2/moments/Square_grad/mulMul9gradients/batch_normalization_2/moments/Square_grad/mul/x*batch_normalization_2/moments/shifted_mean*7
_class-
+)loc:@batch_normalization_2/moments/Square*
T0*&
_output_shapes
:@
�
9gradients/batch_normalization_2/moments/Square_grad/mul_1Mul?gradients/batch_normalization_2/moments/variance_grad/Reshape_17gradients/batch_normalization_2/moments/Square_grad/mul*7
_class-
+)loc:@batch_normalization_2/moments/Square*
T0*&
_output_shapes
:@
�
Dgradients/batch_normalization_2/moments/SquaredDifference_grad/ShapeShapequantized_conv2d_2/BiasAdd*
out_type0*
T0*
_output_shapes
:*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference
�
Fgradients/batch_normalization_2/moments/SquaredDifference_grad/Shape_1Const*
dtype0*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*%
valueB"         @   *
_output_shapes
:
�
Tgradients/batch_normalization_2/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/batch_normalization_2/moments/SquaredDifference_grad/ShapeFgradients/batch_normalization_2/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*2
_output_shapes 
:���������:���������
�
Egradients/batch_normalization_2/moments/SquaredDifference_grad/scalarConst<^gradients/batch_normalization_2/moments/Mean_1_grad/truediv*
dtype0*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
valueB
 *   @*
_output_shapes
: 
�
Bgradients/batch_normalization_2/moments/SquaredDifference_grad/mulMulEgradients/batch_normalization_2/moments/SquaredDifference_grad/scalar;gradients/batch_normalization_2/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Bgradients/batch_normalization_2/moments/SquaredDifference_grad/subSubquantized_conv2d_2/BiasAdd*batch_normalization_2/moments/StopGradient<^gradients/batch_normalization_2/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Dgradients/batch_normalization_2/moments/SquaredDifference_grad/mul_1MulBgradients/batch_normalization_2/moments/SquaredDifference_grad/mulBgradients/batch_normalization_2/moments/SquaredDifference_grad/sub*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Bgradients/batch_normalization_2/moments/SquaredDifference_grad/SumSumDgradients/batch_normalization_2/moments/SquaredDifference_grad/mul_1Tgradients/batch_normalization_2/moments/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes
:*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*
	keep_dims( *

Tidx0
�
Fgradients/batch_normalization_2/moments/SquaredDifference_grad/ReshapeReshapeBgradients/batch_normalization_2/moments/SquaredDifference_grad/SumDgradients/batch_normalization_2/moments/SquaredDifference_grad/Shape*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*/
_output_shapes
:���������@*
Tshape0
�
Dgradients/batch_normalization_2/moments/SquaredDifference_grad/Sum_1SumDgradients/batch_normalization_2/moments/SquaredDifference_grad/mul_1Vgradients/batch_normalization_2/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*
	keep_dims( *

Tidx0
�
Hgradients/batch_normalization_2/moments/SquaredDifference_grad/Reshape_1ReshapeDgradients/batch_normalization_2/moments/SquaredDifference_grad/Sum_1Fgradients/batch_normalization_2/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*&
_output_shapes
:@*
Tshape0
�
Bgradients/batch_normalization_2/moments/SquaredDifference_grad/NegNegHgradients/batch_normalization_2/moments/SquaredDifference_grad/Reshape_1*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*&
_output_shapes
:@
�
gradients/AddN_18AddN9gradients/batch_normalization_2/moments/mean_grad/Reshape9gradients/batch_normalization_2/moments/Square_grad/mul_1*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*&
_output_shapes
:@*
N
�
?gradients/batch_normalization_2/moments/shifted_mean_grad/ShapeShape!batch_normalization_2/moments/Sub*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean
�
>gradients/batch_normalization_2/moments/shifted_mean_grad/SizeConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_2/moments/shifted_mean_grad/addAdd<batch_normalization_2/moments/shifted_mean/reduction_indices>gradients/batch_normalization_2/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
:
�
=gradients/batch_normalization_2/moments/shifted_mean_grad/modFloorMod=gradients/batch_normalization_2/moments/shifted_mean_grad/add>gradients/batch_normalization_2/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
valueB:*
_output_shapes
:
�
Egradients/batch_normalization_2/moments/shifted_mean_grad/range/startConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B : *
_output_shapes
: 
�
Egradients/batch_normalization_2/moments/shifted_mean_grad/range/deltaConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
?gradients/batch_normalization_2/moments/shifted_mean_grad/rangeRangeEgradients/batch_normalization_2/moments/shifted_mean_grad/range/start>gradients/batch_normalization_2/moments/shifted_mean_grad/SizeEgradients/batch_normalization_2/moments/shifted_mean_grad/range/delta*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*

Tidx0*
_output_shapes
:
�
Dgradients/batch_normalization_2/moments/shifted_mean_grad/Fill/valueConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
>gradients/batch_normalization_2/moments/shifted_mean_grad/FillFillAgradients/batch_normalization_2/moments/shifted_mean_grad/Shape_1Dgradients/batch_normalization_2/moments/shifted_mean_grad/Fill/value*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
:
�
Ggradients/batch_normalization_2/moments/shifted_mean_grad/DynamicStitchDynamicStitch?gradients/batch_normalization_2/moments/shifted_mean_grad/range=gradients/batch_normalization_2/moments/shifted_mean_grad/mod?gradients/batch_normalization_2/moments/shifted_mean_grad/Shape>gradients/batch_normalization_2/moments/shifted_mean_grad/Fill*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*#
_output_shapes
:���������*
N
�
Cgradients/batch_normalization_2/moments/shifted_mean_grad/Maximum/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/MaximumMaximumGgradients/batch_normalization_2/moments/shifted_mean_grad/DynamicStitchCgradients/batch_normalization_2/moments/shifted_mean_grad/Maximum/y*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Bgradients/batch_normalization_2/moments/shifted_mean_grad/floordivFloorDiv?gradients/batch_normalization_2/moments/shifted_mean_grad/ShapeAgradients/batch_normalization_2/moments/shifted_mean_grad/Maximum*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_18Ggradients/batch_normalization_2/moments/shifted_mean_grad/DynamicStitch*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
:*
Tshape0
�
>gradients/batch_normalization_2/moments/shifted_mean_grad/TileTileAgradients/batch_normalization_2/moments/shifted_mean_grad/ReshapeBgradients/batch_normalization_2/moments/shifted_mean_grad/floordiv*

Tmultiples0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*J
_output_shapes8
6:4������������������������������������
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/Shape_2Shape!batch_normalization_2/moments/Sub*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/Shape_3Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*%
valueB"         @   *
_output_shapes
:
�
?gradients/batch_normalization_2/moments/shifted_mean_grad/ConstConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
valueB: *
_output_shapes
:
�
>gradients/batch_normalization_2/moments/shifted_mean_grad/ProdProdAgradients/batch_normalization_2/moments/shifted_mean_grad/Shape_2?gradients/batch_normalization_2/moments/shifted_mean_grad/Const*
_output_shapes
: *=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/Const_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
valueB: *
_output_shapes
:
�
@gradients/batch_normalization_2/moments/shifted_mean_grad/Prod_1ProdAgradients/batch_normalization_2/moments/shifted_mean_grad/Shape_3Agradients/batch_normalization_2/moments/shifted_mean_grad/Const_1*
_output_shapes
: *=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
	keep_dims( *

Tidx0
�
Egradients/batch_normalization_2/moments/shifted_mean_grad/Maximum_1/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Cgradients/batch_normalization_2/moments/shifted_mean_grad/Maximum_1Maximum@gradients/batch_normalization_2/moments/shifted_mean_grad/Prod_1Egradients/batch_normalization_2/moments/shifted_mean_grad/Maximum_1/y*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
: 
�
Dgradients/batch_normalization_2/moments/shifted_mean_grad/floordiv_1FloorDiv>gradients/batch_normalization_2/moments/shifted_mean_grad/ProdCgradients/batch_normalization_2/moments/shifted_mean_grad/Maximum_1*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_2/moments/shifted_mean_grad/CastCastDgradients/batch_normalization_2/moments/shifted_mean_grad/floordiv_1*

DstT0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*

SrcT0*
_output_shapes
: 
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/truedivRealDiv>gradients/batch_normalization_2/moments/shifted_mean_grad/Tile>gradients/batch_normalization_2/moments/shifted_mean_grad/Cast*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*/
_output_shapes
:���������@
�
6gradients/batch_normalization_2/moments/Sub_grad/ShapeShapequantized_conv2d_2/BiasAdd*
out_type0*
T0*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_2/moments/Sub
�
8gradients/batch_normalization_2/moments/Sub_grad/Shape_1Const*
dtype0*4
_class*
(&loc:@batch_normalization_2/moments/Sub*%
valueB"         @   *
_output_shapes
:
�
Fgradients/batch_normalization_2/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/batch_normalization_2/moments/Sub_grad/Shape8gradients/batch_normalization_2/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_2/moments/Sub*
T0*2
_output_shapes 
:���������:���������
�
4gradients/batch_normalization_2/moments/Sub_grad/SumSumAgradients/batch_normalization_2/moments/shifted_mean_grad/truedivFgradients/batch_normalization_2/moments/Sub_grad/BroadcastGradientArgs*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_2/moments/Sub*
T0*
	keep_dims( *

Tidx0
�
8gradients/batch_normalization_2/moments/Sub_grad/ReshapeReshape4gradients/batch_normalization_2/moments/Sub_grad/Sum6gradients/batch_normalization_2/moments/Sub_grad/Shape*4
_class*
(&loc:@batch_normalization_2/moments/Sub*
T0*/
_output_shapes
:���������@*
Tshape0
�
6gradients/batch_normalization_2/moments/Sub_grad/Sum_1SumAgradients/batch_normalization_2/moments/shifted_mean_grad/truedivHgradients/batch_normalization_2/moments/Sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_2/moments/Sub*
T0*
	keep_dims( *

Tidx0
�
4gradients/batch_normalization_2/moments/Sub_grad/NegNeg6gradients/batch_normalization_2/moments/Sub_grad/Sum_1*4
_class*
(&loc:@batch_normalization_2/moments/Sub*
T0*
_output_shapes
:
�
:gradients/batch_normalization_2/moments/Sub_grad/Reshape_1Reshape4gradients/batch_normalization_2/moments/Sub_grad/Neg8gradients/batch_normalization_2/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_2/moments/Sub*
T0*&
_output_shapes
:@*
Tshape0
�
gradients/AddN_19AddN;gradients/batch_normalization_2/moments/mean_grad/Reshape_1Bgradients/batch_normalization_2/moments/SquaredDifference_grad/Neg:gradients/batch_normalization_2/moments/Sub_grad/Reshape_1*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*&
_output_shapes
:@*
N
�
gradients/AddN_20AddNJgradients/batch_normalization_2/cond/batchnorm/mul_1/Switch_grad/cond_grad<gradients/batch_normalization_2/batchnorm/mul_1_grad/ReshapeFgradients/batch_normalization_2/moments/SquaredDifference_grad/Reshape8gradients/batch_normalization_2/moments/Sub_grad/Reshape*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
T0*/
_output_shapes
:���������@*
N
�
5gradients/quantized_conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_20*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
T0*
_output_shapes
:@*
data_formatNHWC
�
-gradients/quantized_conv2d_2/mul_4_grad/ShapeShapequantized_conv2d_2/sub_2*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_4
�
/gradients/quantized_conv2d_2/mul_4_grad/Shape_1Const*
dtype0*+
_class!
loc:@quantized_conv2d_2/mul_4*
valueB *
_output_shapes
: 
�
=gradients/quantized_conv2d_2/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/mul_4_grad/Shape/gradients/quantized_conv2d_2/mul_4_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/mul_4_grad/mulMulgradients/AddN_20quantized_conv2d_2/mul_4/y*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_2/mul_4_grad/SumSum+gradients/quantized_conv2d_2/mul_4_grad/mul=gradients/quantized_conv2d_2/mul_4_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_2/mul_4_grad/ReshapeReshape+gradients/quantized_conv2d_2/mul_4_grad/Sum-gradients/quantized_conv2d_2/mul_4_grad/Shape*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*/
_output_shapes
:���������@*
Tshape0
�
-gradients/quantized_conv2d_2/mul_4_grad/mul_1Mulquantized_conv2d_2/sub_2gradients/AddN_20*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/mul_4_grad/Sum_1Sum-gradients/quantized_conv2d_2/mul_4_grad/mul_1?gradients/quantized_conv2d_2/mul_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*
	keep_dims( *

Tidx0
�
1gradients/quantized_conv2d_2/mul_4_grad/Reshape_1Reshape-gradients/quantized_conv2d_2/mul_4_grad/Sum_1/gradients/quantized_conv2d_2/mul_4_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_2/sub_2_grad/ShapeShapequantized_conv2d_2/convolution*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/sub_2
�
/gradients/quantized_conv2d_2/sub_2_grad/Shape_1Shapequantized_conv2d_2/mul_3*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/sub_2
�
=gradients/quantized_conv2d_2/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/sub_2_grad/Shape/gradients/quantized_conv2d_2/sub_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/sub_2*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/sub_2_grad/SumSum/gradients/quantized_conv2d_2/mul_4_grad/Reshape=gradients/quantized_conv2d_2/sub_2_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/sub_2*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_2/sub_2_grad/ReshapeReshape+gradients/quantized_conv2d_2/sub_2_grad/Sum-gradients/quantized_conv2d_2/sub_2_grad/Shape*+
_class!
loc:@quantized_conv2d_2/sub_2*
T0*/
_output_shapes
:���������@*
Tshape0
�
-gradients/quantized_conv2d_2/sub_2_grad/Sum_1Sum/gradients/quantized_conv2d_2/mul_4_grad/Reshape?gradients/quantized_conv2d_2/sub_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/sub_2*
T0*
	keep_dims( *

Tidx0
�
+gradients/quantized_conv2d_2/sub_2_grad/NegNeg-gradients/quantized_conv2d_2/sub_2_grad/Sum_1*+
_class!
loc:@quantized_conv2d_2/sub_2*
T0*
_output_shapes
:
�
1gradients/quantized_conv2d_2/sub_2_grad/Reshape_1Reshape+gradients/quantized_conv2d_2/sub_2_grad/Neg/gradients/quantized_conv2d_2/sub_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/sub_2*
T0*/
_output_shapes
:���������@*
Tshape0
�
-gradients/quantized_conv2d_2/mul_3_grad/ShapeConst*
dtype0*+
_class!
loc:@quantized_conv2d_2/mul_3*
valueB *
_output_shapes
: 
�
/gradients/quantized_conv2d_2/mul_3_grad/Shape_1Shape!quantized_conv2d_2/StopGradient_2*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_3
�
=gradients/quantized_conv2d_2/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/mul_3_grad/Shape/gradients/quantized_conv2d_2/mul_3_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/mul_3_grad/mulMul1gradients/quantized_conv2d_2/sub_2_grad/Reshape_1!quantized_conv2d_2/StopGradient_2*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_2/mul_3_grad/SumSum+gradients/quantized_conv2d_2/mul_3_grad/mul=gradients/quantized_conv2d_2/mul_3_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_2/mul_3_grad/ReshapeReshape+gradients/quantized_conv2d_2/mul_3_grad/Sum-gradients/quantized_conv2d_2/mul_3_grad/Shape*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_2/mul_3_grad/mul_1Mulquantized_conv2d_2/mul_3/x1gradients/quantized_conv2d_2/sub_2_grad/Reshape_1*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/mul_3_grad/Sum_1Sum-gradients/quantized_conv2d_2/mul_3_grad/mul_1?gradients/quantized_conv2d_2/mul_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*
	keep_dims( *

Tidx0
�
1gradients/quantized_conv2d_2/mul_3_grad/Reshape_1Reshape-gradients/quantized_conv2d_2/mul_3_grad/Sum_1/gradients/quantized_conv2d_2/mul_3_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*/
_output_shapes
:���������@*
Tshape0
�
3gradients/quantized_conv2d_2/convolution_grad/ShapeShapequantized_conv2d_2/mul_2*
out_type0*
T0*
_output_shapes
:*1
_class'
%#loc:@quantized_conv2d_2/convolution
�
Agradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput3gradients/quantized_conv2d_2/convolution_grad/Shapequantized_conv2d_2/div/gradients/quantized_conv2d_2/sub_2_grad/Reshape*/
_output_shapes
:���������@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_2/convolution
�
5gradients/quantized_conv2d_2/convolution_grad/Shape_1Const*
dtype0*1
_class'
%#loc:@quantized_conv2d_2/convolution*%
valueB"      @   @   *
_output_shapes
:
�
Bgradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterquantized_conv2d_2/mul_25gradients/quantized_conv2d_2/convolution_grad/Shape_1/gradients/quantized_conv2d_2/sub_2_grad/Reshape*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_2/convolution
�
-gradients/quantized_conv2d_2/mul_2_grad/ShapeShapequantized_conv2d_2/sub_1*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_2
�
/gradients/quantized_conv2d_2/mul_2_grad/Shape_1Const*
dtype0*+
_class!
loc:@quantized_conv2d_2/mul_2*
valueB *
_output_shapes
: 
�
=gradients/quantized_conv2d_2/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/mul_2_grad/Shape/gradients/quantized_conv2d_2/mul_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/mul_2_grad/mulMulAgradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropInputquantized_conv2d_2/mul_2/y*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_2/mul_2_grad/SumSum+gradients/quantized_conv2d_2/mul_2_grad/mul=gradients/quantized_conv2d_2/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_2/mul_2_grad/ReshapeReshape+gradients/quantized_conv2d_2/mul_2_grad/Sum-gradients/quantized_conv2d_2/mul_2_grad/Shape*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*/
_output_shapes
:���������@*
Tshape0
�
-gradients/quantized_conv2d_2/mul_2_grad/mul_1Mulquantized_conv2d_2/sub_1Agradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropInput*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/mul_2_grad/Sum_1Sum-gradients/quantized_conv2d_2/mul_2_grad/mul_1?gradients/quantized_conv2d_2/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*
	keep_dims( *

Tidx0
�
1gradients/quantized_conv2d_2/mul_2_grad/Reshape_1Reshape-gradients/quantized_conv2d_2/mul_2_grad/Sum_1/gradients/quantized_conv2d_2/mul_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*
_output_shapes
: *
Tshape0
�
+gradients/quantized_conv2d_2/div_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_2/div*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_2/div_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_2/div*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_2/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_2/div_grad/Shape-gradients/quantized_conv2d_2/div_grad/Shape_1*)
_class
loc:@quantized_conv2d_2/div*
T0*2
_output_shapes 
:���������:���������
�
-gradients/quantized_conv2d_2/div_grad/RealDivRealDivBgradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropFilterquantized_conv2d_2/div/y*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_2/div_grad/SumSum-gradients/quantized_conv2d_2/div_grad/RealDiv;gradients/quantized_conv2d_2/div_grad/BroadcastGradientArgs*
_output_shapes
:*)
_class
loc:@quantized_conv2d_2/div*
T0*
	keep_dims( *

Tidx0
�
-gradients/quantized_conv2d_2/div_grad/ReshapeReshape)gradients/quantized_conv2d_2/div_grad/Sum+gradients/quantized_conv2d_2/div_grad/Shape*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@*
Tshape0
�
)gradients/quantized_conv2d_2/div_grad/NegNeg quantized_conv2d_2/clip_by_value*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@
�
/gradients/quantized_conv2d_2/div_grad/RealDiv_1RealDiv)gradients/quantized_conv2d_2/div_grad/Negquantized_conv2d_2/div/y*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@
�
/gradients/quantized_conv2d_2/div_grad/RealDiv_2RealDiv/gradients/quantized_conv2d_2/div_grad/RealDiv_1quantized_conv2d_2/div/y*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_2/div_grad/mulMulBgradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropFilter/gradients/quantized_conv2d_2/div_grad/RealDiv_2*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_2/div_grad/Sum_1Sum)gradients/quantized_conv2d_2/div_grad/mul=gradients/quantized_conv2d_2/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*)
_class
loc:@quantized_conv2d_2/div*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_2/div_grad/Reshape_1Reshape+gradients/quantized_conv2d_2/div_grad/Sum_1-gradients/quantized_conv2d_2/div_grad/Shape_1*)
_class
loc:@quantized_conv2d_2/div*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_2/sub_1_grad/ShapeShapemax_pooling2d_1/MaxPool*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/sub_1
�
/gradients/quantized_conv2d_2/sub_1_grad/Shape_1Shapequantized_conv2d_2/mul_1*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/sub_1
�
=gradients/quantized_conv2d_2/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/sub_1_grad/Shape/gradients/quantized_conv2d_2/sub_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/sub_1*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/sub_1_grad/SumSum/gradients/quantized_conv2d_2/mul_2_grad/Reshape=gradients/quantized_conv2d_2/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/sub_1*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_2/sub_1_grad/ReshapeReshape+gradients/quantized_conv2d_2/sub_1_grad/Sum-gradients/quantized_conv2d_2/sub_1_grad/Shape*+
_class!
loc:@quantized_conv2d_2/sub_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
-gradients/quantized_conv2d_2/sub_1_grad/Sum_1Sum/gradients/quantized_conv2d_2/mul_2_grad/Reshape?gradients/quantized_conv2d_2/sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/sub_1*
T0*
	keep_dims( *

Tidx0
�
+gradients/quantized_conv2d_2/sub_1_grad/NegNeg-gradients/quantized_conv2d_2/sub_1_grad/Sum_1*+
_class!
loc:@quantized_conv2d_2/sub_1*
T0*
_output_shapes
:
�
1gradients/quantized_conv2d_2/sub_1_grad/Reshape_1Reshape+gradients/quantized_conv2d_2/sub_1_grad/Neg/gradients/quantized_conv2d_2/sub_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/sub_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
5gradients/quantized_conv2d_2/clip_by_value_grad/ShapeConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*%
valueB"      @   @   *
_output_shapes
:
�
7gradients/quantized_conv2d_2/clip_by_value_grad/Shape_1Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
valueB *
_output_shapes
: 
�
7gradients/quantized_conv2d_2/clip_by_value_grad/Shape_2Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*%
valueB"      @   @   *
_output_shapes
:
�
;gradients/quantized_conv2d_2/clip_by_value_grad/zeros/ConstConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
5gradients/quantized_conv2d_2/clip_by_value_grad/zerosFill7gradients/quantized_conv2d_2/clip_by_value_grad/Shape_2;gradients/quantized_conv2d_2/clip_by_value_grad/zeros/Const*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*&
_output_shapes
:@@
�
<gradients/quantized_conv2d_2/clip_by_value_grad/GreaterEqualGreaterEqual(quantized_conv2d_2/clip_by_value/Minimumquantized_conv2d_2/Cast*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*&
_output_shapes
:@@
�
Egradients/quantized_conv2d_2/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients/quantized_conv2d_2/clip_by_value_grad/Shape7gradients/quantized_conv2d_2/clip_by_value_grad/Shape_1*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
6gradients/quantized_conv2d_2/clip_by_value_grad/SelectSelect<gradients/quantized_conv2d_2/clip_by_value_grad/GreaterEqual-gradients/quantized_conv2d_2/div_grad/Reshape5gradients/quantized_conv2d_2/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*&
_output_shapes
:@@
�
:gradients/quantized_conv2d_2/clip_by_value_grad/LogicalNot
LogicalNot<gradients/quantized_conv2d_2/clip_by_value_grad/GreaterEqual*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*&
_output_shapes
:@@
�
8gradients/quantized_conv2d_2/clip_by_value_grad/Select_1Select:gradients/quantized_conv2d_2/clip_by_value_grad/LogicalNot-gradients/quantized_conv2d_2/div_grad/Reshape5gradients/quantized_conv2d_2/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*&
_output_shapes
:@@
�
3gradients/quantized_conv2d_2/clip_by_value_grad/SumSum6gradients/quantized_conv2d_2/clip_by_value_grad/SelectEgradients/quantized_conv2d_2/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
7gradients/quantized_conv2d_2/clip_by_value_grad/ReshapeReshape3gradients/quantized_conv2d_2/clip_by_value_grad/Sum5gradients/quantized_conv2d_2/clip_by_value_grad/Shape*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*&
_output_shapes
:@@*
Tshape0
�
5gradients/quantized_conv2d_2/clip_by_value_grad/Sum_1Sum8gradients/quantized_conv2d_2/clip_by_value_grad/Select_1Ggradients/quantized_conv2d_2/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
9gradients/quantized_conv2d_2/clip_by_value_grad/Reshape_1Reshape5gradients/quantized_conv2d_2/clip_by_value_grad/Sum_17gradients/quantized_conv2d_2/clip_by_value_grad/Shape_1*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_2/mul_1_grad/ShapeConst*
dtype0*+
_class!
loc:@quantized_conv2d_2/mul_1*
valueB *
_output_shapes
: 
�
/gradients/quantized_conv2d_2/mul_1_grad/Shape_1Shape!quantized_conv2d_2/StopGradient_1*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_1
�
=gradients/quantized_conv2d_2/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/mul_1_grad/Shape/gradients/quantized_conv2d_2/mul_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/mul_1_grad/mulMul1gradients/quantized_conv2d_2/sub_1_grad/Reshape_1!quantized_conv2d_2/StopGradient_1*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_2/mul_1_grad/SumSum+gradients/quantized_conv2d_2/mul_1_grad/mul=gradients/quantized_conv2d_2/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_2/mul_1_grad/ReshapeReshape+gradients/quantized_conv2d_2/mul_1_grad/Sum-gradients/quantized_conv2d_2/mul_1_grad/Shape*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_2/mul_1_grad/mul_1Mulquantized_conv2d_2/mul_1/x1gradients/quantized_conv2d_2/sub_1_grad/Reshape_1*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/mul_1_grad/Sum_1Sum-gradients/quantized_conv2d_2/mul_1_grad/mul_1?gradients/quantized_conv2d_2/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*
	keep_dims( *

Tidx0
�
1gradients/quantized_conv2d_2/mul_1_grad/Reshape_1Reshape-gradients/quantized_conv2d_2/mul_1_grad/Sum_1/gradients/quantized_conv2d_2/mul_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*/
_output_shapes
:���������@*
Tshape0
�
=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/ShapeConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*%
valueB"      @   @   *
_output_shapes
:
�
?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape_2Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*%
valueB"      @   @   *
_output_shapes
:
�
Cgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/zerosFill?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape_2Cgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/zeros/Const*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Agradients/quantized_conv2d_2/clip_by_value/Minimum_grad/LessEqual	LessEqualquantized_conv2d_2/addquantized_conv2d_2/Cast_1*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Mgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape_1*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
>gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/SelectSelectAgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/LessEqual7gradients/quantized_conv2d_2/clip_by_value_grad/Reshape=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Bgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/LogicalNot
LogicalNotAgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/LessEqual*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*&
_output_shapes
:@@
�
@gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Select_1SelectBgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/LogicalNot7gradients/quantized_conv2d_2/clip_by_value_grad/Reshape=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
;gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/SumSum>gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/SelectMgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/ReshapeReshape;gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Sum=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*&
_output_shapes
:@@*
Tshape0
�
=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Sum_1Sum@gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Select_1Ogradients/quantized_conv2d_2/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
Agradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Reshape_1Reshape=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Sum_1?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape_1*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*
_output_shapes
: *
Tshape0
�
+gradients/quantized_conv2d_2/add_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_2/add*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_2/add_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_2/add*%
valueB"      @   @   *
_output_shapes
:
�
;gradients/quantized_conv2d_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_2/add_grad/Shape-gradients/quantized_conv2d_2/add_grad/Shape_1*)
_class
loc:@quantized_conv2d_2/add*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_2/add_grad/SumSum?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Reshape;gradients/quantized_conv2d_2/add_grad/BroadcastGradientArgs*
_output_shapes
:*)
_class
loc:@quantized_conv2d_2/add*
T0*
	keep_dims( *

Tidx0
�
-gradients/quantized_conv2d_2/add_grad/ReshapeReshape)gradients/quantized_conv2d_2/add_grad/Sum+gradients/quantized_conv2d_2/add_grad/Shape*)
_class
loc:@quantized_conv2d_2/add*
T0*&
_output_shapes
:@@*
Tshape0
�
+gradients/quantized_conv2d_2/add_grad/Sum_1Sum?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Reshape=gradients/quantized_conv2d_2/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*)
_class
loc:@quantized_conv2d_2/add*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_2/add_grad/Reshape_1Reshape+gradients/quantized_conv2d_2/add_grad/Sum_1-gradients/quantized_conv2d_2/add_grad/Shape_1*)
_class
loc:@quantized_conv2d_2/add*
T0*&
_output_shapes
:@@*
Tshape0
�
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradactivation_1/divmax_pooling2d_1/MaxPool/gradients/quantized_conv2d_2/sub_1_grad/Reshape*/
_output_shapes
:���������  @*
data_formatNHWC*
paddingVALID*
strides
*
ksize
**
_class 
loc:@max_pooling2d_1/MaxPool*
T0
�
%gradients/activation_1/div_grad/ShapeShapeactivation_1/clip_by_value*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_1/div
�
'gradients/activation_1/div_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_1/div*
valueB *
_output_shapes
: 
�
5gradients/activation_1/div_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_1/div_grad/Shape'gradients/activation_1/div_grad/Shape_1*#
_class
loc:@activation_1/div*
T0*2
_output_shapes 
:���������:���������
�
'gradients/activation_1/div_grad/RealDivRealDiv2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradactivation_1/div/y*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @
�
#gradients/activation_1/div_grad/SumSum'gradients/activation_1/div_grad/RealDiv5gradients/activation_1/div_grad/BroadcastGradientArgs*
_output_shapes
:*#
_class
loc:@activation_1/div*
T0*
	keep_dims( *

Tidx0
�
'gradients/activation_1/div_grad/ReshapeReshape#gradients/activation_1/div_grad/Sum%gradients/activation_1/div_grad/Shape*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @*
Tshape0
�
#gradients/activation_1/div_grad/NegNegactivation_1/clip_by_value*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @
�
)gradients/activation_1/div_grad/RealDiv_1RealDiv#gradients/activation_1/div_grad/Negactivation_1/div/y*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @
�
)gradients/activation_1/div_grad/RealDiv_2RealDiv)gradients/activation_1/div_grad/RealDiv_1activation_1/div/y*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @
�
#gradients/activation_1/div_grad/mulMul2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGrad)gradients/activation_1/div_grad/RealDiv_2*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @
�
%gradients/activation_1/div_grad/Sum_1Sum#gradients/activation_1/div_grad/mul7gradients/activation_1/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*#
_class
loc:@activation_1/div*
T0*
	keep_dims( *

Tidx0
�
)gradients/activation_1/div_grad/Reshape_1Reshape%gradients/activation_1/div_grad/Sum_1'gradients/activation_1/div_grad/Shape_1*#
_class
loc:@activation_1/div*
T0*
_output_shapes
: *
Tshape0
�
/gradients/activation_1/clip_by_value_grad/ShapeShape"activation_1/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@activation_1/clip_by_value
�
1gradients/activation_1/clip_by_value_grad/Shape_1Const*
dtype0*-
_class#
!loc:@activation_1/clip_by_value*
valueB *
_output_shapes
: 
�
1gradients/activation_1/clip_by_value_grad/Shape_2Shape'gradients/activation_1/div_grad/Reshape*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@activation_1/clip_by_value
�
5gradients/activation_1/clip_by_value_grad/zeros/ConstConst*
dtype0*-
_class#
!loc:@activation_1/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
/gradients/activation_1/clip_by_value_grad/zerosFill1gradients/activation_1/clip_by_value_grad/Shape_25gradients/activation_1/clip_by_value_grad/zeros/Const*-
_class#
!loc:@activation_1/clip_by_value*
T0*/
_output_shapes
:���������  @
�
6gradients/activation_1/clip_by_value_grad/GreaterEqualGreaterEqual"activation_1/clip_by_value/Minimumactivation_1/Cast*-
_class#
!loc:@activation_1/clip_by_value*
T0*/
_output_shapes
:���������  @
�
?gradients/activation_1/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/activation_1/clip_by_value_grad/Shape1gradients/activation_1/clip_by_value_grad/Shape_1*-
_class#
!loc:@activation_1/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
0gradients/activation_1/clip_by_value_grad/SelectSelect6gradients/activation_1/clip_by_value_grad/GreaterEqual'gradients/activation_1/div_grad/Reshape/gradients/activation_1/clip_by_value_grad/zeros*-
_class#
!loc:@activation_1/clip_by_value*
T0*/
_output_shapes
:���������  @
�
4gradients/activation_1/clip_by_value_grad/LogicalNot
LogicalNot6gradients/activation_1/clip_by_value_grad/GreaterEqual*-
_class#
!loc:@activation_1/clip_by_value*/
_output_shapes
:���������  @
�
2gradients/activation_1/clip_by_value_grad/Select_1Select4gradients/activation_1/clip_by_value_grad/LogicalNot'gradients/activation_1/div_grad/Reshape/gradients/activation_1/clip_by_value_grad/zeros*-
_class#
!loc:@activation_1/clip_by_value*
T0*/
_output_shapes
:���������  @
�
-gradients/activation_1/clip_by_value_grad/SumSum0gradients/activation_1/clip_by_value_grad/Select?gradients/activation_1/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*-
_class#
!loc:@activation_1/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
1gradients/activation_1/clip_by_value_grad/ReshapeReshape-gradients/activation_1/clip_by_value_grad/Sum/gradients/activation_1/clip_by_value_grad/Shape*-
_class#
!loc:@activation_1/clip_by_value*
T0*/
_output_shapes
:���������  @*
Tshape0
�
/gradients/activation_1/clip_by_value_grad/Sum_1Sum2gradients/activation_1/clip_by_value_grad/Select_1Agradients/activation_1/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*-
_class#
!loc:@activation_1/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
3gradients/activation_1/clip_by_value_grad/Reshape_1Reshape/gradients/activation_1/clip_by_value_grad/Sum_11gradients/activation_1/clip_by_value_grad/Shape_1*-
_class#
!loc:@activation_1/clip_by_value*
T0*
_output_shapes
: *
Tshape0
�
7gradients/activation_1/clip_by_value/Minimum_grad/ShapeShapeactivation_1/add*
out_type0*
T0*
_output_shapes
:*5
_class+
)'loc:@activation_1/clip_by_value/Minimum
�
9gradients/activation_1/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
9gradients/activation_1/clip_by_value/Minimum_grad/Shape_2Shape1gradients/activation_1/clip_by_value_grad/Reshape*
out_type0*
T0*
_output_shapes
:*5
_class+
)'loc:@activation_1/clip_by_value/Minimum
�
=gradients/activation_1/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
7gradients/activation_1/clip_by_value/Minimum_grad/zerosFill9gradients/activation_1/clip_by_value/Minimum_grad/Shape_2=gradients/activation_1/clip_by_value/Minimum_grad/zeros/Const*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*/
_output_shapes
:���������  @
�
;gradients/activation_1/clip_by_value/Minimum_grad/LessEqual	LessEqualactivation_1/addactivation_1/Cast_1*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*/
_output_shapes
:���������  @
�
Ggradients/activation_1/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/activation_1/clip_by_value/Minimum_grad/Shape9gradients/activation_1/clip_by_value/Minimum_grad/Shape_1*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
8gradients/activation_1/clip_by_value/Minimum_grad/SelectSelect;gradients/activation_1/clip_by_value/Minimum_grad/LessEqual1gradients/activation_1/clip_by_value_grad/Reshape7gradients/activation_1/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*/
_output_shapes
:���������  @
�
<gradients/activation_1/clip_by_value/Minimum_grad/LogicalNot
LogicalNot;gradients/activation_1/clip_by_value/Minimum_grad/LessEqual*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*/
_output_shapes
:���������  @
�
:gradients/activation_1/clip_by_value/Minimum_grad/Select_1Select<gradients/activation_1/clip_by_value/Minimum_grad/LogicalNot1gradients/activation_1/clip_by_value_grad/Reshape7gradients/activation_1/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*/
_output_shapes
:���������  @
�
5gradients/activation_1/clip_by_value/Minimum_grad/SumSum8gradients/activation_1/clip_by_value/Minimum_grad/SelectGgradients/activation_1/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
9gradients/activation_1/clip_by_value/Minimum_grad/ReshapeReshape5gradients/activation_1/clip_by_value/Minimum_grad/Sum7gradients/activation_1/clip_by_value/Minimum_grad/Shape*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*/
_output_shapes
:���������  @*
Tshape0
�
7gradients/activation_1/clip_by_value/Minimum_grad/Sum_1Sum:gradients/activation_1/clip_by_value/Minimum_grad/Select_1Igradients/activation_1/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
;gradients/activation_1/clip_by_value/Minimum_grad/Reshape_1Reshape7gradients/activation_1/clip_by_value/Minimum_grad/Sum_19gradients/activation_1/clip_by_value/Minimum_grad/Shape_1*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*
_output_shapes
: *
Tshape0
�
+gradients/quantized_conv2d_2/mul_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_2/mul*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_2/mul_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_2/mul*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_2/mul_grad/Shape-gradients/quantized_conv2d_2/mul_grad/Shape_1*)
_class
loc:@quantized_conv2d_2/mul*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_2/mul_grad/mulMul-gradients/quantized_conv2d_2/add_grad/Reshapequantized_conv2d_2/mul/y*)
_class
loc:@quantized_conv2d_2/mul*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_2/mul_grad/SumSum)gradients/quantized_conv2d_2/mul_grad/mul;gradients/quantized_conv2d_2/mul_grad/BroadcastGradientArgs*
_output_shapes
:*)
_class
loc:@quantized_conv2d_2/mul*
T0*
	keep_dims( *

Tidx0
�
-gradients/quantized_conv2d_2/mul_grad/ReshapeReshape)gradients/quantized_conv2d_2/mul_grad/Sum+gradients/quantized_conv2d_2/mul_grad/Shape*)
_class
loc:@quantized_conv2d_2/mul*
T0*&
_output_shapes
:@@*
Tshape0
�
+gradients/quantized_conv2d_2/mul_grad/mul_1Mulquantized_conv2d_2/kernel/read-gradients/quantized_conv2d_2/add_grad/Reshape*)
_class
loc:@quantized_conv2d_2/mul*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_2/mul_grad/Sum_1Sum+gradients/quantized_conv2d_2/mul_grad/mul_1=gradients/quantized_conv2d_2/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*)
_class
loc:@quantized_conv2d_2/mul*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_2/mul_grad/Reshape_1Reshape+gradients/quantized_conv2d_2/mul_grad/Sum_1-gradients/quantized_conv2d_2/mul_grad/Shape_1*)
_class
loc:@quantized_conv2d_2/mul*
T0*
_output_shapes
: *
Tshape0
�
%gradients/activation_1/add_grad/ShapeShapeactivation_1/mul*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_1/add
�
'gradients/activation_1/add_grad/Shape_1Shapeactivation_1/StopGradient*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_1/add
�
5gradients/activation_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_1/add_grad/Shape'gradients/activation_1/add_grad/Shape_1*#
_class
loc:@activation_1/add*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_1/add_grad/SumSum9gradients/activation_1/clip_by_value/Minimum_grad/Reshape5gradients/activation_1/add_grad/BroadcastGradientArgs*
_output_shapes
:*#
_class
loc:@activation_1/add*
T0*
	keep_dims( *

Tidx0
�
'gradients/activation_1/add_grad/ReshapeReshape#gradients/activation_1/add_grad/Sum%gradients/activation_1/add_grad/Shape*#
_class
loc:@activation_1/add*
T0*/
_output_shapes
:���������  @*
Tshape0
�
%gradients/activation_1/add_grad/Sum_1Sum9gradients/activation_1/clip_by_value/Minimum_grad/Reshape7gradients/activation_1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*#
_class
loc:@activation_1/add*
T0*
	keep_dims( *

Tidx0
�
)gradients/activation_1/add_grad/Reshape_1Reshape%gradients/activation_1/add_grad/Sum_1'gradients/activation_1/add_grad/Shape_1*#
_class
loc:@activation_1/add*
T0*/
_output_shapes
:���������  @*
Tshape0
�
%gradients/activation_1/mul_grad/ShapeShape batch_normalization_1/cond/Merge*
out_type0*
T0*
_output_shapes
:*#
_class
loc:@activation_1/mul
�
'gradients/activation_1/mul_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_1/mul*
valueB *
_output_shapes
: 
�
5gradients/activation_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_1/mul_grad/Shape'gradients/activation_1/mul_grad/Shape_1*#
_class
loc:@activation_1/mul*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_1/mul_grad/mulMul'gradients/activation_1/add_grad/Reshapeactivation_1/mul/y*#
_class
loc:@activation_1/mul*
T0*/
_output_shapes
:���������  @
�
#gradients/activation_1/mul_grad/SumSum#gradients/activation_1/mul_grad/mul5gradients/activation_1/mul_grad/BroadcastGradientArgs*
_output_shapes
:*#
_class
loc:@activation_1/mul*
T0*
	keep_dims( *

Tidx0
�
'gradients/activation_1/mul_grad/ReshapeReshape#gradients/activation_1/mul_grad/Sum%gradients/activation_1/mul_grad/Shape*#
_class
loc:@activation_1/mul*
T0*/
_output_shapes
:���������  @*
Tshape0
�
%gradients/activation_1/mul_grad/mul_1Mul batch_normalization_1/cond/Merge'gradients/activation_1/add_grad/Reshape*#
_class
loc:@activation_1/mul*
T0*/
_output_shapes
:���������  @
�
%gradients/activation_1/mul_grad/Sum_1Sum%gradients/activation_1/mul_grad/mul_17gradients/activation_1/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*#
_class
loc:@activation_1/mul*
T0*
	keep_dims( *

Tidx0
�
)gradients/activation_1/mul_grad/Reshape_1Reshape%gradients/activation_1/mul_grad/Sum_1'gradients/activation_1/mul_grad/Shape_1*#
_class
loc:@activation_1/mul*
T0*
_output_shapes
: *
Tshape0
�
9gradients/batch_normalization_1/cond/Merge_grad/cond_gradSwitch'gradients/activation_1/mul_grad/Reshape"batch_normalization_1/cond/pred_id*#
_class
loc:@activation_1/mul*
T0*J
_output_shapes8
6:���������  @:���������  @
�
?gradients/batch_normalization_1/cond/batchnorm/add_1_grad/ShapeShape*batch_normalization_1/cond/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1
�
Agradients/batch_normalization_1/cond/batchnorm/add_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_1/cond/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_1/cond/batchnorm/add_1_grad/ShapeAgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_1/cond/batchnorm/add_1_grad/SumSum9gradients/batch_normalization_1/cond/Merge_grad/cond_gradOgradients/batch_normalization_1/cond/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_1/cond/batchnorm/add_1_grad/ReshapeReshape=gradients/batch_normalization_1/cond/batchnorm/add_1_grad/Sum?gradients/batch_normalization_1/cond/batchnorm/add_1_grad/Shape*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*
T0*/
_output_shapes
:���������  @*
Tshape0
�
?gradients/batch_normalization_1/cond/batchnorm/add_1_grad/Sum_1Sum9gradients/batch_normalization_1/cond/Merge_grad/cond_gradQgradients/batch_normalization_1/cond/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Reshape_1Reshape?gradients/batch_normalization_1/cond/batchnorm/add_1_grad/Sum_1Agradients/batch_normalization_1/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*
T0*
_output_shapes
:@*
Tshape0
�
gradients/Switch_12Switch%batch_normalization_1/batchnorm/add_1"batch_normalization_1/cond/pred_id*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*J
_output_shapes8
6:���������  @:���������  @
�
gradients/Shape_13Shapegradients/Switch_12*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1
�
gradients/zeros_12/ConstConst*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_12Fillgradients/Shape_13gradients/zeros_12/Const*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*/
_output_shapes
:���������  @
�
<gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradMerge;gradients/batch_normalization_1/cond/Merge_grad/cond_grad:1gradients/zeros_12*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*1
_output_shapes
:���������  @: *
N
�
?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/ShapeShape1batch_normalization_1/cond/batchnorm/mul_1/Switch*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1
�
Agradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_1/cond/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/ShapeAgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/mulMulAgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Reshape(batch_normalization_1/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @
�
=gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/SumSum=gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/mulOgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_1/cond/batchnorm/mul_1_grad/ReshapeReshape=gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Sum?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Shape*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @*
Tshape0
�
?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/mul_1Mul1batch_normalization_1/cond/batchnorm/mul_1/SwitchAgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Reshape*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @
�
?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Sum_1Sum?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/mul_1Qgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Reshape_1Reshape?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Sum_1Agradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*
_output_shapes
:@*
Tshape0
�
=gradients/batch_normalization_1/cond/batchnorm/sub_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_1/cond/batchnorm/sub_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_1/cond/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_1/cond/batchnorm/sub_grad/Shape?gradients/batch_normalization_1/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_1/cond/batchnorm/sub_grad/SumSumCgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Reshape_1Mgradients/batch_normalization_1/cond/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_1/cond/batchnorm/sub_grad/ReshapeReshape;gradients/batch_normalization_1/cond/batchnorm/sub_grad/Sum=gradients/batch_normalization_1/cond/batchnorm/sub_grad/Shape*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
=gradients/batch_normalization_1/cond/batchnorm/sub_grad/Sum_1SumCgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Reshape_1Ogradients/batch_normalization_1/cond/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_1/cond/batchnorm/sub_grad/NegNeg=gradients/batch_normalization_1/cond/batchnorm/sub_grad/Sum_1*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
T0*
_output_shapes
:
�
Agradients/batch_normalization_1/cond/batchnorm/sub_grad/Reshape_1Reshape;gradients/batch_normalization_1/cond/batchnorm/sub_grad/Neg?gradients/batch_normalization_1/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
:gradients/batch_normalization_1/batchnorm/add_1_grad/ShapeShape%batch_normalization_1/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1
�
<gradients/batch_normalization_1/batchnorm/add_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_1/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_1/batchnorm/add_1_grad/Shape<gradients/batch_normalization_1/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_1/batchnorm/add_1_grad/SumSum<gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradJgradients/batch_normalization_1/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_1/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_1/batchnorm/add_1_grad/Sum:gradients/batch_normalization_1/batchnorm/add_1_grad/Shape*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*/
_output_shapes
:���������  @*
Tshape0
�
:gradients/batch_normalization_1/batchnorm/add_1_grad/Sum_1Sum<gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradLgradients/batch_normalization_1/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_1/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_1/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*
_output_shapes
:@*
Tshape0
�
gradients/Switch_13Switchquantized_conv2d_1/BiasAdd"batch_normalization_1/cond/pred_id*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
T0*J
_output_shapes8
6:���������  @:���������  @
�
gradients/Shape_14Shapegradients/Switch_13:1*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@quantized_conv2d_1/BiasAdd
�
gradients/zeros_13/ConstConst*
dtype0*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_13Fillgradients/Shape_14gradients/zeros_13/Const*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
T0*/
_output_shapes
:���������  @
�
Jgradients/batch_normalization_1/cond/batchnorm/mul_1/Switch_grad/cond_gradMergeAgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Reshapegradients/zeros_13*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
T0*1
_output_shapes
:���������  @: *
N
�
gradients/Switch_14Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id*-
_class#
!loc:@batch_normalization_1/beta*
T0* 
_output_shapes
:@:@
�
gradients/Shape_15Shapegradients/Switch_14:1*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@batch_normalization_1/beta
�
gradients/zeros_14/ConstConst*
dtype0*-
_class#
!loc:@batch_normalization_1/beta*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_14Fillgradients/Shape_15gradients/zeros_14/Const*-
_class#
!loc:@batch_normalization_1/beta*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_1/cond/batchnorm/sub/Switch_grad/cond_gradMerge?gradients/batch_normalization_1/cond/batchnorm/sub_grad/Reshapegradients/zeros_14*-
_class#
!loc:@batch_normalization_1/beta*
T0*
_output_shapes

:@: *
N
�
?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/ShapeConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Agradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_1/cond/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/ShapeAgradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/mulMulAgradients/batch_normalization_1/cond/batchnorm/sub_grad/Reshape_1(batch_normalization_1/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/SumSum=gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/mulOgradients/batch_normalization_1/cond/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_1/cond/batchnorm/mul_2_grad/ReshapeReshape=gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Sum?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Shape*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/mul_1Mul1batch_normalization_1/cond/batchnorm/mul_2/SwitchAgradients/batch_normalization_1/cond/batchnorm/sub_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Sum_1Sum?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/mul_1Qgradients/batch_normalization_1/cond/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
Cgradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Reshape_1Reshape?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Sum_1Agradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
:gradients/batch_normalization_1/batchnorm/mul_1_grad/ShapeShapequantized_conv2d_1/BiasAdd*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1
�
<gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_1/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_1/batchnorm/mul_1_grad/mulMul<gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape#batch_normalization_1/batchnorm/mul*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @
�
8gradients/batch_normalization_1/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_1/batchnorm/mul_1_grad/mulJgradients/batch_normalization_1/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_1/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_1/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @*
Tshape0
�
:gradients/batch_normalization_1/batchnorm/mul_1_grad/mul_1Mulquantized_conv2d_1/BiasAdd<gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @
�
:gradients/batch_normalization_1/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_1/batchnorm/mul_1_grad/mul_1Lgradients/batch_normalization_1/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_1/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_1/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_1/batchnorm/sub_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_1/batchnorm/sub_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_1/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_1/batchnorm/sub_grad/Shape:gradients/batch_normalization_1/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_1/batchnorm/sub_grad/SumSum>gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape_1Hgradients/batch_normalization_1/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_1/batchnorm/sub_grad/ReshapeReshape6gradients/batch_normalization_1/batchnorm/sub_grad/Sum8gradients/batch_normalization_1/batchnorm/sub_grad/Shape*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_1/batchnorm/sub_grad/Sum_1Sum>gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape_1Jgradients/batch_normalization_1/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
T0*
	keep_dims( *

Tidx0
�
6gradients/batch_normalization_1/batchnorm/sub_grad/NegNeg8gradients/batch_normalization_1/batchnorm/sub_grad/Sum_1*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
T0*
_output_shapes
:
�
<gradients/batch_normalization_1/batchnorm/sub_grad/Reshape_1Reshape6gradients/batch_normalization_1/batchnorm/sub_grad/Neg:gradients/batch_normalization_1/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
T0*
_output_shapes
:@*
Tshape0
�
gradients/AddN_21AddNCgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Reshape_1Cgradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*
_output_shapes
:@*
N
�
=gradients/batch_normalization_1/cond/batchnorm/mul_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_1/cond/batchnorm/mul_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_1/cond/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_1/cond/batchnorm/mul_grad/Shape?gradients/batch_normalization_1/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_1/cond/batchnorm/mul_grad/mulMulgradients/AddN_21/batch_normalization_1/cond/batchnorm/mul/Switch*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
;gradients/batch_normalization_1/cond/batchnorm/mul_grad/SumSum;gradients/batch_normalization_1/cond/batchnorm/mul_grad/mulMgradients/batch_normalization_1/cond/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_1/cond/batchnorm/mul_grad/ReshapeReshape;gradients/batch_normalization_1/cond/batchnorm/mul_grad/Sum=gradients/batch_normalization_1/cond/batchnorm/mul_grad/Shape*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
=gradients/batch_normalization_1/cond/batchnorm/mul_grad/mul_1Mul*batch_normalization_1/cond/batchnorm/Rsqrtgradients/AddN_21*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_1/cond/batchnorm/mul_grad/Sum_1Sum=gradients/batch_normalization_1/cond/batchnorm/mul_grad/mul_1Ogradients/batch_normalization_1/cond/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_1/cond/batchnorm/mul_grad/Reshape_1Reshape=gradients/batch_normalization_1/cond/batchnorm/mul_grad/Sum_1?gradients/batch_normalization_1/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
gradients/AddN_22AddNHgradients/batch_normalization_1/cond/batchnorm/sub/Switch_grad/cond_grad:gradients/batch_normalization_1/batchnorm/sub_grad/Reshape*-
_class#
!loc:@batch_normalization_1/beta*
T0*
_output_shapes
:@*
N
�
:gradients/batch_normalization_1/batchnorm/mul_2_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
<gradients/batch_normalization_1/batchnorm/mul_2_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_1/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_1/batchnorm/mul_2_grad/Shape<gradients/batch_normalization_1/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_1/batchnorm/mul_2_grad/mulMul<gradients/batch_normalization_1/batchnorm/sub_grad/Reshape_1#batch_normalization_1/batchnorm/mul*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_1/batchnorm/mul_2_grad/SumSum8gradients/batch_normalization_1/batchnorm/mul_2_grad/mulJgradients/batch_normalization_1/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_1/batchnorm/mul_2_grad/ReshapeReshape8gradients/batch_normalization_1/batchnorm/mul_2_grad/Sum:gradients/batch_normalization_1/batchnorm/mul_2_grad/Shape*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
:gradients/batch_normalization_1/batchnorm/mul_2_grad/mul_1Mul%batch_normalization_1/moments/Squeeze<gradients/batch_normalization_1/batchnorm/sub_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_1/batchnorm/mul_2_grad/Sum_1Sum:gradients/batch_normalization_1/batchnorm/mul_2_grad/mul_1Lgradients/batch_normalization_1/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_1/batchnorm/mul_2_grad/Reshape_1Reshape:gradients/batch_normalization_1/batchnorm/mul_2_grad/Sum_1<gradients/batch_normalization_1/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:@*
Tshape0
�
gradients/Switch_15Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id*.
_class$
" loc:@batch_normalization_1/gamma*
T0* 
_output_shapes
:@:@
�
gradients/Shape_16Shapegradients/Switch_15:1*
out_type0*
T0*
_output_shapes
:*.
_class$
" loc:@batch_normalization_1/gamma
�
gradients/zeros_15/ConstConst*
dtype0*.
_class$
" loc:@batch_normalization_1/gamma*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_15Fillgradients/Shape_16gradients/zeros_15/Const*.
_class$
" loc:@batch_normalization_1/gamma*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_1/cond/batchnorm/mul/Switch_grad/cond_gradMergeAgradients/batch_normalization_1/cond/batchnorm/mul_grad/Reshape_1gradients/zeros_15*.
_class$
" loc:@batch_normalization_1/gamma*
T0*
_output_shapes

:@: *
N
�
:gradients/batch_normalization_1/moments/Squeeze_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_1/moments/Squeeze*%
valueB"         @   *
_output_shapes
:
�
<gradients/batch_normalization_1/moments/Squeeze_grad/ReshapeReshape<gradients/batch_normalization_1/batchnorm/mul_2_grad/Reshape:gradients/batch_normalization_1/moments/Squeeze_grad/Shape*8
_class.
,*loc:@batch_normalization_1/moments/Squeeze*
T0*&
_output_shapes
:@*
Tshape0
�
gradients/AddN_23AddN>gradients/batch_normalization_1/batchnorm/mul_1_grad/Reshape_1>gradients/batch_normalization_1/batchnorm/mul_2_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*
_output_shapes
:@*
N
�
8gradients/batch_normalization_1/batchnorm/mul_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_1/batchnorm/mul_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_1/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_1/batchnorm/mul_grad/Shape:gradients/batch_normalization_1/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_1/batchnorm/mul_grad/mulMulgradients/AddN_23 batch_normalization_1/gamma/read*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:@
�
6gradients/batch_normalization_1/batchnorm/mul_grad/SumSum6gradients/batch_normalization_1/batchnorm/mul_grad/mulHgradients/batch_normalization_1/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_1/batchnorm/mul_grad/ReshapeReshape6gradients/batch_normalization_1/batchnorm/mul_grad/Sum8gradients/batch_normalization_1/batchnorm/mul_grad/Shape*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_1/batchnorm/mul_grad/mul_1Mul%batch_normalization_1/batchnorm/Rsqrtgradients/AddN_23*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_1/batchnorm/mul_grad/Sum_1Sum8gradients/batch_normalization_1/batchnorm/mul_grad/mul_1Jgradients/batch_normalization_1/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_1/batchnorm/mul_grad/Reshape_1Reshape8gradients/batch_normalization_1/batchnorm/mul_grad/Sum_1:gradients/batch_normalization_1/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:@*
Tshape0
�
7gradients/batch_normalization_1/moments/mean_grad/ShapeConst*
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_1/moments/mean_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean*%
valueB"         @   *
_output_shapes
:
�
Ggradients/batch_normalization_1/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/batch_normalization_1/moments/mean_grad/Shape9gradients/batch_normalization_1/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*2
_output_shapes 
:���������:���������
�
5gradients/batch_normalization_1/moments/mean_grad/SumSum<gradients/batch_normalization_1/moments/Squeeze_grad/ReshapeGgradients/batch_normalization_1/moments/mean_grad/BroadcastGradientArgs*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*
	keep_dims( *

Tidx0
�
9gradients/batch_normalization_1/moments/mean_grad/ReshapeReshape5gradients/batch_normalization_1/moments/mean_grad/Sum7gradients/batch_normalization_1/moments/mean_grad/Shape*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*&
_output_shapes
:@*
Tshape0
�
7gradients/batch_normalization_1/moments/mean_grad/Sum_1Sum<gradients/batch_normalization_1/moments/Squeeze_grad/ReshapeIgradients/batch_normalization_1/moments/mean_grad/BroadcastGradientArgs:1*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_1/moments/mean_grad/Reshape_1Reshape7gradients/batch_normalization_1/moments/mean_grad/Sum_19gradients/batch_normalization_1/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*&
_output_shapes
:@*
Tshape0
�
>gradients/batch_normalization_1/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad%batch_normalization_1/batchnorm/Rsqrt:gradients/batch_normalization_1/batchnorm/mul_grad/Reshape*8
_class.
,*loc:@batch_normalization_1/batchnorm/Rsqrt*
T0*
_output_shapes
:@
�
gradients/AddN_24AddNHgradients/batch_normalization_1/cond/batchnorm/mul/Switch_grad/cond_grad<gradients/batch_normalization_1/batchnorm/mul_grad/Reshape_1*.
_class$
" loc:@batch_normalization_1/gamma*
T0*
_output_shapes
:@*
N
�
8gradients/batch_normalization_1/batchnorm/add_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_1/batchnorm/add_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
valueB *
_output_shapes
: 
�
Hgradients/batch_normalization_1/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_1/batchnorm/add_grad/Shape:gradients/batch_normalization_1/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_1/batchnorm/add_grad/SumSum>gradients/batch_normalization_1/batchnorm/Rsqrt_grad/RsqrtGradHgradients/batch_normalization_1/batchnorm/add_grad/BroadcastGradientArgs*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
T0*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_1/batchnorm/add_grad/ReshapeReshape6gradients/batch_normalization_1/batchnorm/add_grad/Sum8gradients/batch_normalization_1/batchnorm/add_grad/Shape*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:@*
Tshape0
�
8gradients/batch_normalization_1/batchnorm/add_grad/Sum_1Sum>gradients/batch_normalization_1/batchnorm/Rsqrt_grad/RsqrtGradJgradients/batch_normalization_1/batchnorm/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
T0*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization_1/batchnorm/add_grad/Reshape_1Reshape8gradients/batch_normalization_1/batchnorm/add_grad/Sum_1:gradients/batch_normalization_1/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
T0*
_output_shapes
: *
Tshape0
�
<gradients/batch_normalization_1/moments/Squeeze_1_grad/ShapeConst*
dtype0*:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1*%
valueB"         @   *
_output_shapes
:
�
>gradients/batch_normalization_1/moments/Squeeze_1_grad/ReshapeReshape:gradients/batch_normalization_1/batchnorm/add_grad/Reshape<gradients/batch_normalization_1/moments/Squeeze_1_grad/Shape*:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1*
T0*&
_output_shapes
:@*
Tshape0
�
;gradients/batch_normalization_1/moments/variance_grad/ShapeConst*
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance*%
valueB"         @   *
_output_shapes
:
�
=gradients/batch_normalization_1/moments/variance_grad/Shape_1Const*
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance*%
valueB"         @   *
_output_shapes
:
�
Kgradients/batch_normalization_1/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients/batch_normalization_1/moments/variance_grad/Shape=gradients/batch_normalization_1/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_1/moments/variance*
T0*2
_output_shapes 
:���������:���������
�
9gradients/batch_normalization_1/moments/variance_grad/SumSum>gradients/batch_normalization_1/moments/Squeeze_1_grad/ReshapeKgradients/batch_normalization_1/moments/variance_grad/BroadcastGradientArgs*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_1/moments/variance*
T0*
	keep_dims( *

Tidx0
�
=gradients/batch_normalization_1/moments/variance_grad/ReshapeReshape9gradients/batch_normalization_1/moments/variance_grad/Sum;gradients/batch_normalization_1/moments/variance_grad/Shape*9
_class/
-+loc:@batch_normalization_1/moments/variance*
T0*&
_output_shapes
:@*
Tshape0
�
;gradients/batch_normalization_1/moments/variance_grad/Sum_1Sum>gradients/batch_normalization_1/moments/Squeeze_1_grad/ReshapeMgradients/batch_normalization_1/moments/variance_grad/BroadcastGradientArgs:1*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_1/moments/variance*
T0*
	keep_dims( *

Tidx0
�
9gradients/batch_normalization_1/moments/variance_grad/NegNeg;gradients/batch_normalization_1/moments/variance_grad/Sum_1*9
_class/
-+loc:@batch_normalization_1/moments/variance*
T0*
_output_shapes
:
�
?gradients/batch_normalization_1/moments/variance_grad/Reshape_1Reshape9gradients/batch_normalization_1/moments/variance_grad/Neg=gradients/batch_normalization_1/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_1/moments/variance*
T0*&
_output_shapes
:@*
Tshape0
�
9gradients/batch_normalization_1/moments/Mean_1_grad/ShapeShape/batch_normalization_1/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1
�
8gradients/batch_normalization_1/moments/Mean_1_grad/SizeConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B :*
_output_shapes
: 
�
7gradients/batch_normalization_1/moments/Mean_1_grad/addAdd6batch_normalization_1/moments/Mean_1/reduction_indices8gradients/batch_normalization_1/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
:
�
7gradients/batch_normalization_1/moments/Mean_1_grad/modFloorMod7gradients/batch_normalization_1/moments/Mean_1_grad/add8gradients/batch_normalization_1/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
valueB:*
_output_shapes
:
�
?gradients/batch_normalization_1/moments/Mean_1_grad/range/startConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B : *
_output_shapes
: 
�
?gradients/batch_normalization_1/moments/Mean_1_grad/range/deltaConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B :*
_output_shapes
: 
�
9gradients/batch_normalization_1/moments/Mean_1_grad/rangeRange?gradients/batch_normalization_1/moments/Mean_1_grad/range/start8gradients/batch_normalization_1/moments/Mean_1_grad/Size?gradients/batch_normalization_1/moments/Mean_1_grad/range/delta*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*

Tidx0*
_output_shapes
:
�
>gradients/batch_normalization_1/moments/Mean_1_grad/Fill/valueConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B :*
_output_shapes
: 
�
8gradients/batch_normalization_1/moments/Mean_1_grad/FillFill;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_1>gradients/batch_normalization_1/moments/Mean_1_grad/Fill/value*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
:
�
Agradients/batch_normalization_1/moments/Mean_1_grad/DynamicStitchDynamicStitch9gradients/batch_normalization_1/moments/Mean_1_grad/range7gradients/batch_normalization_1/moments/Mean_1_grad/mod9gradients/batch_normalization_1/moments/Mean_1_grad/Shape8gradients/batch_normalization_1/moments/Mean_1_grad/Fill*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*#
_output_shapes
:���������*
N
�
=gradients/batch_normalization_1/moments/Mean_1_grad/Maximum/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B :*
_output_shapes
: 
�
;gradients/batch_normalization_1/moments/Mean_1_grad/MaximumMaximumAgradients/batch_normalization_1/moments/Mean_1_grad/DynamicStitch=gradients/batch_normalization_1/moments/Mean_1_grad/Maximum/y*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*#
_output_shapes
:���������
�
<gradients/batch_normalization_1/moments/Mean_1_grad/floordivFloorDiv9gradients/batch_normalization_1/moments/Mean_1_grad/Shape;gradients/batch_normalization_1/moments/Mean_1_grad/Maximum*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_1/moments/Mean_1_grad/ReshapeReshape=gradients/batch_normalization_1/moments/variance_grad/ReshapeAgradients/batch_normalization_1/moments/Mean_1_grad/DynamicStitch*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
:*
Tshape0
�
8gradients/batch_normalization_1/moments/Mean_1_grad/TileTile;gradients/batch_normalization_1/moments/Mean_1_grad/Reshape<gradients/batch_normalization_1/moments/Mean_1_grad/floordiv*

Tmultiples0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*J
_output_shapes8
6:4������������������������������������
�
;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_2Shape/batch_normalization_1/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1
�
;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_3Const*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_1/moments/Mean_1_grad/ConstConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
valueB: *
_output_shapes
:
�
8gradients/batch_normalization_1/moments/Mean_1_grad/ProdProd;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_29gradients/batch_normalization_1/moments/Mean_1_grad/Const*
_output_shapes
: *7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
	keep_dims( *

Tidx0
�
;gradients/batch_normalization_1/moments/Mean_1_grad/Const_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
valueB: *
_output_shapes
:
�
:gradients/batch_normalization_1/moments/Mean_1_grad/Prod_1Prod;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_3;gradients/batch_normalization_1/moments/Mean_1_grad/Const_1*
_output_shapes
: *7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
	keep_dims( *

Tidx0
�
?gradients/batch_normalization_1/moments/Mean_1_grad/Maximum_1/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_1/moments/Mean_1_grad/Maximum_1Maximum:gradients/batch_normalization_1/moments/Mean_1_grad/Prod_1?gradients/batch_normalization_1/moments/Mean_1_grad/Maximum_1/y*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_1/moments/Mean_1_grad/floordiv_1FloorDiv8gradients/batch_normalization_1/moments/Mean_1_grad/Prod=gradients/batch_normalization_1/moments/Mean_1_grad/Maximum_1*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
: 
�
8gradients/batch_normalization_1/moments/Mean_1_grad/CastCast>gradients/batch_normalization_1/moments/Mean_1_grad/floordiv_1*

DstT0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*

SrcT0*
_output_shapes
: 
�
;gradients/batch_normalization_1/moments/Mean_1_grad/truedivRealDiv8gradients/batch_normalization_1/moments/Mean_1_grad/Tile8gradients/batch_normalization_1/moments/Mean_1_grad/Cast*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*/
_output_shapes
:���������  @
�
9gradients/batch_normalization_1/moments/Square_grad/mul/xConst@^gradients/batch_normalization_1/moments/variance_grad/Reshape_1*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Square*
valueB
 *   @*
_output_shapes
: 
�
7gradients/batch_normalization_1/moments/Square_grad/mulMul9gradients/batch_normalization_1/moments/Square_grad/mul/x*batch_normalization_1/moments/shifted_mean*7
_class-
+)loc:@batch_normalization_1/moments/Square*
T0*&
_output_shapes
:@
�
9gradients/batch_normalization_1/moments/Square_grad/mul_1Mul?gradients/batch_normalization_1/moments/variance_grad/Reshape_17gradients/batch_normalization_1/moments/Square_grad/mul*7
_class-
+)loc:@batch_normalization_1/moments/Square*
T0*&
_output_shapes
:@
�
Dgradients/batch_normalization_1/moments/SquaredDifference_grad/ShapeShapequantized_conv2d_1/BiasAdd*
out_type0*
T0*
_output_shapes
:*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference
�
Fgradients/batch_normalization_1/moments/SquaredDifference_grad/Shape_1Const*
dtype0*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*%
valueB"         @   *
_output_shapes
:
�
Tgradients/batch_normalization_1/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/batch_normalization_1/moments/SquaredDifference_grad/ShapeFgradients/batch_normalization_1/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*2
_output_shapes 
:���������:���������
�
Egradients/batch_normalization_1/moments/SquaredDifference_grad/scalarConst<^gradients/batch_normalization_1/moments/Mean_1_grad/truediv*
dtype0*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
valueB
 *   @*
_output_shapes
: 
�
Bgradients/batch_normalization_1/moments/SquaredDifference_grad/mulMulEgradients/batch_normalization_1/moments/SquaredDifference_grad/scalar;gradients/batch_normalization_1/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*/
_output_shapes
:���������  @
�
Bgradients/batch_normalization_1/moments/SquaredDifference_grad/subSubquantized_conv2d_1/BiasAdd*batch_normalization_1/moments/StopGradient<^gradients/batch_normalization_1/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*/
_output_shapes
:���������  @
�
Dgradients/batch_normalization_1/moments/SquaredDifference_grad/mul_1MulBgradients/batch_normalization_1/moments/SquaredDifference_grad/mulBgradients/batch_normalization_1/moments/SquaredDifference_grad/sub*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*/
_output_shapes
:���������  @
�
Bgradients/batch_normalization_1/moments/SquaredDifference_grad/SumSumDgradients/batch_normalization_1/moments/SquaredDifference_grad/mul_1Tgradients/batch_normalization_1/moments/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes
:*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*
	keep_dims( *

Tidx0
�
Fgradients/batch_normalization_1/moments/SquaredDifference_grad/ReshapeReshapeBgradients/batch_normalization_1/moments/SquaredDifference_grad/SumDgradients/batch_normalization_1/moments/SquaredDifference_grad/Shape*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*/
_output_shapes
:���������  @*
Tshape0
�
Dgradients/batch_normalization_1/moments/SquaredDifference_grad/Sum_1SumDgradients/batch_normalization_1/moments/SquaredDifference_grad/mul_1Vgradients/batch_normalization_1/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*
	keep_dims( *

Tidx0
�
Hgradients/batch_normalization_1/moments/SquaredDifference_grad/Reshape_1ReshapeDgradients/batch_normalization_1/moments/SquaredDifference_grad/Sum_1Fgradients/batch_normalization_1/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*&
_output_shapes
:@*
Tshape0
�
Bgradients/batch_normalization_1/moments/SquaredDifference_grad/NegNegHgradients/batch_normalization_1/moments/SquaredDifference_grad/Reshape_1*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*&
_output_shapes
:@
�
gradients/AddN_25AddN9gradients/batch_normalization_1/moments/mean_grad/Reshape9gradients/batch_normalization_1/moments/Square_grad/mul_1*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*&
_output_shapes
:@*
N
�
?gradients/batch_normalization_1/moments/shifted_mean_grad/ShapeShape!batch_normalization_1/moments/Sub*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean
�
>gradients/batch_normalization_1/moments/shifted_mean_grad/SizeConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_1/moments/shifted_mean_grad/addAdd<batch_normalization_1/moments/shifted_mean/reduction_indices>gradients/batch_normalization_1/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
:
�
=gradients/batch_normalization_1/moments/shifted_mean_grad/modFloorMod=gradients/batch_normalization_1/moments/shifted_mean_grad/add>gradients/batch_normalization_1/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
valueB:*
_output_shapes
:
�
Egradients/batch_normalization_1/moments/shifted_mean_grad/range/startConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B : *
_output_shapes
: 
�
Egradients/batch_normalization_1/moments/shifted_mean_grad/range/deltaConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
?gradients/batch_normalization_1/moments/shifted_mean_grad/rangeRangeEgradients/batch_normalization_1/moments/shifted_mean_grad/range/start>gradients/batch_normalization_1/moments/shifted_mean_grad/SizeEgradients/batch_normalization_1/moments/shifted_mean_grad/range/delta*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*

Tidx0*
_output_shapes
:
�
Dgradients/batch_normalization_1/moments/shifted_mean_grad/Fill/valueConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
>gradients/batch_normalization_1/moments/shifted_mean_grad/FillFillAgradients/batch_normalization_1/moments/shifted_mean_grad/Shape_1Dgradients/batch_normalization_1/moments/shifted_mean_grad/Fill/value*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
:
�
Ggradients/batch_normalization_1/moments/shifted_mean_grad/DynamicStitchDynamicStitch?gradients/batch_normalization_1/moments/shifted_mean_grad/range=gradients/batch_normalization_1/moments/shifted_mean_grad/mod?gradients/batch_normalization_1/moments/shifted_mean_grad/Shape>gradients/batch_normalization_1/moments/shifted_mean_grad/Fill*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*#
_output_shapes
:���������*
N
�
Cgradients/batch_normalization_1/moments/shifted_mean_grad/Maximum/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/MaximumMaximumGgradients/batch_normalization_1/moments/shifted_mean_grad/DynamicStitchCgradients/batch_normalization_1/moments/shifted_mean_grad/Maximum/y*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Bgradients/batch_normalization_1/moments/shifted_mean_grad/floordivFloorDiv?gradients/batch_normalization_1/moments/shifted_mean_grad/ShapeAgradients/batch_normalization_1/moments/shifted_mean_grad/Maximum*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_25Ggradients/batch_normalization_1/moments/shifted_mean_grad/DynamicStitch*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
:*
Tshape0
�
>gradients/batch_normalization_1/moments/shifted_mean_grad/TileTileAgradients/batch_normalization_1/moments/shifted_mean_grad/ReshapeBgradients/batch_normalization_1/moments/shifted_mean_grad/floordiv*

Tmultiples0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*J
_output_shapes8
6:4������������������������������������
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/Shape_2Shape!batch_normalization_1/moments/Sub*
out_type0*
T0*
_output_shapes
:*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/Shape_3Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*%
valueB"         @   *
_output_shapes
:
�
?gradients/batch_normalization_1/moments/shifted_mean_grad/ConstConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
valueB: *
_output_shapes
:
�
>gradients/batch_normalization_1/moments/shifted_mean_grad/ProdProdAgradients/batch_normalization_1/moments/shifted_mean_grad/Shape_2?gradients/batch_normalization_1/moments/shifted_mean_grad/Const*
_output_shapes
: *=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
	keep_dims( *

Tidx0
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/Const_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
valueB: *
_output_shapes
:
�
@gradients/batch_normalization_1/moments/shifted_mean_grad/Prod_1ProdAgradients/batch_normalization_1/moments/shifted_mean_grad/Shape_3Agradients/batch_normalization_1/moments/shifted_mean_grad/Const_1*
_output_shapes
: *=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
	keep_dims( *

Tidx0
�
Egradients/batch_normalization_1/moments/shifted_mean_grad/Maximum_1/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Cgradients/batch_normalization_1/moments/shifted_mean_grad/Maximum_1Maximum@gradients/batch_normalization_1/moments/shifted_mean_grad/Prod_1Egradients/batch_normalization_1/moments/shifted_mean_grad/Maximum_1/y*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
: 
�
Dgradients/batch_normalization_1/moments/shifted_mean_grad/floordiv_1FloorDiv>gradients/batch_normalization_1/moments/shifted_mean_grad/ProdCgradients/batch_normalization_1/moments/shifted_mean_grad/Maximum_1*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_1/moments/shifted_mean_grad/CastCastDgradients/batch_normalization_1/moments/shifted_mean_grad/floordiv_1*

DstT0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*

SrcT0*
_output_shapes
: 
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/truedivRealDiv>gradients/batch_normalization_1/moments/shifted_mean_grad/Tile>gradients/batch_normalization_1/moments/shifted_mean_grad/Cast*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*/
_output_shapes
:���������  @
�
6gradients/batch_normalization_1/moments/Sub_grad/ShapeShapequantized_conv2d_1/BiasAdd*
out_type0*
T0*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_1/moments/Sub
�
8gradients/batch_normalization_1/moments/Sub_grad/Shape_1Const*
dtype0*4
_class*
(&loc:@batch_normalization_1/moments/Sub*%
valueB"         @   *
_output_shapes
:
�
Fgradients/batch_normalization_1/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/batch_normalization_1/moments/Sub_grad/Shape8gradients/batch_normalization_1/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_1/moments/Sub*
T0*2
_output_shapes 
:���������:���������
�
4gradients/batch_normalization_1/moments/Sub_grad/SumSumAgradients/batch_normalization_1/moments/shifted_mean_grad/truedivFgradients/batch_normalization_1/moments/Sub_grad/BroadcastGradientArgs*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_1/moments/Sub*
T0*
	keep_dims( *

Tidx0
�
8gradients/batch_normalization_1/moments/Sub_grad/ReshapeReshape4gradients/batch_normalization_1/moments/Sub_grad/Sum6gradients/batch_normalization_1/moments/Sub_grad/Shape*4
_class*
(&loc:@batch_normalization_1/moments/Sub*
T0*/
_output_shapes
:���������  @*
Tshape0
�
6gradients/batch_normalization_1/moments/Sub_grad/Sum_1SumAgradients/batch_normalization_1/moments/shifted_mean_grad/truedivHgradients/batch_normalization_1/moments/Sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_1/moments/Sub*
T0*
	keep_dims( *

Tidx0
�
4gradients/batch_normalization_1/moments/Sub_grad/NegNeg6gradients/batch_normalization_1/moments/Sub_grad/Sum_1*4
_class*
(&loc:@batch_normalization_1/moments/Sub*
T0*
_output_shapes
:
�
:gradients/batch_normalization_1/moments/Sub_grad/Reshape_1Reshape4gradients/batch_normalization_1/moments/Sub_grad/Neg8gradients/batch_normalization_1/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_1/moments/Sub*
T0*&
_output_shapes
:@*
Tshape0
�
gradients/AddN_26AddN;gradients/batch_normalization_1/moments/mean_grad/Reshape_1Bgradients/batch_normalization_1/moments/SquaredDifference_grad/Neg:gradients/batch_normalization_1/moments/Sub_grad/Reshape_1*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*&
_output_shapes
:@*
N
�
gradients/AddN_27AddNJgradients/batch_normalization_1/cond/batchnorm/mul_1/Switch_grad/cond_grad<gradients/batch_normalization_1/batchnorm/mul_1_grad/ReshapeFgradients/batch_normalization_1/moments/SquaredDifference_grad/Reshape8gradients/batch_normalization_1/moments/Sub_grad/Reshape*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
T0*/
_output_shapes
:���������  @*
N
�
5gradients/quantized_conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_27*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
T0*
_output_shapes
:@*
data_formatNHWC
�
-gradients/quantized_conv2d_1/mul_4_grad/ShapeShapequantized_conv2d_1/sub_2*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_1/mul_4
�
/gradients/quantized_conv2d_1/mul_4_grad/Shape_1Const*
dtype0*+
_class!
loc:@quantized_conv2d_1/mul_4*
valueB *
_output_shapes
: 
�
=gradients/quantized_conv2d_1/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_1/mul_4_grad/Shape/gradients/quantized_conv2d_1/mul_4_grad/Shape_1*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_1/mul_4_grad/mulMulgradients/AddN_27quantized_conv2d_1/mul_4/y*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*/
_output_shapes
:���������  @
�
+gradients/quantized_conv2d_1/mul_4_grad/SumSum+gradients/quantized_conv2d_1/mul_4_grad/mul=gradients/quantized_conv2d_1/mul_4_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_1/mul_4_grad/ReshapeReshape+gradients/quantized_conv2d_1/mul_4_grad/Sum-gradients/quantized_conv2d_1/mul_4_grad/Shape*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*/
_output_shapes
:���������  @*
Tshape0
�
-gradients/quantized_conv2d_1/mul_4_grad/mul_1Mulquantized_conv2d_1/sub_2gradients/AddN_27*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*/
_output_shapes
:���������  @
�
-gradients/quantized_conv2d_1/mul_4_grad/Sum_1Sum-gradients/quantized_conv2d_1/mul_4_grad/mul_1?gradients/quantized_conv2d_1/mul_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*
	keep_dims( *

Tidx0
�
1gradients/quantized_conv2d_1/mul_4_grad/Reshape_1Reshape-gradients/quantized_conv2d_1/mul_4_grad/Sum_1/gradients/quantized_conv2d_1/mul_4_grad/Shape_1*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_1/sub_2_grad/ShapeShapequantized_conv2d_1/convolution*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_1/sub_2
�
/gradients/quantized_conv2d_1/sub_2_grad/Shape_1Shapequantized_conv2d_1/mul_3*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_1/sub_2
�
=gradients/quantized_conv2d_1/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_1/sub_2_grad/Shape/gradients/quantized_conv2d_1/sub_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_1/sub_2*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_1/sub_2_grad/SumSum/gradients/quantized_conv2d_1/mul_4_grad/Reshape=gradients/quantized_conv2d_1/sub_2_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_1/sub_2*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_1/sub_2_grad/ReshapeReshape+gradients/quantized_conv2d_1/sub_2_grad/Sum-gradients/quantized_conv2d_1/sub_2_grad/Shape*+
_class!
loc:@quantized_conv2d_1/sub_2*
T0*/
_output_shapes
:���������  @*
Tshape0
�
-gradients/quantized_conv2d_1/sub_2_grad/Sum_1Sum/gradients/quantized_conv2d_1/mul_4_grad/Reshape?gradients/quantized_conv2d_1/sub_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_1/sub_2*
T0*
	keep_dims( *

Tidx0
�
+gradients/quantized_conv2d_1/sub_2_grad/NegNeg-gradients/quantized_conv2d_1/sub_2_grad/Sum_1*+
_class!
loc:@quantized_conv2d_1/sub_2*
T0*
_output_shapes
:
�
1gradients/quantized_conv2d_1/sub_2_grad/Reshape_1Reshape+gradients/quantized_conv2d_1/sub_2_grad/Neg/gradients/quantized_conv2d_1/sub_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_1/sub_2*
T0*/
_output_shapes
:���������  @*
Tshape0
�
-gradients/quantized_conv2d_1/mul_3_grad/ShapeConst*
dtype0*+
_class!
loc:@quantized_conv2d_1/mul_3*
valueB *
_output_shapes
: 
�
/gradients/quantized_conv2d_1/mul_3_grad/Shape_1Shape!quantized_conv2d_1/StopGradient_2*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_1/mul_3
�
=gradients/quantized_conv2d_1/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_1/mul_3_grad/Shape/gradients/quantized_conv2d_1/mul_3_grad/Shape_1*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_1/mul_3_grad/mulMul1gradients/quantized_conv2d_1/sub_2_grad/Reshape_1!quantized_conv2d_1/StopGradient_2*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*/
_output_shapes
:���������  @
�
+gradients/quantized_conv2d_1/mul_3_grad/SumSum+gradients/quantized_conv2d_1/mul_3_grad/mul=gradients/quantized_conv2d_1/mul_3_grad/BroadcastGradientArgs*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_1/mul_3_grad/ReshapeReshape+gradients/quantized_conv2d_1/mul_3_grad/Sum-gradients/quantized_conv2d_1/mul_3_grad/Shape*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*
_output_shapes
: *
Tshape0
�
-gradients/quantized_conv2d_1/mul_3_grad/mul_1Mulquantized_conv2d_1/mul_3/x1gradients/quantized_conv2d_1/sub_2_grad/Reshape_1*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*/
_output_shapes
:���������  @
�
-gradients/quantized_conv2d_1/mul_3_grad/Sum_1Sum-gradients/quantized_conv2d_1/mul_3_grad/mul_1?gradients/quantized_conv2d_1/mul_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*
	keep_dims( *

Tidx0
�
1gradients/quantized_conv2d_1/mul_3_grad/Reshape_1Reshape-gradients/quantized_conv2d_1/mul_3_grad/Sum_1/gradients/quantized_conv2d_1/mul_3_grad/Shape_1*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*/
_output_shapes
:���������  @*
Tshape0
�
3gradients/quantized_conv2d_1/convolution_grad/ShapeShapequantized_conv2d_1/mul_2*
out_type0*
T0*
_output_shapes
:*1
_class'
%#loc:@quantized_conv2d_1/convolution
�
Agradients/quantized_conv2d_1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput3gradients/quantized_conv2d_1/convolution_grad/Shapequantized_conv2d_1/div/gradients/quantized_conv2d_1/sub_2_grad/Reshape*/
_output_shapes
:���������  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_1/convolution
�
5gradients/quantized_conv2d_1/convolution_grad/Shape_1Const*
dtype0*1
_class'
%#loc:@quantized_conv2d_1/convolution*%
valueB"         @   *
_output_shapes
:
�
Bgradients/quantized_conv2d_1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterquantized_conv2d_1/mul_25gradients/quantized_conv2d_1/convolution_grad/Shape_1/gradients/quantized_conv2d_1/sub_2_grad/Reshape*&
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_1/convolution
�
+gradients/quantized_conv2d_1/div_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_1/div*%
valueB"         @   *
_output_shapes
:
�
-gradients/quantized_conv2d_1/div_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_1/div*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_1/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_1/div_grad/Shape-gradients/quantized_conv2d_1/div_grad/Shape_1*)
_class
loc:@quantized_conv2d_1/div*
T0*2
_output_shapes 
:���������:���������
�
-gradients/quantized_conv2d_1/div_grad/RealDivRealDivBgradients/quantized_conv2d_1/convolution_grad/Conv2DBackpropFilterquantized_conv2d_1/div/y*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@
�
)gradients/quantized_conv2d_1/div_grad/SumSum-gradients/quantized_conv2d_1/div_grad/RealDiv;gradients/quantized_conv2d_1/div_grad/BroadcastGradientArgs*
_output_shapes
:*)
_class
loc:@quantized_conv2d_1/div*
T0*
	keep_dims( *

Tidx0
�
-gradients/quantized_conv2d_1/div_grad/ReshapeReshape)gradients/quantized_conv2d_1/div_grad/Sum+gradients/quantized_conv2d_1/div_grad/Shape*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@*
Tshape0
�
)gradients/quantized_conv2d_1/div_grad/NegNeg quantized_conv2d_1/clip_by_value*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@
�
/gradients/quantized_conv2d_1/div_grad/RealDiv_1RealDiv)gradients/quantized_conv2d_1/div_grad/Negquantized_conv2d_1/div/y*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@
�
/gradients/quantized_conv2d_1/div_grad/RealDiv_2RealDiv/gradients/quantized_conv2d_1/div_grad/RealDiv_1quantized_conv2d_1/div/y*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@
�
)gradients/quantized_conv2d_1/div_grad/mulMulBgradients/quantized_conv2d_1/convolution_grad/Conv2DBackpropFilter/gradients/quantized_conv2d_1/div_grad/RealDiv_2*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@
�
+gradients/quantized_conv2d_1/div_grad/Sum_1Sum)gradients/quantized_conv2d_1/div_grad/mul=gradients/quantized_conv2d_1/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*)
_class
loc:@quantized_conv2d_1/div*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_1/div_grad/Reshape_1Reshape+gradients/quantized_conv2d_1/div_grad/Sum_1-gradients/quantized_conv2d_1/div_grad/Shape_1*)
_class
loc:@quantized_conv2d_1/div*
T0*
_output_shapes
: *
Tshape0
�
5gradients/quantized_conv2d_1/clip_by_value_grad/ShapeConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*%
valueB"         @   *
_output_shapes
:
�
7gradients/quantized_conv2d_1/clip_by_value_grad/Shape_1Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
valueB *
_output_shapes
: 
�
7gradients/quantized_conv2d_1/clip_by_value_grad/Shape_2Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*%
valueB"         @   *
_output_shapes
:
�
;gradients/quantized_conv2d_1/clip_by_value_grad/zeros/ConstConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
5gradients/quantized_conv2d_1/clip_by_value_grad/zerosFill7gradients/quantized_conv2d_1/clip_by_value_grad/Shape_2;gradients/quantized_conv2d_1/clip_by_value_grad/zeros/Const*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*&
_output_shapes
:@
�
<gradients/quantized_conv2d_1/clip_by_value_grad/GreaterEqualGreaterEqual(quantized_conv2d_1/clip_by_value/Minimumquantized_conv2d_1/Cast*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*&
_output_shapes
:@
�
Egradients/quantized_conv2d_1/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients/quantized_conv2d_1/clip_by_value_grad/Shape7gradients/quantized_conv2d_1/clip_by_value_grad/Shape_1*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
6gradients/quantized_conv2d_1/clip_by_value_grad/SelectSelect<gradients/quantized_conv2d_1/clip_by_value_grad/GreaterEqual-gradients/quantized_conv2d_1/div_grad/Reshape5gradients/quantized_conv2d_1/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*&
_output_shapes
:@
�
:gradients/quantized_conv2d_1/clip_by_value_grad/LogicalNot
LogicalNot<gradients/quantized_conv2d_1/clip_by_value_grad/GreaterEqual*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*&
_output_shapes
:@
�
8gradients/quantized_conv2d_1/clip_by_value_grad/Select_1Select:gradients/quantized_conv2d_1/clip_by_value_grad/LogicalNot-gradients/quantized_conv2d_1/div_grad/Reshape5gradients/quantized_conv2d_1/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*&
_output_shapes
:@
�
3gradients/quantized_conv2d_1/clip_by_value_grad/SumSum6gradients/quantized_conv2d_1/clip_by_value_grad/SelectEgradients/quantized_conv2d_1/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
7gradients/quantized_conv2d_1/clip_by_value_grad/ReshapeReshape3gradients/quantized_conv2d_1/clip_by_value_grad/Sum5gradients/quantized_conv2d_1/clip_by_value_grad/Shape*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*&
_output_shapes
:@*
Tshape0
�
5gradients/quantized_conv2d_1/clip_by_value_grad/Sum_1Sum8gradients/quantized_conv2d_1/clip_by_value_grad/Select_1Ggradients/quantized_conv2d_1/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*
	keep_dims( *

Tidx0
�
9gradients/quantized_conv2d_1/clip_by_value_grad/Reshape_1Reshape5gradients/quantized_conv2d_1/clip_by_value_grad/Sum_17gradients/quantized_conv2d_1/clip_by_value_grad/Shape_1*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*
_output_shapes
: *
Tshape0
�
=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/ShapeConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*%
valueB"         @   *
_output_shapes
:
�
?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape_2Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*%
valueB"         @   *
_output_shapes
:
�
Cgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/zerosFill?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape_2Cgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/zeros/Const*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*&
_output_shapes
:@
�
Agradients/quantized_conv2d_1/clip_by_value/Minimum_grad/LessEqual	LessEqualquantized_conv2d_1/addquantized_conv2d_1/Cast_1*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*&
_output_shapes
:@
�
Mgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape_1*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
>gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/SelectSelectAgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/LessEqual7gradients/quantized_conv2d_1/clip_by_value_grad/Reshape=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*&
_output_shapes
:@
�
Bgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/LogicalNot
LogicalNotAgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/LessEqual*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*&
_output_shapes
:@
�
@gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Select_1SelectBgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/LogicalNot7gradients/quantized_conv2d_1/clip_by_value_grad/Reshape=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*&
_output_shapes
:@
�
;gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/SumSum>gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/SelectMgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/ReshapeReshape;gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Sum=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*&
_output_shapes
:@*
Tshape0
�
=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Sum_1Sum@gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Select_1Ogradients/quantized_conv2d_1/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*
	keep_dims( *

Tidx0
�
Agradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Reshape_1Reshape=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Sum_1?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape_1*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*
_output_shapes
: *
Tshape0
�
+gradients/quantized_conv2d_1/add_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_1/add*%
valueB"         @   *
_output_shapes
:
�
-gradients/quantized_conv2d_1/add_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_1/add*%
valueB"         @   *
_output_shapes
:
�
;gradients/quantized_conv2d_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_1/add_grad/Shape-gradients/quantized_conv2d_1/add_grad/Shape_1*)
_class
loc:@quantized_conv2d_1/add*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_1/add_grad/SumSum?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Reshape;gradients/quantized_conv2d_1/add_grad/BroadcastGradientArgs*
_output_shapes
:*)
_class
loc:@quantized_conv2d_1/add*
T0*
	keep_dims( *

Tidx0
�
-gradients/quantized_conv2d_1/add_grad/ReshapeReshape)gradients/quantized_conv2d_1/add_grad/Sum+gradients/quantized_conv2d_1/add_grad/Shape*)
_class
loc:@quantized_conv2d_1/add*
T0*&
_output_shapes
:@*
Tshape0
�
+gradients/quantized_conv2d_1/add_grad/Sum_1Sum?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Reshape=gradients/quantized_conv2d_1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*)
_class
loc:@quantized_conv2d_1/add*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_1/add_grad/Reshape_1Reshape+gradients/quantized_conv2d_1/add_grad/Sum_1-gradients/quantized_conv2d_1/add_grad/Shape_1*)
_class
loc:@quantized_conv2d_1/add*
T0*&
_output_shapes
:@*
Tshape0
�
+gradients/quantized_conv2d_1/mul_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_1/mul*%
valueB"         @   *
_output_shapes
:
�
-gradients/quantized_conv2d_1/mul_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_1/mul*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_1/mul_grad/Shape-gradients/quantized_conv2d_1/mul_grad/Shape_1*)
_class
loc:@quantized_conv2d_1/mul*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_1/mul_grad/mulMul-gradients/quantized_conv2d_1/add_grad/Reshapequantized_conv2d_1/mul/y*)
_class
loc:@quantized_conv2d_1/mul*
T0*&
_output_shapes
:@
�
)gradients/quantized_conv2d_1/mul_grad/SumSum)gradients/quantized_conv2d_1/mul_grad/mul;gradients/quantized_conv2d_1/mul_grad/BroadcastGradientArgs*
_output_shapes
:*)
_class
loc:@quantized_conv2d_1/mul*
T0*
	keep_dims( *

Tidx0
�
-gradients/quantized_conv2d_1/mul_grad/ReshapeReshape)gradients/quantized_conv2d_1/mul_grad/Sum+gradients/quantized_conv2d_1/mul_grad/Shape*)
_class
loc:@quantized_conv2d_1/mul*
T0*&
_output_shapes
:@*
Tshape0
�
+gradients/quantized_conv2d_1/mul_grad/mul_1Mulquantized_conv2d_1/kernel/read-gradients/quantized_conv2d_1/add_grad/Reshape*)
_class
loc:@quantized_conv2d_1/mul*
T0*&
_output_shapes
:@
�
+gradients/quantized_conv2d_1/mul_grad/Sum_1Sum+gradients/quantized_conv2d_1/mul_grad/mul_1=gradients/quantized_conv2d_1/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*)
_class
loc:@quantized_conv2d_1/mul*
T0*
	keep_dims( *

Tidx0
�
/gradients/quantized_conv2d_1/mul_grad/Reshape_1Reshape+gradients/quantized_conv2d_1/mul_grad/Sum_1-gradients/quantized_conv2d_1/mul_grad/Shape_1*)
_class
loc:@quantized_conv2d_1/mul*
T0*
_output_shapes
: *
Tshape0
J
mul_3Mul
decay/readiterations/read*
T0*
_output_shapes
: 
L
add_3/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
=
add_3Addadd_3/xmul_3*
T0*
_output_shapes
: 
L
div_1/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
A
div_1RealDivdiv_1/xadd_3*
T0*
_output_shapes
: 
=
mul_4Mullr/readdiv_1*
T0*
_output_shapes
: 
T
AssignAdd/valueConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
	AssignAdd	AssignAdd
iterationsAssignAdd/value*
_class
loc:@iterations*
use_locking( *
T0*
_output_shapes
: 
T
Const_2Const*
dtype0*
valueB@*    *
_output_shapes
:@
t
Variable
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
Variable/AssignAssignVariableConst_2*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0*
_output_shapes
:@
e
Variable/readIdentityVariable*
_class
loc:@Variable*
T0*
_output_shapes
:@
T
Const_3Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_1
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
Variable_1/AssignAssign
Variable_1Const_3*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0*
_output_shapes
:@
k
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0*
_output_shapes
:@
T
Const_4Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_2
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
Variable_2/AssignAssign
Variable_2Const_4*
validate_shape(*
_class
loc:@Variable_2*
use_locking(*
T0*
_output_shapes
:@
k
Variable_2/readIdentity
Variable_2*
_class
loc:@Variable_2*
T0*
_output_shapes
:@
T
Const_5Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_3
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
Variable_3/AssignAssign
Variable_3Const_5*
validate_shape(*
_class
loc:@Variable_3*
use_locking(*
T0*
_output_shapes
:@
k
Variable_3/readIdentity
Variable_3*
_class
loc:@Variable_3*
T0*
_output_shapes
:@
T
Const_6Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_4
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
Variable_4/AssignAssign
Variable_4Const_6*
validate_shape(*
_class
loc:@Variable_4*
use_locking(*
T0*
_output_shapes
:@
k
Variable_4/readIdentity
Variable_4*
_class
loc:@Variable_4*
T0*
_output_shapes
:@
T
Const_7Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_5
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
Variable_5/AssignAssign
Variable_5Const_7*
validate_shape(*
_class
loc:@Variable_5*
use_locking(*
T0*
_output_shapes
:@
k
Variable_5/readIdentity
Variable_5*
_class
loc:@Variable_5*
T0*
_output_shapes
:@
T
Const_8Const*
dtype0*
valueB
*    *
_output_shapes
:

v

Variable_6
VariableV2*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

�
Variable_6/AssignAssign
Variable_6Const_8*
validate_shape(*
_class
loc:@Variable_6*
use_locking(*
T0*
_output_shapes
:

k
Variable_6/readIdentity
Variable_6*
_class
loc:@Variable_6*
T0*
_output_shapes
:

T
Const_9Const*
dtype0*
valueB
*    *
_output_shapes
:

v

Variable_7
VariableV2*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

�
Variable_7/AssignAssign
Variable_7Const_9*
validate_shape(*
_class
loc:@Variable_7*
use_locking(*
T0*
_output_shapes
:

k
Variable_7/readIdentity
Variable_7*
_class
loc:@Variable_7*
T0*
_output_shapes
:

_
Const_10Const*
dtype0*
valueB	�
*    *
_output_shapes
:	�

�

Variable_8
VariableV2*
dtype0*
shape:	�
*
	container *
shared_name *
_output_shapes
:	�

�
Variable_8/AssignAssign
Variable_8Const_10*
validate_shape(*
_class
loc:@Variable_8*
use_locking(*
T0*
_output_shapes
:	�

p
Variable_8/readIdentity
Variable_8*
_class
loc:@Variable_8*
T0*
_output_shapes
:	�

U
Const_11Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_9
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
Variable_9/AssignAssign
Variable_9Const_11*
validate_shape(*
_class
loc:@Variable_9*
use_locking(*
T0*
_output_shapes
:@
k
Variable_9/readIdentity
Variable_9*
_class
loc:@Variable_9*
T0*
_output_shapes
:@
m
Const_12Const*
dtype0*%
valueB@*    *&
_output_shapes
:@
�
Variable_10
VariableV2*
dtype0*
shape:@*
	container *
shared_name *&
_output_shapes
:@
�
Variable_10/AssignAssignVariable_10Const_12*
validate_shape(*
_class
loc:@Variable_10*
use_locking(*
T0*&
_output_shapes
:@
z
Variable_10/readIdentityVariable_10*
_class
loc:@Variable_10*
T0*&
_output_shapes
:@
U
Const_13Const*
dtype0*
valueB@*    *
_output_shapes
:@
w
Variable_11
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
Variable_11/AssignAssignVariable_11Const_13*
validate_shape(*
_class
loc:@Variable_11*
use_locking(*
T0*
_output_shapes
:@
n
Variable_11/readIdentityVariable_11*
_class
loc:@Variable_11*
T0*
_output_shapes
:@
m
Const_14Const*
dtype0*%
valueB@@*    *&
_output_shapes
:@@
�
Variable_12
VariableV2*
dtype0*
shape:@@*
	container *
shared_name *&
_output_shapes
:@@
�
Variable_12/AssignAssignVariable_12Const_14*
validate_shape(*
_class
loc:@Variable_12*
use_locking(*
T0*&
_output_shapes
:@@
z
Variable_12/readIdentityVariable_12*
_class
loc:@Variable_12*
T0*&
_output_shapes
:@@
U
Const_15Const*
dtype0*
valueB@*    *
_output_shapes
:@
w
Variable_13
VariableV2*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
�
Variable_13/AssignAssignVariable_13Const_15*
validate_shape(*
_class
loc:@Variable_13*
use_locking(*
T0*
_output_shapes
:@
n
Variable_13/readIdentityVariable_13*
_class
loc:@Variable_13*
T0*
_output_shapes
:@
m
Const_16Const*
dtype0*%
valueB@@*    *&
_output_shapes
:@@
�
Variable_14
VariableV2*
dtype0*
shape:@@*
	container *
shared_name *&
_output_shapes
:@@
�
Variable_14/AssignAssignVariable_14Const_16*
validate_shape(*
_class
loc:@Variable_14*
use_locking(*
T0*&
_output_shapes
:@@
z
Variable_14/readIdentityVariable_14*
_class
loc:@Variable_14*
T0*&
_output_shapes
:@@
O
mul_5Mulmomentum/readVariable/read*
T0*
_output_shapes
:@
K
mul_6Mulmul_4gradients/AddN_22*
T0*
_output_shapes
:@
?
sub_1Submul_5mul_6*
T0*
_output_shapes
:@
�
AssignAssignVariablesub_1*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0*
_output_shapes
:@
G
mul_7Mulmomentum/readsub_1*
T0*
_output_shapes
:@
Y
add_4Addbatch_normalization_1/beta/readmul_7*
T0*
_output_shapes
:@
K
mul_8Mulmul_4gradients/AddN_22*
T0*
_output_shapes
:@
?
sub_2Subadd_4mul_8*
T0*
_output_shapes
:@
�
Assign_1Assignbatch_normalization_1/betasub_2*
validate_shape(*-
_class#
!loc:@batch_normalization_1/beta*
use_locking(*
T0*
_output_shapes
:@
Q
mul_9Mulmomentum/readVariable_1/read*
T0*
_output_shapes
:@
L
mul_10Mulmul_4gradients/AddN_24*
T0*
_output_shapes
:@
@
sub_3Submul_9mul_10*
T0*
_output_shapes
:@
�
Assign_2Assign
Variable_1sub_3*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0*
_output_shapes
:@
H
mul_11Mulmomentum/readsub_3*
T0*
_output_shapes
:@
[
add_5Add batch_normalization_1/gamma/readmul_11*
T0*
_output_shapes
:@
L
mul_12Mulmul_4gradients/AddN_24*
T0*
_output_shapes
:@
@
sub_4Subadd_5mul_12*
T0*
_output_shapes
:@
�
Assign_3Assignbatch_normalization_1/gammasub_4*
validate_shape(*.
_class$
" loc:@batch_normalization_1/gamma*
use_locking(*
T0*
_output_shapes
:@
R
mul_13Mulmomentum/readVariable_2/read*
T0*
_output_shapes
:@
L
mul_14Mulmul_4gradients/AddN_15*
T0*
_output_shapes
:@
A
sub_5Submul_13mul_14*
T0*
_output_shapes
:@
�
Assign_4Assign
Variable_2sub_5*
validate_shape(*
_class
loc:@Variable_2*
use_locking(*
T0*
_output_shapes
:@
H
mul_15Mulmomentum/readsub_5*
T0*
_output_shapes
:@
Z
add_6Addbatch_normalization_2/beta/readmul_15*
T0*
_output_shapes
:@
L
mul_16Mulmul_4gradients/AddN_15*
T0*
_output_shapes
:@
@
sub_6Subadd_6mul_16*
T0*
_output_shapes
:@
�
Assign_5Assignbatch_normalization_2/betasub_6*
validate_shape(*-
_class#
!loc:@batch_normalization_2/beta*
use_locking(*
T0*
_output_shapes
:@
R
mul_17Mulmomentum/readVariable_3/read*
T0*
_output_shapes
:@
L
mul_18Mulmul_4gradients/AddN_17*
T0*
_output_shapes
:@
A
sub_7Submul_17mul_18*
T0*
_output_shapes
:@
�
Assign_6Assign
Variable_3sub_7*
validate_shape(*
_class
loc:@Variable_3*
use_locking(*
T0*
_output_shapes
:@
H
mul_19Mulmomentum/readsub_7*
T0*
_output_shapes
:@
[
add_7Add batch_normalization_2/gamma/readmul_19*
T0*
_output_shapes
:@
L
mul_20Mulmul_4gradients/AddN_17*
T0*
_output_shapes
:@
@
sub_8Subadd_7mul_20*
T0*
_output_shapes
:@
�
Assign_7Assignbatch_normalization_2/gammasub_8*
validate_shape(*.
_class$
" loc:@batch_normalization_2/gamma*
use_locking(*
T0*
_output_shapes
:@
R
mul_21Mulmomentum/readVariable_4/read*
T0*
_output_shapes
:@
K
mul_22Mulmul_4gradients/AddN_8*
T0*
_output_shapes
:@
A
sub_9Submul_21mul_22*
T0*
_output_shapes
:@
�
Assign_8Assign
Variable_4sub_9*
validate_shape(*
_class
loc:@Variable_4*
use_locking(*
T0*
_output_shapes
:@
H
mul_23Mulmomentum/readsub_9*
T0*
_output_shapes
:@
Z
add_8Addbatch_normalization_3/beta/readmul_23*
T0*
_output_shapes
:@
K
mul_24Mulmul_4gradients/AddN_8*
T0*
_output_shapes
:@
A
sub_10Subadd_8mul_24*
T0*
_output_shapes
:@
�
Assign_9Assignbatch_normalization_3/betasub_10*
validate_shape(*-
_class#
!loc:@batch_normalization_3/beta*
use_locking(*
T0*
_output_shapes
:@
R
mul_25Mulmomentum/readVariable_5/read*
T0*
_output_shapes
:@
L
mul_26Mulmul_4gradients/AddN_10*
T0*
_output_shapes
:@
B
sub_11Submul_25mul_26*
T0*
_output_shapes
:@
�
	Assign_10Assign
Variable_5sub_11*
validate_shape(*
_class
loc:@Variable_5*
use_locking(*
T0*
_output_shapes
:@
I
mul_27Mulmomentum/readsub_11*
T0*
_output_shapes
:@
[
add_9Add batch_normalization_3/gamma/readmul_27*
T0*
_output_shapes
:@
L
mul_28Mulmul_4gradients/AddN_10*
T0*
_output_shapes
:@
A
sub_12Subadd_9mul_28*
T0*
_output_shapes
:@
�
	Assign_11Assignbatch_normalization_3/gammasub_12*
validate_shape(*.
_class$
" loc:@batch_normalization_3/gamma*
use_locking(*
T0*
_output_shapes
:@
R
mul_29Mulmomentum/readVariable_6/read*
T0*
_output_shapes
:

K
mul_30Mulmul_4gradients/AddN_1*
T0*
_output_shapes
:

B
sub_13Submul_29mul_30*
T0*
_output_shapes
:

�
	Assign_12Assign
Variable_6sub_13*
validate_shape(*
_class
loc:@Variable_6*
use_locking(*
T0*
_output_shapes
:

I
mul_31Mulmomentum/readsub_13*
T0*
_output_shapes
:

[
add_10Addbatch_normalization_4/beta/readmul_31*
T0*
_output_shapes
:

K
mul_32Mulmul_4gradients/AddN_1*
T0*
_output_shapes
:

B
sub_14Subadd_10mul_32*
T0*
_output_shapes
:

�
	Assign_13Assignbatch_normalization_4/betasub_14*
validate_shape(*-
_class#
!loc:@batch_normalization_4/beta*
use_locking(*
T0*
_output_shapes
:

R
mul_33Mulmomentum/readVariable_7/read*
T0*
_output_shapes
:

K
mul_34Mulmul_4gradients/AddN_3*
T0*
_output_shapes
:

B
sub_15Submul_33mul_34*
T0*
_output_shapes
:

�
	Assign_14Assign
Variable_7sub_15*
validate_shape(*
_class
loc:@Variable_7*
use_locking(*
T0*
_output_shapes
:

I
mul_35Mulmomentum/readsub_15*
T0*
_output_shapes
:

\
add_11Add batch_normalization_4/gamma/readmul_35*
T0*
_output_shapes
:

K
mul_36Mulmul_4gradients/AddN_3*
T0*
_output_shapes
:

B
sub_16Subadd_11mul_36*
T0*
_output_shapes
:

�
	Assign_15Assignbatch_normalization_4/gammasub_16*
validate_shape(*.
_class$
" loc:@batch_normalization_4/gamma*
use_locking(*
T0*
_output_shapes
:

W
mul_37Mulmomentum/readVariable_8/read*
T0*
_output_shapes
:	�

f
mul_38Mulmul_4&gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�

G
sub_17Submul_37mul_38*
T0*
_output_shapes
:	�

�
	Assign_16Assign
Variable_8sub_17*
validate_shape(*
_class
loc:@Variable_8*
use_locking(*
T0*
_output_shapes
:	�

N
mul_39Mulmomentum/readsub_17*
T0*
_output_shapes
:	�

T
add_12Adddense_1/kernel/readmul_39*
T0*
_output_shapes
:	�

f
mul_40Mulmul_4&gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�

G
sub_18Subadd_12mul_40*
T0*
_output_shapes
:	�

�
	Assign_17Assigndense_1/kernelsub_18*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0*
_output_shapes
:	�

R
mul_41Mulmomentum/readVariable_9/read*
T0*
_output_shapes
:@
p
mul_42Mulmul_45gradients/quantized_conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_19Submul_41mul_42*
T0*
_output_shapes
:@
�
	Assign_18Assign
Variable_9sub_19*
validate_shape(*
_class
loc:@Variable_9*
use_locking(*
T0*
_output_shapes
:@
I
mul_43Mulmomentum/readsub_19*
T0*
_output_shapes
:@
X
add_13Addquantized_conv2d_1/bias/readmul_43*
T0*
_output_shapes
:@
p
mul_44Mulmul_45gradients/quantized_conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_20Subadd_13mul_44*
T0*
_output_shapes
:@
�
	Assign_19Assignquantized_conv2d_1/biassub_20*
validate_shape(**
_class 
loc:@quantized_conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
_
mul_45Mulmomentum/readVariable_10/read*
T0*&
_output_shapes
:@
t
mul_46Mulmul_4-gradients/quantized_conv2d_1/mul_grad/Reshape*
T0*&
_output_shapes
:@
N
sub_21Submul_45mul_46*
T0*&
_output_shapes
:@
�
	Assign_20AssignVariable_10sub_21*
validate_shape(*
_class
loc:@Variable_10*
use_locking(*
T0*&
_output_shapes
:@
U
mul_47Mulmomentum/readsub_21*
T0*&
_output_shapes
:@
f
add_14Addquantized_conv2d_1/kernel/readmul_47*
T0*&
_output_shapes
:@
t
mul_48Mulmul_4-gradients/quantized_conv2d_1/mul_grad/Reshape*
T0*&
_output_shapes
:@
N
sub_22Subadd_14mul_48*
T0*&
_output_shapes
:@
S
Const_17Const*
dtype0*
valueB :
���������*
_output_shapes
: 
H
Cast_1CastConst_17*

DstT0*

SrcT0*
_output_shapes
: 
J
Const_18Const*
dtype0*
value	B :*
_output_shapes
: 
H
Cast_2CastConst_18*

DstT0*

SrcT0*
_output_shapes
: 
a
clip_by_value/MinimumMinimumsub_22Cast_2*
T0*&
_output_shapes
:@
h
clip_by_valueMaximumclip_by_value/MinimumCast_1*
T0*&
_output_shapes
:@
�
	Assign_21Assignquantized_conv2d_1/kernelclip_by_value*
validate_shape(*,
_class"
 loc:@quantized_conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
:@
S
mul_49Mulmomentum/readVariable_11/read*
T0*
_output_shapes
:@
p
mul_50Mulmul_45gradients/quantized_conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_23Submul_49mul_50*
T0*
_output_shapes
:@
�
	Assign_22AssignVariable_11sub_23*
validate_shape(*
_class
loc:@Variable_11*
use_locking(*
T0*
_output_shapes
:@
I
mul_51Mulmomentum/readsub_23*
T0*
_output_shapes
:@
X
add_15Addquantized_conv2d_2/bias/readmul_51*
T0*
_output_shapes
:@
p
mul_52Mulmul_45gradients/quantized_conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_24Subadd_15mul_52*
T0*
_output_shapes
:@
�
	Assign_23Assignquantized_conv2d_2/biassub_24*
validate_shape(**
_class 
loc:@quantized_conv2d_2/bias*
use_locking(*
T0*
_output_shapes
:@
_
mul_53Mulmomentum/readVariable_12/read*
T0*&
_output_shapes
:@@
t
mul_54Mulmul_4-gradients/quantized_conv2d_2/mul_grad/Reshape*
T0*&
_output_shapes
:@@
N
sub_25Submul_53mul_54*
T0*&
_output_shapes
:@@
�
	Assign_24AssignVariable_12sub_25*
validate_shape(*
_class
loc:@Variable_12*
use_locking(*
T0*&
_output_shapes
:@@
U
mul_55Mulmomentum/readsub_25*
T0*&
_output_shapes
:@@
f
add_16Addquantized_conv2d_2/kernel/readmul_55*
T0*&
_output_shapes
:@@
t
mul_56Mulmul_4-gradients/quantized_conv2d_2/mul_grad/Reshape*
T0*&
_output_shapes
:@@
N
sub_26Subadd_16mul_56*
T0*&
_output_shapes
:@@
S
Const_19Const*
dtype0*
valueB :
���������*
_output_shapes
: 
H
Cast_3CastConst_19*

DstT0*

SrcT0*
_output_shapes
: 
J
Const_20Const*
dtype0*
value	B :*
_output_shapes
: 
H
Cast_4CastConst_20*

DstT0*

SrcT0*
_output_shapes
: 
c
clip_by_value_1/MinimumMinimumsub_26Cast_4*
T0*&
_output_shapes
:@@
l
clip_by_value_1Maximumclip_by_value_1/MinimumCast_3*
T0*&
_output_shapes
:@@
�
	Assign_25Assignquantized_conv2d_2/kernelclip_by_value_1*
validate_shape(*,
_class"
 loc:@quantized_conv2d_2/kernel*
use_locking(*
T0*&
_output_shapes
:@@
S
mul_57Mulmomentum/readVariable_13/read*
T0*
_output_shapes
:@
p
mul_58Mulmul_45gradients/quantized_conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_27Submul_57mul_58*
T0*
_output_shapes
:@
�
	Assign_26AssignVariable_13sub_27*
validate_shape(*
_class
loc:@Variable_13*
use_locking(*
T0*
_output_shapes
:@
I
mul_59Mulmomentum/readsub_27*
T0*
_output_shapes
:@
X
add_17Addquantized_conv2d_3/bias/readmul_59*
T0*
_output_shapes
:@
p
mul_60Mulmul_45gradients/quantized_conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_28Subadd_17mul_60*
T0*
_output_shapes
:@
�
	Assign_27Assignquantized_conv2d_3/biassub_28*
validate_shape(**
_class 
loc:@quantized_conv2d_3/bias*
use_locking(*
T0*
_output_shapes
:@
_
mul_61Mulmomentum/readVariable_14/read*
T0*&
_output_shapes
:@@
t
mul_62Mulmul_4-gradients/quantized_conv2d_3/mul_grad/Reshape*
T0*&
_output_shapes
:@@
N
sub_29Submul_61mul_62*
T0*&
_output_shapes
:@@
�
	Assign_28AssignVariable_14sub_29*
validate_shape(*
_class
loc:@Variable_14*
use_locking(*
T0*&
_output_shapes
:@@
U
mul_63Mulmomentum/readsub_29*
T0*&
_output_shapes
:@@
f
add_18Addquantized_conv2d_3/kernel/readmul_63*
T0*&
_output_shapes
:@@
t
mul_64Mulmul_4-gradients/quantized_conv2d_3/mul_grad/Reshape*
T0*&
_output_shapes
:@@
N
sub_30Subadd_18mul_64*
T0*&
_output_shapes
:@@
S
Const_21Const*
dtype0*
valueB :
���������*
_output_shapes
: 
H
Cast_5CastConst_21*

DstT0*

SrcT0*
_output_shapes
: 
J
Const_22Const*
dtype0*
value	B :*
_output_shapes
: 
H
Cast_6CastConst_22*

DstT0*

SrcT0*
_output_shapes
: 
c
clip_by_value_2/MinimumMinimumsub_30Cast_6*
T0*&
_output_shapes
:@@
l
clip_by_value_2Maximumclip_by_value_2/MinimumCast_5*
T0*&
_output_shapes
:@@
�
	Assign_29Assignquantized_conv2d_3/kernelclip_by_value_2*
validate_shape(*,
_class"
 loc:@quantized_conv2d_3/kernel*
use_locking(*
T0*&
_output_shapes
:@@
�
group_deps_1NoOp^add_2&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1
^AssignAdd^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6	^Assign_7	^Assign_8	^Assign_9
^Assign_10
^Assign_11
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
�	
initNoOp!^quantized_conv2d_1/kernel/Assign^quantized_conv2d_1/bias/Assign#^batch_normalization_1/gamma/Assign"^batch_normalization_1/beta/Assign)^batch_normalization_1/moving_mean/Assign-^batch_normalization_1/moving_variance/Assign!^quantized_conv2d_2/kernel/Assign^quantized_conv2d_2/bias/Assign#^batch_normalization_2/gamma/Assign"^batch_normalization_2/beta/Assign)^batch_normalization_2/moving_mean/Assign-^batch_normalization_2/moving_variance/Assign!^quantized_conv2d_3/kernel/Assign^quantized_conv2d_3/bias/Assign#^batch_normalization_3/gamma/Assign"^batch_normalization_3/beta/Assign)^batch_normalization_3/moving_mean/Assign-^batch_normalization_3/moving_variance/Assign^dense_1/kernel/Assign#^batch_normalization_4/gamma/Assign"^batch_normalization_4/beta/Assign)^batch_normalization_4/moving_mean/Assign-^batch_normalization_4/moving_variance/Assign^iterations/Assign
^lr/Assign^momentum/Assign^decay/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign^Variable_8/Assign^Variable_9/Assign^Variable_10/Assign^Variable_11/Assign^Variable_12/Assign^Variable_13/Assign^Variable_14/Assign"�eD��     �c@�	�RTB�}�AJ��
�(�(
9
Add
x"T
y"T
z"T"
Ttype:
2	
S
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	��
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
p
	AssignAdd
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
p
	AssignSub
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
<
	LessEqual
x"T
y"T
z
"
Ttype:
2		


LogicalNot
x

y

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
�
MaxPool

input"T
output"T"
Ttype0:
2		"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2		
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	�
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	
�
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
/
Round
x"T
y"T"
Ttype:
	2	
-
Rsqrt
x"T
y"T"
Ttype:	
2
9
	RsqrtGrad
x"T
y"T
z"T"
Ttype:	
2
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Square
x"T
y"T"
Ttype:
	2	
F
SquaredDifference
x"T
y"T
z"T"
Ttype:
	2	�
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.2.12v1.2.0-5-g435cdfc��
�
quantized_conv2d_1_inputPlaceholder*
dtype0*$
shape:���������  */
_output_shapes
:���������  
�
'quantized_conv2d_1/random_uniform/shapeConst*
dtype0*%
valueB"         @   *
_output_shapes
:
j
%quantized_conv2d_1/random_uniform/minConst*
dtype0*
valueB
 *  ��*
_output_shapes
: 
j
%quantized_conv2d_1/random_uniform/maxConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
/quantized_conv2d_1/random_uniform/RandomUniformRandomUniform'quantized_conv2d_1/random_uniform/shape*
dtype0*
seed2���*
seed���)*
T0*&
_output_shapes
:@
�
%quantized_conv2d_1/random_uniform/subSub%quantized_conv2d_1/random_uniform/max%quantized_conv2d_1/random_uniform/min*
T0*
_output_shapes
: 
�
%quantized_conv2d_1/random_uniform/mulMul/quantized_conv2d_1/random_uniform/RandomUniform%quantized_conv2d_1/random_uniform/sub*
T0*&
_output_shapes
:@
�
!quantized_conv2d_1/random_uniformAdd%quantized_conv2d_1/random_uniform/mul%quantized_conv2d_1/random_uniform/min*
T0*&
_output_shapes
:@
�
quantized_conv2d_1/kernel
VariableV2*
dtype0*
shape:@*
shared_name *
	container *&
_output_shapes
:@
�
 quantized_conv2d_1/kernel/AssignAssignquantized_conv2d_1/kernel!quantized_conv2d_1/random_uniform*
validate_shape(*,
_class"
 loc:@quantized_conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
:@
�
quantized_conv2d_1/kernel/readIdentityquantized_conv2d_1/kernel*,
_class"
 loc:@quantized_conv2d_1/kernel*
T0*&
_output_shapes
:@
e
quantized_conv2d_1/ConstConst*
dtype0*
valueB@*    *
_output_shapes
:@
�
quantized_conv2d_1/bias
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
quantized_conv2d_1/bias/AssignAssignquantized_conv2d_1/biasquantized_conv2d_1/Const*
validate_shape(**
_class 
loc:@quantized_conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
�
quantized_conv2d_1/bias/readIdentityquantized_conv2d_1/bias**
_class 
loc:@quantized_conv2d_1/bias*
T0*
_output_shapes
:@
]
quantized_conv2d_1/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_1/mulMulquantized_conv2d_1/kernel/readquantized_conv2d_1/mul/y*
T0*&
_output_shapes
:@
j
quantized_conv2d_1/RoundRoundquantized_conv2d_1/mul*
T0*&
_output_shapes
:@
�
quantized_conv2d_1/subSubquantized_conv2d_1/Roundquantized_conv2d_1/mul*
T0*&
_output_shapes
:@
x
quantized_conv2d_1/StopGradientStopGradientquantized_conv2d_1/sub*
T0*&
_output_shapes
:@
�
quantized_conv2d_1/addAddquantized_conv2d_1/mulquantized_conv2d_1/StopGradient*
T0*&
_output_shapes
:@
e
quantized_conv2d_1/Const_1Const*
dtype0*
valueB :
���������*
_output_shapes
: 
k
quantized_conv2d_1/CastCastquantized_conv2d_1/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
\
quantized_conv2d_1/Const_2Const*
dtype0*
value	B :*
_output_shapes
: 
m
quantized_conv2d_1/Cast_1Castquantized_conv2d_1/Const_2*

DstT0*

SrcT0*
_output_shapes
: 
�
(quantized_conv2d_1/clip_by_value/MinimumMinimumquantized_conv2d_1/addquantized_conv2d_1/Cast_1*
T0*&
_output_shapes
:@
�
 quantized_conv2d_1/clip_by_valueMaximum(quantized_conv2d_1/clip_by_value/Minimumquantized_conv2d_1/Cast*
T0*&
_output_shapes
:@
]
quantized_conv2d_1/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_1/divRealDiv quantized_conv2d_1/clip_by_valuequantized_conv2d_1/div/y*
T0*&
_output_shapes
:@
�
!quantized_conv2d_1/StopGradient_1StopGradientquantized_conv2d_1_input*
T0*/
_output_shapes
:���������  
_
quantized_conv2d_1/mul_1/xConst*
dtype0*
valueB
 *  �*
_output_shapes
: 
�
quantized_conv2d_1/mul_1Mulquantized_conv2d_1/mul_1/x!quantized_conv2d_1/StopGradient_1*
T0*/
_output_shapes
:���������  
�
quantized_conv2d_1/sub_1Subquantized_conv2d_1_inputquantized_conv2d_1/mul_1*
T0*/
_output_shapes
:���������  
_
quantized_conv2d_1/mul_2/yConst*
dtype0*
valueB
 *���=*
_output_shapes
: 
�
quantized_conv2d_1/mul_2Mulquantized_conv2d_1/sub_1quantized_conv2d_1/mul_2/y*
T0*/
_output_shapes
:���������  
}
$quantized_conv2d_1/convolution/ShapeConst*
dtype0*%
valueB"         @   *
_output_shapes
:
}
,quantized_conv2d_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
quantized_conv2d_1/convolutionConv2Dquantized_conv2d_1/mul_2quantized_conv2d_1/div*/
_output_shapes
:���������  @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
!quantized_conv2d_1/StopGradient_2StopGradientquantized_conv2d_1/convolution*
T0*/
_output_shapes
:���������  @
_
quantized_conv2d_1/mul_3/xConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
�
quantized_conv2d_1/mul_3Mulquantized_conv2d_1/mul_3/x!quantized_conv2d_1/StopGradient_2*
T0*/
_output_shapes
:���������  @
�
quantized_conv2d_1/sub_2Subquantized_conv2d_1/convolutionquantized_conv2d_1/mul_3*
T0*/
_output_shapes
:���������  @
_
quantized_conv2d_1/mul_4/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_1/mul_4Mulquantized_conv2d_1/sub_2quantized_conv2d_1/mul_4/y*
T0*/
_output_shapes
:���������  @
�
quantized_conv2d_1/BiasAddBiasAddquantized_conv2d_1/mul_4quantized_conv2d_1/bias/read*
data_formatNHWC*
T0*/
_output_shapes
:���������  @
h
batch_normalization_1/ConstConst*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
batch_normalization_1/gamma
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gammabatch_normalization_1/Const*
validate_shape(*.
_class$
" loc:@batch_normalization_1/gamma*
use_locking(*
T0*
_output_shapes
:@
�
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
T0*
_output_shapes
:@
j
batch_normalization_1/Const_1Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
batch_normalization_1/beta
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/betabatch_normalization_1/Const_1*
validate_shape(*-
_class#
!loc:@batch_normalization_1/beta*
use_locking(*
T0*
_output_shapes
:@
�
batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
T0*
_output_shapes
:@
j
batch_normalization_1/Const_2Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
!batch_normalization_1/moving_mean
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_meanbatch_normalization_1/Const_2*
validate_shape(*4
_class*
(&loc:@batch_normalization_1/moving_mean*
use_locking(*
T0*
_output_shapes
:@
�
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
T0*
_output_shapes
:@
j
batch_normalization_1/Const_3Const*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
%batch_normalization_1/moving_variance
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variancebatch_normalization_1/Const_3*
validate_shape(*8
_class.
,*loc:@batch_normalization_1/moving_variance*
use_locking(*
T0*
_output_shapes
:@
�
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
T0*
_output_shapes
:@
�
4batch_normalization_1/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
"batch_normalization_1/moments/MeanMeanquantized_conv2d_1/BiasAdd4batch_normalization_1/moments/Mean/reduction_indices*

Tidx0*
T0*
	keep_dims(*&
_output_shapes
:@
�
*batch_normalization_1/moments/StopGradientStopGradient"batch_normalization_1/moments/Mean*
T0*&
_output_shapes
:@
�
!batch_normalization_1/moments/SubSubquantized_conv2d_1/BiasAdd*batch_normalization_1/moments/StopGradient*
T0*/
_output_shapes
:���������  @
�
<batch_normalization_1/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
*batch_normalization_1/moments/shifted_meanMean!batch_normalization_1/moments/Sub<batch_normalization_1/moments/shifted_mean/reduction_indices*

Tidx0*
T0*
	keep_dims(*&
_output_shapes
:@
�
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferencequantized_conv2d_1/BiasAdd*batch_normalization_1/moments/StopGradient*
T0*/
_output_shapes
:���������  @
�
6batch_normalization_1/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
$batch_normalization_1/moments/Mean_1Mean/batch_normalization_1/moments/SquaredDifference6batch_normalization_1/moments/Mean_1/reduction_indices*

Tidx0*
T0*
	keep_dims(*&
_output_shapes
:@
�
$batch_normalization_1/moments/SquareSquare*batch_normalization_1/moments/shifted_mean*
T0*&
_output_shapes
:@
�
&batch_normalization_1/moments/varianceSub$batch_normalization_1/moments/Mean_1$batch_normalization_1/moments/Square*
T0*&
_output_shapes
:@
�
"batch_normalization_1/moments/meanAdd*batch_normalization_1/moments/shifted_mean*batch_normalization_1/moments/StopGradient*
T0*&
_output_shapes
:@
�
%batch_normalization_1/moments/SqueezeSqueeze"batch_normalization_1/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@
�
'batch_normalization_1/moments/Squeeze_1Squeeze&batch_normalization_1/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@
j
%batch_normalization_1/batchnorm/add/yConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
#batch_normalization_1/batchnorm/addAdd'batch_normalization_1/moments/Squeeze_1%batch_normalization_1/batchnorm/add/y*
T0*
_output_shapes
:@
x
%batch_normalization_1/batchnorm/RsqrtRsqrt#batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:@
�
#batch_normalization_1/batchnorm/mulMul%batch_normalization_1/batchnorm/Rsqrt batch_normalization_1/gamma/read*
T0*
_output_shapes
:@
�
%batch_normalization_1/batchnorm/mul_1Mulquantized_conv2d_1/BiasAdd#batch_normalization_1/batchnorm/mul*
T0*/
_output_shapes
:���������  @
�
%batch_normalization_1/batchnorm/mul_2Mul%batch_normalization_1/moments/Squeeze#batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:@
�
#batch_normalization_1/batchnorm/subSubbatch_normalization_1/beta/read%batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:@
�
%batch_normalization_1/batchnorm/add_1Add%batch_normalization_1/batchnorm/mul_1#batch_normalization_1/batchnorm/sub*
T0*/
_output_shapes
:���������  @
�
+batch_normalization_1/AssignMovingAvg/decayConst*
dtype0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB
 *
�#<*
_output_shapes
: 
�
)batch_normalization_1/AssignMovingAvg/subSub&batch_normalization_1/moving_mean/read%batch_normalization_1/moments/Squeeze*4
_class*
(&loc:@batch_normalization_1/moving_mean*
T0*
_output_shapes
:@
�
)batch_normalization_1/AssignMovingAvg/mulMul)batch_normalization_1/AssignMovingAvg/sub+batch_normalization_1/AssignMovingAvg/decay*4
_class*
(&loc:@batch_normalization_1/moving_mean*
T0*
_output_shapes
:@
�
%batch_normalization_1/AssignMovingAvg	AssignSub!batch_normalization_1/moving_mean)batch_normalization_1/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_1/moving_mean*
use_locking( *
T0*
_output_shapes
:@
�
-batch_normalization_1/AssignMovingAvg_1/decayConst*
dtype0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB
 *
�#<*
_output_shapes
: 
�
+batch_normalization_1/AssignMovingAvg_1/subSub*batch_normalization_1/moving_variance/read'batch_normalization_1/moments/Squeeze_1*8
_class.
,*loc:@batch_normalization_1/moving_variance*
T0*
_output_shapes
:@
�
+batch_normalization_1/AssignMovingAvg_1/mulMul+batch_normalization_1/AssignMovingAvg_1/sub-batch_normalization_1/AssignMovingAvg_1/decay*8
_class.
,*loc:@batch_normalization_1/moving_variance*
T0*
_output_shapes
:@
�
'batch_normalization_1/AssignMovingAvg_1	AssignSub%batch_normalization_1/moving_variance+batch_normalization_1/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_1/moving_variance*
use_locking( *
T0*
_output_shapes
:@
o
*batch_normalization_1/keras_learning_phasePlaceholder*
dtype0
*
shape:*
_output_shapes
:
�
!batch_normalization_1/cond/SwitchSwitch*batch_normalization_1/keras_learning_phase*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes

::
w
#batch_normalization_1/cond/switch_tIdentity#batch_normalization_1/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_1/cond/switch_fIdentity!batch_normalization_1/cond/Switch*
T0
*
_output_shapes
:
}
"batch_normalization_1/cond/pred_idIdentity*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
:
�
#batch_normalization_1/cond/Switch_1Switch%batch_normalization_1/batchnorm/add_1"batch_normalization_1/cond/pred_id*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*J
_output_shapes8
6:���������  @:���������  @
�
*batch_normalization_1/cond/batchnorm/add/yConst$^batch_normalization_1/cond/switch_f*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
/batch_normalization_1/cond/batchnorm/add/SwitchSwitch*batch_normalization_1/moving_variance/read"batch_normalization_1/cond/pred_id*8
_class.
,*loc:@batch_normalization_1/moving_variance*
T0* 
_output_shapes
:@:@
�
(batch_normalization_1/cond/batchnorm/addAdd/batch_normalization_1/cond/batchnorm/add/Switch*batch_normalization_1/cond/batchnorm/add/y*
T0*
_output_shapes
:@
�
*batch_normalization_1/cond/batchnorm/RsqrtRsqrt(batch_normalization_1/cond/batchnorm/add*
T0*
_output_shapes
:@
�
/batch_normalization_1/cond/batchnorm/mul/SwitchSwitch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id*.
_class$
" loc:@batch_normalization_1/gamma*
T0* 
_output_shapes
:@:@
�
(batch_normalization_1/cond/batchnorm/mulMul*batch_normalization_1/cond/batchnorm/Rsqrt/batch_normalization_1/cond/batchnorm/mul/Switch*
T0*
_output_shapes
:@
�
1batch_normalization_1/cond/batchnorm/mul_1/SwitchSwitchquantized_conv2d_1/BiasAdd"batch_normalization_1/cond/pred_id*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
T0*J
_output_shapes8
6:���������  @:���������  @
�
*batch_normalization_1/cond/batchnorm/mul_1Mul1batch_normalization_1/cond/batchnorm/mul_1/Switch(batch_normalization_1/cond/batchnorm/mul*
T0*/
_output_shapes
:���������  @
�
1batch_normalization_1/cond/batchnorm/mul_2/SwitchSwitch&batch_normalization_1/moving_mean/read"batch_normalization_1/cond/pred_id*4
_class*
(&loc:@batch_normalization_1/moving_mean*
T0* 
_output_shapes
:@:@
�
*batch_normalization_1/cond/batchnorm/mul_2Mul1batch_normalization_1/cond/batchnorm/mul_2/Switch(batch_normalization_1/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
/batch_normalization_1/cond/batchnorm/sub/SwitchSwitchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id*-
_class#
!loc:@batch_normalization_1/beta*
T0* 
_output_shapes
:@:@
�
(batch_normalization_1/cond/batchnorm/subSub/batch_normalization_1/cond/batchnorm/sub/Switch*batch_normalization_1/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
*batch_normalization_1/cond/batchnorm/add_1Add*batch_normalization_1/cond/batchnorm/mul_1(batch_normalization_1/cond/batchnorm/sub*
T0*/
_output_shapes
:���������  @
�
 batch_normalization_1/cond/MergeMerge*batch_normalization_1/cond/batchnorm/add_1%batch_normalization_1/cond/Switch_1:1*
N*
T0*1
_output_shapes
:���������  @: 
W
activation_1/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_1/mulMul batch_normalization_1/cond/Mergeactivation_1/mul/y*
T0*/
_output_shapes
:���������  @
g
activation_1/RoundRoundactivation_1/mul*
T0*/
_output_shapes
:���������  @
w
activation_1/subSubactivation_1/Roundactivation_1/mul*
T0*/
_output_shapes
:���������  @
u
activation_1/StopGradientStopGradientactivation_1/sub*
T0*/
_output_shapes
:���������  @
~
activation_1/addAddactivation_1/mulactivation_1/StopGradient*
T0*/
_output_shapes
:���������  @
T
activation_1/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
]
activation_1/CastCastactivation_1/Const*

DstT0*

SrcT0*
_output_shapes
: 
V
activation_1/Const_1Const*
dtype0*
value	B :*
_output_shapes
: 
a
activation_1/Cast_1Castactivation_1/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
�
"activation_1/clip_by_value/MinimumMinimumactivation_1/addactivation_1/Cast_1*
T0*/
_output_shapes
:���������  @
�
activation_1/clip_by_valueMaximum"activation_1/clip_by_value/Minimumactivation_1/Cast*
T0*/
_output_shapes
:���������  @
W
activation_1/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_1/divRealDivactivation_1/clip_by_valueactivation_1/div/y*
T0*/
_output_shapes
:���������  @
�
max_pooling2d_1/MaxPoolMaxPoolactivation_1/div*/
_output_shapes
:���������@*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
�
'quantized_conv2d_2/random_uniform/shapeConst*
dtype0*%
valueB"      @   @   *
_output_shapes
:
j
%quantized_conv2d_2/random_uniform/minConst*
dtype0*
valueB
 *  ��*
_output_shapes
: 
j
%quantized_conv2d_2/random_uniform/maxConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
/quantized_conv2d_2/random_uniform/RandomUniformRandomUniform'quantized_conv2d_2/random_uniform/shape*
dtype0*
seed2�ո*
seed���)*
T0*&
_output_shapes
:@@
�
%quantized_conv2d_2/random_uniform/subSub%quantized_conv2d_2/random_uniform/max%quantized_conv2d_2/random_uniform/min*
T0*
_output_shapes
: 
�
%quantized_conv2d_2/random_uniform/mulMul/quantized_conv2d_2/random_uniform/RandomUniform%quantized_conv2d_2/random_uniform/sub*
T0*&
_output_shapes
:@@
�
!quantized_conv2d_2/random_uniformAdd%quantized_conv2d_2/random_uniform/mul%quantized_conv2d_2/random_uniform/min*
T0*&
_output_shapes
:@@
�
quantized_conv2d_2/kernel
VariableV2*
dtype0*
shape:@@*
shared_name *
	container *&
_output_shapes
:@@
�
 quantized_conv2d_2/kernel/AssignAssignquantized_conv2d_2/kernel!quantized_conv2d_2/random_uniform*
validate_shape(*,
_class"
 loc:@quantized_conv2d_2/kernel*
use_locking(*
T0*&
_output_shapes
:@@
�
quantized_conv2d_2/kernel/readIdentityquantized_conv2d_2/kernel*,
_class"
 loc:@quantized_conv2d_2/kernel*
T0*&
_output_shapes
:@@
e
quantized_conv2d_2/ConstConst*
dtype0*
valueB@*    *
_output_shapes
:@
�
quantized_conv2d_2/bias
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
quantized_conv2d_2/bias/AssignAssignquantized_conv2d_2/biasquantized_conv2d_2/Const*
validate_shape(**
_class 
loc:@quantized_conv2d_2/bias*
use_locking(*
T0*
_output_shapes
:@
�
quantized_conv2d_2/bias/readIdentityquantized_conv2d_2/bias**
_class 
loc:@quantized_conv2d_2/bias*
T0*
_output_shapes
:@
]
quantized_conv2d_2/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_2/mulMulquantized_conv2d_2/kernel/readquantized_conv2d_2/mul/y*
T0*&
_output_shapes
:@@
j
quantized_conv2d_2/RoundRoundquantized_conv2d_2/mul*
T0*&
_output_shapes
:@@
�
quantized_conv2d_2/subSubquantized_conv2d_2/Roundquantized_conv2d_2/mul*
T0*&
_output_shapes
:@@
x
quantized_conv2d_2/StopGradientStopGradientquantized_conv2d_2/sub*
T0*&
_output_shapes
:@@
�
quantized_conv2d_2/addAddquantized_conv2d_2/mulquantized_conv2d_2/StopGradient*
T0*&
_output_shapes
:@@
e
quantized_conv2d_2/Const_1Const*
dtype0*
valueB :
���������*
_output_shapes
: 
k
quantized_conv2d_2/CastCastquantized_conv2d_2/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
\
quantized_conv2d_2/Const_2Const*
dtype0*
value	B :*
_output_shapes
: 
m
quantized_conv2d_2/Cast_1Castquantized_conv2d_2/Const_2*

DstT0*

SrcT0*
_output_shapes
: 
�
(quantized_conv2d_2/clip_by_value/MinimumMinimumquantized_conv2d_2/addquantized_conv2d_2/Cast_1*
T0*&
_output_shapes
:@@
�
 quantized_conv2d_2/clip_by_valueMaximum(quantized_conv2d_2/clip_by_value/Minimumquantized_conv2d_2/Cast*
T0*&
_output_shapes
:@@
]
quantized_conv2d_2/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_2/divRealDiv quantized_conv2d_2/clip_by_valuequantized_conv2d_2/div/y*
T0*&
_output_shapes
:@@
�
!quantized_conv2d_2/StopGradient_1StopGradientmax_pooling2d_1/MaxPool*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_2/mul_1/xConst*
dtype0*
valueB
 *  �*
_output_shapes
: 
�
quantized_conv2d_2/mul_1Mulquantized_conv2d_2/mul_1/x!quantized_conv2d_2/StopGradient_1*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_2/sub_1Submax_pooling2d_1/MaxPoolquantized_conv2d_2/mul_1*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_2/mul_2/yConst*
dtype0*
valueB
 *���=*
_output_shapes
: 
�
quantized_conv2d_2/mul_2Mulquantized_conv2d_2/sub_1quantized_conv2d_2/mul_2/y*
T0*/
_output_shapes
:���������@
}
$quantized_conv2d_2/convolution/ShapeConst*
dtype0*%
valueB"      @   @   *
_output_shapes
:
}
,quantized_conv2d_2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
quantized_conv2d_2/convolutionConv2Dquantized_conv2d_2/mul_2quantized_conv2d_2/div*/
_output_shapes
:���������@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
!quantized_conv2d_2/StopGradient_2StopGradientquantized_conv2d_2/convolution*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_2/mul_3/xConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
�
quantized_conv2d_2/mul_3Mulquantized_conv2d_2/mul_3/x!quantized_conv2d_2/StopGradient_2*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_2/sub_2Subquantized_conv2d_2/convolutionquantized_conv2d_2/mul_3*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_2/mul_4/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_2/mul_4Mulquantized_conv2d_2/sub_2quantized_conv2d_2/mul_4/y*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_2/BiasAddBiasAddquantized_conv2d_2/mul_4quantized_conv2d_2/bias/read*
data_formatNHWC*
T0*/
_output_shapes
:���������@
h
batch_normalization_2/ConstConst*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
batch_normalization_2/gamma
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gammabatch_normalization_2/Const*
validate_shape(*.
_class$
" loc:@batch_normalization_2/gamma*
use_locking(*
T0*
_output_shapes
:@
�
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*.
_class$
" loc:@batch_normalization_2/gamma*
T0*
_output_shapes
:@
j
batch_normalization_2/Const_1Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
batch_normalization_2/beta
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/betabatch_normalization_2/Const_1*
validate_shape(*-
_class#
!loc:@batch_normalization_2/beta*
use_locking(*
T0*
_output_shapes
:@
�
batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*-
_class#
!loc:@batch_normalization_2/beta*
T0*
_output_shapes
:@
j
batch_normalization_2/Const_2Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
!batch_normalization_2/moving_mean
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_meanbatch_normalization_2/Const_2*
validate_shape(*4
_class*
(&loc:@batch_normalization_2/moving_mean*
use_locking(*
T0*
_output_shapes
:@
�
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*4
_class*
(&loc:@batch_normalization_2/moving_mean*
T0*
_output_shapes
:@
j
batch_normalization_2/Const_3Const*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
%batch_normalization_2/moving_variance
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variancebatch_normalization_2/Const_3*
validate_shape(*8
_class.
,*loc:@batch_normalization_2/moving_variance*
use_locking(*
T0*
_output_shapes
:@
�
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*8
_class.
,*loc:@batch_normalization_2/moving_variance*
T0*
_output_shapes
:@
�
4batch_normalization_2/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
"batch_normalization_2/moments/MeanMeanquantized_conv2d_2/BiasAdd4batch_normalization_2/moments/Mean/reduction_indices*

Tidx0*
T0*
	keep_dims(*&
_output_shapes
:@
�
*batch_normalization_2/moments/StopGradientStopGradient"batch_normalization_2/moments/Mean*
T0*&
_output_shapes
:@
�
!batch_normalization_2/moments/SubSubquantized_conv2d_2/BiasAdd*batch_normalization_2/moments/StopGradient*
T0*/
_output_shapes
:���������@
�
<batch_normalization_2/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
*batch_normalization_2/moments/shifted_meanMean!batch_normalization_2/moments/Sub<batch_normalization_2/moments/shifted_mean/reduction_indices*

Tidx0*
T0*
	keep_dims(*&
_output_shapes
:@
�
/batch_normalization_2/moments/SquaredDifferenceSquaredDifferencequantized_conv2d_2/BiasAdd*batch_normalization_2/moments/StopGradient*
T0*/
_output_shapes
:���������@
�
6batch_normalization_2/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
$batch_normalization_2/moments/Mean_1Mean/batch_normalization_2/moments/SquaredDifference6batch_normalization_2/moments/Mean_1/reduction_indices*

Tidx0*
T0*
	keep_dims(*&
_output_shapes
:@
�
$batch_normalization_2/moments/SquareSquare*batch_normalization_2/moments/shifted_mean*
T0*&
_output_shapes
:@
�
&batch_normalization_2/moments/varianceSub$batch_normalization_2/moments/Mean_1$batch_normalization_2/moments/Square*
T0*&
_output_shapes
:@
�
"batch_normalization_2/moments/meanAdd*batch_normalization_2/moments/shifted_mean*batch_normalization_2/moments/StopGradient*
T0*&
_output_shapes
:@
�
%batch_normalization_2/moments/SqueezeSqueeze"batch_normalization_2/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@
�
'batch_normalization_2/moments/Squeeze_1Squeeze&batch_normalization_2/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@
j
%batch_normalization_2/batchnorm/add/yConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
#batch_normalization_2/batchnorm/addAdd'batch_normalization_2/moments/Squeeze_1%batch_normalization_2/batchnorm/add/y*
T0*
_output_shapes
:@
x
%batch_normalization_2/batchnorm/RsqrtRsqrt#batch_normalization_2/batchnorm/add*
T0*
_output_shapes
:@
�
#batch_normalization_2/batchnorm/mulMul%batch_normalization_2/batchnorm/Rsqrt batch_normalization_2/gamma/read*
T0*
_output_shapes
:@
�
%batch_normalization_2/batchnorm/mul_1Mulquantized_conv2d_2/BiasAdd#batch_normalization_2/batchnorm/mul*
T0*/
_output_shapes
:���������@
�
%batch_normalization_2/batchnorm/mul_2Mul%batch_normalization_2/moments/Squeeze#batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@
�
#batch_normalization_2/batchnorm/subSubbatch_normalization_2/beta/read%batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@
�
%batch_normalization_2/batchnorm/add_1Add%batch_normalization_2/batchnorm/mul_1#batch_normalization_2/batchnorm/sub*
T0*/
_output_shapes
:���������@
�
+batch_normalization_2/AssignMovingAvg/decayConst*
dtype0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB
 *
�#<*
_output_shapes
: 
�
)batch_normalization_2/AssignMovingAvg/subSub&batch_normalization_2/moving_mean/read%batch_normalization_2/moments/Squeeze*4
_class*
(&loc:@batch_normalization_2/moving_mean*
T0*
_output_shapes
:@
�
)batch_normalization_2/AssignMovingAvg/mulMul)batch_normalization_2/AssignMovingAvg/sub+batch_normalization_2/AssignMovingAvg/decay*4
_class*
(&loc:@batch_normalization_2/moving_mean*
T0*
_output_shapes
:@
�
%batch_normalization_2/AssignMovingAvg	AssignSub!batch_normalization_2/moving_mean)batch_normalization_2/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_2/moving_mean*
use_locking( *
T0*
_output_shapes
:@
�
-batch_normalization_2/AssignMovingAvg_1/decayConst*
dtype0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB
 *
�#<*
_output_shapes
: 
�
+batch_normalization_2/AssignMovingAvg_1/subSub*batch_normalization_2/moving_variance/read'batch_normalization_2/moments/Squeeze_1*8
_class.
,*loc:@batch_normalization_2/moving_variance*
T0*
_output_shapes
:@
�
+batch_normalization_2/AssignMovingAvg_1/mulMul+batch_normalization_2/AssignMovingAvg_1/sub-batch_normalization_2/AssignMovingAvg_1/decay*8
_class.
,*loc:@batch_normalization_2/moving_variance*
T0*
_output_shapes
:@
�
'batch_normalization_2/AssignMovingAvg_1	AssignSub%batch_normalization_2/moving_variance+batch_normalization_2/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_2/moving_variance*
use_locking( *
T0*
_output_shapes
:@
�
!batch_normalization_2/cond/SwitchSwitch*batch_normalization_1/keras_learning_phase*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes

::
w
#batch_normalization_2/cond/switch_tIdentity#batch_normalization_2/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_2/cond/switch_fIdentity!batch_normalization_2/cond/Switch*
T0
*
_output_shapes
:
}
"batch_normalization_2/cond/pred_idIdentity*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
:
�
#batch_normalization_2/cond/Switch_1Switch%batch_normalization_2/batchnorm/add_1"batch_normalization_2/cond/pred_id*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*J
_output_shapes8
6:���������@:���������@
�
*batch_normalization_2/cond/batchnorm/add/yConst$^batch_normalization_2/cond/switch_f*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
/batch_normalization_2/cond/batchnorm/add/SwitchSwitch*batch_normalization_2/moving_variance/read"batch_normalization_2/cond/pred_id*8
_class.
,*loc:@batch_normalization_2/moving_variance*
T0* 
_output_shapes
:@:@
�
(batch_normalization_2/cond/batchnorm/addAdd/batch_normalization_2/cond/batchnorm/add/Switch*batch_normalization_2/cond/batchnorm/add/y*
T0*
_output_shapes
:@
�
*batch_normalization_2/cond/batchnorm/RsqrtRsqrt(batch_normalization_2/cond/batchnorm/add*
T0*
_output_shapes
:@
�
/batch_normalization_2/cond/batchnorm/mul/SwitchSwitch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id*.
_class$
" loc:@batch_normalization_2/gamma*
T0* 
_output_shapes
:@:@
�
(batch_normalization_2/cond/batchnorm/mulMul*batch_normalization_2/cond/batchnorm/Rsqrt/batch_normalization_2/cond/batchnorm/mul/Switch*
T0*
_output_shapes
:@
�
1batch_normalization_2/cond/batchnorm/mul_1/SwitchSwitchquantized_conv2d_2/BiasAdd"batch_normalization_2/cond/pred_id*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
T0*J
_output_shapes8
6:���������@:���������@
�
*batch_normalization_2/cond/batchnorm/mul_1Mul1batch_normalization_2/cond/batchnorm/mul_1/Switch(batch_normalization_2/cond/batchnorm/mul*
T0*/
_output_shapes
:���������@
�
1batch_normalization_2/cond/batchnorm/mul_2/SwitchSwitch&batch_normalization_2/moving_mean/read"batch_normalization_2/cond/pred_id*4
_class*
(&loc:@batch_normalization_2/moving_mean*
T0* 
_output_shapes
:@:@
�
*batch_normalization_2/cond/batchnorm/mul_2Mul1batch_normalization_2/cond/batchnorm/mul_2/Switch(batch_normalization_2/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
/batch_normalization_2/cond/batchnorm/sub/SwitchSwitchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id*-
_class#
!loc:@batch_normalization_2/beta*
T0* 
_output_shapes
:@:@
�
(batch_normalization_2/cond/batchnorm/subSub/batch_normalization_2/cond/batchnorm/sub/Switch*batch_normalization_2/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
*batch_normalization_2/cond/batchnorm/add_1Add*batch_normalization_2/cond/batchnorm/mul_1(batch_normalization_2/cond/batchnorm/sub*
T0*/
_output_shapes
:���������@
�
 batch_normalization_2/cond/MergeMerge*batch_normalization_2/cond/batchnorm/add_1%batch_normalization_2/cond/Switch_1:1*
N*
T0*1
_output_shapes
:���������@: 
W
activation_2/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_2/mulMul batch_normalization_2/cond/Mergeactivation_2/mul/y*
T0*/
_output_shapes
:���������@
g
activation_2/RoundRoundactivation_2/mul*
T0*/
_output_shapes
:���������@
w
activation_2/subSubactivation_2/Roundactivation_2/mul*
T0*/
_output_shapes
:���������@
u
activation_2/StopGradientStopGradientactivation_2/sub*
T0*/
_output_shapes
:���������@
~
activation_2/addAddactivation_2/mulactivation_2/StopGradient*
T0*/
_output_shapes
:���������@
T
activation_2/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
]
activation_2/CastCastactivation_2/Const*

DstT0*

SrcT0*
_output_shapes
: 
V
activation_2/Const_1Const*
dtype0*
value	B :*
_output_shapes
: 
a
activation_2/Cast_1Castactivation_2/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
�
"activation_2/clip_by_value/MinimumMinimumactivation_2/addactivation_2/Cast_1*
T0*/
_output_shapes
:���������@
�
activation_2/clip_by_valueMaximum"activation_2/clip_by_value/Minimumactivation_2/Cast*
T0*/
_output_shapes
:���������@
W
activation_2/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_2/divRealDivactivation_2/clip_by_valueactivation_2/div/y*
T0*/
_output_shapes
:���������@
�
max_pooling2d_2/MaxPoolMaxPoolactivation_2/div*/
_output_shapes
:���������@*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
�
'quantized_conv2d_3/random_uniform/shapeConst*
dtype0*%
valueB"      @   @   *
_output_shapes
:
j
%quantized_conv2d_3/random_uniform/minConst*
dtype0*
valueB
 *  ��*
_output_shapes
: 
j
%quantized_conv2d_3/random_uniform/maxConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
/quantized_conv2d_3/random_uniform/RandomUniformRandomUniform'quantized_conv2d_3/random_uniform/shape*
dtype0*
seed2�֘*
seed���)*
T0*&
_output_shapes
:@@
�
%quantized_conv2d_3/random_uniform/subSub%quantized_conv2d_3/random_uniform/max%quantized_conv2d_3/random_uniform/min*
T0*
_output_shapes
: 
�
%quantized_conv2d_3/random_uniform/mulMul/quantized_conv2d_3/random_uniform/RandomUniform%quantized_conv2d_3/random_uniform/sub*
T0*&
_output_shapes
:@@
�
!quantized_conv2d_3/random_uniformAdd%quantized_conv2d_3/random_uniform/mul%quantized_conv2d_3/random_uniform/min*
T0*&
_output_shapes
:@@
�
quantized_conv2d_3/kernel
VariableV2*
dtype0*
shape:@@*
shared_name *
	container *&
_output_shapes
:@@
�
 quantized_conv2d_3/kernel/AssignAssignquantized_conv2d_3/kernel!quantized_conv2d_3/random_uniform*
validate_shape(*,
_class"
 loc:@quantized_conv2d_3/kernel*
use_locking(*
T0*&
_output_shapes
:@@
�
quantized_conv2d_3/kernel/readIdentityquantized_conv2d_3/kernel*,
_class"
 loc:@quantized_conv2d_3/kernel*
T0*&
_output_shapes
:@@
e
quantized_conv2d_3/ConstConst*
dtype0*
valueB@*    *
_output_shapes
:@
�
quantized_conv2d_3/bias
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
quantized_conv2d_3/bias/AssignAssignquantized_conv2d_3/biasquantized_conv2d_3/Const*
validate_shape(**
_class 
loc:@quantized_conv2d_3/bias*
use_locking(*
T0*
_output_shapes
:@
�
quantized_conv2d_3/bias/readIdentityquantized_conv2d_3/bias**
_class 
loc:@quantized_conv2d_3/bias*
T0*
_output_shapes
:@
]
quantized_conv2d_3/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_3/mulMulquantized_conv2d_3/kernel/readquantized_conv2d_3/mul/y*
T0*&
_output_shapes
:@@
j
quantized_conv2d_3/RoundRoundquantized_conv2d_3/mul*
T0*&
_output_shapes
:@@
�
quantized_conv2d_3/subSubquantized_conv2d_3/Roundquantized_conv2d_3/mul*
T0*&
_output_shapes
:@@
x
quantized_conv2d_3/StopGradientStopGradientquantized_conv2d_3/sub*
T0*&
_output_shapes
:@@
�
quantized_conv2d_3/addAddquantized_conv2d_3/mulquantized_conv2d_3/StopGradient*
T0*&
_output_shapes
:@@
e
quantized_conv2d_3/Const_1Const*
dtype0*
valueB :
���������*
_output_shapes
: 
k
quantized_conv2d_3/CastCastquantized_conv2d_3/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
\
quantized_conv2d_3/Const_2Const*
dtype0*
value	B :*
_output_shapes
: 
m
quantized_conv2d_3/Cast_1Castquantized_conv2d_3/Const_2*

DstT0*

SrcT0*
_output_shapes
: 
�
(quantized_conv2d_3/clip_by_value/MinimumMinimumquantized_conv2d_3/addquantized_conv2d_3/Cast_1*
T0*&
_output_shapes
:@@
�
 quantized_conv2d_3/clip_by_valueMaximum(quantized_conv2d_3/clip_by_value/Minimumquantized_conv2d_3/Cast*
T0*&
_output_shapes
:@@
]
quantized_conv2d_3/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_3/divRealDiv quantized_conv2d_3/clip_by_valuequantized_conv2d_3/div/y*
T0*&
_output_shapes
:@@
�
!quantized_conv2d_3/StopGradient_1StopGradientmax_pooling2d_2/MaxPool*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_3/mul_1/xConst*
dtype0*
valueB
 *  �*
_output_shapes
: 
�
quantized_conv2d_3/mul_1Mulquantized_conv2d_3/mul_1/x!quantized_conv2d_3/StopGradient_1*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_3/sub_1Submax_pooling2d_2/MaxPoolquantized_conv2d_3/mul_1*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_3/mul_2/yConst*
dtype0*
valueB
 *���=*
_output_shapes
: 
�
quantized_conv2d_3/mul_2Mulquantized_conv2d_3/sub_1quantized_conv2d_3/mul_2/y*
T0*/
_output_shapes
:���������@
}
$quantized_conv2d_3/convolution/ShapeConst*
dtype0*%
valueB"      @   @   *
_output_shapes
:
}
,quantized_conv2d_3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
quantized_conv2d_3/convolutionConv2Dquantized_conv2d_3/mul_2quantized_conv2d_3/div*/
_output_shapes
:���������@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
!quantized_conv2d_3/StopGradient_2StopGradientquantized_conv2d_3/convolution*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_3/mul_3/xConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
�
quantized_conv2d_3/mul_3Mulquantized_conv2d_3/mul_3/x!quantized_conv2d_3/StopGradient_2*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_3/sub_2Subquantized_conv2d_3/convolutionquantized_conv2d_3/mul_3*
T0*/
_output_shapes
:���������@
_
quantized_conv2d_3/mul_4/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
quantized_conv2d_3/mul_4Mulquantized_conv2d_3/sub_2quantized_conv2d_3/mul_4/y*
T0*/
_output_shapes
:���������@
�
quantized_conv2d_3/BiasAddBiasAddquantized_conv2d_3/mul_4quantized_conv2d_3/bias/read*
data_formatNHWC*
T0*/
_output_shapes
:���������@
h
batch_normalization_3/ConstConst*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
batch_normalization_3/gamma
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
"batch_normalization_3/gamma/AssignAssignbatch_normalization_3/gammabatch_normalization_3/Const*
validate_shape(*.
_class$
" loc:@batch_normalization_3/gamma*
use_locking(*
T0*
_output_shapes
:@
�
 batch_normalization_3/gamma/readIdentitybatch_normalization_3/gamma*.
_class$
" loc:@batch_normalization_3/gamma*
T0*
_output_shapes
:@
j
batch_normalization_3/Const_1Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
batch_normalization_3/beta
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
!batch_normalization_3/beta/AssignAssignbatch_normalization_3/betabatch_normalization_3/Const_1*
validate_shape(*-
_class#
!loc:@batch_normalization_3/beta*
use_locking(*
T0*
_output_shapes
:@
�
batch_normalization_3/beta/readIdentitybatch_normalization_3/beta*-
_class#
!loc:@batch_normalization_3/beta*
T0*
_output_shapes
:@
j
batch_normalization_3/Const_2Const*
dtype0*
valueB@*    *
_output_shapes
:@
�
!batch_normalization_3/moving_mean
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
(batch_normalization_3/moving_mean/AssignAssign!batch_normalization_3/moving_meanbatch_normalization_3/Const_2*
validate_shape(*4
_class*
(&loc:@batch_normalization_3/moving_mean*
use_locking(*
T0*
_output_shapes
:@
�
&batch_normalization_3/moving_mean/readIdentity!batch_normalization_3/moving_mean*4
_class*
(&loc:@batch_normalization_3/moving_mean*
T0*
_output_shapes
:@
j
batch_normalization_3/Const_3Const*
dtype0*
valueB@*  �?*
_output_shapes
:@
�
%batch_normalization_3/moving_variance
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
,batch_normalization_3/moving_variance/AssignAssign%batch_normalization_3/moving_variancebatch_normalization_3/Const_3*
validate_shape(*8
_class.
,*loc:@batch_normalization_3/moving_variance*
use_locking(*
T0*
_output_shapes
:@
�
*batch_normalization_3/moving_variance/readIdentity%batch_normalization_3/moving_variance*8
_class.
,*loc:@batch_normalization_3/moving_variance*
T0*
_output_shapes
:@
�
4batch_normalization_3/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
"batch_normalization_3/moments/MeanMeanquantized_conv2d_3/BiasAdd4batch_normalization_3/moments/Mean/reduction_indices*

Tidx0*
T0*
	keep_dims(*&
_output_shapes
:@
�
*batch_normalization_3/moments/StopGradientStopGradient"batch_normalization_3/moments/Mean*
T0*&
_output_shapes
:@
�
!batch_normalization_3/moments/SubSubquantized_conv2d_3/BiasAdd*batch_normalization_3/moments/StopGradient*
T0*/
_output_shapes
:���������@
�
<batch_normalization_3/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
*batch_normalization_3/moments/shifted_meanMean!batch_normalization_3/moments/Sub<batch_normalization_3/moments/shifted_mean/reduction_indices*

Tidx0*
T0*
	keep_dims(*&
_output_shapes
:@
�
/batch_normalization_3/moments/SquaredDifferenceSquaredDifferencequantized_conv2d_3/BiasAdd*batch_normalization_3/moments/StopGradient*
T0*/
_output_shapes
:���������@
�
6batch_normalization_3/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          *
_output_shapes
:
�
$batch_normalization_3/moments/Mean_1Mean/batch_normalization_3/moments/SquaredDifference6batch_normalization_3/moments/Mean_1/reduction_indices*

Tidx0*
T0*
	keep_dims(*&
_output_shapes
:@
�
$batch_normalization_3/moments/SquareSquare*batch_normalization_3/moments/shifted_mean*
T0*&
_output_shapes
:@
�
&batch_normalization_3/moments/varianceSub$batch_normalization_3/moments/Mean_1$batch_normalization_3/moments/Square*
T0*&
_output_shapes
:@
�
"batch_normalization_3/moments/meanAdd*batch_normalization_3/moments/shifted_mean*batch_normalization_3/moments/StopGradient*
T0*&
_output_shapes
:@
�
%batch_normalization_3/moments/SqueezeSqueeze"batch_normalization_3/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@
�
'batch_normalization_3/moments/Squeeze_1Squeeze&batch_normalization_3/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@
j
%batch_normalization_3/batchnorm/add/yConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
#batch_normalization_3/batchnorm/addAdd'batch_normalization_3/moments/Squeeze_1%batch_normalization_3/batchnorm/add/y*
T0*
_output_shapes
:@
x
%batch_normalization_3/batchnorm/RsqrtRsqrt#batch_normalization_3/batchnorm/add*
T0*
_output_shapes
:@
�
#batch_normalization_3/batchnorm/mulMul%batch_normalization_3/batchnorm/Rsqrt batch_normalization_3/gamma/read*
T0*
_output_shapes
:@
�
%batch_normalization_3/batchnorm/mul_1Mulquantized_conv2d_3/BiasAdd#batch_normalization_3/batchnorm/mul*
T0*/
_output_shapes
:���������@
�
%batch_normalization_3/batchnorm/mul_2Mul%batch_normalization_3/moments/Squeeze#batch_normalization_3/batchnorm/mul*
T0*
_output_shapes
:@
�
#batch_normalization_3/batchnorm/subSubbatch_normalization_3/beta/read%batch_normalization_3/batchnorm/mul_2*
T0*
_output_shapes
:@
�
%batch_normalization_3/batchnorm/add_1Add%batch_normalization_3/batchnorm/mul_1#batch_normalization_3/batchnorm/sub*
T0*/
_output_shapes
:���������@
�
+batch_normalization_3/AssignMovingAvg/decayConst*
dtype0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
valueB
 *
�#<*
_output_shapes
: 
�
)batch_normalization_3/AssignMovingAvg/subSub&batch_normalization_3/moving_mean/read%batch_normalization_3/moments/Squeeze*4
_class*
(&loc:@batch_normalization_3/moving_mean*
T0*
_output_shapes
:@
�
)batch_normalization_3/AssignMovingAvg/mulMul)batch_normalization_3/AssignMovingAvg/sub+batch_normalization_3/AssignMovingAvg/decay*4
_class*
(&loc:@batch_normalization_3/moving_mean*
T0*
_output_shapes
:@
�
%batch_normalization_3/AssignMovingAvg	AssignSub!batch_normalization_3/moving_mean)batch_normalization_3/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_3/moving_mean*
use_locking( *
T0*
_output_shapes
:@
�
-batch_normalization_3/AssignMovingAvg_1/decayConst*
dtype0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
valueB
 *
�#<*
_output_shapes
: 
�
+batch_normalization_3/AssignMovingAvg_1/subSub*batch_normalization_3/moving_variance/read'batch_normalization_3/moments/Squeeze_1*8
_class.
,*loc:@batch_normalization_3/moving_variance*
T0*
_output_shapes
:@
�
+batch_normalization_3/AssignMovingAvg_1/mulMul+batch_normalization_3/AssignMovingAvg_1/sub-batch_normalization_3/AssignMovingAvg_1/decay*8
_class.
,*loc:@batch_normalization_3/moving_variance*
T0*
_output_shapes
:@
�
'batch_normalization_3/AssignMovingAvg_1	AssignSub%batch_normalization_3/moving_variance+batch_normalization_3/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_3/moving_variance*
use_locking( *
T0*
_output_shapes
:@
�
!batch_normalization_3/cond/SwitchSwitch*batch_normalization_1/keras_learning_phase*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes

::
w
#batch_normalization_3/cond/switch_tIdentity#batch_normalization_3/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_3/cond/switch_fIdentity!batch_normalization_3/cond/Switch*
T0
*
_output_shapes
:
}
"batch_normalization_3/cond/pred_idIdentity*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
:
�
#batch_normalization_3/cond/Switch_1Switch%batch_normalization_3/batchnorm/add_1"batch_normalization_3/cond/pred_id*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*J
_output_shapes8
6:���������@:���������@
�
*batch_normalization_3/cond/batchnorm/add/yConst$^batch_normalization_3/cond/switch_f*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
/batch_normalization_3/cond/batchnorm/add/SwitchSwitch*batch_normalization_3/moving_variance/read"batch_normalization_3/cond/pred_id*8
_class.
,*loc:@batch_normalization_3/moving_variance*
T0* 
_output_shapes
:@:@
�
(batch_normalization_3/cond/batchnorm/addAdd/batch_normalization_3/cond/batchnorm/add/Switch*batch_normalization_3/cond/batchnorm/add/y*
T0*
_output_shapes
:@
�
*batch_normalization_3/cond/batchnorm/RsqrtRsqrt(batch_normalization_3/cond/batchnorm/add*
T0*
_output_shapes
:@
�
/batch_normalization_3/cond/batchnorm/mul/SwitchSwitch batch_normalization_3/gamma/read"batch_normalization_3/cond/pred_id*.
_class$
" loc:@batch_normalization_3/gamma*
T0* 
_output_shapes
:@:@
�
(batch_normalization_3/cond/batchnorm/mulMul*batch_normalization_3/cond/batchnorm/Rsqrt/batch_normalization_3/cond/batchnorm/mul/Switch*
T0*
_output_shapes
:@
�
1batch_normalization_3/cond/batchnorm/mul_1/SwitchSwitchquantized_conv2d_3/BiasAdd"batch_normalization_3/cond/pred_id*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
T0*J
_output_shapes8
6:���������@:���������@
�
*batch_normalization_3/cond/batchnorm/mul_1Mul1batch_normalization_3/cond/batchnorm/mul_1/Switch(batch_normalization_3/cond/batchnorm/mul*
T0*/
_output_shapes
:���������@
�
1batch_normalization_3/cond/batchnorm/mul_2/SwitchSwitch&batch_normalization_3/moving_mean/read"batch_normalization_3/cond/pred_id*4
_class*
(&loc:@batch_normalization_3/moving_mean*
T0* 
_output_shapes
:@:@
�
*batch_normalization_3/cond/batchnorm/mul_2Mul1batch_normalization_3/cond/batchnorm/mul_2/Switch(batch_normalization_3/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
/batch_normalization_3/cond/batchnorm/sub/SwitchSwitchbatch_normalization_3/beta/read"batch_normalization_3/cond/pred_id*-
_class#
!loc:@batch_normalization_3/beta*
T0* 
_output_shapes
:@:@
�
(batch_normalization_3/cond/batchnorm/subSub/batch_normalization_3/cond/batchnorm/sub/Switch*batch_normalization_3/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
*batch_normalization_3/cond/batchnorm/add_1Add*batch_normalization_3/cond/batchnorm/mul_1(batch_normalization_3/cond/batchnorm/sub*
T0*/
_output_shapes
:���������@
�
 batch_normalization_3/cond/MergeMerge*batch_normalization_3/cond/batchnorm/add_1%batch_normalization_3/cond/Switch_1:1*
N*
T0*1
_output_shapes
:���������@: 
W
activation_3/mul/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_3/mulMul batch_normalization_3/cond/Mergeactivation_3/mul/y*
T0*/
_output_shapes
:���������@
g
activation_3/RoundRoundactivation_3/mul*
T0*/
_output_shapes
:���������@
w
activation_3/subSubactivation_3/Roundactivation_3/mul*
T0*/
_output_shapes
:���������@
u
activation_3/StopGradientStopGradientactivation_3/sub*
T0*/
_output_shapes
:���������@
~
activation_3/addAddactivation_3/mulactivation_3/StopGradient*
T0*/
_output_shapes
:���������@
T
activation_3/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
]
activation_3/CastCastactivation_3/Const*

DstT0*

SrcT0*
_output_shapes
: 
V
activation_3/Const_1Const*
dtype0*
value	B :*
_output_shapes
: 
a
activation_3/Cast_1Castactivation_3/Const_1*

DstT0*

SrcT0*
_output_shapes
: 
�
"activation_3/clip_by_value/MinimumMinimumactivation_3/addactivation_3/Cast_1*
T0*/
_output_shapes
:���������@
�
activation_3/clip_by_valueMaximum"activation_3/clip_by_value/Minimumactivation_3/Cast*
T0*/
_output_shapes
:���������@
W
activation_3/div/yConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
�
activation_3/divRealDivactivation_3/clip_by_valueactivation_3/div/y*
T0*/
_output_shapes
:���������@
�
max_pooling2d_3/MaxPoolMaxPoolactivation_3/div*/
_output_shapes
:���������@*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
f
flatten_1/ShapeShapemax_pooling2d_3/MaxPool*
out_type0*
T0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
Y
flatten_1/ConstConst*
dtype0*
valueB: *
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
\
flatten_1/stack/0Const*
dtype0*
valueB :
���������*
_output_shapes
: 
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
_output_shapes
:*

axis *
T0*
N
�
flatten_1/ReshapeReshapemax_pooling2d_3/MaxPoolflatten_1/stack*
Tshape0*
T0*0
_output_shapes
:������������������
m
dense_1/random_uniform/shapeConst*
dtype0*
valueB"   
   *
_output_shapes
:
_
dense_1/random_uniform/minConst*
dtype0*
valueB
 *���*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
dtype0*
valueB
 *��=*
_output_shapes
: 
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
dtype0*
seed2Ҁ�*
seed���)*
T0*
_output_shapes
:	�

z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes
:	�


dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes
:	�

�
dense_1/kernel
VariableV2*
dtype0*
shape:	�
*
shared_name *
	container *
_output_shapes
:	�

�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0*
_output_shapes
:	�

|
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	�

�
dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������

h
batch_normalization_4/ConstConst*
dtype0*
valueB
*  �?*
_output_shapes
:

�
batch_normalization_4/gamma
VariableV2*
dtype0*
shape:
*
shared_name *
	container *
_output_shapes
:

�
"batch_normalization_4/gamma/AssignAssignbatch_normalization_4/gammabatch_normalization_4/Const*
validate_shape(*.
_class$
" loc:@batch_normalization_4/gamma*
use_locking(*
T0*
_output_shapes
:

�
 batch_normalization_4/gamma/readIdentitybatch_normalization_4/gamma*.
_class$
" loc:@batch_normalization_4/gamma*
T0*
_output_shapes
:

j
batch_normalization_4/Const_1Const*
dtype0*
valueB
*    *
_output_shapes
:

�
batch_normalization_4/beta
VariableV2*
dtype0*
shape:
*
shared_name *
	container *
_output_shapes
:

�
!batch_normalization_4/beta/AssignAssignbatch_normalization_4/betabatch_normalization_4/Const_1*
validate_shape(*-
_class#
!loc:@batch_normalization_4/beta*
use_locking(*
T0*
_output_shapes
:

�
batch_normalization_4/beta/readIdentitybatch_normalization_4/beta*-
_class#
!loc:@batch_normalization_4/beta*
T0*
_output_shapes
:

j
batch_normalization_4/Const_2Const*
dtype0*
valueB
*    *
_output_shapes
:

�
!batch_normalization_4/moving_mean
VariableV2*
dtype0*
shape:
*
shared_name *
	container *
_output_shapes
:

�
(batch_normalization_4/moving_mean/AssignAssign!batch_normalization_4/moving_meanbatch_normalization_4/Const_2*
validate_shape(*4
_class*
(&loc:@batch_normalization_4/moving_mean*
use_locking(*
T0*
_output_shapes
:

�
&batch_normalization_4/moving_mean/readIdentity!batch_normalization_4/moving_mean*4
_class*
(&loc:@batch_normalization_4/moving_mean*
T0*
_output_shapes
:

j
batch_normalization_4/Const_3Const*
dtype0*
valueB
*  �?*
_output_shapes
:

�
%batch_normalization_4/moving_variance
VariableV2*
dtype0*
shape:
*
shared_name *
	container *
_output_shapes
:

�
,batch_normalization_4/moving_variance/AssignAssign%batch_normalization_4/moving_variancebatch_normalization_4/Const_3*
validate_shape(*8
_class.
,*loc:@batch_normalization_4/moving_variance*
use_locking(*
T0*
_output_shapes
:

�
*batch_normalization_4/moving_variance/readIdentity%batch_normalization_4/moving_variance*8
_class.
,*loc:@batch_normalization_4/moving_variance*
T0*
_output_shapes
:

~
4batch_normalization_4/moments/Mean/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
�
"batch_normalization_4/moments/MeanMeandense_1/MatMul4batch_normalization_4/moments/Mean/reduction_indices*

Tidx0*
T0*
	keep_dims(*
_output_shapes

:

�
*batch_normalization_4/moments/StopGradientStopGradient"batch_normalization_4/moments/Mean*
T0*
_output_shapes

:

�
!batch_normalization_4/moments/SubSubdense_1/MatMul*batch_normalization_4/moments/StopGradient*
T0*'
_output_shapes
:���������

�
<batch_normalization_4/moments/shifted_mean/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
�
*batch_normalization_4/moments/shifted_meanMean!batch_normalization_4/moments/Sub<batch_normalization_4/moments/shifted_mean/reduction_indices*

Tidx0*
T0*
	keep_dims(*
_output_shapes

:

�
/batch_normalization_4/moments/SquaredDifferenceSquaredDifferencedense_1/MatMul*batch_normalization_4/moments/StopGradient*
T0*'
_output_shapes
:���������

�
6batch_normalization_4/moments/Mean_1/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
�
$batch_normalization_4/moments/Mean_1Mean/batch_normalization_4/moments/SquaredDifference6batch_normalization_4/moments/Mean_1/reduction_indices*

Tidx0*
T0*
	keep_dims(*
_output_shapes

:

�
$batch_normalization_4/moments/SquareSquare*batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes

:

�
&batch_normalization_4/moments/varianceSub$batch_normalization_4/moments/Mean_1$batch_normalization_4/moments/Square*
T0*
_output_shapes

:

�
"batch_normalization_4/moments/meanAdd*batch_normalization_4/moments/shifted_mean*batch_normalization_4/moments/StopGradient*
T0*
_output_shapes

:

�
%batch_normalization_4/moments/SqueezeSqueeze"batch_normalization_4/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:

�
'batch_normalization_4/moments/Squeeze_1Squeeze&batch_normalization_4/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:

j
%batch_normalization_4/batchnorm/add/yConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
#batch_normalization_4/batchnorm/addAdd'batch_normalization_4/moments/Squeeze_1%batch_normalization_4/batchnorm/add/y*
T0*
_output_shapes
:

x
%batch_normalization_4/batchnorm/RsqrtRsqrt#batch_normalization_4/batchnorm/add*
T0*
_output_shapes
:

�
#batch_normalization_4/batchnorm/mulMul%batch_normalization_4/batchnorm/Rsqrt batch_normalization_4/gamma/read*
T0*
_output_shapes
:

�
%batch_normalization_4/batchnorm/mul_1Muldense_1/MatMul#batch_normalization_4/batchnorm/mul*
T0*'
_output_shapes
:���������

�
%batch_normalization_4/batchnorm/mul_2Mul%batch_normalization_4/moments/Squeeze#batch_normalization_4/batchnorm/mul*
T0*
_output_shapes
:

�
#batch_normalization_4/batchnorm/subSubbatch_normalization_4/beta/read%batch_normalization_4/batchnorm/mul_2*
T0*
_output_shapes
:

�
%batch_normalization_4/batchnorm/add_1Add%batch_normalization_4/batchnorm/mul_1#batch_normalization_4/batchnorm/sub*
T0*'
_output_shapes
:���������

�
+batch_normalization_4/AssignMovingAvg/decayConst*
dtype0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
valueB
 *
�#<*
_output_shapes
: 
�
)batch_normalization_4/AssignMovingAvg/subSub&batch_normalization_4/moving_mean/read%batch_normalization_4/moments/Squeeze*4
_class*
(&loc:@batch_normalization_4/moving_mean*
T0*
_output_shapes
:

�
)batch_normalization_4/AssignMovingAvg/mulMul)batch_normalization_4/AssignMovingAvg/sub+batch_normalization_4/AssignMovingAvg/decay*4
_class*
(&loc:@batch_normalization_4/moving_mean*
T0*
_output_shapes
:

�
%batch_normalization_4/AssignMovingAvg	AssignSub!batch_normalization_4/moving_mean)batch_normalization_4/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_4/moving_mean*
use_locking( *
T0*
_output_shapes
:

�
-batch_normalization_4/AssignMovingAvg_1/decayConst*
dtype0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
valueB
 *
�#<*
_output_shapes
: 
�
+batch_normalization_4/AssignMovingAvg_1/subSub*batch_normalization_4/moving_variance/read'batch_normalization_4/moments/Squeeze_1*8
_class.
,*loc:@batch_normalization_4/moving_variance*
T0*
_output_shapes
:

�
+batch_normalization_4/AssignMovingAvg_1/mulMul+batch_normalization_4/AssignMovingAvg_1/sub-batch_normalization_4/AssignMovingAvg_1/decay*8
_class.
,*loc:@batch_normalization_4/moving_variance*
T0*
_output_shapes
:

�
'batch_normalization_4/AssignMovingAvg_1	AssignSub%batch_normalization_4/moving_variance+batch_normalization_4/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_4/moving_variance*
use_locking( *
T0*
_output_shapes
:

�
!batch_normalization_4/cond/SwitchSwitch*batch_normalization_1/keras_learning_phase*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes

::
w
#batch_normalization_4/cond/switch_tIdentity#batch_normalization_4/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_4/cond/switch_fIdentity!batch_normalization_4/cond/Switch*
T0
*
_output_shapes
:
}
"batch_normalization_4/cond/pred_idIdentity*batch_normalization_1/keras_learning_phase*
T0
*
_output_shapes
:
�
#batch_normalization_4/cond/Switch_1Switch%batch_normalization_4/batchnorm/add_1"batch_normalization_4/cond/pred_id*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*:
_output_shapes(
&:���������
:���������

�
*batch_normalization_4/cond/batchnorm/add/yConst$^batch_normalization_4/cond/switch_f*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
/batch_normalization_4/cond/batchnorm/add/SwitchSwitch*batch_normalization_4/moving_variance/read"batch_normalization_4/cond/pred_id*8
_class.
,*loc:@batch_normalization_4/moving_variance*
T0* 
_output_shapes
:
:

�
(batch_normalization_4/cond/batchnorm/addAdd/batch_normalization_4/cond/batchnorm/add/Switch*batch_normalization_4/cond/batchnorm/add/y*
T0*
_output_shapes
:

�
*batch_normalization_4/cond/batchnorm/RsqrtRsqrt(batch_normalization_4/cond/batchnorm/add*
T0*
_output_shapes
:

�
/batch_normalization_4/cond/batchnorm/mul/SwitchSwitch batch_normalization_4/gamma/read"batch_normalization_4/cond/pred_id*.
_class$
" loc:@batch_normalization_4/gamma*
T0* 
_output_shapes
:
:

�
(batch_normalization_4/cond/batchnorm/mulMul*batch_normalization_4/cond/batchnorm/Rsqrt/batch_normalization_4/cond/batchnorm/mul/Switch*
T0*
_output_shapes
:

�
1batch_normalization_4/cond/batchnorm/mul_1/SwitchSwitchdense_1/MatMul"batch_normalization_4/cond/pred_id*!
_class
loc:@dense_1/MatMul*
T0*:
_output_shapes(
&:���������
:���������

�
*batch_normalization_4/cond/batchnorm/mul_1Mul1batch_normalization_4/cond/batchnorm/mul_1/Switch(batch_normalization_4/cond/batchnorm/mul*
T0*'
_output_shapes
:���������

�
1batch_normalization_4/cond/batchnorm/mul_2/SwitchSwitch&batch_normalization_4/moving_mean/read"batch_normalization_4/cond/pred_id*4
_class*
(&loc:@batch_normalization_4/moving_mean*
T0* 
_output_shapes
:
:

�
*batch_normalization_4/cond/batchnorm/mul_2Mul1batch_normalization_4/cond/batchnorm/mul_2/Switch(batch_normalization_4/cond/batchnorm/mul*
T0*
_output_shapes
:

�
/batch_normalization_4/cond/batchnorm/sub/SwitchSwitchbatch_normalization_4/beta/read"batch_normalization_4/cond/pred_id*-
_class#
!loc:@batch_normalization_4/beta*
T0* 
_output_shapes
:
:

�
(batch_normalization_4/cond/batchnorm/subSub/batch_normalization_4/cond/batchnorm/sub/Switch*batch_normalization_4/cond/batchnorm/mul_2*
T0*
_output_shapes
:

�
*batch_normalization_4/cond/batchnorm/add_1Add*batch_normalization_4/cond/batchnorm/mul_1(batch_normalization_4/cond/batchnorm/sub*
T0*'
_output_shapes
:���������

�
 batch_normalization_4/cond/MergeMerge*batch_normalization_4/cond/batchnorm/add_1%batch_normalization_4/cond/Switch_1:1*
N*
T0*)
_output_shapes
:���������
: 
]
iterations/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
n

iterations
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
�
iterations/AssignAssign
iterationsiterations/initial_value*
validate_shape(*
_class
loc:@iterations*
use_locking(*
T0*
_output_shapes
: 
g
iterations/readIdentity
iterations*
_class
loc:@iterations*
T0*
_output_shapes
: 
U
lr/initial_valueConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
f
lr
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
�
	lr/AssignAssignlrlr/initial_value*
validate_shape(*
_class
	loc:@lr*
use_locking(*
T0*
_output_shapes
: 
O
lr/readIdentitylr*
_class
	loc:@lr*
T0*
_output_shapes
: 
[
momentum/initial_valueConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
l
momentum
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
�
momentum/AssignAssignmomentummomentum/initial_value*
validate_shape(*
_class
loc:@momentum*
use_locking(*
T0*
_output_shapes
: 
a
momentum/readIdentitymomentum*
_class
loc:@momentum*
T0*
_output_shapes
: 
X
decay/initial_valueConst*
dtype0*
valueB
 *o:*
_output_shapes
: 
i
decay
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
�
decay/AssignAssigndecaydecay/initial_value*
validate_shape(*
_class

loc:@decay*
use_locking(*
T0*
_output_shapes
: 
X

decay/readIdentitydecay*
_class

loc:@decay*
T0*
_output_shapes
: 

$batch_normalization_4_sample_weightsPlaceholder*
dtype0*
shape:���������*#
_output_shapes
:���������
�
batch_normalization_4_targetPlaceholder*
dtype0*%
shape:������������������*0
_output_shapes
:������������������
|
mulMulbatch_normalization_4_target batch_normalization_4/cond/Merge*
T0*'
_output_shapes
:���������

J
sub/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
H
subSubsub/xmul*
T0*'
_output_shapes
:���������

N
	Maximum/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
T
MaximumMaximumsub	Maximum/y*
T0*'
_output_shapes
:���������

K
SquareSquareMaximum*
T0*'
_output_shapes
:���������

X
Mean/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
w
MeanMeanSquareMean/reduction_indices*

Tidx0*
T0*
	keep_dims( *#
_output_shapes
:���������
[
Mean_1/reduction_indicesConst*
dtype0*
valueB *
_output_shapes
: 
y
Mean_1MeanMeanMean_1/reduction_indices*

Tidx0*
T0*
	keep_dims( *#
_output_shapes
:���������
h
mul_1MulMean_1$batch_normalization_4_sample_weights*
T0*#
_output_shapes
:���������
O

NotEqual/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
t
NotEqualNotEqual$batch_normalization_4_sample_weights
NotEqual/y*
T0*#
_output_shapes
:���������
S
CastCastNotEqual*

DstT0*

SrcT0
*#
_output_shapes
:���������
O
ConstConst*
dtype0*
valueB: *
_output_shapes
:
Y
Mean_2MeanCastConst*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
K
divRealDivmul_1Mean_2*
T0*#
_output_shapes
:���������
Q
Const_1Const*
dtype0*
valueB: *
_output_shapes
:
Z
Mean_3MeandivConst_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
L
mul_2/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
>
mul_2Mulmul_2/xMean_3*
T0*
_output_shapes
: 
J
add/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
9
addAddmul_2add/y*
T0*
_output_shapes
: 
L
add_1/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
;
add_1Addaddadd_1/y*
T0*
_output_shapes
: 
L
add_2/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
=
add_2Addadd_1add_2/y*
T0*
_output_shapes
: 


group_depsNoOp^add_2
l
gradients/ShapeConst*
dtype0*
_class

loc:@add_2*
valueB *
_output_shapes
: 
n
gradients/ConstConst*
dtype0*
_class

loc:@add_2*
valueB
 *  �?*
_output_shapes
: 
s
gradients/FillFillgradients/Shapegradients/Const*
_class

loc:@add_2*
T0*
_output_shapes
: 
w
gradients/add_2_grad/ShapeConst*
dtype0*
_class

loc:@add_2*
valueB *
_output_shapes
: 
y
gradients/add_2_grad/Shape_1Const*
dtype0*
_class

loc:@add_2*
valueB *
_output_shapes
: 
�
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
_class

loc:@add_2*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_2_grad/SumSumgradients/Fill*gradients/add_2_grad/BroadcastGradientArgs*
_class

loc:@add_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
Tshape0*
_class

loc:@add_2*
T0*
_output_shapes
: 
�
gradients/add_2_grad/Sum_1Sumgradients/Fill,gradients/add_2_grad/BroadcastGradientArgs:1*
_class

loc:@add_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
Tshape0*
_class

loc:@add_2*
T0*
_output_shapes
: 
w
gradients/add_1_grad/ShapeConst*
dtype0*
_class

loc:@add_1*
valueB *
_output_shapes
: 
y
gradients/add_1_grad/Shape_1Const*
dtype0*
_class

loc:@add_1*
valueB *
_output_shapes
: 
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
_class

loc:@add_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_1_grad/SumSumgradients/add_2_grad/Reshape*gradients/add_1_grad/BroadcastGradientArgs*
_class

loc:@add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
Tshape0*
_class

loc:@add_1*
T0*
_output_shapes
: 
�
gradients/add_1_grad/Sum_1Sumgradients/add_2_grad/Reshape,gradients/add_1_grad/BroadcastGradientArgs:1*
_class

loc:@add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
Tshape0*
_class

loc:@add_1*
T0*
_output_shapes
: 
s
gradients/add_grad/ShapeConst*
dtype0*
_class

loc:@add*
valueB *
_output_shapes
: 
u
gradients/add_grad/Shape_1Const*
dtype0*
_class

loc:@add*
valueB *
_output_shapes
: 
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
_class

loc:@add*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_grad/SumSumgradients/add_1_grad/Reshape(gradients/add_grad/BroadcastGradientArgs*
_class

loc:@add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
Tshape0*
_class

loc:@add*
T0*
_output_shapes
: 
�
gradients/add_grad/Sum_1Sumgradients/add_1_grad/Reshape*gradients/add_grad/BroadcastGradientArgs:1*
_class

loc:@add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
Tshape0*
_class

loc:@add*
T0*
_output_shapes
: 
w
gradients/mul_2_grad/ShapeConst*
dtype0*
_class

loc:@mul_2*
valueB *
_output_shapes
: 
y
gradients/mul_2_grad/Shape_1Const*
dtype0*
_class

loc:@mul_2*
valueB *
_output_shapes
: 
�
*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*
_class

loc:@mul_2*
T0*2
_output_shapes 
:���������:���������
~
gradients/mul_2_grad/mulMulgradients/add_grad/ReshapeMean_3*
_class

loc:@mul_2*
T0*
_output_shapes
: 
�
gradients/mul_2_grad/SumSumgradients/mul_2_grad/mul*gradients/mul_2_grad/BroadcastGradientArgs*
_class

loc:@mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
Tshape0*
_class

loc:@mul_2*
T0*
_output_shapes
: 
�
gradients/mul_2_grad/mul_1Mulmul_2/xgradients/add_grad/Reshape*
_class

loc:@mul_2*
T0*
_output_shapes
: 
�
gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
_class

loc:@mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
Tshape0*
_class

loc:@mul_2*
T0*
_output_shapes
: 
�
#gradients/Mean_3_grad/Reshape/shapeConst*
dtype0*
_class
loc:@Mean_3*
valueB:*
_output_shapes
:
�
gradients/Mean_3_grad/ReshapeReshapegradients/mul_2_grad/Reshape_1#gradients/Mean_3_grad/Reshape/shape*
Tshape0*
_class
loc:@Mean_3*
T0*
_output_shapes
:
y
gradients/Mean_3_grad/ShapeShapediv*
_class
loc:@Mean_3*
out_type0*
T0*
_output_shapes
:
�
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*

Tmultiples0*
_class
loc:@Mean_3*
T0*#
_output_shapes
:���������
{
gradients/Mean_3_grad/Shape_1Shapediv*
_class
loc:@Mean_3*
out_type0*
T0*
_output_shapes
:
{
gradients/Mean_3_grad/Shape_2Const*
dtype0*
_class
loc:@Mean_3*
valueB *
_output_shapes
: 
�
gradients/Mean_3_grad/ConstConst*
dtype0*
_class
loc:@Mean_3*
valueB: *
_output_shapes
:
�
gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*
_class
loc:@Mean_3*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
gradients/Mean_3_grad/Const_1Const*
dtype0*
_class
loc:@Mean_3*
valueB: *
_output_shapes
:
�
gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*
_class
loc:@Mean_3*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
|
gradients/Mean_3_grad/Maximum/yConst*
dtype0*
_class
loc:@Mean_3*
value	B :*
_output_shapes
: 
�
gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
_class
loc:@Mean_3*
T0*
_output_shapes
: 
�
gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
_class
loc:@Mean_3*
T0*
_output_shapes
: 
�
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*

DstT0*
_class
loc:@Mean_3*

SrcT0*
_output_shapes
: 
�
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
_class
loc:@Mean_3*
T0*#
_output_shapes
:���������
u
gradients/div_grad/ShapeShapemul_1*
_class

loc:@div*
out_type0*
T0*
_output_shapes
:
u
gradients/div_grad/Shape_1Const*
dtype0*
_class

loc:@div*
valueB *
_output_shapes
: 
�
(gradients/div_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/div_grad/Shapegradients/div_grad/Shape_1*
_class

loc:@div*
T0*2
_output_shapes 
:���������:���������
�
gradients/div_grad/RealDivRealDivgradients/Mean_3_grad/truedivMean_2*
_class

loc:@div*
T0*#
_output_shapes
:���������
�
gradients/div_grad/SumSumgradients/div_grad/RealDiv(gradients/div_grad/BroadcastGradientArgs*
_class

loc:@div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/div_grad/ReshapeReshapegradients/div_grad/Sumgradients/div_grad/Shape*
Tshape0*
_class

loc:@div*
T0*#
_output_shapes
:���������
j
gradients/div_grad/NegNegmul_1*
_class

loc:@div*
T0*#
_output_shapes
:���������
�
gradients/div_grad/RealDiv_1RealDivgradients/div_grad/NegMean_2*
_class

loc:@div*
T0*#
_output_shapes
:���������
�
gradients/div_grad/RealDiv_2RealDivgradients/div_grad/RealDiv_1Mean_2*
_class

loc:@div*
T0*#
_output_shapes
:���������
�
gradients/div_grad/mulMulgradients/Mean_3_grad/truedivgradients/div_grad/RealDiv_2*
_class

loc:@div*
T0*#
_output_shapes
:���������
�
gradients/div_grad/Sum_1Sumgradients/div_grad/mul*gradients/div_grad/BroadcastGradientArgs:1*
_class

loc:@div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/div_grad/Reshape_1Reshapegradients/div_grad/Sum_1gradients/div_grad/Shape_1*
Tshape0*
_class

loc:@div*
T0*
_output_shapes
: 
z
gradients/mul_1_grad/ShapeShapeMean_1*
_class

loc:@mul_1*
out_type0*
T0*
_output_shapes
:
�
gradients/mul_1_grad/Shape_1Shape$batch_normalization_4_sample_weights*
_class

loc:@mul_1*
out_type0*
T0*
_output_shapes
:
�
*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
_class

loc:@mul_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/mul_1_grad/mulMulgradients/div_grad/Reshape$batch_normalization_4_sample_weights*
_class

loc:@mul_1*
T0*#
_output_shapes
:���������
�
gradients/mul_1_grad/SumSumgradients/mul_1_grad/mul*gradients/mul_1_grad/BroadcastGradientArgs*
_class

loc:@mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
Tshape0*
_class

loc:@mul_1*
T0*#
_output_shapes
:���������
�
gradients/mul_1_grad/mul_1MulMean_1gradients/div_grad/Reshape*
_class

loc:@mul_1*
T0*#
_output_shapes
:���������
�
gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
_class

loc:@mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
Tshape0*
_class

loc:@mul_1*
T0*#
_output_shapes
:���������
z
gradients/Mean_1_grad/ShapeShapeMean*
_class
loc:@Mean_1*
out_type0*
T0*
_output_shapes
:
w
gradients/Mean_1_grad/SizeConst*
dtype0*
_class
loc:@Mean_1*
value	B :*
_output_shapes
: 
�
gradients/Mean_1_grad/addAddMean_1/reduction_indicesgradients/Mean_1_grad/Size*
_class
loc:@Mean_1*
T0*
_output_shapes
: 
�
gradients/Mean_1_grad/modFloorModgradients/Mean_1_grad/addgradients/Mean_1_grad/Size*
_class
loc:@Mean_1*
T0*
_output_shapes
: 
�
gradients/Mean_1_grad/Shape_1Const*
dtype0*
_class
loc:@Mean_1*
valueB: *
_output_shapes
:
~
!gradients/Mean_1_grad/range/startConst*
dtype0*
_class
loc:@Mean_1*
value	B : *
_output_shapes
: 
~
!gradients/Mean_1_grad/range/deltaConst*
dtype0*
_class
loc:@Mean_1*
value	B :*
_output_shapes
: 
�
gradients/Mean_1_grad/rangeRange!gradients/Mean_1_grad/range/startgradients/Mean_1_grad/Size!gradients/Mean_1_grad/range/delta*
_class
loc:@Mean_1*

Tidx0*
_output_shapes
:
}
 gradients/Mean_1_grad/Fill/valueConst*
dtype0*
_class
loc:@Mean_1*
value	B :*
_output_shapes
: 
�
gradients/Mean_1_grad/FillFillgradients/Mean_1_grad/Shape_1 gradients/Mean_1_grad/Fill/value*
_class
loc:@Mean_1*
T0*
_output_shapes
: 
�
#gradients/Mean_1_grad/DynamicStitchDynamicStitchgradients/Mean_1_grad/rangegradients/Mean_1_grad/modgradients/Mean_1_grad/Shapegradients/Mean_1_grad/Fill*
N*
_class
loc:@Mean_1*
T0*#
_output_shapes
:���������
|
gradients/Mean_1_grad/Maximum/yConst*
dtype0*
_class
loc:@Mean_1*
value	B :*
_output_shapes
: 
�
gradients/Mean_1_grad/MaximumMaximum#gradients/Mean_1_grad/DynamicStitchgradients/Mean_1_grad/Maximum/y*
_class
loc:@Mean_1*
T0*#
_output_shapes
:���������
�
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Shapegradients/Mean_1_grad/Maximum*
_class
loc:@Mean_1*
T0*#
_output_shapes
:���������
�
gradients/Mean_1_grad/ReshapeReshapegradients/mul_1_grad/Reshape#gradients/Mean_1_grad/DynamicStitch*
Tshape0*
_class
loc:@Mean_1*
T0*
_output_shapes
:
�
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/floordiv*

Tmultiples0*
_class
loc:@Mean_1*
T0*
_output_shapes
:
|
gradients/Mean_1_grad/Shape_2ShapeMean*
_class
loc:@Mean_1*
out_type0*
T0*
_output_shapes
:
~
gradients/Mean_1_grad/Shape_3ShapeMean_1*
_class
loc:@Mean_1*
out_type0*
T0*
_output_shapes
:
�
gradients/Mean_1_grad/ConstConst*
dtype0*
_class
loc:@Mean_1*
valueB: *
_output_shapes
:
�
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const*
_class
loc:@Mean_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
gradients/Mean_1_grad/Const_1Const*
dtype0*
_class
loc:@Mean_1*
valueB: *
_output_shapes
:
�
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_3gradients/Mean_1_grad/Const_1*
_class
loc:@Mean_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
~
!gradients/Mean_1_grad/Maximum_1/yConst*
dtype0*
_class
loc:@Mean_1*
value	B :*
_output_shapes
: 
�
gradients/Mean_1_grad/Maximum_1Maximumgradients/Mean_1_grad/Prod_1!gradients/Mean_1_grad/Maximum_1/y*
_class
loc:@Mean_1*
T0*
_output_shapes
: 
�
 gradients/Mean_1_grad/floordiv_1FloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum_1*
_class
loc:@Mean_1*
T0*
_output_shapes
: 
�
gradients/Mean_1_grad/CastCast gradients/Mean_1_grad/floordiv_1*

DstT0*
_class
loc:@Mean_1*

SrcT0*
_output_shapes
: 
�
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
_class
loc:@Mean_1*
T0*#
_output_shapes
:���������
x
gradients/Mean_grad/ShapeShapeSquare*
_class
	loc:@Mean*
out_type0*
T0*
_output_shapes
:
s
gradients/Mean_grad/SizeConst*
dtype0*
_class
	loc:@Mean*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/addAddMean/reduction_indicesgradients/Mean_grad/Size*
_class
	loc:@Mean*
T0*
_output_shapes
: 
�
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
_class
	loc:@Mean*
T0*
_output_shapes
: 
w
gradients/Mean_grad/Shape_1Const*
dtype0*
_class
	loc:@Mean*
valueB *
_output_shapes
: 
z
gradients/Mean_grad/range/startConst*
dtype0*
_class
	loc:@Mean*
value	B : *
_output_shapes
: 
z
gradients/Mean_grad/range/deltaConst*
dtype0*
_class
	loc:@Mean*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*
_class
	loc:@Mean*

Tidx0*
_output_shapes
:
y
gradients/Mean_grad/Fill/valueConst*
dtype0*
_class
	loc:@Mean*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
_class
	loc:@Mean*
T0*
_output_shapes
: 
�
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
N*
_class
	loc:@Mean*
T0*#
_output_shapes
:���������
x
gradients/Mean_grad/Maximum/yConst*
dtype0*
_class
	loc:@Mean*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
_class
	loc:@Mean*
T0*#
_output_shapes
:���������
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
_class
	loc:@Mean*
T0*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Mean_1_grad/truediv!gradients/Mean_grad/DynamicStitch*
Tshape0*
_class
	loc:@Mean*
T0*
_output_shapes
:
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*

Tmultiples0*
_class
	loc:@Mean*
T0*0
_output_shapes
:������������������
z
gradients/Mean_grad/Shape_2ShapeSquare*
_class
	loc:@Mean*
out_type0*
T0*
_output_shapes
:
x
gradients/Mean_grad/Shape_3ShapeMean*
_class
	loc:@Mean*
out_type0*
T0*
_output_shapes
:
|
gradients/Mean_grad/ConstConst*
dtype0*
_class
	loc:@Mean*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
_class
	loc:@Mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
~
gradients/Mean_grad/Const_1Const*
dtype0*
_class
	loc:@Mean*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
_class
	loc:@Mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
z
gradients/Mean_grad/Maximum_1/yConst*
dtype0*
_class
	loc:@Mean*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
_class
	loc:@Mean*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
_class
	loc:@Mean*
T0*
_output_shapes
: 
�
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

DstT0*
_class
	loc:@Mean*

SrcT0*
_output_shapes
: 
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
_class
	loc:@Mean*
T0*'
_output_shapes
:���������

�
gradients/Square_grad/mul/xConst^gradients/Mean_grad/truediv*
dtype0*
_class
loc:@Square*
valueB
 *   @*
_output_shapes
: 
�
gradients/Square_grad/mulMulgradients/Square_grad/mul/xMaximum*
_class
loc:@Square*
T0*'
_output_shapes
:���������

�
gradients/Square_grad/mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/mul*
_class
loc:@Square*
T0*'
_output_shapes
:���������

{
gradients/Maximum_grad/ShapeShapesub*
_class
loc:@Maximum*
out_type0*
T0*
_output_shapes
:
}
gradients/Maximum_grad/Shape_1Const*
dtype0*
_class
loc:@Maximum*
valueB *
_output_shapes
: 
�
gradients/Maximum_grad/Shape_2Shapegradients/Square_grad/mul_1*
_class
loc:@Maximum*
out_type0*
T0*
_output_shapes
:
�
"gradients/Maximum_grad/zeros/ConstConst*
dtype0*
_class
loc:@Maximum*
valueB
 *    *
_output_shapes
: 
�
gradients/Maximum_grad/zerosFillgradients/Maximum_grad/Shape_2"gradients/Maximum_grad/zeros/Const*
_class
loc:@Maximum*
T0*'
_output_shapes
:���������

�
#gradients/Maximum_grad/GreaterEqualGreaterEqualsub	Maximum/y*
_class
loc:@Maximum*
T0*'
_output_shapes
:���������

�
,gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Maximum_grad/Shapegradients/Maximum_grad/Shape_1*
_class
loc:@Maximum*
T0*2
_output_shapes 
:���������:���������
�
gradients/Maximum_grad/SelectSelect#gradients/Maximum_grad/GreaterEqualgradients/Square_grad/mul_1gradients/Maximum_grad/zeros*
_class
loc:@Maximum*
T0*'
_output_shapes
:���������

�
!gradients/Maximum_grad/LogicalNot
LogicalNot#gradients/Maximum_grad/GreaterEqual*
_class
loc:@Maximum*'
_output_shapes
:���������

�
gradients/Maximum_grad/Select_1Select!gradients/Maximum_grad/LogicalNotgradients/Square_grad/mul_1gradients/Maximum_grad/zeros*
_class
loc:@Maximum*
T0*'
_output_shapes
:���������

�
gradients/Maximum_grad/SumSumgradients/Maximum_grad/Select,gradients/Maximum_grad/BroadcastGradientArgs*
_class
loc:@Maximum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/Maximum_grad/ReshapeReshapegradients/Maximum_grad/Sumgradients/Maximum_grad/Shape*
Tshape0*
_class
loc:@Maximum*
T0*'
_output_shapes
:���������

�
gradients/Maximum_grad/Sum_1Sumgradients/Maximum_grad/Select_1.gradients/Maximum_grad/BroadcastGradientArgs:1*
_class
loc:@Maximum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
 gradients/Maximum_grad/Reshape_1Reshapegradients/Maximum_grad/Sum_1gradients/Maximum_grad/Shape_1*
Tshape0*
_class
loc:@Maximum*
T0*
_output_shapes
: 
s
gradients/sub_grad/ShapeConst*
dtype0*
_class

loc:@sub*
valueB *
_output_shapes
: 
u
gradients/sub_grad/Shape_1Shapemul*
_class

loc:@sub*
out_type0*
T0*
_output_shapes
:
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
_class

loc:@sub*
T0*2
_output_shapes 
:���������:���������
�
gradients/sub_grad/SumSumgradients/Maximum_grad/Reshape(gradients/sub_grad/BroadcastGradientArgs*
_class

loc:@sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
Tshape0*
_class

loc:@sub*
T0*
_output_shapes
: 
�
gradients/sub_grad/Sum_1Sumgradients/Maximum_grad/Reshape*gradients/sub_grad/BroadcastGradientArgs:1*
_class

loc:@sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
r
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
_class

loc:@sub*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
Tshape0*
_class

loc:@sub*
T0*'
_output_shapes
:���������

�
gradients/mul_grad/ShapeShapebatch_normalization_4_target*
_class

loc:@mul*
out_type0*
T0*
_output_shapes
:
�
gradients/mul_grad/Shape_1Shape batch_normalization_4/cond/Merge*
_class

loc:@mul*
out_type0*
T0*
_output_shapes
:
�
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
_class

loc:@mul*
T0*2
_output_shapes 
:���������:���������
�
gradients/mul_grad/mulMulgradients/sub_grad/Reshape_1 batch_normalization_4/cond/Merge*
_class

loc:@mul*
T0*'
_output_shapes
:���������

�
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
_class

loc:@mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
Tshape0*
_class

loc:@mul*
T0*0
_output_shapes
:������������������
�
gradients/mul_grad/mul_1Mulbatch_normalization_4_targetgradients/sub_grad/Reshape_1*
_class

loc:@mul*
T0*'
_output_shapes
:���������

�
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
_class

loc:@mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
Tshape0*
_class

loc:@mul*
T0*'
_output_shapes
:���������

�
9gradients/batch_normalization_4/cond/Merge_grad/cond_gradSwitchgradients/mul_grad/Reshape_1"batch_normalization_4/cond/pred_id*
_class

loc:@mul*
T0*:
_output_shapes(
&:���������
:���������

�
?gradients/batch_normalization_4/cond/batchnorm/add_1_grad/ShapeShape*batch_normalization_4/cond/batchnorm/mul_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_4/cond/batchnorm/add_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*
valueB:
*
_output_shapes
:
�
Ogradients/batch_normalization_4/cond/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_4/cond/batchnorm/add_1_grad/ShapeAgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_4/cond/batchnorm/add_1_grad/SumSum9gradients/batch_normalization_4/cond/Merge_grad/cond_gradOgradients/batch_normalization_4/cond/batchnorm/add_1_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_4/cond/batchnorm/add_1_grad/ReshapeReshape=gradients/batch_normalization_4/cond/batchnorm/add_1_grad/Sum?gradients/batch_normalization_4/cond/batchnorm/add_1_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*
T0*'
_output_shapes
:���������

�
?gradients/batch_normalization_4/cond/batchnorm/add_1_grad/Sum_1Sum9gradients/batch_normalization_4/cond/Merge_grad/cond_gradQgradients/batch_normalization_4/cond/batchnorm/add_1_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Reshape_1Reshape?gradients/batch_normalization_4/cond/batchnorm/add_1_grad/Sum_1Agradients/batch_normalization_4/cond/batchnorm/add_1_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/add_1*
T0*
_output_shapes
:

�
gradients/SwitchSwitch%batch_normalization_4/batchnorm/add_1"batch_normalization_4/cond/pred_id*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*:
_output_shapes(
&:���������
:���������

�
gradients/Shape_1Shapegradients/Switch*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros/ConstConst*
dtype0*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
valueB
 *    *
_output_shapes
: 
�
gradients/zerosFillgradients/Shape_1gradients/zeros/Const*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*'
_output_shapes
:���������

�
<gradients/batch_normalization_4/cond/Switch_1_grad/cond_gradMerge;gradients/batch_normalization_4/cond/Merge_grad/cond_grad:1gradients/zeros*
N*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*)
_output_shapes
:���������
: 
�
?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/ShapeShape1batch_normalization_4/cond/batchnorm/mul_1/Switch*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
valueB:
*
_output_shapes
:
�
Ogradients/batch_normalization_4/cond/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/ShapeAgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/mulMulAgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Reshape(batch_normalization_4/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*'
_output_shapes
:���������

�
=gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/SumSum=gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/mulOgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_4/cond/batchnorm/mul_1_grad/ReshapeReshape=gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Sum?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*'
_output_shapes
:���������

�
?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/mul_1Mul1batch_normalization_4/cond/batchnorm/mul_1/SwitchAgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Reshape*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*'
_output_shapes
:���������

�
?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Sum_1Sum?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/mul_1Qgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Reshape_1Reshape?gradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Sum_1Agradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*
_output_shapes
:

�
=gradients/batch_normalization_4/cond/batchnorm/sub_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
valueB:
*
_output_shapes
:
�
?gradients/batch_normalization_4/cond/batchnorm/sub_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
valueB:
*
_output_shapes
:
�
Mgradients/batch_normalization_4/cond/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_4/cond/batchnorm/sub_grad/Shape?gradients/batch_normalization_4/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_4/cond/batchnorm/sub_grad/SumSumCgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Reshape_1Mgradients/batch_normalization_4/cond/batchnorm/sub_grad/BroadcastGradientArgs*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
?gradients/batch_normalization_4/cond/batchnorm/sub_grad/ReshapeReshape;gradients/batch_normalization_4/cond/batchnorm/sub_grad/Sum=gradients/batch_normalization_4/cond/batchnorm/sub_grad/Shape*
Tshape0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
T0*
_output_shapes
:

�
=gradients/batch_normalization_4/cond/batchnorm/sub_grad/Sum_1SumCgradients/batch_normalization_4/cond/batchnorm/add_1_grad/Reshape_1Ogradients/batch_normalization_4/cond/batchnorm/sub_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
;gradients/batch_normalization_4/cond/batchnorm/sub_grad/NegNeg=gradients/batch_normalization_4/cond/batchnorm/sub_grad/Sum_1*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
T0*
_output_shapes
:
�
Agradients/batch_normalization_4/cond/batchnorm/sub_grad/Reshape_1Reshape;gradients/batch_normalization_4/cond/batchnorm/sub_grad/Neg?gradients/batch_normalization_4/cond/batchnorm/sub_grad/Shape_1*
Tshape0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/sub*
T0*
_output_shapes
:

�
:gradients/batch_normalization_4/batchnorm/add_1_grad/ShapeShape%batch_normalization_4/batchnorm/mul_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
<gradients/batch_normalization_4/batchnorm/add_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
valueB:
*
_output_shapes
:
�
Jgradients/batch_normalization_4/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_4/batchnorm/add_1_grad/Shape<gradients/batch_normalization_4/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_4/batchnorm/add_1_grad/SumSum<gradients/batch_normalization_4/cond/Switch_1_grad/cond_gradJgradients/batch_normalization_4/batchnorm/add_1_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_4/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_4/batchnorm/add_1_grad/Sum:gradients/batch_normalization_4/batchnorm/add_1_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*'
_output_shapes
:���������

�
:gradients/batch_normalization_4/batchnorm/add_1_grad/Sum_1Sum<gradients/batch_normalization_4/cond/Switch_1_grad/cond_gradLgradients/batch_normalization_4/batchnorm/add_1_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_4/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_4/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_4/batchnorm/add_1_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_4/batchnorm/add_1*
T0*
_output_shapes
:

�
gradients/Switch_1Switchdense_1/MatMul"batch_normalization_4/cond/pred_id*!
_class
loc:@dense_1/MatMul*
T0*:
_output_shapes(
&:���������
:���������

�
gradients/Shape_2Shapegradients/Switch_1:1*!
_class
loc:@dense_1/MatMul*
out_type0*
T0*
_output_shapes
:

gradients/zeros_1/ConstConst*
dtype0*!
_class
loc:@dense_1/MatMul*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*!
_class
loc:@dense_1/MatMul*
T0*'
_output_shapes
:���������

�
Jgradients/batch_normalization_4/cond/batchnorm/mul_1/Switch_grad/cond_gradMergeAgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Reshapegradients/zeros_1*
N*!
_class
loc:@dense_1/MatMul*
T0*)
_output_shapes
:���������
: 
�
gradients/Switch_2Switchbatch_normalization_4/beta/read"batch_normalization_4/cond/pred_id*-
_class#
!loc:@batch_normalization_4/beta*
T0* 
_output_shapes
:
:

�
gradients/Shape_3Shapegradients/Switch_2:1*-
_class#
!loc:@batch_normalization_4/beta*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_2/ConstConst*
dtype0*-
_class#
!loc:@batch_normalization_4/beta*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*-
_class#
!loc:@batch_normalization_4/beta*
T0*
_output_shapes
:

�
Hgradients/batch_normalization_4/cond/batchnorm/sub/Switch_grad/cond_gradMerge?gradients/batch_normalization_4/cond/batchnorm/sub_grad/Reshapegradients/zeros_2*
N*-
_class#
!loc:@batch_normalization_4/beta*
T0*
_output_shapes

:
: 
�
?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/ShapeConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
valueB:
*
_output_shapes
:
�
Agradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
valueB:
*
_output_shapes
:
�
Ogradients/batch_normalization_4/cond/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/ShapeAgradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/mulMulAgradients/batch_normalization_4/cond/batchnorm/sub_grad/Reshape_1(batch_normalization_4/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*
_output_shapes
:

�
=gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/SumSum=gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/mulOgradients/batch_normalization_4/cond/batchnorm/mul_2_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_4/cond/batchnorm/mul_2_grad/ReshapeReshape=gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Sum?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*
_output_shapes
:

�
?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/mul_1Mul1batch_normalization_4/cond/batchnorm/mul_2/SwitchAgradients/batch_normalization_4/cond/batchnorm/sub_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*
_output_shapes
:

�
?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Sum_1Sum?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/mul_1Qgradients/batch_normalization_4/cond/batchnorm/mul_2_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Reshape_1Reshape?gradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Sum_1Agradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_2*
T0*
_output_shapes
:

�
:gradients/batch_normalization_4/batchnorm/mul_1_grad/ShapeShapedense_1/MatMul*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:
�
<gradients/batch_normalization_4/batchnorm/mul_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
valueB:
*
_output_shapes
:
�
Jgradients/batch_normalization_4/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_4/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_4/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_4/batchnorm/mul_1_grad/mulMul<gradients/batch_normalization_4/batchnorm/add_1_grad/Reshape#batch_normalization_4/batchnorm/mul*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*'
_output_shapes
:���������

�
8gradients/batch_normalization_4/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_4/batchnorm/mul_1_grad/mulJgradients/batch_normalization_4/batchnorm/mul_1_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_4/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_4/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_4/batchnorm/mul_1_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*'
_output_shapes
:���������

�
:gradients/batch_normalization_4/batchnorm/mul_1_grad/mul_1Muldense_1/MatMul<gradients/batch_normalization_4/batchnorm/add_1_grad/Reshape*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*'
_output_shapes
:���������

�
:gradients/batch_normalization_4/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_4/batchnorm/mul_1_grad/mul_1Lgradients/batch_normalization_4/batchnorm/mul_1_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_4/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_4/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_4/batchnorm/mul_1_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*
_output_shapes
:

�
8gradients/batch_normalization_4/batchnorm/sub_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
valueB:
*
_output_shapes
:
�
:gradients/batch_normalization_4/batchnorm/sub_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
valueB:
*
_output_shapes
:
�
Hgradients/batch_normalization_4/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_4/batchnorm/sub_grad/Shape:gradients/batch_normalization_4/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_4/batchnorm/sub_grad/SumSum>gradients/batch_normalization_4/batchnorm/add_1_grad/Reshape_1Hgradients/batch_normalization_4/batchnorm/sub_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_4/batchnorm/sub_grad/ReshapeReshape6gradients/batch_normalization_4/batchnorm/sub_grad/Sum8gradients/batch_normalization_4/batchnorm/sub_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
T0*
_output_shapes
:

�
8gradients/batch_normalization_4/batchnorm/sub_grad/Sum_1Sum>gradients/batch_normalization_4/batchnorm/add_1_grad/Reshape_1Jgradients/batch_normalization_4/batchnorm/sub_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
6gradients/batch_normalization_4/batchnorm/sub_grad/NegNeg8gradients/batch_normalization_4/batchnorm/sub_grad/Sum_1*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
T0*
_output_shapes
:
�
<gradients/batch_normalization_4/batchnorm/sub_grad/Reshape_1Reshape6gradients/batch_normalization_4/batchnorm/sub_grad/Neg:gradients/batch_normalization_4/batchnorm/sub_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_4/batchnorm/sub*
T0*
_output_shapes
:

�
gradients/AddNAddNCgradients/batch_normalization_4/cond/batchnorm/mul_1_grad/Reshape_1Cgradients/batch_normalization_4/cond/batchnorm/mul_2_grad/Reshape_1*
N*=
_class3
1/loc:@batch_normalization_4/cond/batchnorm/mul_1*
T0*
_output_shapes
:

�
=gradients/batch_normalization_4/cond/batchnorm/mul_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
valueB:
*
_output_shapes
:
�
?gradients/batch_normalization_4/cond/batchnorm/mul_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
valueB:
*
_output_shapes
:
�
Mgradients/batch_normalization_4/cond/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_4/cond/batchnorm/mul_grad/Shape?gradients/batch_normalization_4/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_4/cond/batchnorm/mul_grad/mulMulgradients/AddN/batch_normalization_4/cond/batchnorm/mul/Switch*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*
_output_shapes
:

�
;gradients/batch_normalization_4/cond/batchnorm/mul_grad/SumSum;gradients/batch_normalization_4/cond/batchnorm/mul_grad/mulMgradients/batch_normalization_4/cond/batchnorm/mul_grad/BroadcastGradientArgs*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
?gradients/batch_normalization_4/cond/batchnorm/mul_grad/ReshapeReshape;gradients/batch_normalization_4/cond/batchnorm/mul_grad/Sum=gradients/batch_normalization_4/cond/batchnorm/mul_grad/Shape*
Tshape0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*
_output_shapes
:

�
=gradients/batch_normalization_4/cond/batchnorm/mul_grad/mul_1Mul*batch_normalization_4/cond/batchnorm/Rsqrtgradients/AddN*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*
_output_shapes
:

�
=gradients/batch_normalization_4/cond/batchnorm/mul_grad/Sum_1Sum=gradients/batch_normalization_4/cond/batchnorm/mul_grad/mul_1Ogradients/batch_normalization_4/cond/batchnorm/mul_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_4/cond/batchnorm/mul_grad/Reshape_1Reshape=gradients/batch_normalization_4/cond/batchnorm/mul_grad/Sum_1?gradients/batch_normalization_4/cond/batchnorm/mul_grad/Shape_1*
Tshape0*;
_class1
/-loc:@batch_normalization_4/cond/batchnorm/mul*
T0*
_output_shapes
:

�
gradients/AddN_1AddNHgradients/batch_normalization_4/cond/batchnorm/sub/Switch_grad/cond_grad:gradients/batch_normalization_4/batchnorm/sub_grad/Reshape*
N*-
_class#
!loc:@batch_normalization_4/beta*
T0*
_output_shapes
:

�
:gradients/batch_normalization_4/batchnorm/mul_2_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
valueB:
*
_output_shapes
:
�
<gradients/batch_normalization_4/batchnorm/mul_2_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
valueB:
*
_output_shapes
:
�
Jgradients/batch_normalization_4/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_4/batchnorm/mul_2_grad/Shape<gradients/batch_normalization_4/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_4/batchnorm/mul_2_grad/mulMul<gradients/batch_normalization_4/batchnorm/sub_grad/Reshape_1#batch_normalization_4/batchnorm/mul*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*
_output_shapes
:

�
8gradients/batch_normalization_4/batchnorm/mul_2_grad/SumSum8gradients/batch_normalization_4/batchnorm/mul_2_grad/mulJgradients/batch_normalization_4/batchnorm/mul_2_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_4/batchnorm/mul_2_grad/ReshapeReshape8gradients/batch_normalization_4/batchnorm/mul_2_grad/Sum:gradients/batch_normalization_4/batchnorm/mul_2_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*
_output_shapes
:

�
:gradients/batch_normalization_4/batchnorm/mul_2_grad/mul_1Mul%batch_normalization_4/moments/Squeeze<gradients/batch_normalization_4/batchnorm/sub_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*
_output_shapes
:

�
:gradients/batch_normalization_4/batchnorm/mul_2_grad/Sum_1Sum:gradients/batch_normalization_4/batchnorm/mul_2_grad/mul_1Lgradients/batch_normalization_4/batchnorm/mul_2_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_4/batchnorm/mul_2_grad/Reshape_1Reshape:gradients/batch_normalization_4/batchnorm/mul_2_grad/Sum_1<gradients/batch_normalization_4/batchnorm/mul_2_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_2*
T0*
_output_shapes
:

�
gradients/Switch_3Switch batch_normalization_4/gamma/read"batch_normalization_4/cond/pred_id*.
_class$
" loc:@batch_normalization_4/gamma*
T0* 
_output_shapes
:
:

�
gradients/Shape_4Shapegradients/Switch_3:1*.
_class$
" loc:@batch_normalization_4/gamma*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_3/ConstConst*
dtype0*.
_class$
" loc:@batch_normalization_4/gamma*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*.
_class$
" loc:@batch_normalization_4/gamma*
T0*
_output_shapes
:

�
Hgradients/batch_normalization_4/cond/batchnorm/mul/Switch_grad/cond_gradMergeAgradients/batch_normalization_4/cond/batchnorm/mul_grad/Reshape_1gradients/zeros_3*
N*.
_class$
" loc:@batch_normalization_4/gamma*
T0*
_output_shapes

:
: 
�
:gradients/batch_normalization_4/moments/Squeeze_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_4/moments/Squeeze*
valueB"   
   *
_output_shapes
:
�
<gradients/batch_normalization_4/moments/Squeeze_grad/ReshapeReshape<gradients/batch_normalization_4/batchnorm/mul_2_grad/Reshape:gradients/batch_normalization_4/moments/Squeeze_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_4/moments/Squeeze*
T0*
_output_shapes

:

�
gradients/AddN_2AddN>gradients/batch_normalization_4/batchnorm/mul_1_grad/Reshape_1>gradients/batch_normalization_4/batchnorm/mul_2_grad/Reshape_1*
N*8
_class.
,*loc:@batch_normalization_4/batchnorm/mul_1*
T0*
_output_shapes
:

�
8gradients/batch_normalization_4/batchnorm/mul_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
valueB:
*
_output_shapes
:
�
:gradients/batch_normalization_4/batchnorm/mul_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
valueB:
*
_output_shapes
:
�
Hgradients/batch_normalization_4/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_4/batchnorm/mul_grad/Shape:gradients/batch_normalization_4/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_4/batchnorm/mul_grad/mulMulgradients/AddN_2 batch_normalization_4/gamma/read*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*
_output_shapes
:

�
6gradients/batch_normalization_4/batchnorm/mul_grad/SumSum6gradients/batch_normalization_4/batchnorm/mul_grad/mulHgradients/batch_normalization_4/batchnorm/mul_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_4/batchnorm/mul_grad/ReshapeReshape6gradients/batch_normalization_4/batchnorm/mul_grad/Sum8gradients/batch_normalization_4/batchnorm/mul_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*
_output_shapes
:

�
8gradients/batch_normalization_4/batchnorm/mul_grad/mul_1Mul%batch_normalization_4/batchnorm/Rsqrtgradients/AddN_2*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*
_output_shapes
:

�
8gradients/batch_normalization_4/batchnorm/mul_grad/Sum_1Sum8gradients/batch_normalization_4/batchnorm/mul_grad/mul_1Jgradients/batch_normalization_4/batchnorm/mul_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_4/batchnorm/mul_grad/Reshape_1Reshape8gradients/batch_normalization_4/batchnorm/mul_grad/Sum_1:gradients/batch_normalization_4/batchnorm/mul_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_4/batchnorm/mul*
T0*
_output_shapes
:

�
7gradients/batch_normalization_4/moments/mean_grad/ShapeConst*
dtype0*5
_class+
)'loc:@batch_normalization_4/moments/mean*
valueB"   
   *
_output_shapes
:
�
9gradients/batch_normalization_4/moments/mean_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@batch_normalization_4/moments/mean*
valueB"   
   *
_output_shapes
:
�
Ggradients/batch_normalization_4/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/batch_normalization_4/moments/mean_grad/Shape9gradients/batch_normalization_4/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*2
_output_shapes 
:���������:���������
�
5gradients/batch_normalization_4/moments/mean_grad/SumSum<gradients/batch_normalization_4/moments/Squeeze_grad/ReshapeGgradients/batch_normalization_4/moments/mean_grad/BroadcastGradientArgs*5
_class+
)'loc:@batch_normalization_4/moments/mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/batch_normalization_4/moments/mean_grad/ReshapeReshape5gradients/batch_normalization_4/moments/mean_grad/Sum7gradients/batch_normalization_4/moments/mean_grad/Shape*
Tshape0*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*
_output_shapes

:

�
7gradients/batch_normalization_4/moments/mean_grad/Sum_1Sum<gradients/batch_normalization_4/moments/Squeeze_grad/ReshapeIgradients/batch_normalization_4/moments/mean_grad/BroadcastGradientArgs:1*5
_class+
)'loc:@batch_normalization_4/moments/mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
;gradients/batch_normalization_4/moments/mean_grad/Reshape_1Reshape7gradients/batch_normalization_4/moments/mean_grad/Sum_19gradients/batch_normalization_4/moments/mean_grad/Shape_1*
Tshape0*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*
_output_shapes

:

�
>gradients/batch_normalization_4/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad%batch_normalization_4/batchnorm/Rsqrt:gradients/batch_normalization_4/batchnorm/mul_grad/Reshape*8
_class.
,*loc:@batch_normalization_4/batchnorm/Rsqrt*
T0*
_output_shapes
:

�
gradients/AddN_3AddNHgradients/batch_normalization_4/cond/batchnorm/mul/Switch_grad/cond_grad<gradients/batch_normalization_4/batchnorm/mul_grad/Reshape_1*
N*.
_class$
" loc:@batch_normalization_4/gamma*
T0*
_output_shapes
:

�
8gradients/batch_normalization_4/batchnorm/add_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
valueB:
*
_output_shapes
:
�
:gradients/batch_normalization_4/batchnorm/add_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
valueB *
_output_shapes
: 
�
Hgradients/batch_normalization_4/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_4/batchnorm/add_grad/Shape:gradients/batch_normalization_4/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_4/batchnorm/add_grad/SumSum>gradients/batch_normalization_4/batchnorm/Rsqrt_grad/RsqrtGradHgradients/batch_normalization_4/batchnorm/add_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_4/batchnorm/add_grad/ReshapeReshape6gradients/batch_normalization_4/batchnorm/add_grad/Sum8gradients/batch_normalization_4/batchnorm/add_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
T0*
_output_shapes
:

�
8gradients/batch_normalization_4/batchnorm/add_grad/Sum_1Sum>gradients/batch_normalization_4/batchnorm/Rsqrt_grad/RsqrtGradJgradients/batch_normalization_4/batchnorm/add_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_4/batchnorm/add_grad/Reshape_1Reshape8gradients/batch_normalization_4/batchnorm/add_grad/Sum_1:gradients/batch_normalization_4/batchnorm/add_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_4/batchnorm/add*
T0*
_output_shapes
: 
�
<gradients/batch_normalization_4/moments/Squeeze_1_grad/ShapeConst*
dtype0*:
_class0
.,loc:@batch_normalization_4/moments/Squeeze_1*
valueB"   
   *
_output_shapes
:
�
>gradients/batch_normalization_4/moments/Squeeze_1_grad/ReshapeReshape:gradients/batch_normalization_4/batchnorm/add_grad/Reshape<gradients/batch_normalization_4/moments/Squeeze_1_grad/Shape*
Tshape0*:
_class0
.,loc:@batch_normalization_4/moments/Squeeze_1*
T0*
_output_shapes

:

�
;gradients/batch_normalization_4/moments/variance_grad/ShapeConst*
dtype0*9
_class/
-+loc:@batch_normalization_4/moments/variance*
valueB"   
   *
_output_shapes
:
�
=gradients/batch_normalization_4/moments/variance_grad/Shape_1Const*
dtype0*9
_class/
-+loc:@batch_normalization_4/moments/variance*
valueB"   
   *
_output_shapes
:
�
Kgradients/batch_normalization_4/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients/batch_normalization_4/moments/variance_grad/Shape=gradients/batch_normalization_4/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_4/moments/variance*
T0*2
_output_shapes 
:���������:���������
�
9gradients/batch_normalization_4/moments/variance_grad/SumSum>gradients/batch_normalization_4/moments/Squeeze_1_grad/ReshapeKgradients/batch_normalization_4/moments/variance_grad/BroadcastGradientArgs*9
_class/
-+loc:@batch_normalization_4/moments/variance*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
=gradients/batch_normalization_4/moments/variance_grad/ReshapeReshape9gradients/batch_normalization_4/moments/variance_grad/Sum;gradients/batch_normalization_4/moments/variance_grad/Shape*
Tshape0*9
_class/
-+loc:@batch_normalization_4/moments/variance*
T0*
_output_shapes

:

�
;gradients/batch_normalization_4/moments/variance_grad/Sum_1Sum>gradients/batch_normalization_4/moments/Squeeze_1_grad/ReshapeMgradients/batch_normalization_4/moments/variance_grad/BroadcastGradientArgs:1*9
_class/
-+loc:@batch_normalization_4/moments/variance*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/batch_normalization_4/moments/variance_grad/NegNeg;gradients/batch_normalization_4/moments/variance_grad/Sum_1*9
_class/
-+loc:@batch_normalization_4/moments/variance*
T0*
_output_shapes
:
�
?gradients/batch_normalization_4/moments/variance_grad/Reshape_1Reshape9gradients/batch_normalization_4/moments/variance_grad/Neg=gradients/batch_normalization_4/moments/variance_grad/Shape_1*
Tshape0*9
_class/
-+loc:@batch_normalization_4/moments/variance*
T0*
_output_shapes

:

�
9gradients/batch_normalization_4/moments/Mean_1_grad/ShapeShape/batch_normalization_4/moments/SquaredDifference*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
out_type0*
T0*
_output_shapes
:
�
8gradients/batch_normalization_4/moments/Mean_1_grad/SizeConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B :*
_output_shapes
: 
�
7gradients/batch_normalization_4/moments/Mean_1_grad/addAdd6batch_normalization_4/moments/Mean_1/reduction_indices8gradients/batch_normalization_4/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
:
�
7gradients/batch_normalization_4/moments/Mean_1_grad/modFloorMod7gradients/batch_normalization_4/moments/Mean_1_grad/add8gradients/batch_normalization_4/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
valueB:*
_output_shapes
:
�
?gradients/batch_normalization_4/moments/Mean_1_grad/range/startConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B : *
_output_shapes
: 
�
?gradients/batch_normalization_4/moments/Mean_1_grad/range/deltaConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B :*
_output_shapes
: 
�
9gradients/batch_normalization_4/moments/Mean_1_grad/rangeRange?gradients/batch_normalization_4/moments/Mean_1_grad/range/start8gradients/batch_normalization_4/moments/Mean_1_grad/Size?gradients/batch_normalization_4/moments/Mean_1_grad/range/delta*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*

Tidx0*
_output_shapes
:
�
>gradients/batch_normalization_4/moments/Mean_1_grad/Fill/valueConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B :*
_output_shapes
: 
�
8gradients/batch_normalization_4/moments/Mean_1_grad/FillFill;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_1>gradients/batch_normalization_4/moments/Mean_1_grad/Fill/value*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
:
�
Agradients/batch_normalization_4/moments/Mean_1_grad/DynamicStitchDynamicStitch9gradients/batch_normalization_4/moments/Mean_1_grad/range7gradients/batch_normalization_4/moments/Mean_1_grad/mod9gradients/batch_normalization_4/moments/Mean_1_grad/Shape8gradients/batch_normalization_4/moments/Mean_1_grad/Fill*
N*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*#
_output_shapes
:���������
�
=gradients/batch_normalization_4/moments/Mean_1_grad/Maximum/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B :*
_output_shapes
: 
�
;gradients/batch_normalization_4/moments/Mean_1_grad/MaximumMaximumAgradients/batch_normalization_4/moments/Mean_1_grad/DynamicStitch=gradients/batch_normalization_4/moments/Mean_1_grad/Maximum/y*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*#
_output_shapes
:���������
�
<gradients/batch_normalization_4/moments/Mean_1_grad/floordivFloorDiv9gradients/batch_normalization_4/moments/Mean_1_grad/Shape;gradients/batch_normalization_4/moments/Mean_1_grad/Maximum*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_4/moments/Mean_1_grad/ReshapeReshape=gradients/batch_normalization_4/moments/variance_grad/ReshapeAgradients/batch_normalization_4/moments/Mean_1_grad/DynamicStitch*
Tshape0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
:
�
8gradients/batch_normalization_4/moments/Mean_1_grad/TileTile;gradients/batch_normalization_4/moments/Mean_1_grad/Reshape<gradients/batch_normalization_4/moments/Mean_1_grad/floordiv*

Tmultiples0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*0
_output_shapes
:������������������
�
;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_2Shape/batch_normalization_4/moments/SquaredDifference*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
out_type0*
T0*
_output_shapes
:
�
;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_3Const*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
valueB"   
   *
_output_shapes
:
�
9gradients/batch_normalization_4/moments/Mean_1_grad/ConstConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
valueB: *
_output_shapes
:
�
8gradients/batch_normalization_4/moments/Mean_1_grad/ProdProd;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_29gradients/batch_normalization_4/moments/Mean_1_grad/Const*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
;gradients/batch_normalization_4/moments/Mean_1_grad/Const_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
valueB: *
_output_shapes
:
�
:gradients/batch_normalization_4/moments/Mean_1_grad/Prod_1Prod;gradients/batch_normalization_4/moments/Mean_1_grad/Shape_3;gradients/batch_normalization_4/moments/Mean_1_grad/Const_1*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
?gradients/batch_normalization_4/moments/Mean_1_grad/Maximum_1/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_4/moments/Mean_1_grad/Maximum_1Maximum:gradients/batch_normalization_4/moments/Mean_1_grad/Prod_1?gradients/batch_normalization_4/moments/Mean_1_grad/Maximum_1/y*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_4/moments/Mean_1_grad/floordiv_1FloorDiv8gradients/batch_normalization_4/moments/Mean_1_grad/Prod=gradients/batch_normalization_4/moments/Mean_1_grad/Maximum_1*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*
_output_shapes
: 
�
8gradients/batch_normalization_4/moments/Mean_1_grad/CastCast>gradients/batch_normalization_4/moments/Mean_1_grad/floordiv_1*

DstT0*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*

SrcT0*
_output_shapes
: 
�
;gradients/batch_normalization_4/moments/Mean_1_grad/truedivRealDiv8gradients/batch_normalization_4/moments/Mean_1_grad/Tile8gradients/batch_normalization_4/moments/Mean_1_grad/Cast*7
_class-
+)loc:@batch_normalization_4/moments/Mean_1*
T0*'
_output_shapes
:���������

�
9gradients/batch_normalization_4/moments/Square_grad/mul/xConst@^gradients/batch_normalization_4/moments/variance_grad/Reshape_1*
dtype0*7
_class-
+)loc:@batch_normalization_4/moments/Square*
valueB
 *   @*
_output_shapes
: 
�
7gradients/batch_normalization_4/moments/Square_grad/mulMul9gradients/batch_normalization_4/moments/Square_grad/mul/x*batch_normalization_4/moments/shifted_mean*7
_class-
+)loc:@batch_normalization_4/moments/Square*
T0*
_output_shapes

:

�
9gradients/batch_normalization_4/moments/Square_grad/mul_1Mul?gradients/batch_normalization_4/moments/variance_grad/Reshape_17gradients/batch_normalization_4/moments/Square_grad/mul*7
_class-
+)loc:@batch_normalization_4/moments/Square*
T0*
_output_shapes

:

�
Dgradients/batch_normalization_4/moments/SquaredDifference_grad/ShapeShapedense_1/MatMul*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:
�
Fgradients/batch_normalization_4/moments/SquaredDifference_grad/Shape_1Const*
dtype0*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
valueB"   
   *
_output_shapes
:
�
Tgradients/batch_normalization_4/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/batch_normalization_4/moments/SquaredDifference_grad/ShapeFgradients/batch_normalization_4/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*2
_output_shapes 
:���������:���������
�
Egradients/batch_normalization_4/moments/SquaredDifference_grad/scalarConst<^gradients/batch_normalization_4/moments/Mean_1_grad/truediv*
dtype0*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
valueB
 *   @*
_output_shapes
: 
�
Bgradients/batch_normalization_4/moments/SquaredDifference_grad/mulMulEgradients/batch_normalization_4/moments/SquaredDifference_grad/scalar;gradients/batch_normalization_4/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*'
_output_shapes
:���������

�
Bgradients/batch_normalization_4/moments/SquaredDifference_grad/subSubdense_1/MatMul*batch_normalization_4/moments/StopGradient<^gradients/batch_normalization_4/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*'
_output_shapes
:���������

�
Dgradients/batch_normalization_4/moments/SquaredDifference_grad/mul_1MulBgradients/batch_normalization_4/moments/SquaredDifference_grad/mulBgradients/batch_normalization_4/moments/SquaredDifference_grad/sub*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*'
_output_shapes
:���������

�
Bgradients/batch_normalization_4/moments/SquaredDifference_grad/SumSumDgradients/batch_normalization_4/moments/SquaredDifference_grad/mul_1Tgradients/batch_normalization_4/moments/SquaredDifference_grad/BroadcastGradientArgs*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Fgradients/batch_normalization_4/moments/SquaredDifference_grad/ReshapeReshapeBgradients/batch_normalization_4/moments/SquaredDifference_grad/SumDgradients/batch_normalization_4/moments/SquaredDifference_grad/Shape*
Tshape0*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*'
_output_shapes
:���������

�
Dgradients/batch_normalization_4/moments/SquaredDifference_grad/Sum_1SumDgradients/batch_normalization_4/moments/SquaredDifference_grad/mul_1Vgradients/batch_normalization_4/moments/SquaredDifference_grad/BroadcastGradientArgs:1*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Hgradients/batch_normalization_4/moments/SquaredDifference_grad/Reshape_1ReshapeDgradients/batch_normalization_4/moments/SquaredDifference_grad/Sum_1Fgradients/batch_normalization_4/moments/SquaredDifference_grad/Shape_1*
Tshape0*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*
_output_shapes

:

�
Bgradients/batch_normalization_4/moments/SquaredDifference_grad/NegNegHgradients/batch_normalization_4/moments/SquaredDifference_grad/Reshape_1*B
_class8
64loc:@batch_normalization_4/moments/SquaredDifference*
T0*
_output_shapes

:

�
gradients/AddN_4AddN9gradients/batch_normalization_4/moments/mean_grad/Reshape9gradients/batch_normalization_4/moments/Square_grad/mul_1*
N*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*
_output_shapes

:

�
?gradients/batch_normalization_4/moments/shifted_mean_grad/ShapeShape!batch_normalization_4/moments/Sub*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
out_type0*
T0*
_output_shapes
:
�
>gradients/batch_normalization_4/moments/shifted_mean_grad/SizeConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_4/moments/shifted_mean_grad/addAdd<batch_normalization_4/moments/shifted_mean/reduction_indices>gradients/batch_normalization_4/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
:
�
=gradients/batch_normalization_4/moments/shifted_mean_grad/modFloorMod=gradients/batch_normalization_4/moments/shifted_mean_grad/add>gradients/batch_normalization_4/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
valueB:*
_output_shapes
:
�
Egradients/batch_normalization_4/moments/shifted_mean_grad/range/startConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B : *
_output_shapes
: 
�
Egradients/batch_normalization_4/moments/shifted_mean_grad/range/deltaConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
?gradients/batch_normalization_4/moments/shifted_mean_grad/rangeRangeEgradients/batch_normalization_4/moments/shifted_mean_grad/range/start>gradients/batch_normalization_4/moments/shifted_mean_grad/SizeEgradients/batch_normalization_4/moments/shifted_mean_grad/range/delta*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*

Tidx0*
_output_shapes
:
�
Dgradients/batch_normalization_4/moments/shifted_mean_grad/Fill/valueConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
>gradients/batch_normalization_4/moments/shifted_mean_grad/FillFillAgradients/batch_normalization_4/moments/shifted_mean_grad/Shape_1Dgradients/batch_normalization_4/moments/shifted_mean_grad/Fill/value*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
:
�
Ggradients/batch_normalization_4/moments/shifted_mean_grad/DynamicStitchDynamicStitch?gradients/batch_normalization_4/moments/shifted_mean_grad/range=gradients/batch_normalization_4/moments/shifted_mean_grad/mod?gradients/batch_normalization_4/moments/shifted_mean_grad/Shape>gradients/batch_normalization_4/moments/shifted_mean_grad/Fill*
N*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Cgradients/batch_normalization_4/moments/shifted_mean_grad/Maximum/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/MaximumMaximumGgradients/batch_normalization_4/moments/shifted_mean_grad/DynamicStitchCgradients/batch_normalization_4/moments/shifted_mean_grad/Maximum/y*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Bgradients/batch_normalization_4/moments/shifted_mean_grad/floordivFloorDiv?gradients/batch_normalization_4/moments/shifted_mean_grad/ShapeAgradients/batch_normalization_4/moments/shifted_mean_grad/Maximum*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_4Ggradients/batch_normalization_4/moments/shifted_mean_grad/DynamicStitch*
Tshape0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
:
�
>gradients/batch_normalization_4/moments/shifted_mean_grad/TileTileAgradients/batch_normalization_4/moments/shifted_mean_grad/ReshapeBgradients/batch_normalization_4/moments/shifted_mean_grad/floordiv*

Tmultiples0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*0
_output_shapes
:������������������
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/Shape_2Shape!batch_normalization_4/moments/Sub*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/Shape_3Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
valueB"   
   *
_output_shapes
:
�
?gradients/batch_normalization_4/moments/shifted_mean_grad/ConstConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
valueB: *
_output_shapes
:
�
>gradients/batch_normalization_4/moments/shifted_mean_grad/ProdProdAgradients/batch_normalization_4/moments/shifted_mean_grad/Shape_2?gradients/batch_normalization_4/moments/shifted_mean_grad/Const*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/Const_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
valueB: *
_output_shapes
:
�
@gradients/batch_normalization_4/moments/shifted_mean_grad/Prod_1ProdAgradients/batch_normalization_4/moments/shifted_mean_grad/Shape_3Agradients/batch_normalization_4/moments/shifted_mean_grad/Const_1*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Egradients/batch_normalization_4/moments/shifted_mean_grad/Maximum_1/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Cgradients/batch_normalization_4/moments/shifted_mean_grad/Maximum_1Maximum@gradients/batch_normalization_4/moments/shifted_mean_grad/Prod_1Egradients/batch_normalization_4/moments/shifted_mean_grad/Maximum_1/y*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
: 
�
Dgradients/batch_normalization_4/moments/shifted_mean_grad/floordiv_1FloorDiv>gradients/batch_normalization_4/moments/shifted_mean_grad/ProdCgradients/batch_normalization_4/moments/shifted_mean_grad/Maximum_1*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_4/moments/shifted_mean_grad/CastCastDgradients/batch_normalization_4/moments/shifted_mean_grad/floordiv_1*

DstT0*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*

SrcT0*
_output_shapes
: 
�
Agradients/batch_normalization_4/moments/shifted_mean_grad/truedivRealDiv>gradients/batch_normalization_4/moments/shifted_mean_grad/Tile>gradients/batch_normalization_4/moments/shifted_mean_grad/Cast*=
_class3
1/loc:@batch_normalization_4/moments/shifted_mean*
T0*'
_output_shapes
:���������

�
6gradients/batch_normalization_4/moments/Sub_grad/ShapeShapedense_1/MatMul*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
out_type0*
T0*
_output_shapes
:
�
8gradients/batch_normalization_4/moments/Sub_grad/Shape_1Const*
dtype0*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
valueB"   
   *
_output_shapes
:
�
Fgradients/batch_normalization_4/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/batch_normalization_4/moments/Sub_grad/Shape8gradients/batch_normalization_4/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
T0*2
_output_shapes 
:���������:���������
�
4gradients/batch_normalization_4/moments/Sub_grad/SumSumAgradients/batch_normalization_4/moments/shifted_mean_grad/truedivFgradients/batch_normalization_4/moments/Sub_grad/BroadcastGradientArgs*4
_class*
(&loc:@batch_normalization_4/moments/Sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
8gradients/batch_normalization_4/moments/Sub_grad/ReshapeReshape4gradients/batch_normalization_4/moments/Sub_grad/Sum6gradients/batch_normalization_4/moments/Sub_grad/Shape*
Tshape0*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
T0*'
_output_shapes
:���������

�
6gradients/batch_normalization_4/moments/Sub_grad/Sum_1SumAgradients/batch_normalization_4/moments/shifted_mean_grad/truedivHgradients/batch_normalization_4/moments/Sub_grad/BroadcastGradientArgs:1*4
_class*
(&loc:@batch_normalization_4/moments/Sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
4gradients/batch_normalization_4/moments/Sub_grad/NegNeg6gradients/batch_normalization_4/moments/Sub_grad/Sum_1*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
T0*
_output_shapes
:
�
:gradients/batch_normalization_4/moments/Sub_grad/Reshape_1Reshape4gradients/batch_normalization_4/moments/Sub_grad/Neg8gradients/batch_normalization_4/moments/Sub_grad/Shape_1*
Tshape0*4
_class*
(&loc:@batch_normalization_4/moments/Sub*
T0*
_output_shapes

:

�
gradients/AddN_5AddN;gradients/batch_normalization_4/moments/mean_grad/Reshape_1Bgradients/batch_normalization_4/moments/SquaredDifference_grad/Neg:gradients/batch_normalization_4/moments/Sub_grad/Reshape_1*
N*5
_class+
)'loc:@batch_normalization_4/moments/mean*
T0*
_output_shapes

:

�
gradients/AddN_6AddNJgradients/batch_normalization_4/cond/batchnorm/mul_1/Switch_grad/cond_grad<gradients/batch_normalization_4/batchnorm/mul_1_grad/ReshapeFgradients/batch_normalization_4/moments/SquaredDifference_grad/Reshape8gradients/batch_normalization_4/moments/Sub_grad/Reshape*
N*!
_class
loc:@dense_1/MatMul*
T0*'
_output_shapes
:���������

�
$gradients/dense_1/MatMul_grad/MatMulMatMulgradients/AddN_6dense_1/kernel/read*
transpose_b(*
transpose_a( *!
_class
loc:@dense_1/MatMul*
T0*(
_output_shapes
:����������
�
&gradients/dense_1/MatMul_grad/MatMul_1MatMulflatten_1/Reshapegradients/AddN_6*
transpose_b( *
transpose_a(*!
_class
loc:@dense_1/MatMul*
T0*
_output_shapes
:	�

�
&gradients/flatten_1/Reshape_grad/ShapeShapemax_pooling2d_3/MaxPool*$
_class
loc:@flatten_1/Reshape*
out_type0*
T0*
_output_shapes
:
�
(gradients/flatten_1/Reshape_grad/ReshapeReshape$gradients/dense_1/MatMul_grad/MatMul&gradients/flatten_1/Reshape_grad/Shape*
Tshape0*$
_class
loc:@flatten_1/Reshape*
T0*/
_output_shapes
:���������@
�
2gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGradactivation_3/divmax_pooling2d_3/MaxPool(gradients/flatten_1/Reshape_grad/Reshape*/
_output_shapes
:���������@*
data_formatNHWC*
paddingVALID*
strides
*
ksize
**
_class 
loc:@max_pooling2d_3/MaxPool*
T0
�
%gradients/activation_3/div_grad/ShapeShapeactivation_3/clip_by_value*#
_class
loc:@activation_3/div*
out_type0*
T0*
_output_shapes
:
�
'gradients/activation_3/div_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_3/div*
valueB *
_output_shapes
: 
�
5gradients/activation_3/div_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_3/div_grad/Shape'gradients/activation_3/div_grad/Shape_1*#
_class
loc:@activation_3/div*
T0*2
_output_shapes 
:���������:���������
�
'gradients/activation_3/div_grad/RealDivRealDiv2gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradactivation_3/div/y*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@
�
#gradients/activation_3/div_grad/SumSum'gradients/activation_3/div_grad/RealDiv5gradients/activation_3/div_grad/BroadcastGradientArgs*#
_class
loc:@activation_3/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
'gradients/activation_3/div_grad/ReshapeReshape#gradients/activation_3/div_grad/Sum%gradients/activation_3/div_grad/Shape*
Tshape0*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@
�
#gradients/activation_3/div_grad/NegNegactivation_3/clip_by_value*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@
�
)gradients/activation_3/div_grad/RealDiv_1RealDiv#gradients/activation_3/div_grad/Negactivation_3/div/y*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@
�
)gradients/activation_3/div_grad/RealDiv_2RealDiv)gradients/activation_3/div_grad/RealDiv_1activation_3/div/y*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@
�
#gradients/activation_3/div_grad/mulMul2gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGrad)gradients/activation_3/div_grad/RealDiv_2*#
_class
loc:@activation_3/div*
T0*/
_output_shapes
:���������@
�
%gradients/activation_3/div_grad/Sum_1Sum#gradients/activation_3/div_grad/mul7gradients/activation_3/div_grad/BroadcastGradientArgs:1*#
_class
loc:@activation_3/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
)gradients/activation_3/div_grad/Reshape_1Reshape%gradients/activation_3/div_grad/Sum_1'gradients/activation_3/div_grad/Shape_1*
Tshape0*#
_class
loc:@activation_3/div*
T0*
_output_shapes
: 
�
/gradients/activation_3/clip_by_value_grad/ShapeShape"activation_3/clip_by_value/Minimum*-
_class#
!loc:@activation_3/clip_by_value*
out_type0*
T0*
_output_shapes
:
�
1gradients/activation_3/clip_by_value_grad/Shape_1Const*
dtype0*-
_class#
!loc:@activation_3/clip_by_value*
valueB *
_output_shapes
: 
�
1gradients/activation_3/clip_by_value_grad/Shape_2Shape'gradients/activation_3/div_grad/Reshape*-
_class#
!loc:@activation_3/clip_by_value*
out_type0*
T0*
_output_shapes
:
�
5gradients/activation_3/clip_by_value_grad/zeros/ConstConst*
dtype0*-
_class#
!loc:@activation_3/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
/gradients/activation_3/clip_by_value_grad/zerosFill1gradients/activation_3/clip_by_value_grad/Shape_25gradients/activation_3/clip_by_value_grad/zeros/Const*-
_class#
!loc:@activation_3/clip_by_value*
T0*/
_output_shapes
:���������@
�
6gradients/activation_3/clip_by_value_grad/GreaterEqualGreaterEqual"activation_3/clip_by_value/Minimumactivation_3/Cast*-
_class#
!loc:@activation_3/clip_by_value*
T0*/
_output_shapes
:���������@
�
?gradients/activation_3/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/activation_3/clip_by_value_grad/Shape1gradients/activation_3/clip_by_value_grad/Shape_1*-
_class#
!loc:@activation_3/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
0gradients/activation_3/clip_by_value_grad/SelectSelect6gradients/activation_3/clip_by_value_grad/GreaterEqual'gradients/activation_3/div_grad/Reshape/gradients/activation_3/clip_by_value_grad/zeros*-
_class#
!loc:@activation_3/clip_by_value*
T0*/
_output_shapes
:���������@
�
4gradients/activation_3/clip_by_value_grad/LogicalNot
LogicalNot6gradients/activation_3/clip_by_value_grad/GreaterEqual*-
_class#
!loc:@activation_3/clip_by_value*/
_output_shapes
:���������@
�
2gradients/activation_3/clip_by_value_grad/Select_1Select4gradients/activation_3/clip_by_value_grad/LogicalNot'gradients/activation_3/div_grad/Reshape/gradients/activation_3/clip_by_value_grad/zeros*-
_class#
!loc:@activation_3/clip_by_value*
T0*/
_output_shapes
:���������@
�
-gradients/activation_3/clip_by_value_grad/SumSum0gradients/activation_3/clip_by_value_grad/Select?gradients/activation_3/clip_by_value_grad/BroadcastGradientArgs*-
_class#
!loc:@activation_3/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/activation_3/clip_by_value_grad/ReshapeReshape-gradients/activation_3/clip_by_value_grad/Sum/gradients/activation_3/clip_by_value_grad/Shape*
Tshape0*-
_class#
!loc:@activation_3/clip_by_value*
T0*/
_output_shapes
:���������@
�
/gradients/activation_3/clip_by_value_grad/Sum_1Sum2gradients/activation_3/clip_by_value_grad/Select_1Agradients/activation_3/clip_by_value_grad/BroadcastGradientArgs:1*-
_class#
!loc:@activation_3/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
3gradients/activation_3/clip_by_value_grad/Reshape_1Reshape/gradients/activation_3/clip_by_value_grad/Sum_11gradients/activation_3/clip_by_value_grad/Shape_1*
Tshape0*-
_class#
!loc:@activation_3/clip_by_value*
T0*
_output_shapes
: 
�
7gradients/activation_3/clip_by_value/Minimum_grad/ShapeShapeactivation_3/add*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:
�
9gradients/activation_3/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
9gradients/activation_3/clip_by_value/Minimum_grad/Shape_2Shape1gradients/activation_3/clip_by_value_grad/Reshape*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:
�
=gradients/activation_3/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
7gradients/activation_3/clip_by_value/Minimum_grad/zerosFill9gradients/activation_3/clip_by_value/Minimum_grad/Shape_2=gradients/activation_3/clip_by_value/Minimum_grad/zeros/Const*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
;gradients/activation_3/clip_by_value/Minimum_grad/LessEqual	LessEqualactivation_3/addactivation_3/Cast_1*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
Ggradients/activation_3/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/activation_3/clip_by_value/Minimum_grad/Shape9gradients/activation_3/clip_by_value/Minimum_grad/Shape_1*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
8gradients/activation_3/clip_by_value/Minimum_grad/SelectSelect;gradients/activation_3/clip_by_value/Minimum_grad/LessEqual1gradients/activation_3/clip_by_value_grad/Reshape7gradients/activation_3/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
<gradients/activation_3/clip_by_value/Minimum_grad/LogicalNot
LogicalNot;gradients/activation_3/clip_by_value/Minimum_grad/LessEqual*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*/
_output_shapes
:���������@
�
:gradients/activation_3/clip_by_value/Minimum_grad/Select_1Select<gradients/activation_3/clip_by_value/Minimum_grad/LogicalNot1gradients/activation_3/clip_by_value_grad/Reshape7gradients/activation_3/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
5gradients/activation_3/clip_by_value/Minimum_grad/SumSum8gradients/activation_3/clip_by_value/Minimum_grad/SelectGgradients/activation_3/clip_by_value/Minimum_grad/BroadcastGradientArgs*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/activation_3/clip_by_value/Minimum_grad/ReshapeReshape5gradients/activation_3/clip_by_value/Minimum_grad/Sum7gradients/activation_3/clip_by_value/Minimum_grad/Shape*
Tshape0*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
7gradients/activation_3/clip_by_value/Minimum_grad/Sum_1Sum:gradients/activation_3/clip_by_value/Minimum_grad/Select_1Igradients/activation_3/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
;gradients/activation_3/clip_by_value/Minimum_grad/Reshape_1Reshape7gradients/activation_3/clip_by_value/Minimum_grad/Sum_19gradients/activation_3/clip_by_value/Minimum_grad/Shape_1*
Tshape0*5
_class+
)'loc:@activation_3/clip_by_value/Minimum*
T0*
_output_shapes
: 
�
%gradients/activation_3/add_grad/ShapeShapeactivation_3/mul*#
_class
loc:@activation_3/add*
out_type0*
T0*
_output_shapes
:
�
'gradients/activation_3/add_grad/Shape_1Shapeactivation_3/StopGradient*#
_class
loc:@activation_3/add*
out_type0*
T0*
_output_shapes
:
�
5gradients/activation_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_3/add_grad/Shape'gradients/activation_3/add_grad/Shape_1*#
_class
loc:@activation_3/add*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_3/add_grad/SumSum9gradients/activation_3/clip_by_value/Minimum_grad/Reshape5gradients/activation_3/add_grad/BroadcastGradientArgs*#
_class
loc:@activation_3/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
'gradients/activation_3/add_grad/ReshapeReshape#gradients/activation_3/add_grad/Sum%gradients/activation_3/add_grad/Shape*
Tshape0*#
_class
loc:@activation_3/add*
T0*/
_output_shapes
:���������@
�
%gradients/activation_3/add_grad/Sum_1Sum9gradients/activation_3/clip_by_value/Minimum_grad/Reshape7gradients/activation_3/add_grad/BroadcastGradientArgs:1*#
_class
loc:@activation_3/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
)gradients/activation_3/add_grad/Reshape_1Reshape%gradients/activation_3/add_grad/Sum_1'gradients/activation_3/add_grad/Shape_1*
Tshape0*#
_class
loc:@activation_3/add*
T0*/
_output_shapes
:���������@
�
%gradients/activation_3/mul_grad/ShapeShape batch_normalization_3/cond/Merge*#
_class
loc:@activation_3/mul*
out_type0*
T0*
_output_shapes
:
�
'gradients/activation_3/mul_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_3/mul*
valueB *
_output_shapes
: 
�
5gradients/activation_3/mul_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_3/mul_grad/Shape'gradients/activation_3/mul_grad/Shape_1*#
_class
loc:@activation_3/mul*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_3/mul_grad/mulMul'gradients/activation_3/add_grad/Reshapeactivation_3/mul/y*#
_class
loc:@activation_3/mul*
T0*/
_output_shapes
:���������@
�
#gradients/activation_3/mul_grad/SumSum#gradients/activation_3/mul_grad/mul5gradients/activation_3/mul_grad/BroadcastGradientArgs*#
_class
loc:@activation_3/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
'gradients/activation_3/mul_grad/ReshapeReshape#gradients/activation_3/mul_grad/Sum%gradients/activation_3/mul_grad/Shape*
Tshape0*#
_class
loc:@activation_3/mul*
T0*/
_output_shapes
:���������@
�
%gradients/activation_3/mul_grad/mul_1Mul batch_normalization_3/cond/Merge'gradients/activation_3/add_grad/Reshape*#
_class
loc:@activation_3/mul*
T0*/
_output_shapes
:���������@
�
%gradients/activation_3/mul_grad/Sum_1Sum%gradients/activation_3/mul_grad/mul_17gradients/activation_3/mul_grad/BroadcastGradientArgs:1*#
_class
loc:@activation_3/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
)gradients/activation_3/mul_grad/Reshape_1Reshape%gradients/activation_3/mul_grad/Sum_1'gradients/activation_3/mul_grad/Shape_1*
Tshape0*#
_class
loc:@activation_3/mul*
T0*
_output_shapes
: 
�
9gradients/batch_normalization_3/cond/Merge_grad/cond_gradSwitch'gradients/activation_3/mul_grad/Reshape"batch_normalization_3/cond/pred_id*#
_class
loc:@activation_3/mul*
T0*J
_output_shapes8
6:���������@:���������@
�
?gradients/batch_normalization_3/cond/batchnorm/add_1_grad/ShapeShape*batch_normalization_3/cond/batchnorm/mul_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_3/cond/batchnorm/add_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_3/cond/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_3/cond/batchnorm/add_1_grad/ShapeAgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_3/cond/batchnorm/add_1_grad/SumSum9gradients/batch_normalization_3/cond/Merge_grad/cond_gradOgradients/batch_normalization_3/cond/batchnorm/add_1_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_3/cond/batchnorm/add_1_grad/ReshapeReshape=gradients/batch_normalization_3/cond/batchnorm/add_1_grad/Sum?gradients/batch_normalization_3/cond/batchnorm/add_1_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*
T0*/
_output_shapes
:���������@
�
?gradients/batch_normalization_3/cond/batchnorm/add_1_grad/Sum_1Sum9gradients/batch_normalization_3/cond/Merge_grad/cond_gradQgradients/batch_normalization_3/cond/batchnorm/add_1_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Reshape_1Reshape?gradients/batch_normalization_3/cond/batchnorm/add_1_grad/Sum_1Agradients/batch_normalization_3/cond/batchnorm/add_1_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/add_1*
T0*
_output_shapes
:@
�
gradients/Switch_4Switch%batch_normalization_3/batchnorm/add_1"batch_normalization_3/cond/pred_id*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*J
_output_shapes8
6:���������@:���������@
�
gradients/Shape_5Shapegradients/Switch_4*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_4/ConstConst*
dtype0*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_4Fillgradients/Shape_5gradients/zeros_4/Const*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*/
_output_shapes
:���������@
�
<gradients/batch_normalization_3/cond/Switch_1_grad/cond_gradMerge;gradients/batch_normalization_3/cond/Merge_grad/cond_grad:1gradients/zeros_4*
N*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*1
_output_shapes
:���������@: 
�
?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/ShapeShape1batch_normalization_3/cond/batchnorm/mul_1/Switch*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_3/cond/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/ShapeAgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/mulMulAgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Reshape(batch_normalization_3/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
=gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/SumSum=gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/mulOgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_3/cond/batchnorm/mul_1_grad/ReshapeReshape=gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Sum?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/mul_1Mul1batch_normalization_3/cond/batchnorm/mul_1/SwitchAgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Reshape*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Sum_1Sum?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/mul_1Qgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Reshape_1Reshape?gradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Sum_1Agradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_3/cond/batchnorm/sub_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_3/cond/batchnorm/sub_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_3/cond/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_3/cond/batchnorm/sub_grad/Shape?gradients/batch_normalization_3/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_3/cond/batchnorm/sub_grad/SumSumCgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Reshape_1Mgradients/batch_normalization_3/cond/batchnorm/sub_grad/BroadcastGradientArgs*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
?gradients/batch_normalization_3/cond/batchnorm/sub_grad/ReshapeReshape;gradients/batch_normalization_3/cond/batchnorm/sub_grad/Sum=gradients/batch_normalization_3/cond/batchnorm/sub_grad/Shape*
Tshape0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_3/cond/batchnorm/sub_grad/Sum_1SumCgradients/batch_normalization_3/cond/batchnorm/add_1_grad/Reshape_1Ogradients/batch_normalization_3/cond/batchnorm/sub_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
;gradients/batch_normalization_3/cond/batchnorm/sub_grad/NegNeg=gradients/batch_normalization_3/cond/batchnorm/sub_grad/Sum_1*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
T0*
_output_shapes
:
�
Agradients/batch_normalization_3/cond/batchnorm/sub_grad/Reshape_1Reshape;gradients/batch_normalization_3/cond/batchnorm/sub_grad/Neg?gradients/batch_normalization_3/cond/batchnorm/sub_grad/Shape_1*
Tshape0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/sub*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_3/batchnorm/add_1_grad/ShapeShape%batch_normalization_3/batchnorm/mul_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
<gradients/batch_normalization_3/batchnorm/add_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_3/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_3/batchnorm/add_1_grad/Shape<gradients/batch_normalization_3/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_3/batchnorm/add_1_grad/SumSum<gradients/batch_normalization_3/cond/Switch_1_grad/cond_gradJgradients/batch_normalization_3/batchnorm/add_1_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_3/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_3/batchnorm/add_1_grad/Sum:gradients/batch_normalization_3/batchnorm/add_1_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*/
_output_shapes
:���������@
�
:gradients/batch_normalization_3/batchnorm/add_1_grad/Sum_1Sum<gradients/batch_normalization_3/cond/Switch_1_grad/cond_gradLgradients/batch_normalization_3/batchnorm/add_1_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_3/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_3/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_3/batchnorm/add_1_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_3/batchnorm/add_1*
T0*
_output_shapes
:@
�
gradients/Switch_5Switchquantized_conv2d_3/BiasAdd"batch_normalization_3/cond/pred_id*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
T0*J
_output_shapes8
6:���������@:���������@
�
gradients/Shape_6Shapegradients/Switch_5:1*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_5/ConstConst*
dtype0*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_5Fillgradients/Shape_6gradients/zeros_5/Const*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
T0*/
_output_shapes
:���������@
�
Jgradients/batch_normalization_3/cond/batchnorm/mul_1/Switch_grad/cond_gradMergeAgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Reshapegradients/zeros_5*
N*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
T0*1
_output_shapes
:���������@: 
�
gradients/Switch_6Switchbatch_normalization_3/beta/read"batch_normalization_3/cond/pred_id*-
_class#
!loc:@batch_normalization_3/beta*
T0* 
_output_shapes
:@:@
�
gradients/Shape_7Shapegradients/Switch_6:1*-
_class#
!loc:@batch_normalization_3/beta*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_6/ConstConst*
dtype0*-
_class#
!loc:@batch_normalization_3/beta*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_6Fillgradients/Shape_7gradients/zeros_6/Const*-
_class#
!loc:@batch_normalization_3/beta*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_3/cond/batchnorm/sub/Switch_grad/cond_gradMerge?gradients/batch_normalization_3/cond/batchnorm/sub_grad/Reshapegradients/zeros_6*
N*-
_class#
!loc:@batch_normalization_3/beta*
T0*
_output_shapes

:@: 
�
?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/ShapeConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Agradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_3/cond/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/ShapeAgradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/mulMulAgradients/batch_normalization_3/cond/batchnorm/sub_grad/Reshape_1(batch_normalization_3/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/SumSum=gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/mulOgradients/batch_normalization_3/cond/batchnorm/mul_2_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_3/cond/batchnorm/mul_2_grad/ReshapeReshape=gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Sum?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/mul_1Mul1batch_normalization_3/cond/batchnorm/mul_2/SwitchAgradients/batch_normalization_3/cond/batchnorm/sub_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Sum_1Sum?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/mul_1Qgradients/batch_normalization_3/cond/batchnorm/mul_2_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Reshape_1Reshape?gradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Sum_1Agradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_3/batchnorm/mul_1_grad/ShapeShapequantized_conv2d_3/BiasAdd*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:
�
<gradients/batch_normalization_3/batchnorm/mul_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_3/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_3/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_3/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_3/batchnorm/mul_1_grad/mulMul<gradients/batch_normalization_3/batchnorm/add_1_grad/Reshape#batch_normalization_3/batchnorm/mul*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
8gradients/batch_normalization_3/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_3/batchnorm/mul_1_grad/mulJgradients/batch_normalization_3/batchnorm/mul_1_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_3/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_3/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_3/batchnorm/mul_1_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
:gradients/batch_normalization_3/batchnorm/mul_1_grad/mul_1Mulquantized_conv2d_3/BiasAdd<gradients/batch_normalization_3/batchnorm/add_1_grad/Reshape*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
:gradients/batch_normalization_3/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_3/batchnorm/mul_1_grad/mul_1Lgradients/batch_normalization_3/batchnorm/mul_1_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_3/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_3/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_3/batchnorm/mul_1_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_3/batchnorm/sub_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_3/batchnorm/sub_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_3/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_3/batchnorm/sub_grad/Shape:gradients/batch_normalization_3/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_3/batchnorm/sub_grad/SumSum>gradients/batch_normalization_3/batchnorm/add_1_grad/Reshape_1Hgradients/batch_normalization_3/batchnorm/sub_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_3/batchnorm/sub_grad/ReshapeReshape6gradients/batch_normalization_3/batchnorm/sub_grad/Sum8gradients/batch_normalization_3/batchnorm/sub_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_3/batchnorm/sub_grad/Sum_1Sum>gradients/batch_normalization_3/batchnorm/add_1_grad/Reshape_1Jgradients/batch_normalization_3/batchnorm/sub_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
6gradients/batch_normalization_3/batchnorm/sub_grad/NegNeg8gradients/batch_normalization_3/batchnorm/sub_grad/Sum_1*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
T0*
_output_shapes
:
�
<gradients/batch_normalization_3/batchnorm/sub_grad/Reshape_1Reshape6gradients/batch_normalization_3/batchnorm/sub_grad/Neg:gradients/batch_normalization_3/batchnorm/sub_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_3/batchnorm/sub*
T0*
_output_shapes
:@
�
gradients/AddN_7AddNCgradients/batch_normalization_3/cond/batchnorm/mul_1_grad/Reshape_1Cgradients/batch_normalization_3/cond/batchnorm/mul_2_grad/Reshape_1*
N*=
_class3
1/loc:@batch_normalization_3/cond/batchnorm/mul_1*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_3/cond/batchnorm/mul_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_3/cond/batchnorm/mul_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_3/cond/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_3/cond/batchnorm/mul_grad/Shape?gradients/batch_normalization_3/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_3/cond/batchnorm/mul_grad/mulMulgradients/AddN_7/batch_normalization_3/cond/batchnorm/mul/Switch*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
;gradients/batch_normalization_3/cond/batchnorm/mul_grad/SumSum;gradients/batch_normalization_3/cond/batchnorm/mul_grad/mulMgradients/batch_normalization_3/cond/batchnorm/mul_grad/BroadcastGradientArgs*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
?gradients/batch_normalization_3/cond/batchnorm/mul_grad/ReshapeReshape;gradients/batch_normalization_3/cond/batchnorm/mul_grad/Sum=gradients/batch_normalization_3/cond/batchnorm/mul_grad/Shape*
Tshape0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_3/cond/batchnorm/mul_grad/mul_1Mul*batch_normalization_3/cond/batchnorm/Rsqrtgradients/AddN_7*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_3/cond/batchnorm/mul_grad/Sum_1Sum=gradients/batch_normalization_3/cond/batchnorm/mul_grad/mul_1Ogradients/batch_normalization_3/cond/batchnorm/mul_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_3/cond/batchnorm/mul_grad/Reshape_1Reshape=gradients/batch_normalization_3/cond/batchnorm/mul_grad/Sum_1?gradients/batch_normalization_3/cond/batchnorm/mul_grad/Shape_1*
Tshape0*;
_class1
/-loc:@batch_normalization_3/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
gradients/AddN_8AddNHgradients/batch_normalization_3/cond/batchnorm/sub/Switch_grad/cond_grad:gradients/batch_normalization_3/batchnorm/sub_grad/Reshape*
N*-
_class#
!loc:@batch_normalization_3/beta*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_3/batchnorm/mul_2_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
<gradients/batch_normalization_3/batchnorm/mul_2_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_3/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_3/batchnorm/mul_2_grad/Shape<gradients/batch_normalization_3/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_3/batchnorm/mul_2_grad/mulMul<gradients/batch_normalization_3/batchnorm/sub_grad/Reshape_1#batch_normalization_3/batchnorm/mul*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_3/batchnorm/mul_2_grad/SumSum8gradients/batch_normalization_3/batchnorm/mul_2_grad/mulJgradients/batch_normalization_3/batchnorm/mul_2_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_3/batchnorm/mul_2_grad/ReshapeReshape8gradients/batch_normalization_3/batchnorm/mul_2_grad/Sum:gradients/batch_normalization_3/batchnorm/mul_2_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_3/batchnorm/mul_2_grad/mul_1Mul%batch_normalization_3/moments/Squeeze<gradients/batch_normalization_3/batchnorm/sub_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_3/batchnorm/mul_2_grad/Sum_1Sum:gradients/batch_normalization_3/batchnorm/mul_2_grad/mul_1Lgradients/batch_normalization_3/batchnorm/mul_2_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_3/batchnorm/mul_2_grad/Reshape_1Reshape:gradients/batch_normalization_3/batchnorm/mul_2_grad/Sum_1<gradients/batch_normalization_3/batchnorm/mul_2_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_2*
T0*
_output_shapes
:@
�
gradients/Switch_7Switch batch_normalization_3/gamma/read"batch_normalization_3/cond/pred_id*.
_class$
" loc:@batch_normalization_3/gamma*
T0* 
_output_shapes
:@:@
�
gradients/Shape_8Shapegradients/Switch_7:1*.
_class$
" loc:@batch_normalization_3/gamma*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_7/ConstConst*
dtype0*.
_class$
" loc:@batch_normalization_3/gamma*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_7Fillgradients/Shape_8gradients/zeros_7/Const*.
_class$
" loc:@batch_normalization_3/gamma*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_3/cond/batchnorm/mul/Switch_grad/cond_gradMergeAgradients/batch_normalization_3/cond/batchnorm/mul_grad/Reshape_1gradients/zeros_7*
N*.
_class$
" loc:@batch_normalization_3/gamma*
T0*
_output_shapes

:@: 
�
:gradients/batch_normalization_3/moments/Squeeze_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_3/moments/Squeeze*%
valueB"         @   *
_output_shapes
:
�
<gradients/batch_normalization_3/moments/Squeeze_grad/ReshapeReshape<gradients/batch_normalization_3/batchnorm/mul_2_grad/Reshape:gradients/batch_normalization_3/moments/Squeeze_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_3/moments/Squeeze*
T0*&
_output_shapes
:@
�
gradients/AddN_9AddN>gradients/batch_normalization_3/batchnorm/mul_1_grad/Reshape_1>gradients/batch_normalization_3/batchnorm/mul_2_grad/Reshape_1*
N*8
_class.
,*loc:@batch_normalization_3/batchnorm/mul_1*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_3/batchnorm/mul_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_3/batchnorm/mul_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_3/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_3/batchnorm/mul_grad/Shape:gradients/batch_normalization_3/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_3/batchnorm/mul_grad/mulMulgradients/AddN_9 batch_normalization_3/gamma/read*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*
_output_shapes
:@
�
6gradients/batch_normalization_3/batchnorm/mul_grad/SumSum6gradients/batch_normalization_3/batchnorm/mul_grad/mulHgradients/batch_normalization_3/batchnorm/mul_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_3/batchnorm/mul_grad/ReshapeReshape6gradients/batch_normalization_3/batchnorm/mul_grad/Sum8gradients/batch_normalization_3/batchnorm/mul_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_3/batchnorm/mul_grad/mul_1Mul%batch_normalization_3/batchnorm/Rsqrtgradients/AddN_9*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_3/batchnorm/mul_grad/Sum_1Sum8gradients/batch_normalization_3/batchnorm/mul_grad/mul_1Jgradients/batch_normalization_3/batchnorm/mul_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_3/batchnorm/mul_grad/Reshape_1Reshape8gradients/batch_normalization_3/batchnorm/mul_grad/Sum_1:gradients/batch_normalization_3/batchnorm/mul_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_3/batchnorm/mul*
T0*
_output_shapes
:@
�
7gradients/batch_normalization_3/moments/mean_grad/ShapeConst*
dtype0*5
_class+
)'loc:@batch_normalization_3/moments/mean*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_3/moments/mean_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@batch_normalization_3/moments/mean*%
valueB"         @   *
_output_shapes
:
�
Ggradients/batch_normalization_3/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/batch_normalization_3/moments/mean_grad/Shape9gradients/batch_normalization_3/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*2
_output_shapes 
:���������:���������
�
5gradients/batch_normalization_3/moments/mean_grad/SumSum<gradients/batch_normalization_3/moments/Squeeze_grad/ReshapeGgradients/batch_normalization_3/moments/mean_grad/BroadcastGradientArgs*5
_class+
)'loc:@batch_normalization_3/moments/mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/batch_normalization_3/moments/mean_grad/ReshapeReshape5gradients/batch_normalization_3/moments/mean_grad/Sum7gradients/batch_normalization_3/moments/mean_grad/Shape*
Tshape0*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*&
_output_shapes
:@
�
7gradients/batch_normalization_3/moments/mean_grad/Sum_1Sum<gradients/batch_normalization_3/moments/Squeeze_grad/ReshapeIgradients/batch_normalization_3/moments/mean_grad/BroadcastGradientArgs:1*5
_class+
)'loc:@batch_normalization_3/moments/mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
;gradients/batch_normalization_3/moments/mean_grad/Reshape_1Reshape7gradients/batch_normalization_3/moments/mean_grad/Sum_19gradients/batch_normalization_3/moments/mean_grad/Shape_1*
Tshape0*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*&
_output_shapes
:@
�
>gradients/batch_normalization_3/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad%batch_normalization_3/batchnorm/Rsqrt:gradients/batch_normalization_3/batchnorm/mul_grad/Reshape*8
_class.
,*loc:@batch_normalization_3/batchnorm/Rsqrt*
T0*
_output_shapes
:@
�
gradients/AddN_10AddNHgradients/batch_normalization_3/cond/batchnorm/mul/Switch_grad/cond_grad<gradients/batch_normalization_3/batchnorm/mul_grad/Reshape_1*
N*.
_class$
" loc:@batch_normalization_3/gamma*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_3/batchnorm/add_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_3/batchnorm/add_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
valueB *
_output_shapes
: 
�
Hgradients/batch_normalization_3/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_3/batchnorm/add_grad/Shape:gradients/batch_normalization_3/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_3/batchnorm/add_grad/SumSum>gradients/batch_normalization_3/batchnorm/Rsqrt_grad/RsqrtGradHgradients/batch_normalization_3/batchnorm/add_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_3/batchnorm/add_grad/ReshapeReshape6gradients/batch_normalization_3/batchnorm/add_grad/Sum8gradients/batch_normalization_3/batchnorm/add_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_3/batchnorm/add_grad/Sum_1Sum>gradients/batch_normalization_3/batchnorm/Rsqrt_grad/RsqrtGradJgradients/batch_normalization_3/batchnorm/add_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_3/batchnorm/add_grad/Reshape_1Reshape8gradients/batch_normalization_3/batchnorm/add_grad/Sum_1:gradients/batch_normalization_3/batchnorm/add_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_3/batchnorm/add*
T0*
_output_shapes
: 
�
<gradients/batch_normalization_3/moments/Squeeze_1_grad/ShapeConst*
dtype0*:
_class0
.,loc:@batch_normalization_3/moments/Squeeze_1*%
valueB"         @   *
_output_shapes
:
�
>gradients/batch_normalization_3/moments/Squeeze_1_grad/ReshapeReshape:gradients/batch_normalization_3/batchnorm/add_grad/Reshape<gradients/batch_normalization_3/moments/Squeeze_1_grad/Shape*
Tshape0*:
_class0
.,loc:@batch_normalization_3/moments/Squeeze_1*
T0*&
_output_shapes
:@
�
;gradients/batch_normalization_3/moments/variance_grad/ShapeConst*
dtype0*9
_class/
-+loc:@batch_normalization_3/moments/variance*%
valueB"         @   *
_output_shapes
:
�
=gradients/batch_normalization_3/moments/variance_grad/Shape_1Const*
dtype0*9
_class/
-+loc:@batch_normalization_3/moments/variance*%
valueB"         @   *
_output_shapes
:
�
Kgradients/batch_normalization_3/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients/batch_normalization_3/moments/variance_grad/Shape=gradients/batch_normalization_3/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_3/moments/variance*
T0*2
_output_shapes 
:���������:���������
�
9gradients/batch_normalization_3/moments/variance_grad/SumSum>gradients/batch_normalization_3/moments/Squeeze_1_grad/ReshapeKgradients/batch_normalization_3/moments/variance_grad/BroadcastGradientArgs*9
_class/
-+loc:@batch_normalization_3/moments/variance*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
=gradients/batch_normalization_3/moments/variance_grad/ReshapeReshape9gradients/batch_normalization_3/moments/variance_grad/Sum;gradients/batch_normalization_3/moments/variance_grad/Shape*
Tshape0*9
_class/
-+loc:@batch_normalization_3/moments/variance*
T0*&
_output_shapes
:@
�
;gradients/batch_normalization_3/moments/variance_grad/Sum_1Sum>gradients/batch_normalization_3/moments/Squeeze_1_grad/ReshapeMgradients/batch_normalization_3/moments/variance_grad/BroadcastGradientArgs:1*9
_class/
-+loc:@batch_normalization_3/moments/variance*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/batch_normalization_3/moments/variance_grad/NegNeg;gradients/batch_normalization_3/moments/variance_grad/Sum_1*9
_class/
-+loc:@batch_normalization_3/moments/variance*
T0*
_output_shapes
:
�
?gradients/batch_normalization_3/moments/variance_grad/Reshape_1Reshape9gradients/batch_normalization_3/moments/variance_grad/Neg=gradients/batch_normalization_3/moments/variance_grad/Shape_1*
Tshape0*9
_class/
-+loc:@batch_normalization_3/moments/variance*
T0*&
_output_shapes
:@
�
9gradients/batch_normalization_3/moments/Mean_1_grad/ShapeShape/batch_normalization_3/moments/SquaredDifference*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
out_type0*
T0*
_output_shapes
:
�
8gradients/batch_normalization_3/moments/Mean_1_grad/SizeConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B :*
_output_shapes
: 
�
7gradients/batch_normalization_3/moments/Mean_1_grad/addAdd6batch_normalization_3/moments/Mean_1/reduction_indices8gradients/batch_normalization_3/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
:
�
7gradients/batch_normalization_3/moments/Mean_1_grad/modFloorMod7gradients/batch_normalization_3/moments/Mean_1_grad/add8gradients/batch_normalization_3/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
valueB:*
_output_shapes
:
�
?gradients/batch_normalization_3/moments/Mean_1_grad/range/startConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B : *
_output_shapes
: 
�
?gradients/batch_normalization_3/moments/Mean_1_grad/range/deltaConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B :*
_output_shapes
: 
�
9gradients/batch_normalization_3/moments/Mean_1_grad/rangeRange?gradients/batch_normalization_3/moments/Mean_1_grad/range/start8gradients/batch_normalization_3/moments/Mean_1_grad/Size?gradients/batch_normalization_3/moments/Mean_1_grad/range/delta*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*

Tidx0*
_output_shapes
:
�
>gradients/batch_normalization_3/moments/Mean_1_grad/Fill/valueConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B :*
_output_shapes
: 
�
8gradients/batch_normalization_3/moments/Mean_1_grad/FillFill;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_1>gradients/batch_normalization_3/moments/Mean_1_grad/Fill/value*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
:
�
Agradients/batch_normalization_3/moments/Mean_1_grad/DynamicStitchDynamicStitch9gradients/batch_normalization_3/moments/Mean_1_grad/range7gradients/batch_normalization_3/moments/Mean_1_grad/mod9gradients/batch_normalization_3/moments/Mean_1_grad/Shape8gradients/batch_normalization_3/moments/Mean_1_grad/Fill*
N*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*#
_output_shapes
:���������
�
=gradients/batch_normalization_3/moments/Mean_1_grad/Maximum/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B :*
_output_shapes
: 
�
;gradients/batch_normalization_3/moments/Mean_1_grad/MaximumMaximumAgradients/batch_normalization_3/moments/Mean_1_grad/DynamicStitch=gradients/batch_normalization_3/moments/Mean_1_grad/Maximum/y*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*#
_output_shapes
:���������
�
<gradients/batch_normalization_3/moments/Mean_1_grad/floordivFloorDiv9gradients/batch_normalization_3/moments/Mean_1_grad/Shape;gradients/batch_normalization_3/moments/Mean_1_grad/Maximum*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_3/moments/Mean_1_grad/ReshapeReshape=gradients/batch_normalization_3/moments/variance_grad/ReshapeAgradients/batch_normalization_3/moments/Mean_1_grad/DynamicStitch*
Tshape0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
:
�
8gradients/batch_normalization_3/moments/Mean_1_grad/TileTile;gradients/batch_normalization_3/moments/Mean_1_grad/Reshape<gradients/batch_normalization_3/moments/Mean_1_grad/floordiv*

Tmultiples0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*J
_output_shapes8
6:4������������������������������������
�
;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_2Shape/batch_normalization_3/moments/SquaredDifference*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
out_type0*
T0*
_output_shapes
:
�
;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_3Const*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_3/moments/Mean_1_grad/ConstConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
valueB: *
_output_shapes
:
�
8gradients/batch_normalization_3/moments/Mean_1_grad/ProdProd;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_29gradients/batch_normalization_3/moments/Mean_1_grad/Const*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
;gradients/batch_normalization_3/moments/Mean_1_grad/Const_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
valueB: *
_output_shapes
:
�
:gradients/batch_normalization_3/moments/Mean_1_grad/Prod_1Prod;gradients/batch_normalization_3/moments/Mean_1_grad/Shape_3;gradients/batch_normalization_3/moments/Mean_1_grad/Const_1*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
?gradients/batch_normalization_3/moments/Mean_1_grad/Maximum_1/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_3/moments/Mean_1_grad/Maximum_1Maximum:gradients/batch_normalization_3/moments/Mean_1_grad/Prod_1?gradients/batch_normalization_3/moments/Mean_1_grad/Maximum_1/y*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_3/moments/Mean_1_grad/floordiv_1FloorDiv8gradients/batch_normalization_3/moments/Mean_1_grad/Prod=gradients/batch_normalization_3/moments/Mean_1_grad/Maximum_1*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*
_output_shapes
: 
�
8gradients/batch_normalization_3/moments/Mean_1_grad/CastCast>gradients/batch_normalization_3/moments/Mean_1_grad/floordiv_1*

DstT0*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*

SrcT0*
_output_shapes
: 
�
;gradients/batch_normalization_3/moments/Mean_1_grad/truedivRealDiv8gradients/batch_normalization_3/moments/Mean_1_grad/Tile8gradients/batch_normalization_3/moments/Mean_1_grad/Cast*7
_class-
+)loc:@batch_normalization_3/moments/Mean_1*
T0*/
_output_shapes
:���������@
�
9gradients/batch_normalization_3/moments/Square_grad/mul/xConst@^gradients/batch_normalization_3/moments/variance_grad/Reshape_1*
dtype0*7
_class-
+)loc:@batch_normalization_3/moments/Square*
valueB
 *   @*
_output_shapes
: 
�
7gradients/batch_normalization_3/moments/Square_grad/mulMul9gradients/batch_normalization_3/moments/Square_grad/mul/x*batch_normalization_3/moments/shifted_mean*7
_class-
+)loc:@batch_normalization_3/moments/Square*
T0*&
_output_shapes
:@
�
9gradients/batch_normalization_3/moments/Square_grad/mul_1Mul?gradients/batch_normalization_3/moments/variance_grad/Reshape_17gradients/batch_normalization_3/moments/Square_grad/mul*7
_class-
+)loc:@batch_normalization_3/moments/Square*
T0*&
_output_shapes
:@
�
Dgradients/batch_normalization_3/moments/SquaredDifference_grad/ShapeShapequantized_conv2d_3/BiasAdd*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:
�
Fgradients/batch_normalization_3/moments/SquaredDifference_grad/Shape_1Const*
dtype0*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*%
valueB"         @   *
_output_shapes
:
�
Tgradients/batch_normalization_3/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/batch_normalization_3/moments/SquaredDifference_grad/ShapeFgradients/batch_normalization_3/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*2
_output_shapes 
:���������:���������
�
Egradients/batch_normalization_3/moments/SquaredDifference_grad/scalarConst<^gradients/batch_normalization_3/moments/Mean_1_grad/truediv*
dtype0*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
valueB
 *   @*
_output_shapes
: 
�
Bgradients/batch_normalization_3/moments/SquaredDifference_grad/mulMulEgradients/batch_normalization_3/moments/SquaredDifference_grad/scalar;gradients/batch_normalization_3/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Bgradients/batch_normalization_3/moments/SquaredDifference_grad/subSubquantized_conv2d_3/BiasAdd*batch_normalization_3/moments/StopGradient<^gradients/batch_normalization_3/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Dgradients/batch_normalization_3/moments/SquaredDifference_grad/mul_1MulBgradients/batch_normalization_3/moments/SquaredDifference_grad/mulBgradients/batch_normalization_3/moments/SquaredDifference_grad/sub*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Bgradients/batch_normalization_3/moments/SquaredDifference_grad/SumSumDgradients/batch_normalization_3/moments/SquaredDifference_grad/mul_1Tgradients/batch_normalization_3/moments/SquaredDifference_grad/BroadcastGradientArgs*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Fgradients/batch_normalization_3/moments/SquaredDifference_grad/ReshapeReshapeBgradients/batch_normalization_3/moments/SquaredDifference_grad/SumDgradients/batch_normalization_3/moments/SquaredDifference_grad/Shape*
Tshape0*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Dgradients/batch_normalization_3/moments/SquaredDifference_grad/Sum_1SumDgradients/batch_normalization_3/moments/SquaredDifference_grad/mul_1Vgradients/batch_normalization_3/moments/SquaredDifference_grad/BroadcastGradientArgs:1*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Hgradients/batch_normalization_3/moments/SquaredDifference_grad/Reshape_1ReshapeDgradients/batch_normalization_3/moments/SquaredDifference_grad/Sum_1Fgradients/batch_normalization_3/moments/SquaredDifference_grad/Shape_1*
Tshape0*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*&
_output_shapes
:@
�
Bgradients/batch_normalization_3/moments/SquaredDifference_grad/NegNegHgradients/batch_normalization_3/moments/SquaredDifference_grad/Reshape_1*B
_class8
64loc:@batch_normalization_3/moments/SquaredDifference*
T0*&
_output_shapes
:@
�
gradients/AddN_11AddN9gradients/batch_normalization_3/moments/mean_grad/Reshape9gradients/batch_normalization_3/moments/Square_grad/mul_1*
N*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*&
_output_shapes
:@
�
?gradients/batch_normalization_3/moments/shifted_mean_grad/ShapeShape!batch_normalization_3/moments/Sub*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
out_type0*
T0*
_output_shapes
:
�
>gradients/batch_normalization_3/moments/shifted_mean_grad/SizeConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_3/moments/shifted_mean_grad/addAdd<batch_normalization_3/moments/shifted_mean/reduction_indices>gradients/batch_normalization_3/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
:
�
=gradients/batch_normalization_3/moments/shifted_mean_grad/modFloorMod=gradients/batch_normalization_3/moments/shifted_mean_grad/add>gradients/batch_normalization_3/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
valueB:*
_output_shapes
:
�
Egradients/batch_normalization_3/moments/shifted_mean_grad/range/startConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B : *
_output_shapes
: 
�
Egradients/batch_normalization_3/moments/shifted_mean_grad/range/deltaConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
?gradients/batch_normalization_3/moments/shifted_mean_grad/rangeRangeEgradients/batch_normalization_3/moments/shifted_mean_grad/range/start>gradients/batch_normalization_3/moments/shifted_mean_grad/SizeEgradients/batch_normalization_3/moments/shifted_mean_grad/range/delta*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*

Tidx0*
_output_shapes
:
�
Dgradients/batch_normalization_3/moments/shifted_mean_grad/Fill/valueConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
>gradients/batch_normalization_3/moments/shifted_mean_grad/FillFillAgradients/batch_normalization_3/moments/shifted_mean_grad/Shape_1Dgradients/batch_normalization_3/moments/shifted_mean_grad/Fill/value*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
:
�
Ggradients/batch_normalization_3/moments/shifted_mean_grad/DynamicStitchDynamicStitch?gradients/batch_normalization_3/moments/shifted_mean_grad/range=gradients/batch_normalization_3/moments/shifted_mean_grad/mod?gradients/batch_normalization_3/moments/shifted_mean_grad/Shape>gradients/batch_normalization_3/moments/shifted_mean_grad/Fill*
N*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Cgradients/batch_normalization_3/moments/shifted_mean_grad/Maximum/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/MaximumMaximumGgradients/batch_normalization_3/moments/shifted_mean_grad/DynamicStitchCgradients/batch_normalization_3/moments/shifted_mean_grad/Maximum/y*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Bgradients/batch_normalization_3/moments/shifted_mean_grad/floordivFloorDiv?gradients/batch_normalization_3/moments/shifted_mean_grad/ShapeAgradients/batch_normalization_3/moments/shifted_mean_grad/Maximum*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_11Ggradients/batch_normalization_3/moments/shifted_mean_grad/DynamicStitch*
Tshape0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
:
�
>gradients/batch_normalization_3/moments/shifted_mean_grad/TileTileAgradients/batch_normalization_3/moments/shifted_mean_grad/ReshapeBgradients/batch_normalization_3/moments/shifted_mean_grad/floordiv*

Tmultiples0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*J
_output_shapes8
6:4������������������������������������
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/Shape_2Shape!batch_normalization_3/moments/Sub*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/Shape_3Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*%
valueB"         @   *
_output_shapes
:
�
?gradients/batch_normalization_3/moments/shifted_mean_grad/ConstConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
valueB: *
_output_shapes
:
�
>gradients/batch_normalization_3/moments/shifted_mean_grad/ProdProdAgradients/batch_normalization_3/moments/shifted_mean_grad/Shape_2?gradients/batch_normalization_3/moments/shifted_mean_grad/Const*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/Const_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
valueB: *
_output_shapes
:
�
@gradients/batch_normalization_3/moments/shifted_mean_grad/Prod_1ProdAgradients/batch_normalization_3/moments/shifted_mean_grad/Shape_3Agradients/batch_normalization_3/moments/shifted_mean_grad/Const_1*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Egradients/batch_normalization_3/moments/shifted_mean_grad/Maximum_1/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Cgradients/batch_normalization_3/moments/shifted_mean_grad/Maximum_1Maximum@gradients/batch_normalization_3/moments/shifted_mean_grad/Prod_1Egradients/batch_normalization_3/moments/shifted_mean_grad/Maximum_1/y*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
: 
�
Dgradients/batch_normalization_3/moments/shifted_mean_grad/floordiv_1FloorDiv>gradients/batch_normalization_3/moments/shifted_mean_grad/ProdCgradients/batch_normalization_3/moments/shifted_mean_grad/Maximum_1*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_3/moments/shifted_mean_grad/CastCastDgradients/batch_normalization_3/moments/shifted_mean_grad/floordiv_1*

DstT0*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*

SrcT0*
_output_shapes
: 
�
Agradients/batch_normalization_3/moments/shifted_mean_grad/truedivRealDiv>gradients/batch_normalization_3/moments/shifted_mean_grad/Tile>gradients/batch_normalization_3/moments/shifted_mean_grad/Cast*=
_class3
1/loc:@batch_normalization_3/moments/shifted_mean*
T0*/
_output_shapes
:���������@
�
6gradients/batch_normalization_3/moments/Sub_grad/ShapeShapequantized_conv2d_3/BiasAdd*4
_class*
(&loc:@batch_normalization_3/moments/Sub*
out_type0*
T0*
_output_shapes
:
�
8gradients/batch_normalization_3/moments/Sub_grad/Shape_1Const*
dtype0*4
_class*
(&loc:@batch_normalization_3/moments/Sub*%
valueB"         @   *
_output_shapes
:
�
Fgradients/batch_normalization_3/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/batch_normalization_3/moments/Sub_grad/Shape8gradients/batch_normalization_3/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_3/moments/Sub*
T0*2
_output_shapes 
:���������:���������
�
4gradients/batch_normalization_3/moments/Sub_grad/SumSumAgradients/batch_normalization_3/moments/shifted_mean_grad/truedivFgradients/batch_normalization_3/moments/Sub_grad/BroadcastGradientArgs*4
_class*
(&loc:@batch_normalization_3/moments/Sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
8gradients/batch_normalization_3/moments/Sub_grad/ReshapeReshape4gradients/batch_normalization_3/moments/Sub_grad/Sum6gradients/batch_normalization_3/moments/Sub_grad/Shape*
Tshape0*4
_class*
(&loc:@batch_normalization_3/moments/Sub*
T0*/
_output_shapes
:���������@
�
6gradients/batch_normalization_3/moments/Sub_grad/Sum_1SumAgradients/batch_normalization_3/moments/shifted_mean_grad/truedivHgradients/batch_normalization_3/moments/Sub_grad/BroadcastGradientArgs:1*4
_class*
(&loc:@batch_normalization_3/moments/Sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
4gradients/batch_normalization_3/moments/Sub_grad/NegNeg6gradients/batch_normalization_3/moments/Sub_grad/Sum_1*4
_class*
(&loc:@batch_normalization_3/moments/Sub*
T0*
_output_shapes
:
�
:gradients/batch_normalization_3/moments/Sub_grad/Reshape_1Reshape4gradients/batch_normalization_3/moments/Sub_grad/Neg8gradients/batch_normalization_3/moments/Sub_grad/Shape_1*
Tshape0*4
_class*
(&loc:@batch_normalization_3/moments/Sub*
T0*&
_output_shapes
:@
�
gradients/AddN_12AddN;gradients/batch_normalization_3/moments/mean_grad/Reshape_1Bgradients/batch_normalization_3/moments/SquaredDifference_grad/Neg:gradients/batch_normalization_3/moments/Sub_grad/Reshape_1*
N*5
_class+
)'loc:@batch_normalization_3/moments/mean*
T0*&
_output_shapes
:@
�
gradients/AddN_13AddNJgradients/batch_normalization_3/cond/batchnorm/mul_1/Switch_grad/cond_grad<gradients/batch_normalization_3/batchnorm/mul_1_grad/ReshapeFgradients/batch_normalization_3/moments/SquaredDifference_grad/Reshape8gradients/batch_normalization_3/moments/Sub_grad/Reshape*
N*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
T0*/
_output_shapes
:���������@
�
5gradients/quantized_conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_13*-
_class#
!loc:@quantized_conv2d_3/BiasAdd*
data_formatNHWC*
T0*
_output_shapes
:@
�
-gradients/quantized_conv2d_3/mul_4_grad/ShapeShapequantized_conv2d_3/sub_2*+
_class!
loc:@quantized_conv2d_3/mul_4*
out_type0*
T0*
_output_shapes
:
�
/gradients/quantized_conv2d_3/mul_4_grad/Shape_1Const*
dtype0*+
_class!
loc:@quantized_conv2d_3/mul_4*
valueB *
_output_shapes
: 
�
=gradients/quantized_conv2d_3/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/mul_4_grad/Shape/gradients/quantized_conv2d_3/mul_4_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/mul_4_grad/mulMulgradients/AddN_13quantized_conv2d_3/mul_4/y*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_3/mul_4_grad/SumSum+gradients/quantized_conv2d_3/mul_4_grad/mul=gradients/quantized_conv2d_3/mul_4_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_3/mul_4*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_3/mul_4_grad/ReshapeReshape+gradients/quantized_conv2d_3/mul_4_grad/Sum-gradients/quantized_conv2d_3/mul_4_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/mul_4_grad/mul_1Mulquantized_conv2d_3/sub_2gradients/AddN_13*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/mul_4_grad/Sum_1Sum-gradients/quantized_conv2d_3/mul_4_grad/mul_1?gradients/quantized_conv2d_3/mul_4_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_3/mul_4*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/quantized_conv2d_3/mul_4_grad/Reshape_1Reshape-gradients/quantized_conv2d_3/mul_4_grad/Sum_1/gradients/quantized_conv2d_3/mul_4_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_3/mul_4*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_3/sub_2_grad/ShapeShapequantized_conv2d_3/convolution*+
_class!
loc:@quantized_conv2d_3/sub_2*
out_type0*
T0*
_output_shapes
:
�
/gradients/quantized_conv2d_3/sub_2_grad/Shape_1Shapequantized_conv2d_3/mul_3*+
_class!
loc:@quantized_conv2d_3/sub_2*
out_type0*
T0*
_output_shapes
:
�
=gradients/quantized_conv2d_3/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/sub_2_grad/Shape/gradients/quantized_conv2d_3/sub_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/sub_2*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/sub_2_grad/SumSum/gradients/quantized_conv2d_3/mul_4_grad/Reshape=gradients/quantized_conv2d_3/sub_2_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_3/sub_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_3/sub_2_grad/ReshapeReshape+gradients/quantized_conv2d_3/sub_2_grad/Sum-gradients/quantized_conv2d_3/sub_2_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_3/sub_2*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/sub_2_grad/Sum_1Sum/gradients/quantized_conv2d_3/mul_4_grad/Reshape?gradients/quantized_conv2d_3/sub_2_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_3/sub_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
+gradients/quantized_conv2d_3/sub_2_grad/NegNeg-gradients/quantized_conv2d_3/sub_2_grad/Sum_1*+
_class!
loc:@quantized_conv2d_3/sub_2*
T0*
_output_shapes
:
�
1gradients/quantized_conv2d_3/sub_2_grad/Reshape_1Reshape+gradients/quantized_conv2d_3/sub_2_grad/Neg/gradients/quantized_conv2d_3/sub_2_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_3/sub_2*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/mul_3_grad/ShapeConst*
dtype0*+
_class!
loc:@quantized_conv2d_3/mul_3*
valueB *
_output_shapes
: 
�
/gradients/quantized_conv2d_3/mul_3_grad/Shape_1Shape!quantized_conv2d_3/StopGradient_2*+
_class!
loc:@quantized_conv2d_3/mul_3*
out_type0*
T0*
_output_shapes
:
�
=gradients/quantized_conv2d_3/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/mul_3_grad/Shape/gradients/quantized_conv2d_3/mul_3_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/mul_3_grad/mulMul1gradients/quantized_conv2d_3/sub_2_grad/Reshape_1!quantized_conv2d_3/StopGradient_2*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_3/mul_3_grad/SumSum+gradients/quantized_conv2d_3/mul_3_grad/mul=gradients/quantized_conv2d_3/mul_3_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_3/mul_3*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_3/mul_3_grad/ReshapeReshape+gradients/quantized_conv2d_3/mul_3_grad/Sum-gradients/quantized_conv2d_3/mul_3_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_3/mul_3_grad/mul_1Mulquantized_conv2d_3/mul_3/x1gradients/quantized_conv2d_3/sub_2_grad/Reshape_1*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/mul_3_grad/Sum_1Sum-gradients/quantized_conv2d_3/mul_3_grad/mul_1?gradients/quantized_conv2d_3/mul_3_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_3/mul_3*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/quantized_conv2d_3/mul_3_grad/Reshape_1Reshape-gradients/quantized_conv2d_3/mul_3_grad/Sum_1/gradients/quantized_conv2d_3/mul_3_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_3/mul_3*
T0*/
_output_shapes
:���������@
�
3gradients/quantized_conv2d_3/convolution_grad/ShapeShapequantized_conv2d_3/mul_2*1
_class'
%#loc:@quantized_conv2d_3/convolution*
out_type0*
T0*
_output_shapes
:
�
Agradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput3gradients/quantized_conv2d_3/convolution_grad/Shapequantized_conv2d_3/div/gradients/quantized_conv2d_3/sub_2_grad/Reshape*/
_output_shapes
:���������@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_3/convolution
�
5gradients/quantized_conv2d_3/convolution_grad/Shape_1Const*
dtype0*1
_class'
%#loc:@quantized_conv2d_3/convolution*%
valueB"      @   @   *
_output_shapes
:
�
Bgradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterquantized_conv2d_3/mul_25gradients/quantized_conv2d_3/convolution_grad/Shape_1/gradients/quantized_conv2d_3/sub_2_grad/Reshape*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_3/convolution
�
-gradients/quantized_conv2d_3/mul_2_grad/ShapeShapequantized_conv2d_3/sub_1*+
_class!
loc:@quantized_conv2d_3/mul_2*
out_type0*
T0*
_output_shapes
:
�
/gradients/quantized_conv2d_3/mul_2_grad/Shape_1Const*
dtype0*+
_class!
loc:@quantized_conv2d_3/mul_2*
valueB *
_output_shapes
: 
�
=gradients/quantized_conv2d_3/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/mul_2_grad/Shape/gradients/quantized_conv2d_3/mul_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/mul_2_grad/mulMulAgradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropInputquantized_conv2d_3/mul_2/y*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_3/mul_2_grad/SumSum+gradients/quantized_conv2d_3/mul_2_grad/mul=gradients/quantized_conv2d_3/mul_2_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_3/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_3/mul_2_grad/ReshapeReshape+gradients/quantized_conv2d_3/mul_2_grad/Sum-gradients/quantized_conv2d_3/mul_2_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/mul_2_grad/mul_1Mulquantized_conv2d_3/sub_1Agradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropInput*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/mul_2_grad/Sum_1Sum-gradients/quantized_conv2d_3/mul_2_grad/mul_1?gradients/quantized_conv2d_3/mul_2_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_3/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/quantized_conv2d_3/mul_2_grad/Reshape_1Reshape-gradients/quantized_conv2d_3/mul_2_grad/Sum_1/gradients/quantized_conv2d_3/mul_2_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_3/mul_2*
T0*
_output_shapes
: 
�
+gradients/quantized_conv2d_3/div_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_3/div*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_3/div_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_3/div*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_3/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_3/div_grad/Shape-gradients/quantized_conv2d_3/div_grad/Shape_1*)
_class
loc:@quantized_conv2d_3/div*
T0*2
_output_shapes 
:���������:���������
�
-gradients/quantized_conv2d_3/div_grad/RealDivRealDivBgradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropFilterquantized_conv2d_3/div/y*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_3/div_grad/SumSum-gradients/quantized_conv2d_3/div_grad/RealDiv;gradients/quantized_conv2d_3/div_grad/BroadcastGradientArgs*)
_class
loc:@quantized_conv2d_3/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
-gradients/quantized_conv2d_3/div_grad/ReshapeReshape)gradients/quantized_conv2d_3/div_grad/Sum+gradients/quantized_conv2d_3/div_grad/Shape*
Tshape0*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_3/div_grad/NegNeg quantized_conv2d_3/clip_by_value*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@
�
/gradients/quantized_conv2d_3/div_grad/RealDiv_1RealDiv)gradients/quantized_conv2d_3/div_grad/Negquantized_conv2d_3/div/y*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@
�
/gradients/quantized_conv2d_3/div_grad/RealDiv_2RealDiv/gradients/quantized_conv2d_3/div_grad/RealDiv_1quantized_conv2d_3/div/y*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_3/div_grad/mulMulBgradients/quantized_conv2d_3/convolution_grad/Conv2DBackpropFilter/gradients/quantized_conv2d_3/div_grad/RealDiv_2*)
_class
loc:@quantized_conv2d_3/div*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_3/div_grad/Sum_1Sum)gradients/quantized_conv2d_3/div_grad/mul=gradients/quantized_conv2d_3/div_grad/BroadcastGradientArgs:1*)
_class
loc:@quantized_conv2d_3/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_3/div_grad/Reshape_1Reshape+gradients/quantized_conv2d_3/div_grad/Sum_1-gradients/quantized_conv2d_3/div_grad/Shape_1*
Tshape0*)
_class
loc:@quantized_conv2d_3/div*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_3/sub_1_grad/ShapeShapemax_pooling2d_2/MaxPool*+
_class!
loc:@quantized_conv2d_3/sub_1*
out_type0*
T0*
_output_shapes
:
�
/gradients/quantized_conv2d_3/sub_1_grad/Shape_1Shapequantized_conv2d_3/mul_1*+
_class!
loc:@quantized_conv2d_3/sub_1*
out_type0*
T0*
_output_shapes
:
�
=gradients/quantized_conv2d_3/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/sub_1_grad/Shape/gradients/quantized_conv2d_3/sub_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/sub_1*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/sub_1_grad/SumSum/gradients/quantized_conv2d_3/mul_2_grad/Reshape=gradients/quantized_conv2d_3/sub_1_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_3/sub_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_3/sub_1_grad/ReshapeReshape+gradients/quantized_conv2d_3/sub_1_grad/Sum-gradients/quantized_conv2d_3/sub_1_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_3/sub_1*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/sub_1_grad/Sum_1Sum/gradients/quantized_conv2d_3/mul_2_grad/Reshape?gradients/quantized_conv2d_3/sub_1_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_3/sub_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
+gradients/quantized_conv2d_3/sub_1_grad/NegNeg-gradients/quantized_conv2d_3/sub_1_grad/Sum_1*+
_class!
loc:@quantized_conv2d_3/sub_1*
T0*
_output_shapes
:
�
1gradients/quantized_conv2d_3/sub_1_grad/Reshape_1Reshape+gradients/quantized_conv2d_3/sub_1_grad/Neg/gradients/quantized_conv2d_3/sub_1_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_3/sub_1*
T0*/
_output_shapes
:���������@
�
5gradients/quantized_conv2d_3/clip_by_value_grad/ShapeConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*%
valueB"      @   @   *
_output_shapes
:
�
7gradients/quantized_conv2d_3/clip_by_value_grad/Shape_1Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
valueB *
_output_shapes
: 
�
7gradients/quantized_conv2d_3/clip_by_value_grad/Shape_2Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*%
valueB"      @   @   *
_output_shapes
:
�
;gradients/quantized_conv2d_3/clip_by_value_grad/zeros/ConstConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
5gradients/quantized_conv2d_3/clip_by_value_grad/zerosFill7gradients/quantized_conv2d_3/clip_by_value_grad/Shape_2;gradients/quantized_conv2d_3/clip_by_value_grad/zeros/Const*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*&
_output_shapes
:@@
�
<gradients/quantized_conv2d_3/clip_by_value_grad/GreaterEqualGreaterEqual(quantized_conv2d_3/clip_by_value/Minimumquantized_conv2d_3/Cast*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*&
_output_shapes
:@@
�
Egradients/quantized_conv2d_3/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients/quantized_conv2d_3/clip_by_value_grad/Shape7gradients/quantized_conv2d_3/clip_by_value_grad/Shape_1*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
6gradients/quantized_conv2d_3/clip_by_value_grad/SelectSelect<gradients/quantized_conv2d_3/clip_by_value_grad/GreaterEqual-gradients/quantized_conv2d_3/div_grad/Reshape5gradients/quantized_conv2d_3/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*&
_output_shapes
:@@
�
:gradients/quantized_conv2d_3/clip_by_value_grad/LogicalNot
LogicalNot<gradients/quantized_conv2d_3/clip_by_value_grad/GreaterEqual*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*&
_output_shapes
:@@
�
8gradients/quantized_conv2d_3/clip_by_value_grad/Select_1Select:gradients/quantized_conv2d_3/clip_by_value_grad/LogicalNot-gradients/quantized_conv2d_3/div_grad/Reshape5gradients/quantized_conv2d_3/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*&
_output_shapes
:@@
�
3gradients/quantized_conv2d_3/clip_by_value_grad/SumSum6gradients/quantized_conv2d_3/clip_by_value_grad/SelectEgradients/quantized_conv2d_3/clip_by_value_grad/BroadcastGradientArgs*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
7gradients/quantized_conv2d_3/clip_by_value_grad/ReshapeReshape3gradients/quantized_conv2d_3/clip_by_value_grad/Sum5gradients/quantized_conv2d_3/clip_by_value_grad/Shape*
Tshape0*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*&
_output_shapes
:@@
�
5gradients/quantized_conv2d_3/clip_by_value_grad/Sum_1Sum8gradients/quantized_conv2d_3/clip_by_value_grad/Select_1Ggradients/quantized_conv2d_3/clip_by_value_grad/BroadcastGradientArgs:1*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/quantized_conv2d_3/clip_by_value_grad/Reshape_1Reshape5gradients/quantized_conv2d_3/clip_by_value_grad/Sum_17gradients/quantized_conv2d_3/clip_by_value_grad/Shape_1*
Tshape0*3
_class)
'%loc:@quantized_conv2d_3/clip_by_value*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_3/mul_1_grad/ShapeConst*
dtype0*+
_class!
loc:@quantized_conv2d_3/mul_1*
valueB *
_output_shapes
: 
�
/gradients/quantized_conv2d_3/mul_1_grad/Shape_1Shape!quantized_conv2d_3/StopGradient_1*+
_class!
loc:@quantized_conv2d_3/mul_1*
out_type0*
T0*
_output_shapes
:
�
=gradients/quantized_conv2d_3/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_3/mul_1_grad/Shape/gradients/quantized_conv2d_3/mul_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_3/mul_1_grad/mulMul1gradients/quantized_conv2d_3/sub_1_grad/Reshape_1!quantized_conv2d_3/StopGradient_1*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_3/mul_1_grad/SumSum+gradients/quantized_conv2d_3/mul_1_grad/mul=gradients/quantized_conv2d_3/mul_1_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_3/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_3/mul_1_grad/ReshapeReshape+gradients/quantized_conv2d_3/mul_1_grad/Sum-gradients/quantized_conv2d_3/mul_1_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_3/mul_1_grad/mul_1Mulquantized_conv2d_3/mul_1/x1gradients/quantized_conv2d_3/sub_1_grad/Reshape_1*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_3/mul_1_grad/Sum_1Sum-gradients/quantized_conv2d_3/mul_1_grad/mul_1?gradients/quantized_conv2d_3/mul_1_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_3/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/quantized_conv2d_3/mul_1_grad/Reshape_1Reshape-gradients/quantized_conv2d_3/mul_1_grad/Sum_1/gradients/quantized_conv2d_3/mul_1_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_3/mul_1*
T0*/
_output_shapes
:���������@
�
=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/ShapeConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*%
valueB"      @   @   *
_output_shapes
:
�
?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape_2Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*%
valueB"      @   @   *
_output_shapes
:
�
Cgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/zerosFill?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape_2Cgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/zeros/Const*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Agradients/quantized_conv2d_3/clip_by_value/Minimum_grad/LessEqual	LessEqualquantized_conv2d_3/addquantized_conv2d_3/Cast_1*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Mgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape_1*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
>gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/SelectSelectAgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/LessEqual7gradients/quantized_conv2d_3/clip_by_value_grad/Reshape=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Bgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/LogicalNot
LogicalNotAgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/LessEqual*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*&
_output_shapes
:@@
�
@gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Select_1SelectBgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/LogicalNot7gradients/quantized_conv2d_3/clip_by_value_grad/Reshape=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
;gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/SumSum>gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/SelectMgradients/quantized_conv2d_3/clip_by_value/Minimum_grad/BroadcastGradientArgs*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/ReshapeReshape;gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Sum=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape*
Tshape0*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Sum_1Sum@gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Select_1Ogradients/quantized_conv2d_3/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Reshape_1Reshape=gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Sum_1?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Shape_1*
Tshape0*;
_class1
/-loc:@quantized_conv2d_3/clip_by_value/Minimum*
T0*
_output_shapes
: 
�
+gradients/quantized_conv2d_3/add_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_3/add*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_3/add_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_3/add*%
valueB"      @   @   *
_output_shapes
:
�
;gradients/quantized_conv2d_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_3/add_grad/Shape-gradients/quantized_conv2d_3/add_grad/Shape_1*)
_class
loc:@quantized_conv2d_3/add*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_3/add_grad/SumSum?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Reshape;gradients/quantized_conv2d_3/add_grad/BroadcastGradientArgs*)
_class
loc:@quantized_conv2d_3/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
-gradients/quantized_conv2d_3/add_grad/ReshapeReshape)gradients/quantized_conv2d_3/add_grad/Sum+gradients/quantized_conv2d_3/add_grad/Shape*
Tshape0*)
_class
loc:@quantized_conv2d_3/add*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_3/add_grad/Sum_1Sum?gradients/quantized_conv2d_3/clip_by_value/Minimum_grad/Reshape=gradients/quantized_conv2d_3/add_grad/BroadcastGradientArgs:1*)
_class
loc:@quantized_conv2d_3/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_3/add_grad/Reshape_1Reshape+gradients/quantized_conv2d_3/add_grad/Sum_1-gradients/quantized_conv2d_3/add_grad/Shape_1*
Tshape0*)
_class
loc:@quantized_conv2d_3/add*
T0*&
_output_shapes
:@@
�
2gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradactivation_2/divmax_pooling2d_2/MaxPool/gradients/quantized_conv2d_3/sub_1_grad/Reshape*/
_output_shapes
:���������@*
data_formatNHWC*
paddingVALID*
strides
*
ksize
**
_class 
loc:@max_pooling2d_2/MaxPool*
T0
�
%gradients/activation_2/div_grad/ShapeShapeactivation_2/clip_by_value*#
_class
loc:@activation_2/div*
out_type0*
T0*
_output_shapes
:
�
'gradients/activation_2/div_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_2/div*
valueB *
_output_shapes
: 
�
5gradients/activation_2/div_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_2/div_grad/Shape'gradients/activation_2/div_grad/Shape_1*#
_class
loc:@activation_2/div*
T0*2
_output_shapes 
:���������:���������
�
'gradients/activation_2/div_grad/RealDivRealDiv2gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradactivation_2/div/y*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@
�
#gradients/activation_2/div_grad/SumSum'gradients/activation_2/div_grad/RealDiv5gradients/activation_2/div_grad/BroadcastGradientArgs*#
_class
loc:@activation_2/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
'gradients/activation_2/div_grad/ReshapeReshape#gradients/activation_2/div_grad/Sum%gradients/activation_2/div_grad/Shape*
Tshape0*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@
�
#gradients/activation_2/div_grad/NegNegactivation_2/clip_by_value*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@
�
)gradients/activation_2/div_grad/RealDiv_1RealDiv#gradients/activation_2/div_grad/Negactivation_2/div/y*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@
�
)gradients/activation_2/div_grad/RealDiv_2RealDiv)gradients/activation_2/div_grad/RealDiv_1activation_2/div/y*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@
�
#gradients/activation_2/div_grad/mulMul2gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGrad)gradients/activation_2/div_grad/RealDiv_2*#
_class
loc:@activation_2/div*
T0*/
_output_shapes
:���������@
�
%gradients/activation_2/div_grad/Sum_1Sum#gradients/activation_2/div_grad/mul7gradients/activation_2/div_grad/BroadcastGradientArgs:1*#
_class
loc:@activation_2/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
)gradients/activation_2/div_grad/Reshape_1Reshape%gradients/activation_2/div_grad/Sum_1'gradients/activation_2/div_grad/Shape_1*
Tshape0*#
_class
loc:@activation_2/div*
T0*
_output_shapes
: 
�
/gradients/activation_2/clip_by_value_grad/ShapeShape"activation_2/clip_by_value/Minimum*-
_class#
!loc:@activation_2/clip_by_value*
out_type0*
T0*
_output_shapes
:
�
1gradients/activation_2/clip_by_value_grad/Shape_1Const*
dtype0*-
_class#
!loc:@activation_2/clip_by_value*
valueB *
_output_shapes
: 
�
1gradients/activation_2/clip_by_value_grad/Shape_2Shape'gradients/activation_2/div_grad/Reshape*-
_class#
!loc:@activation_2/clip_by_value*
out_type0*
T0*
_output_shapes
:
�
5gradients/activation_2/clip_by_value_grad/zeros/ConstConst*
dtype0*-
_class#
!loc:@activation_2/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
/gradients/activation_2/clip_by_value_grad/zerosFill1gradients/activation_2/clip_by_value_grad/Shape_25gradients/activation_2/clip_by_value_grad/zeros/Const*-
_class#
!loc:@activation_2/clip_by_value*
T0*/
_output_shapes
:���������@
�
6gradients/activation_2/clip_by_value_grad/GreaterEqualGreaterEqual"activation_2/clip_by_value/Minimumactivation_2/Cast*-
_class#
!loc:@activation_2/clip_by_value*
T0*/
_output_shapes
:���������@
�
?gradients/activation_2/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/activation_2/clip_by_value_grad/Shape1gradients/activation_2/clip_by_value_grad/Shape_1*-
_class#
!loc:@activation_2/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
0gradients/activation_2/clip_by_value_grad/SelectSelect6gradients/activation_2/clip_by_value_grad/GreaterEqual'gradients/activation_2/div_grad/Reshape/gradients/activation_2/clip_by_value_grad/zeros*-
_class#
!loc:@activation_2/clip_by_value*
T0*/
_output_shapes
:���������@
�
4gradients/activation_2/clip_by_value_grad/LogicalNot
LogicalNot6gradients/activation_2/clip_by_value_grad/GreaterEqual*-
_class#
!loc:@activation_2/clip_by_value*/
_output_shapes
:���������@
�
2gradients/activation_2/clip_by_value_grad/Select_1Select4gradients/activation_2/clip_by_value_grad/LogicalNot'gradients/activation_2/div_grad/Reshape/gradients/activation_2/clip_by_value_grad/zeros*-
_class#
!loc:@activation_2/clip_by_value*
T0*/
_output_shapes
:���������@
�
-gradients/activation_2/clip_by_value_grad/SumSum0gradients/activation_2/clip_by_value_grad/Select?gradients/activation_2/clip_by_value_grad/BroadcastGradientArgs*-
_class#
!loc:@activation_2/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/activation_2/clip_by_value_grad/ReshapeReshape-gradients/activation_2/clip_by_value_grad/Sum/gradients/activation_2/clip_by_value_grad/Shape*
Tshape0*-
_class#
!loc:@activation_2/clip_by_value*
T0*/
_output_shapes
:���������@
�
/gradients/activation_2/clip_by_value_grad/Sum_1Sum2gradients/activation_2/clip_by_value_grad/Select_1Agradients/activation_2/clip_by_value_grad/BroadcastGradientArgs:1*-
_class#
!loc:@activation_2/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
3gradients/activation_2/clip_by_value_grad/Reshape_1Reshape/gradients/activation_2/clip_by_value_grad/Sum_11gradients/activation_2/clip_by_value_grad/Shape_1*
Tshape0*-
_class#
!loc:@activation_2/clip_by_value*
T0*
_output_shapes
: 
�
7gradients/activation_2/clip_by_value/Minimum_grad/ShapeShapeactivation_2/add*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:
�
9gradients/activation_2/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
9gradients/activation_2/clip_by_value/Minimum_grad/Shape_2Shape1gradients/activation_2/clip_by_value_grad/Reshape*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:
�
=gradients/activation_2/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
7gradients/activation_2/clip_by_value/Minimum_grad/zerosFill9gradients/activation_2/clip_by_value/Minimum_grad/Shape_2=gradients/activation_2/clip_by_value/Minimum_grad/zeros/Const*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
;gradients/activation_2/clip_by_value/Minimum_grad/LessEqual	LessEqualactivation_2/addactivation_2/Cast_1*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
Ggradients/activation_2/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/activation_2/clip_by_value/Minimum_grad/Shape9gradients/activation_2/clip_by_value/Minimum_grad/Shape_1*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
8gradients/activation_2/clip_by_value/Minimum_grad/SelectSelect;gradients/activation_2/clip_by_value/Minimum_grad/LessEqual1gradients/activation_2/clip_by_value_grad/Reshape7gradients/activation_2/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
<gradients/activation_2/clip_by_value/Minimum_grad/LogicalNot
LogicalNot;gradients/activation_2/clip_by_value/Minimum_grad/LessEqual*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*/
_output_shapes
:���������@
�
:gradients/activation_2/clip_by_value/Minimum_grad/Select_1Select<gradients/activation_2/clip_by_value/Minimum_grad/LogicalNot1gradients/activation_2/clip_by_value_grad/Reshape7gradients/activation_2/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
5gradients/activation_2/clip_by_value/Minimum_grad/SumSum8gradients/activation_2/clip_by_value/Minimum_grad/SelectGgradients/activation_2/clip_by_value/Minimum_grad/BroadcastGradientArgs*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/activation_2/clip_by_value/Minimum_grad/ReshapeReshape5gradients/activation_2/clip_by_value/Minimum_grad/Sum7gradients/activation_2/clip_by_value/Minimum_grad/Shape*
Tshape0*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*/
_output_shapes
:���������@
�
7gradients/activation_2/clip_by_value/Minimum_grad/Sum_1Sum:gradients/activation_2/clip_by_value/Minimum_grad/Select_1Igradients/activation_2/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
;gradients/activation_2/clip_by_value/Minimum_grad/Reshape_1Reshape7gradients/activation_2/clip_by_value/Minimum_grad/Sum_19gradients/activation_2/clip_by_value/Minimum_grad/Shape_1*
Tshape0*5
_class+
)'loc:@activation_2/clip_by_value/Minimum*
T0*
_output_shapes
: 
�
+gradients/quantized_conv2d_3/mul_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_3/mul*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_3/mul_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_3/mul*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_3/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_3/mul_grad/Shape-gradients/quantized_conv2d_3/mul_grad/Shape_1*)
_class
loc:@quantized_conv2d_3/mul*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_3/mul_grad/mulMul-gradients/quantized_conv2d_3/add_grad/Reshapequantized_conv2d_3/mul/y*)
_class
loc:@quantized_conv2d_3/mul*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_3/mul_grad/SumSum)gradients/quantized_conv2d_3/mul_grad/mul;gradients/quantized_conv2d_3/mul_grad/BroadcastGradientArgs*)
_class
loc:@quantized_conv2d_3/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
-gradients/quantized_conv2d_3/mul_grad/ReshapeReshape)gradients/quantized_conv2d_3/mul_grad/Sum+gradients/quantized_conv2d_3/mul_grad/Shape*
Tshape0*)
_class
loc:@quantized_conv2d_3/mul*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_3/mul_grad/mul_1Mulquantized_conv2d_3/kernel/read-gradients/quantized_conv2d_3/add_grad/Reshape*)
_class
loc:@quantized_conv2d_3/mul*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_3/mul_grad/Sum_1Sum+gradients/quantized_conv2d_3/mul_grad/mul_1=gradients/quantized_conv2d_3/mul_grad/BroadcastGradientArgs:1*)
_class
loc:@quantized_conv2d_3/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_3/mul_grad/Reshape_1Reshape+gradients/quantized_conv2d_3/mul_grad/Sum_1-gradients/quantized_conv2d_3/mul_grad/Shape_1*
Tshape0*)
_class
loc:@quantized_conv2d_3/mul*
T0*
_output_shapes
: 
�
%gradients/activation_2/add_grad/ShapeShapeactivation_2/mul*#
_class
loc:@activation_2/add*
out_type0*
T0*
_output_shapes
:
�
'gradients/activation_2/add_grad/Shape_1Shapeactivation_2/StopGradient*#
_class
loc:@activation_2/add*
out_type0*
T0*
_output_shapes
:
�
5gradients/activation_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_2/add_grad/Shape'gradients/activation_2/add_grad/Shape_1*#
_class
loc:@activation_2/add*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_2/add_grad/SumSum9gradients/activation_2/clip_by_value/Minimum_grad/Reshape5gradients/activation_2/add_grad/BroadcastGradientArgs*#
_class
loc:@activation_2/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
'gradients/activation_2/add_grad/ReshapeReshape#gradients/activation_2/add_grad/Sum%gradients/activation_2/add_grad/Shape*
Tshape0*#
_class
loc:@activation_2/add*
T0*/
_output_shapes
:���������@
�
%gradients/activation_2/add_grad/Sum_1Sum9gradients/activation_2/clip_by_value/Minimum_grad/Reshape7gradients/activation_2/add_grad/BroadcastGradientArgs:1*#
_class
loc:@activation_2/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
)gradients/activation_2/add_grad/Reshape_1Reshape%gradients/activation_2/add_grad/Sum_1'gradients/activation_2/add_grad/Shape_1*
Tshape0*#
_class
loc:@activation_2/add*
T0*/
_output_shapes
:���������@
�
%gradients/activation_2/mul_grad/ShapeShape batch_normalization_2/cond/Merge*#
_class
loc:@activation_2/mul*
out_type0*
T0*
_output_shapes
:
�
'gradients/activation_2/mul_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_2/mul*
valueB *
_output_shapes
: 
�
5gradients/activation_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_2/mul_grad/Shape'gradients/activation_2/mul_grad/Shape_1*#
_class
loc:@activation_2/mul*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_2/mul_grad/mulMul'gradients/activation_2/add_grad/Reshapeactivation_2/mul/y*#
_class
loc:@activation_2/mul*
T0*/
_output_shapes
:���������@
�
#gradients/activation_2/mul_grad/SumSum#gradients/activation_2/mul_grad/mul5gradients/activation_2/mul_grad/BroadcastGradientArgs*#
_class
loc:@activation_2/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
'gradients/activation_2/mul_grad/ReshapeReshape#gradients/activation_2/mul_grad/Sum%gradients/activation_2/mul_grad/Shape*
Tshape0*#
_class
loc:@activation_2/mul*
T0*/
_output_shapes
:���������@
�
%gradients/activation_2/mul_grad/mul_1Mul batch_normalization_2/cond/Merge'gradients/activation_2/add_grad/Reshape*#
_class
loc:@activation_2/mul*
T0*/
_output_shapes
:���������@
�
%gradients/activation_2/mul_grad/Sum_1Sum%gradients/activation_2/mul_grad/mul_17gradients/activation_2/mul_grad/BroadcastGradientArgs:1*#
_class
loc:@activation_2/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
)gradients/activation_2/mul_grad/Reshape_1Reshape%gradients/activation_2/mul_grad/Sum_1'gradients/activation_2/mul_grad/Shape_1*
Tshape0*#
_class
loc:@activation_2/mul*
T0*
_output_shapes
: 
�
9gradients/batch_normalization_2/cond/Merge_grad/cond_gradSwitch'gradients/activation_2/mul_grad/Reshape"batch_normalization_2/cond/pred_id*#
_class
loc:@activation_2/mul*
T0*J
_output_shapes8
6:���������@:���������@
�
?gradients/batch_normalization_2/cond/batchnorm/add_1_grad/ShapeShape*batch_normalization_2/cond/batchnorm/mul_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_2/cond/batchnorm/add_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_2/cond/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_2/cond/batchnorm/add_1_grad/ShapeAgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_2/cond/batchnorm/add_1_grad/SumSum9gradients/batch_normalization_2/cond/Merge_grad/cond_gradOgradients/batch_normalization_2/cond/batchnorm/add_1_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_2/cond/batchnorm/add_1_grad/ReshapeReshape=gradients/batch_normalization_2/cond/batchnorm/add_1_grad/Sum?gradients/batch_normalization_2/cond/batchnorm/add_1_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*
T0*/
_output_shapes
:���������@
�
?gradients/batch_normalization_2/cond/batchnorm/add_1_grad/Sum_1Sum9gradients/batch_normalization_2/cond/Merge_grad/cond_gradQgradients/batch_normalization_2/cond/batchnorm/add_1_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Reshape_1Reshape?gradients/batch_normalization_2/cond/batchnorm/add_1_grad/Sum_1Agradients/batch_normalization_2/cond/batchnorm/add_1_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/add_1*
T0*
_output_shapes
:@
�
gradients/Switch_8Switch%batch_normalization_2/batchnorm/add_1"batch_normalization_2/cond/pred_id*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*J
_output_shapes8
6:���������@:���������@
�
gradients/Shape_9Shapegradients/Switch_8*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_8/ConstConst*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_8Fillgradients/Shape_9gradients/zeros_8/Const*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*/
_output_shapes
:���������@
�
<gradients/batch_normalization_2/cond/Switch_1_grad/cond_gradMerge;gradients/batch_normalization_2/cond/Merge_grad/cond_grad:1gradients/zeros_8*
N*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*1
_output_shapes
:���������@: 
�
?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/ShapeShape1batch_normalization_2/cond/batchnorm/mul_1/Switch*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_2/cond/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/ShapeAgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/mulMulAgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Reshape(batch_normalization_2/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
=gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/SumSum=gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/mulOgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_2/cond/batchnorm/mul_1_grad/ReshapeReshape=gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Sum?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/mul_1Mul1batch_normalization_2/cond/batchnorm/mul_1/SwitchAgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Reshape*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Sum_1Sum?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/mul_1Qgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Reshape_1Reshape?gradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Sum_1Agradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_2/cond/batchnorm/sub_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_2/cond/batchnorm/sub_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_2/cond/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_2/cond/batchnorm/sub_grad/Shape?gradients/batch_normalization_2/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_2/cond/batchnorm/sub_grad/SumSumCgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Reshape_1Mgradients/batch_normalization_2/cond/batchnorm/sub_grad/BroadcastGradientArgs*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
?gradients/batch_normalization_2/cond/batchnorm/sub_grad/ReshapeReshape;gradients/batch_normalization_2/cond/batchnorm/sub_grad/Sum=gradients/batch_normalization_2/cond/batchnorm/sub_grad/Shape*
Tshape0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_2/cond/batchnorm/sub_grad/Sum_1SumCgradients/batch_normalization_2/cond/batchnorm/add_1_grad/Reshape_1Ogradients/batch_normalization_2/cond/batchnorm/sub_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
;gradients/batch_normalization_2/cond/batchnorm/sub_grad/NegNeg=gradients/batch_normalization_2/cond/batchnorm/sub_grad/Sum_1*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
T0*
_output_shapes
:
�
Agradients/batch_normalization_2/cond/batchnorm/sub_grad/Reshape_1Reshape;gradients/batch_normalization_2/cond/batchnorm/sub_grad/Neg?gradients/batch_normalization_2/cond/batchnorm/sub_grad/Shape_1*
Tshape0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/sub*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_2/batchnorm/add_1_grad/ShapeShape%batch_normalization_2/batchnorm/mul_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
<gradients/batch_normalization_2/batchnorm/add_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_2/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_2/batchnorm/add_1_grad/Shape<gradients/batch_normalization_2/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_2/batchnorm/add_1_grad/SumSum<gradients/batch_normalization_2/cond/Switch_1_grad/cond_gradJgradients/batch_normalization_2/batchnorm/add_1_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_2/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_2/batchnorm/add_1_grad/Sum:gradients/batch_normalization_2/batchnorm/add_1_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*/
_output_shapes
:���������@
�
:gradients/batch_normalization_2/batchnorm/add_1_grad/Sum_1Sum<gradients/batch_normalization_2/cond/Switch_1_grad/cond_gradLgradients/batch_normalization_2/batchnorm/add_1_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_2/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_2/batchnorm/add_1_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1*
T0*
_output_shapes
:@
�
gradients/Switch_9Switchquantized_conv2d_2/BiasAdd"batch_normalization_2/cond/pred_id*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
T0*J
_output_shapes8
6:���������@:���������@
�
gradients/Shape_10Shapegradients/Switch_9:1*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_9/ConstConst*
dtype0*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_9Fillgradients/Shape_10gradients/zeros_9/Const*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
T0*/
_output_shapes
:���������@
�
Jgradients/batch_normalization_2/cond/batchnorm/mul_1/Switch_grad/cond_gradMergeAgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Reshapegradients/zeros_9*
N*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
T0*1
_output_shapes
:���������@: 
�
gradients/Switch_10Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id*-
_class#
!loc:@batch_normalization_2/beta*
T0* 
_output_shapes
:@:@
�
gradients/Shape_11Shapegradients/Switch_10:1*-
_class#
!loc:@batch_normalization_2/beta*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_10/ConstConst*
dtype0*-
_class#
!loc:@batch_normalization_2/beta*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_10Fillgradients/Shape_11gradients/zeros_10/Const*-
_class#
!loc:@batch_normalization_2/beta*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_2/cond/batchnorm/sub/Switch_grad/cond_gradMerge?gradients/batch_normalization_2/cond/batchnorm/sub_grad/Reshapegradients/zeros_10*
N*-
_class#
!loc:@batch_normalization_2/beta*
T0*
_output_shapes

:@: 
�
?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/ShapeConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Agradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_2/cond/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/ShapeAgradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/mulMulAgradients/batch_normalization_2/cond/batchnorm/sub_grad/Reshape_1(batch_normalization_2/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/SumSum=gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/mulOgradients/batch_normalization_2/cond/batchnorm/mul_2_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_2/cond/batchnorm/mul_2_grad/ReshapeReshape=gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Sum?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/mul_1Mul1batch_normalization_2/cond/batchnorm/mul_2/SwitchAgradients/batch_normalization_2/cond/batchnorm/sub_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Sum_1Sum?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/mul_1Qgradients/batch_normalization_2/cond/batchnorm/mul_2_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Reshape_1Reshape?gradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Sum_1Agradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_2/batchnorm/mul_1_grad/ShapeShapequantized_conv2d_2/BiasAdd*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:
�
<gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_2/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_2/batchnorm/mul_1_grad/mulMul<gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape#batch_normalization_2/batchnorm/mul*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
8gradients/batch_normalization_2/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_2/batchnorm/mul_1_grad/mulJgradients/batch_normalization_2/batchnorm/mul_1_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_2/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_2/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
:gradients/batch_normalization_2/batchnorm/mul_1_grad/mul_1Mulquantized_conv2d_2/BiasAdd<gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*/
_output_shapes
:���������@
�
:gradients/batch_normalization_2/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_2/batchnorm/mul_1_grad/mul_1Lgradients/batch_normalization_2/batchnorm/mul_1_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_2/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_2/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_2/batchnorm/sub_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_2/batchnorm/sub_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_2/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_2/batchnorm/sub_grad/Shape:gradients/batch_normalization_2/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_2/batchnorm/sub_grad/SumSum>gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape_1Hgradients/batch_normalization_2/batchnorm/sub_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_2/batchnorm/sub_grad/ReshapeReshape6gradients/batch_normalization_2/batchnorm/sub_grad/Sum8gradients/batch_normalization_2/batchnorm/sub_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_2/batchnorm/sub_grad/Sum_1Sum>gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape_1Jgradients/batch_normalization_2/batchnorm/sub_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
6gradients/batch_normalization_2/batchnorm/sub_grad/NegNeg8gradients/batch_normalization_2/batchnorm/sub_grad/Sum_1*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
T0*
_output_shapes
:
�
<gradients/batch_normalization_2/batchnorm/sub_grad/Reshape_1Reshape6gradients/batch_normalization_2/batchnorm/sub_grad/Neg:gradients/batch_normalization_2/batchnorm/sub_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub*
T0*
_output_shapes
:@
�
gradients/AddN_14AddNCgradients/batch_normalization_2/cond/batchnorm/mul_1_grad/Reshape_1Cgradients/batch_normalization_2/cond/batchnorm/mul_2_grad/Reshape_1*
N*=
_class3
1/loc:@batch_normalization_2/cond/batchnorm/mul_1*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_2/cond/batchnorm/mul_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_2/cond/batchnorm/mul_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_2/cond/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_2/cond/batchnorm/mul_grad/Shape?gradients/batch_normalization_2/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_2/cond/batchnorm/mul_grad/mulMulgradients/AddN_14/batch_normalization_2/cond/batchnorm/mul/Switch*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
;gradients/batch_normalization_2/cond/batchnorm/mul_grad/SumSum;gradients/batch_normalization_2/cond/batchnorm/mul_grad/mulMgradients/batch_normalization_2/cond/batchnorm/mul_grad/BroadcastGradientArgs*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
?gradients/batch_normalization_2/cond/batchnorm/mul_grad/ReshapeReshape;gradients/batch_normalization_2/cond/batchnorm/mul_grad/Sum=gradients/batch_normalization_2/cond/batchnorm/mul_grad/Shape*
Tshape0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_2/cond/batchnorm/mul_grad/mul_1Mul*batch_normalization_2/cond/batchnorm/Rsqrtgradients/AddN_14*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_2/cond/batchnorm/mul_grad/Sum_1Sum=gradients/batch_normalization_2/cond/batchnorm/mul_grad/mul_1Ogradients/batch_normalization_2/cond/batchnorm/mul_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_2/cond/batchnorm/mul_grad/Reshape_1Reshape=gradients/batch_normalization_2/cond/batchnorm/mul_grad/Sum_1?gradients/batch_normalization_2/cond/batchnorm/mul_grad/Shape_1*
Tshape0*;
_class1
/-loc:@batch_normalization_2/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
gradients/AddN_15AddNHgradients/batch_normalization_2/cond/batchnorm/sub/Switch_grad/cond_grad:gradients/batch_normalization_2/batchnorm/sub_grad/Reshape*
N*-
_class#
!loc:@batch_normalization_2/beta*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_2/batchnorm/mul_2_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
<gradients/batch_normalization_2/batchnorm/mul_2_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_2/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_2/batchnorm/mul_2_grad/Shape<gradients/batch_normalization_2/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_2/batchnorm/mul_2_grad/mulMul<gradients/batch_normalization_2/batchnorm/sub_grad/Reshape_1#batch_normalization_2/batchnorm/mul*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_2/batchnorm/mul_2_grad/SumSum8gradients/batch_normalization_2/batchnorm/mul_2_grad/mulJgradients/batch_normalization_2/batchnorm/mul_2_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_2/batchnorm/mul_2_grad/ReshapeReshape8gradients/batch_normalization_2/batchnorm/mul_2_grad/Sum:gradients/batch_normalization_2/batchnorm/mul_2_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_2/batchnorm/mul_2_grad/mul_1Mul%batch_normalization_2/moments/Squeeze<gradients/batch_normalization_2/batchnorm/sub_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_2/batchnorm/mul_2_grad/Sum_1Sum:gradients/batch_normalization_2/batchnorm/mul_2_grad/mul_1Lgradients/batch_normalization_2/batchnorm/mul_2_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_2/batchnorm/mul_2_grad/Reshape_1Reshape:gradients/batch_normalization_2/batchnorm/mul_2_grad/Sum_1<gradients/batch_normalization_2/batchnorm/mul_2_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@
�
gradients/Switch_11Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id*.
_class$
" loc:@batch_normalization_2/gamma*
T0* 
_output_shapes
:@:@
�
gradients/Shape_12Shapegradients/Switch_11:1*.
_class$
" loc:@batch_normalization_2/gamma*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_11/ConstConst*
dtype0*.
_class$
" loc:@batch_normalization_2/gamma*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_11Fillgradients/Shape_12gradients/zeros_11/Const*.
_class$
" loc:@batch_normalization_2/gamma*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_2/cond/batchnorm/mul/Switch_grad/cond_gradMergeAgradients/batch_normalization_2/cond/batchnorm/mul_grad/Reshape_1gradients/zeros_11*
N*.
_class$
" loc:@batch_normalization_2/gamma*
T0*
_output_shapes

:@: 
�
:gradients/batch_normalization_2/moments/Squeeze_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_2/moments/Squeeze*%
valueB"         @   *
_output_shapes
:
�
<gradients/batch_normalization_2/moments/Squeeze_grad/ReshapeReshape<gradients/batch_normalization_2/batchnorm/mul_2_grad/Reshape:gradients/batch_normalization_2/moments/Squeeze_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_2/moments/Squeeze*
T0*&
_output_shapes
:@
�
gradients/AddN_16AddN>gradients/batch_normalization_2/batchnorm/mul_1_grad/Reshape_1>gradients/batch_normalization_2/batchnorm/mul_2_grad/Reshape_1*
N*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_2/batchnorm/mul_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_2/batchnorm/mul_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_2/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_2/batchnorm/mul_grad/Shape:gradients/batch_normalization_2/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_2/batchnorm/mul_grad/mulMulgradients/AddN_16 batch_normalization_2/gamma/read*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@
�
6gradients/batch_normalization_2/batchnorm/mul_grad/SumSum6gradients/batch_normalization_2/batchnorm/mul_grad/mulHgradients/batch_normalization_2/batchnorm/mul_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_2/batchnorm/mul_grad/ReshapeReshape6gradients/batch_normalization_2/batchnorm/mul_grad/Sum8gradients/batch_normalization_2/batchnorm/mul_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_2/batchnorm/mul_grad/mul_1Mul%batch_normalization_2/batchnorm/Rsqrtgradients/AddN_16*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_2/batchnorm/mul_grad/Sum_1Sum8gradients/batch_normalization_2/batchnorm/mul_grad/mul_1Jgradients/batch_normalization_2/batchnorm/mul_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_2/batchnorm/mul_grad/Reshape_1Reshape8gradients/batch_normalization_2/batchnorm/mul_grad/Sum_1:gradients/batch_normalization_2/batchnorm/mul_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@
�
7gradients/batch_normalization_2/moments/mean_grad/ShapeConst*
dtype0*5
_class+
)'loc:@batch_normalization_2/moments/mean*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_2/moments/mean_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@batch_normalization_2/moments/mean*%
valueB"         @   *
_output_shapes
:
�
Ggradients/batch_normalization_2/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/batch_normalization_2/moments/mean_grad/Shape9gradients/batch_normalization_2/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*2
_output_shapes 
:���������:���������
�
5gradients/batch_normalization_2/moments/mean_grad/SumSum<gradients/batch_normalization_2/moments/Squeeze_grad/ReshapeGgradients/batch_normalization_2/moments/mean_grad/BroadcastGradientArgs*5
_class+
)'loc:@batch_normalization_2/moments/mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/batch_normalization_2/moments/mean_grad/ReshapeReshape5gradients/batch_normalization_2/moments/mean_grad/Sum7gradients/batch_normalization_2/moments/mean_grad/Shape*
Tshape0*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*&
_output_shapes
:@
�
7gradients/batch_normalization_2/moments/mean_grad/Sum_1Sum<gradients/batch_normalization_2/moments/Squeeze_grad/ReshapeIgradients/batch_normalization_2/moments/mean_grad/BroadcastGradientArgs:1*5
_class+
)'loc:@batch_normalization_2/moments/mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
;gradients/batch_normalization_2/moments/mean_grad/Reshape_1Reshape7gradients/batch_normalization_2/moments/mean_grad/Sum_19gradients/batch_normalization_2/moments/mean_grad/Shape_1*
Tshape0*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*&
_output_shapes
:@
�
>gradients/batch_normalization_2/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad%batch_normalization_2/batchnorm/Rsqrt:gradients/batch_normalization_2/batchnorm/mul_grad/Reshape*8
_class.
,*loc:@batch_normalization_2/batchnorm/Rsqrt*
T0*
_output_shapes
:@
�
gradients/AddN_17AddNHgradients/batch_normalization_2/cond/batchnorm/mul/Switch_grad/cond_grad<gradients/batch_normalization_2/batchnorm/mul_grad/Reshape_1*
N*.
_class$
" loc:@batch_normalization_2/gamma*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_2/batchnorm/add_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_2/batchnorm/add_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
valueB *
_output_shapes
: 
�
Hgradients/batch_normalization_2/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_2/batchnorm/add_grad/Shape:gradients/batch_normalization_2/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_2/batchnorm/add_grad/SumSum>gradients/batch_normalization_2/batchnorm/Rsqrt_grad/RsqrtGradHgradients/batch_normalization_2/batchnorm/add_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_2/batchnorm/add_grad/ReshapeReshape6gradients/batch_normalization_2/batchnorm/add_grad/Sum8gradients/batch_normalization_2/batchnorm/add_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_2/batchnorm/add_grad/Sum_1Sum>gradients/batch_normalization_2/batchnorm/Rsqrt_grad/RsqrtGradJgradients/batch_normalization_2/batchnorm/add_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_2/batchnorm/add_grad/Reshape_1Reshape8gradients/batch_normalization_2/batchnorm/add_grad/Sum_1:gradients/batch_normalization_2/batchnorm/add_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_2/batchnorm/add*
T0*
_output_shapes
: 
�
<gradients/batch_normalization_2/moments/Squeeze_1_grad/ShapeConst*
dtype0*:
_class0
.,loc:@batch_normalization_2/moments/Squeeze_1*%
valueB"         @   *
_output_shapes
:
�
>gradients/batch_normalization_2/moments/Squeeze_1_grad/ReshapeReshape:gradients/batch_normalization_2/batchnorm/add_grad/Reshape<gradients/batch_normalization_2/moments/Squeeze_1_grad/Shape*
Tshape0*:
_class0
.,loc:@batch_normalization_2/moments/Squeeze_1*
T0*&
_output_shapes
:@
�
;gradients/batch_normalization_2/moments/variance_grad/ShapeConst*
dtype0*9
_class/
-+loc:@batch_normalization_2/moments/variance*%
valueB"         @   *
_output_shapes
:
�
=gradients/batch_normalization_2/moments/variance_grad/Shape_1Const*
dtype0*9
_class/
-+loc:@batch_normalization_2/moments/variance*%
valueB"         @   *
_output_shapes
:
�
Kgradients/batch_normalization_2/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients/batch_normalization_2/moments/variance_grad/Shape=gradients/batch_normalization_2/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_2/moments/variance*
T0*2
_output_shapes 
:���������:���������
�
9gradients/batch_normalization_2/moments/variance_grad/SumSum>gradients/batch_normalization_2/moments/Squeeze_1_grad/ReshapeKgradients/batch_normalization_2/moments/variance_grad/BroadcastGradientArgs*9
_class/
-+loc:@batch_normalization_2/moments/variance*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
=gradients/batch_normalization_2/moments/variance_grad/ReshapeReshape9gradients/batch_normalization_2/moments/variance_grad/Sum;gradients/batch_normalization_2/moments/variance_grad/Shape*
Tshape0*9
_class/
-+loc:@batch_normalization_2/moments/variance*
T0*&
_output_shapes
:@
�
;gradients/batch_normalization_2/moments/variance_grad/Sum_1Sum>gradients/batch_normalization_2/moments/Squeeze_1_grad/ReshapeMgradients/batch_normalization_2/moments/variance_grad/BroadcastGradientArgs:1*9
_class/
-+loc:@batch_normalization_2/moments/variance*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/batch_normalization_2/moments/variance_grad/NegNeg;gradients/batch_normalization_2/moments/variance_grad/Sum_1*9
_class/
-+loc:@batch_normalization_2/moments/variance*
T0*
_output_shapes
:
�
?gradients/batch_normalization_2/moments/variance_grad/Reshape_1Reshape9gradients/batch_normalization_2/moments/variance_grad/Neg=gradients/batch_normalization_2/moments/variance_grad/Shape_1*
Tshape0*9
_class/
-+loc:@batch_normalization_2/moments/variance*
T0*&
_output_shapes
:@
�
9gradients/batch_normalization_2/moments/Mean_1_grad/ShapeShape/batch_normalization_2/moments/SquaredDifference*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
out_type0*
T0*
_output_shapes
:
�
8gradients/batch_normalization_2/moments/Mean_1_grad/SizeConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B :*
_output_shapes
: 
�
7gradients/batch_normalization_2/moments/Mean_1_grad/addAdd6batch_normalization_2/moments/Mean_1/reduction_indices8gradients/batch_normalization_2/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
:
�
7gradients/batch_normalization_2/moments/Mean_1_grad/modFloorMod7gradients/batch_normalization_2/moments/Mean_1_grad/add8gradients/batch_normalization_2/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
valueB:*
_output_shapes
:
�
?gradients/batch_normalization_2/moments/Mean_1_grad/range/startConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B : *
_output_shapes
: 
�
?gradients/batch_normalization_2/moments/Mean_1_grad/range/deltaConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B :*
_output_shapes
: 
�
9gradients/batch_normalization_2/moments/Mean_1_grad/rangeRange?gradients/batch_normalization_2/moments/Mean_1_grad/range/start8gradients/batch_normalization_2/moments/Mean_1_grad/Size?gradients/batch_normalization_2/moments/Mean_1_grad/range/delta*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*

Tidx0*
_output_shapes
:
�
>gradients/batch_normalization_2/moments/Mean_1_grad/Fill/valueConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B :*
_output_shapes
: 
�
8gradients/batch_normalization_2/moments/Mean_1_grad/FillFill;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_1>gradients/batch_normalization_2/moments/Mean_1_grad/Fill/value*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
:
�
Agradients/batch_normalization_2/moments/Mean_1_grad/DynamicStitchDynamicStitch9gradients/batch_normalization_2/moments/Mean_1_grad/range7gradients/batch_normalization_2/moments/Mean_1_grad/mod9gradients/batch_normalization_2/moments/Mean_1_grad/Shape8gradients/batch_normalization_2/moments/Mean_1_grad/Fill*
N*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*#
_output_shapes
:���������
�
=gradients/batch_normalization_2/moments/Mean_1_grad/Maximum/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B :*
_output_shapes
: 
�
;gradients/batch_normalization_2/moments/Mean_1_grad/MaximumMaximumAgradients/batch_normalization_2/moments/Mean_1_grad/DynamicStitch=gradients/batch_normalization_2/moments/Mean_1_grad/Maximum/y*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*#
_output_shapes
:���������
�
<gradients/batch_normalization_2/moments/Mean_1_grad/floordivFloorDiv9gradients/batch_normalization_2/moments/Mean_1_grad/Shape;gradients/batch_normalization_2/moments/Mean_1_grad/Maximum*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_2/moments/Mean_1_grad/ReshapeReshape=gradients/batch_normalization_2/moments/variance_grad/ReshapeAgradients/batch_normalization_2/moments/Mean_1_grad/DynamicStitch*
Tshape0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
:
�
8gradients/batch_normalization_2/moments/Mean_1_grad/TileTile;gradients/batch_normalization_2/moments/Mean_1_grad/Reshape<gradients/batch_normalization_2/moments/Mean_1_grad/floordiv*

Tmultiples0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*J
_output_shapes8
6:4������������������������������������
�
;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_2Shape/batch_normalization_2/moments/SquaredDifference*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
out_type0*
T0*
_output_shapes
:
�
;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_3Const*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_2/moments/Mean_1_grad/ConstConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
valueB: *
_output_shapes
:
�
8gradients/batch_normalization_2/moments/Mean_1_grad/ProdProd;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_29gradients/batch_normalization_2/moments/Mean_1_grad/Const*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
;gradients/batch_normalization_2/moments/Mean_1_grad/Const_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
valueB: *
_output_shapes
:
�
:gradients/batch_normalization_2/moments/Mean_1_grad/Prod_1Prod;gradients/batch_normalization_2/moments/Mean_1_grad/Shape_3;gradients/batch_normalization_2/moments/Mean_1_grad/Const_1*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
?gradients/batch_normalization_2/moments/Mean_1_grad/Maximum_1/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_2/moments/Mean_1_grad/Maximum_1Maximum:gradients/batch_normalization_2/moments/Mean_1_grad/Prod_1?gradients/batch_normalization_2/moments/Mean_1_grad/Maximum_1/y*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_2/moments/Mean_1_grad/floordiv_1FloorDiv8gradients/batch_normalization_2/moments/Mean_1_grad/Prod=gradients/batch_normalization_2/moments/Mean_1_grad/Maximum_1*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*
_output_shapes
: 
�
8gradients/batch_normalization_2/moments/Mean_1_grad/CastCast>gradients/batch_normalization_2/moments/Mean_1_grad/floordiv_1*

DstT0*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*

SrcT0*
_output_shapes
: 
�
;gradients/batch_normalization_2/moments/Mean_1_grad/truedivRealDiv8gradients/batch_normalization_2/moments/Mean_1_grad/Tile8gradients/batch_normalization_2/moments/Mean_1_grad/Cast*7
_class-
+)loc:@batch_normalization_2/moments/Mean_1*
T0*/
_output_shapes
:���������@
�
9gradients/batch_normalization_2/moments/Square_grad/mul/xConst@^gradients/batch_normalization_2/moments/variance_grad/Reshape_1*
dtype0*7
_class-
+)loc:@batch_normalization_2/moments/Square*
valueB
 *   @*
_output_shapes
: 
�
7gradients/batch_normalization_2/moments/Square_grad/mulMul9gradients/batch_normalization_2/moments/Square_grad/mul/x*batch_normalization_2/moments/shifted_mean*7
_class-
+)loc:@batch_normalization_2/moments/Square*
T0*&
_output_shapes
:@
�
9gradients/batch_normalization_2/moments/Square_grad/mul_1Mul?gradients/batch_normalization_2/moments/variance_grad/Reshape_17gradients/batch_normalization_2/moments/Square_grad/mul*7
_class-
+)loc:@batch_normalization_2/moments/Square*
T0*&
_output_shapes
:@
�
Dgradients/batch_normalization_2/moments/SquaredDifference_grad/ShapeShapequantized_conv2d_2/BiasAdd*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:
�
Fgradients/batch_normalization_2/moments/SquaredDifference_grad/Shape_1Const*
dtype0*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*%
valueB"         @   *
_output_shapes
:
�
Tgradients/batch_normalization_2/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/batch_normalization_2/moments/SquaredDifference_grad/ShapeFgradients/batch_normalization_2/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*2
_output_shapes 
:���������:���������
�
Egradients/batch_normalization_2/moments/SquaredDifference_grad/scalarConst<^gradients/batch_normalization_2/moments/Mean_1_grad/truediv*
dtype0*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
valueB
 *   @*
_output_shapes
: 
�
Bgradients/batch_normalization_2/moments/SquaredDifference_grad/mulMulEgradients/batch_normalization_2/moments/SquaredDifference_grad/scalar;gradients/batch_normalization_2/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Bgradients/batch_normalization_2/moments/SquaredDifference_grad/subSubquantized_conv2d_2/BiasAdd*batch_normalization_2/moments/StopGradient<^gradients/batch_normalization_2/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Dgradients/batch_normalization_2/moments/SquaredDifference_grad/mul_1MulBgradients/batch_normalization_2/moments/SquaredDifference_grad/mulBgradients/batch_normalization_2/moments/SquaredDifference_grad/sub*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Bgradients/batch_normalization_2/moments/SquaredDifference_grad/SumSumDgradients/batch_normalization_2/moments/SquaredDifference_grad/mul_1Tgradients/batch_normalization_2/moments/SquaredDifference_grad/BroadcastGradientArgs*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Fgradients/batch_normalization_2/moments/SquaredDifference_grad/ReshapeReshapeBgradients/batch_normalization_2/moments/SquaredDifference_grad/SumDgradients/batch_normalization_2/moments/SquaredDifference_grad/Shape*
Tshape0*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*/
_output_shapes
:���������@
�
Dgradients/batch_normalization_2/moments/SquaredDifference_grad/Sum_1SumDgradients/batch_normalization_2/moments/SquaredDifference_grad/mul_1Vgradients/batch_normalization_2/moments/SquaredDifference_grad/BroadcastGradientArgs:1*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Hgradients/batch_normalization_2/moments/SquaredDifference_grad/Reshape_1ReshapeDgradients/batch_normalization_2/moments/SquaredDifference_grad/Sum_1Fgradients/batch_normalization_2/moments/SquaredDifference_grad/Shape_1*
Tshape0*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*&
_output_shapes
:@
�
Bgradients/batch_normalization_2/moments/SquaredDifference_grad/NegNegHgradients/batch_normalization_2/moments/SquaredDifference_grad/Reshape_1*B
_class8
64loc:@batch_normalization_2/moments/SquaredDifference*
T0*&
_output_shapes
:@
�
gradients/AddN_18AddN9gradients/batch_normalization_2/moments/mean_grad/Reshape9gradients/batch_normalization_2/moments/Square_grad/mul_1*
N*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*&
_output_shapes
:@
�
?gradients/batch_normalization_2/moments/shifted_mean_grad/ShapeShape!batch_normalization_2/moments/Sub*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
out_type0*
T0*
_output_shapes
:
�
>gradients/batch_normalization_2/moments/shifted_mean_grad/SizeConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_2/moments/shifted_mean_grad/addAdd<batch_normalization_2/moments/shifted_mean/reduction_indices>gradients/batch_normalization_2/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
:
�
=gradients/batch_normalization_2/moments/shifted_mean_grad/modFloorMod=gradients/batch_normalization_2/moments/shifted_mean_grad/add>gradients/batch_normalization_2/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
valueB:*
_output_shapes
:
�
Egradients/batch_normalization_2/moments/shifted_mean_grad/range/startConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B : *
_output_shapes
: 
�
Egradients/batch_normalization_2/moments/shifted_mean_grad/range/deltaConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
?gradients/batch_normalization_2/moments/shifted_mean_grad/rangeRangeEgradients/batch_normalization_2/moments/shifted_mean_grad/range/start>gradients/batch_normalization_2/moments/shifted_mean_grad/SizeEgradients/batch_normalization_2/moments/shifted_mean_grad/range/delta*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*

Tidx0*
_output_shapes
:
�
Dgradients/batch_normalization_2/moments/shifted_mean_grad/Fill/valueConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
>gradients/batch_normalization_2/moments/shifted_mean_grad/FillFillAgradients/batch_normalization_2/moments/shifted_mean_grad/Shape_1Dgradients/batch_normalization_2/moments/shifted_mean_grad/Fill/value*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
:
�
Ggradients/batch_normalization_2/moments/shifted_mean_grad/DynamicStitchDynamicStitch?gradients/batch_normalization_2/moments/shifted_mean_grad/range=gradients/batch_normalization_2/moments/shifted_mean_grad/mod?gradients/batch_normalization_2/moments/shifted_mean_grad/Shape>gradients/batch_normalization_2/moments/shifted_mean_grad/Fill*
N*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Cgradients/batch_normalization_2/moments/shifted_mean_grad/Maximum/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/MaximumMaximumGgradients/batch_normalization_2/moments/shifted_mean_grad/DynamicStitchCgradients/batch_normalization_2/moments/shifted_mean_grad/Maximum/y*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Bgradients/batch_normalization_2/moments/shifted_mean_grad/floordivFloorDiv?gradients/batch_normalization_2/moments/shifted_mean_grad/ShapeAgradients/batch_normalization_2/moments/shifted_mean_grad/Maximum*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_18Ggradients/batch_normalization_2/moments/shifted_mean_grad/DynamicStitch*
Tshape0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
:
�
>gradients/batch_normalization_2/moments/shifted_mean_grad/TileTileAgradients/batch_normalization_2/moments/shifted_mean_grad/ReshapeBgradients/batch_normalization_2/moments/shifted_mean_grad/floordiv*

Tmultiples0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*J
_output_shapes8
6:4������������������������������������
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/Shape_2Shape!batch_normalization_2/moments/Sub*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/Shape_3Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*%
valueB"         @   *
_output_shapes
:
�
?gradients/batch_normalization_2/moments/shifted_mean_grad/ConstConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
valueB: *
_output_shapes
:
�
>gradients/batch_normalization_2/moments/shifted_mean_grad/ProdProdAgradients/batch_normalization_2/moments/shifted_mean_grad/Shape_2?gradients/batch_normalization_2/moments/shifted_mean_grad/Const*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/Const_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
valueB: *
_output_shapes
:
�
@gradients/batch_normalization_2/moments/shifted_mean_grad/Prod_1ProdAgradients/batch_normalization_2/moments/shifted_mean_grad/Shape_3Agradients/batch_normalization_2/moments/shifted_mean_grad/Const_1*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Egradients/batch_normalization_2/moments/shifted_mean_grad/Maximum_1/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Cgradients/batch_normalization_2/moments/shifted_mean_grad/Maximum_1Maximum@gradients/batch_normalization_2/moments/shifted_mean_grad/Prod_1Egradients/batch_normalization_2/moments/shifted_mean_grad/Maximum_1/y*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
: 
�
Dgradients/batch_normalization_2/moments/shifted_mean_grad/floordiv_1FloorDiv>gradients/batch_normalization_2/moments/shifted_mean_grad/ProdCgradients/batch_normalization_2/moments/shifted_mean_grad/Maximum_1*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_2/moments/shifted_mean_grad/CastCastDgradients/batch_normalization_2/moments/shifted_mean_grad/floordiv_1*

DstT0*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*

SrcT0*
_output_shapes
: 
�
Agradients/batch_normalization_2/moments/shifted_mean_grad/truedivRealDiv>gradients/batch_normalization_2/moments/shifted_mean_grad/Tile>gradients/batch_normalization_2/moments/shifted_mean_grad/Cast*=
_class3
1/loc:@batch_normalization_2/moments/shifted_mean*
T0*/
_output_shapes
:���������@
�
6gradients/batch_normalization_2/moments/Sub_grad/ShapeShapequantized_conv2d_2/BiasAdd*4
_class*
(&loc:@batch_normalization_2/moments/Sub*
out_type0*
T0*
_output_shapes
:
�
8gradients/batch_normalization_2/moments/Sub_grad/Shape_1Const*
dtype0*4
_class*
(&loc:@batch_normalization_2/moments/Sub*%
valueB"         @   *
_output_shapes
:
�
Fgradients/batch_normalization_2/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/batch_normalization_2/moments/Sub_grad/Shape8gradients/batch_normalization_2/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_2/moments/Sub*
T0*2
_output_shapes 
:���������:���������
�
4gradients/batch_normalization_2/moments/Sub_grad/SumSumAgradients/batch_normalization_2/moments/shifted_mean_grad/truedivFgradients/batch_normalization_2/moments/Sub_grad/BroadcastGradientArgs*4
_class*
(&loc:@batch_normalization_2/moments/Sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
8gradients/batch_normalization_2/moments/Sub_grad/ReshapeReshape4gradients/batch_normalization_2/moments/Sub_grad/Sum6gradients/batch_normalization_2/moments/Sub_grad/Shape*
Tshape0*4
_class*
(&loc:@batch_normalization_2/moments/Sub*
T0*/
_output_shapes
:���������@
�
6gradients/batch_normalization_2/moments/Sub_grad/Sum_1SumAgradients/batch_normalization_2/moments/shifted_mean_grad/truedivHgradients/batch_normalization_2/moments/Sub_grad/BroadcastGradientArgs:1*4
_class*
(&loc:@batch_normalization_2/moments/Sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
4gradients/batch_normalization_2/moments/Sub_grad/NegNeg6gradients/batch_normalization_2/moments/Sub_grad/Sum_1*4
_class*
(&loc:@batch_normalization_2/moments/Sub*
T0*
_output_shapes
:
�
:gradients/batch_normalization_2/moments/Sub_grad/Reshape_1Reshape4gradients/batch_normalization_2/moments/Sub_grad/Neg8gradients/batch_normalization_2/moments/Sub_grad/Shape_1*
Tshape0*4
_class*
(&loc:@batch_normalization_2/moments/Sub*
T0*&
_output_shapes
:@
�
gradients/AddN_19AddN;gradients/batch_normalization_2/moments/mean_grad/Reshape_1Bgradients/batch_normalization_2/moments/SquaredDifference_grad/Neg:gradients/batch_normalization_2/moments/Sub_grad/Reshape_1*
N*5
_class+
)'loc:@batch_normalization_2/moments/mean*
T0*&
_output_shapes
:@
�
gradients/AddN_20AddNJgradients/batch_normalization_2/cond/batchnorm/mul_1/Switch_grad/cond_grad<gradients/batch_normalization_2/batchnorm/mul_1_grad/ReshapeFgradients/batch_normalization_2/moments/SquaredDifference_grad/Reshape8gradients/batch_normalization_2/moments/Sub_grad/Reshape*
N*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
T0*/
_output_shapes
:���������@
�
5gradients/quantized_conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_20*-
_class#
!loc:@quantized_conv2d_2/BiasAdd*
data_formatNHWC*
T0*
_output_shapes
:@
�
-gradients/quantized_conv2d_2/mul_4_grad/ShapeShapequantized_conv2d_2/sub_2*+
_class!
loc:@quantized_conv2d_2/mul_4*
out_type0*
T0*
_output_shapes
:
�
/gradients/quantized_conv2d_2/mul_4_grad/Shape_1Const*
dtype0*+
_class!
loc:@quantized_conv2d_2/mul_4*
valueB *
_output_shapes
: 
�
=gradients/quantized_conv2d_2/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/mul_4_grad/Shape/gradients/quantized_conv2d_2/mul_4_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/mul_4_grad/mulMulgradients/AddN_20quantized_conv2d_2/mul_4/y*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_2/mul_4_grad/SumSum+gradients/quantized_conv2d_2/mul_4_grad/mul=gradients/quantized_conv2d_2/mul_4_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_2/mul_4*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_2/mul_4_grad/ReshapeReshape+gradients/quantized_conv2d_2/mul_4_grad/Sum-gradients/quantized_conv2d_2/mul_4_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/mul_4_grad/mul_1Mulquantized_conv2d_2/sub_2gradients/AddN_20*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/mul_4_grad/Sum_1Sum-gradients/quantized_conv2d_2/mul_4_grad/mul_1?gradients/quantized_conv2d_2/mul_4_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_2/mul_4*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/quantized_conv2d_2/mul_4_grad/Reshape_1Reshape-gradients/quantized_conv2d_2/mul_4_grad/Sum_1/gradients/quantized_conv2d_2/mul_4_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_2/mul_4*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_2/sub_2_grad/ShapeShapequantized_conv2d_2/convolution*+
_class!
loc:@quantized_conv2d_2/sub_2*
out_type0*
T0*
_output_shapes
:
�
/gradients/quantized_conv2d_2/sub_2_grad/Shape_1Shapequantized_conv2d_2/mul_3*+
_class!
loc:@quantized_conv2d_2/sub_2*
out_type0*
T0*
_output_shapes
:
�
=gradients/quantized_conv2d_2/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/sub_2_grad/Shape/gradients/quantized_conv2d_2/sub_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/sub_2*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/sub_2_grad/SumSum/gradients/quantized_conv2d_2/mul_4_grad/Reshape=gradients/quantized_conv2d_2/sub_2_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_2/sub_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_2/sub_2_grad/ReshapeReshape+gradients/quantized_conv2d_2/sub_2_grad/Sum-gradients/quantized_conv2d_2/sub_2_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_2/sub_2*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/sub_2_grad/Sum_1Sum/gradients/quantized_conv2d_2/mul_4_grad/Reshape?gradients/quantized_conv2d_2/sub_2_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_2/sub_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
+gradients/quantized_conv2d_2/sub_2_grad/NegNeg-gradients/quantized_conv2d_2/sub_2_grad/Sum_1*+
_class!
loc:@quantized_conv2d_2/sub_2*
T0*
_output_shapes
:
�
1gradients/quantized_conv2d_2/sub_2_grad/Reshape_1Reshape+gradients/quantized_conv2d_2/sub_2_grad/Neg/gradients/quantized_conv2d_2/sub_2_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_2/sub_2*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/mul_3_grad/ShapeConst*
dtype0*+
_class!
loc:@quantized_conv2d_2/mul_3*
valueB *
_output_shapes
: 
�
/gradients/quantized_conv2d_2/mul_3_grad/Shape_1Shape!quantized_conv2d_2/StopGradient_2*+
_class!
loc:@quantized_conv2d_2/mul_3*
out_type0*
T0*
_output_shapes
:
�
=gradients/quantized_conv2d_2/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/mul_3_grad/Shape/gradients/quantized_conv2d_2/mul_3_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/mul_3_grad/mulMul1gradients/quantized_conv2d_2/sub_2_grad/Reshape_1!quantized_conv2d_2/StopGradient_2*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_2/mul_3_grad/SumSum+gradients/quantized_conv2d_2/mul_3_grad/mul=gradients/quantized_conv2d_2/mul_3_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_2/mul_3*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_2/mul_3_grad/ReshapeReshape+gradients/quantized_conv2d_2/mul_3_grad/Sum-gradients/quantized_conv2d_2/mul_3_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_2/mul_3_grad/mul_1Mulquantized_conv2d_2/mul_3/x1gradients/quantized_conv2d_2/sub_2_grad/Reshape_1*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/mul_3_grad/Sum_1Sum-gradients/quantized_conv2d_2/mul_3_grad/mul_1?gradients/quantized_conv2d_2/mul_3_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_2/mul_3*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/quantized_conv2d_2/mul_3_grad/Reshape_1Reshape-gradients/quantized_conv2d_2/mul_3_grad/Sum_1/gradients/quantized_conv2d_2/mul_3_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_2/mul_3*
T0*/
_output_shapes
:���������@
�
3gradients/quantized_conv2d_2/convolution_grad/ShapeShapequantized_conv2d_2/mul_2*1
_class'
%#loc:@quantized_conv2d_2/convolution*
out_type0*
T0*
_output_shapes
:
�
Agradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput3gradients/quantized_conv2d_2/convolution_grad/Shapequantized_conv2d_2/div/gradients/quantized_conv2d_2/sub_2_grad/Reshape*/
_output_shapes
:���������@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_2/convolution
�
5gradients/quantized_conv2d_2/convolution_grad/Shape_1Const*
dtype0*1
_class'
%#loc:@quantized_conv2d_2/convolution*%
valueB"      @   @   *
_output_shapes
:
�
Bgradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterquantized_conv2d_2/mul_25gradients/quantized_conv2d_2/convolution_grad/Shape_1/gradients/quantized_conv2d_2/sub_2_grad/Reshape*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_2/convolution
�
-gradients/quantized_conv2d_2/mul_2_grad/ShapeShapequantized_conv2d_2/sub_1*+
_class!
loc:@quantized_conv2d_2/mul_2*
out_type0*
T0*
_output_shapes
:
�
/gradients/quantized_conv2d_2/mul_2_grad/Shape_1Const*
dtype0*+
_class!
loc:@quantized_conv2d_2/mul_2*
valueB *
_output_shapes
: 
�
=gradients/quantized_conv2d_2/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/mul_2_grad/Shape/gradients/quantized_conv2d_2/mul_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/mul_2_grad/mulMulAgradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropInputquantized_conv2d_2/mul_2/y*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_2/mul_2_grad/SumSum+gradients/quantized_conv2d_2/mul_2_grad/mul=gradients/quantized_conv2d_2/mul_2_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_2/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_2/mul_2_grad/ReshapeReshape+gradients/quantized_conv2d_2/mul_2_grad/Sum-gradients/quantized_conv2d_2/mul_2_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/mul_2_grad/mul_1Mulquantized_conv2d_2/sub_1Agradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropInput*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/mul_2_grad/Sum_1Sum-gradients/quantized_conv2d_2/mul_2_grad/mul_1?gradients/quantized_conv2d_2/mul_2_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_2/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/quantized_conv2d_2/mul_2_grad/Reshape_1Reshape-gradients/quantized_conv2d_2/mul_2_grad/Sum_1/gradients/quantized_conv2d_2/mul_2_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_2/mul_2*
T0*
_output_shapes
: 
�
+gradients/quantized_conv2d_2/div_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_2/div*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_2/div_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_2/div*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_2/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_2/div_grad/Shape-gradients/quantized_conv2d_2/div_grad/Shape_1*)
_class
loc:@quantized_conv2d_2/div*
T0*2
_output_shapes 
:���������:���������
�
-gradients/quantized_conv2d_2/div_grad/RealDivRealDivBgradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropFilterquantized_conv2d_2/div/y*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_2/div_grad/SumSum-gradients/quantized_conv2d_2/div_grad/RealDiv;gradients/quantized_conv2d_2/div_grad/BroadcastGradientArgs*)
_class
loc:@quantized_conv2d_2/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
-gradients/quantized_conv2d_2/div_grad/ReshapeReshape)gradients/quantized_conv2d_2/div_grad/Sum+gradients/quantized_conv2d_2/div_grad/Shape*
Tshape0*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_2/div_grad/NegNeg quantized_conv2d_2/clip_by_value*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@
�
/gradients/quantized_conv2d_2/div_grad/RealDiv_1RealDiv)gradients/quantized_conv2d_2/div_grad/Negquantized_conv2d_2/div/y*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@
�
/gradients/quantized_conv2d_2/div_grad/RealDiv_2RealDiv/gradients/quantized_conv2d_2/div_grad/RealDiv_1quantized_conv2d_2/div/y*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_2/div_grad/mulMulBgradients/quantized_conv2d_2/convolution_grad/Conv2DBackpropFilter/gradients/quantized_conv2d_2/div_grad/RealDiv_2*)
_class
loc:@quantized_conv2d_2/div*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_2/div_grad/Sum_1Sum)gradients/quantized_conv2d_2/div_grad/mul=gradients/quantized_conv2d_2/div_grad/BroadcastGradientArgs:1*)
_class
loc:@quantized_conv2d_2/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_2/div_grad/Reshape_1Reshape+gradients/quantized_conv2d_2/div_grad/Sum_1-gradients/quantized_conv2d_2/div_grad/Shape_1*
Tshape0*)
_class
loc:@quantized_conv2d_2/div*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_2/sub_1_grad/ShapeShapemax_pooling2d_1/MaxPool*+
_class!
loc:@quantized_conv2d_2/sub_1*
out_type0*
T0*
_output_shapes
:
�
/gradients/quantized_conv2d_2/sub_1_grad/Shape_1Shapequantized_conv2d_2/mul_1*+
_class!
loc:@quantized_conv2d_2/sub_1*
out_type0*
T0*
_output_shapes
:
�
=gradients/quantized_conv2d_2/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/sub_1_grad/Shape/gradients/quantized_conv2d_2/sub_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/sub_1*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/sub_1_grad/SumSum/gradients/quantized_conv2d_2/mul_2_grad/Reshape=gradients/quantized_conv2d_2/sub_1_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_2/sub_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_2/sub_1_grad/ReshapeReshape+gradients/quantized_conv2d_2/sub_1_grad/Sum-gradients/quantized_conv2d_2/sub_1_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_2/sub_1*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/sub_1_grad/Sum_1Sum/gradients/quantized_conv2d_2/mul_2_grad/Reshape?gradients/quantized_conv2d_2/sub_1_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_2/sub_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
+gradients/quantized_conv2d_2/sub_1_grad/NegNeg-gradients/quantized_conv2d_2/sub_1_grad/Sum_1*+
_class!
loc:@quantized_conv2d_2/sub_1*
T0*
_output_shapes
:
�
1gradients/quantized_conv2d_2/sub_1_grad/Reshape_1Reshape+gradients/quantized_conv2d_2/sub_1_grad/Neg/gradients/quantized_conv2d_2/sub_1_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_2/sub_1*
T0*/
_output_shapes
:���������@
�
5gradients/quantized_conv2d_2/clip_by_value_grad/ShapeConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*%
valueB"      @   @   *
_output_shapes
:
�
7gradients/quantized_conv2d_2/clip_by_value_grad/Shape_1Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
valueB *
_output_shapes
: 
�
7gradients/quantized_conv2d_2/clip_by_value_grad/Shape_2Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*%
valueB"      @   @   *
_output_shapes
:
�
;gradients/quantized_conv2d_2/clip_by_value_grad/zeros/ConstConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
5gradients/quantized_conv2d_2/clip_by_value_grad/zerosFill7gradients/quantized_conv2d_2/clip_by_value_grad/Shape_2;gradients/quantized_conv2d_2/clip_by_value_grad/zeros/Const*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*&
_output_shapes
:@@
�
<gradients/quantized_conv2d_2/clip_by_value_grad/GreaterEqualGreaterEqual(quantized_conv2d_2/clip_by_value/Minimumquantized_conv2d_2/Cast*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*&
_output_shapes
:@@
�
Egradients/quantized_conv2d_2/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients/quantized_conv2d_2/clip_by_value_grad/Shape7gradients/quantized_conv2d_2/clip_by_value_grad/Shape_1*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
6gradients/quantized_conv2d_2/clip_by_value_grad/SelectSelect<gradients/quantized_conv2d_2/clip_by_value_grad/GreaterEqual-gradients/quantized_conv2d_2/div_grad/Reshape5gradients/quantized_conv2d_2/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*&
_output_shapes
:@@
�
:gradients/quantized_conv2d_2/clip_by_value_grad/LogicalNot
LogicalNot<gradients/quantized_conv2d_2/clip_by_value_grad/GreaterEqual*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*&
_output_shapes
:@@
�
8gradients/quantized_conv2d_2/clip_by_value_grad/Select_1Select:gradients/quantized_conv2d_2/clip_by_value_grad/LogicalNot-gradients/quantized_conv2d_2/div_grad/Reshape5gradients/quantized_conv2d_2/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*&
_output_shapes
:@@
�
3gradients/quantized_conv2d_2/clip_by_value_grad/SumSum6gradients/quantized_conv2d_2/clip_by_value_grad/SelectEgradients/quantized_conv2d_2/clip_by_value_grad/BroadcastGradientArgs*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
7gradients/quantized_conv2d_2/clip_by_value_grad/ReshapeReshape3gradients/quantized_conv2d_2/clip_by_value_grad/Sum5gradients/quantized_conv2d_2/clip_by_value_grad/Shape*
Tshape0*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*&
_output_shapes
:@@
�
5gradients/quantized_conv2d_2/clip_by_value_grad/Sum_1Sum8gradients/quantized_conv2d_2/clip_by_value_grad/Select_1Ggradients/quantized_conv2d_2/clip_by_value_grad/BroadcastGradientArgs:1*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/quantized_conv2d_2/clip_by_value_grad/Reshape_1Reshape5gradients/quantized_conv2d_2/clip_by_value_grad/Sum_17gradients/quantized_conv2d_2/clip_by_value_grad/Shape_1*
Tshape0*3
_class)
'%loc:@quantized_conv2d_2/clip_by_value*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_2/mul_1_grad/ShapeConst*
dtype0*+
_class!
loc:@quantized_conv2d_2/mul_1*
valueB *
_output_shapes
: 
�
/gradients/quantized_conv2d_2/mul_1_grad/Shape_1Shape!quantized_conv2d_2/StopGradient_1*+
_class!
loc:@quantized_conv2d_2/mul_1*
out_type0*
T0*
_output_shapes
:
�
=gradients/quantized_conv2d_2/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_2/mul_1_grad/Shape/gradients/quantized_conv2d_2/mul_1_grad/Shape_1*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_2/mul_1_grad/mulMul1gradients/quantized_conv2d_2/sub_1_grad/Reshape_1!quantized_conv2d_2/StopGradient_1*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*/
_output_shapes
:���������@
�
+gradients/quantized_conv2d_2/mul_1_grad/SumSum+gradients/quantized_conv2d_2/mul_1_grad/mul=gradients/quantized_conv2d_2/mul_1_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_2/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_2/mul_1_grad/ReshapeReshape+gradients/quantized_conv2d_2/mul_1_grad/Sum-gradients/quantized_conv2d_2/mul_1_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_2/mul_1_grad/mul_1Mulquantized_conv2d_2/mul_1/x1gradients/quantized_conv2d_2/sub_1_grad/Reshape_1*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*/
_output_shapes
:���������@
�
-gradients/quantized_conv2d_2/mul_1_grad/Sum_1Sum-gradients/quantized_conv2d_2/mul_1_grad/mul_1?gradients/quantized_conv2d_2/mul_1_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_2/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/quantized_conv2d_2/mul_1_grad/Reshape_1Reshape-gradients/quantized_conv2d_2/mul_1_grad/Sum_1/gradients/quantized_conv2d_2/mul_1_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_2/mul_1*
T0*/
_output_shapes
:���������@
�
=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/ShapeConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*%
valueB"      @   @   *
_output_shapes
:
�
?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape_2Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*%
valueB"      @   @   *
_output_shapes
:
�
Cgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/zerosFill?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape_2Cgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/zeros/Const*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Agradients/quantized_conv2d_2/clip_by_value/Minimum_grad/LessEqual	LessEqualquantized_conv2d_2/addquantized_conv2d_2/Cast_1*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Mgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape_1*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
>gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/SelectSelectAgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/LessEqual7gradients/quantized_conv2d_2/clip_by_value_grad/Reshape=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
Bgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/LogicalNot
LogicalNotAgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/LessEqual*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*&
_output_shapes
:@@
�
@gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Select_1SelectBgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/LogicalNot7gradients/quantized_conv2d_2/clip_by_value_grad/Reshape=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
;gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/SumSum>gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/SelectMgradients/quantized_conv2d_2/clip_by_value/Minimum_grad/BroadcastGradientArgs*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/ReshapeReshape;gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Sum=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape*
Tshape0*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*&
_output_shapes
:@@
�
=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Sum_1Sum@gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Select_1Ogradients/quantized_conv2d_2/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Reshape_1Reshape=gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Sum_1?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Shape_1*
Tshape0*;
_class1
/-loc:@quantized_conv2d_2/clip_by_value/Minimum*
T0*
_output_shapes
: 
�
+gradients/quantized_conv2d_2/add_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_2/add*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_2/add_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_2/add*%
valueB"      @   @   *
_output_shapes
:
�
;gradients/quantized_conv2d_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_2/add_grad/Shape-gradients/quantized_conv2d_2/add_grad/Shape_1*)
_class
loc:@quantized_conv2d_2/add*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_2/add_grad/SumSum?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Reshape;gradients/quantized_conv2d_2/add_grad/BroadcastGradientArgs*)
_class
loc:@quantized_conv2d_2/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
-gradients/quantized_conv2d_2/add_grad/ReshapeReshape)gradients/quantized_conv2d_2/add_grad/Sum+gradients/quantized_conv2d_2/add_grad/Shape*
Tshape0*)
_class
loc:@quantized_conv2d_2/add*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_2/add_grad/Sum_1Sum?gradients/quantized_conv2d_2/clip_by_value/Minimum_grad/Reshape=gradients/quantized_conv2d_2/add_grad/BroadcastGradientArgs:1*)
_class
loc:@quantized_conv2d_2/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_2/add_grad/Reshape_1Reshape+gradients/quantized_conv2d_2/add_grad/Sum_1-gradients/quantized_conv2d_2/add_grad/Shape_1*
Tshape0*)
_class
loc:@quantized_conv2d_2/add*
T0*&
_output_shapes
:@@
�
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradactivation_1/divmax_pooling2d_1/MaxPool/gradients/quantized_conv2d_2/sub_1_grad/Reshape*/
_output_shapes
:���������  @*
data_formatNHWC*
paddingVALID*
strides
*
ksize
**
_class 
loc:@max_pooling2d_1/MaxPool*
T0
�
%gradients/activation_1/div_grad/ShapeShapeactivation_1/clip_by_value*#
_class
loc:@activation_1/div*
out_type0*
T0*
_output_shapes
:
�
'gradients/activation_1/div_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_1/div*
valueB *
_output_shapes
: 
�
5gradients/activation_1/div_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_1/div_grad/Shape'gradients/activation_1/div_grad/Shape_1*#
_class
loc:@activation_1/div*
T0*2
_output_shapes 
:���������:���������
�
'gradients/activation_1/div_grad/RealDivRealDiv2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradactivation_1/div/y*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @
�
#gradients/activation_1/div_grad/SumSum'gradients/activation_1/div_grad/RealDiv5gradients/activation_1/div_grad/BroadcastGradientArgs*#
_class
loc:@activation_1/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
'gradients/activation_1/div_grad/ReshapeReshape#gradients/activation_1/div_grad/Sum%gradients/activation_1/div_grad/Shape*
Tshape0*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @
�
#gradients/activation_1/div_grad/NegNegactivation_1/clip_by_value*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @
�
)gradients/activation_1/div_grad/RealDiv_1RealDiv#gradients/activation_1/div_grad/Negactivation_1/div/y*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @
�
)gradients/activation_1/div_grad/RealDiv_2RealDiv)gradients/activation_1/div_grad/RealDiv_1activation_1/div/y*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @
�
#gradients/activation_1/div_grad/mulMul2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGrad)gradients/activation_1/div_grad/RealDiv_2*#
_class
loc:@activation_1/div*
T0*/
_output_shapes
:���������  @
�
%gradients/activation_1/div_grad/Sum_1Sum#gradients/activation_1/div_grad/mul7gradients/activation_1/div_grad/BroadcastGradientArgs:1*#
_class
loc:@activation_1/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
)gradients/activation_1/div_grad/Reshape_1Reshape%gradients/activation_1/div_grad/Sum_1'gradients/activation_1/div_grad/Shape_1*
Tshape0*#
_class
loc:@activation_1/div*
T0*
_output_shapes
: 
�
/gradients/activation_1/clip_by_value_grad/ShapeShape"activation_1/clip_by_value/Minimum*-
_class#
!loc:@activation_1/clip_by_value*
out_type0*
T0*
_output_shapes
:
�
1gradients/activation_1/clip_by_value_grad/Shape_1Const*
dtype0*-
_class#
!loc:@activation_1/clip_by_value*
valueB *
_output_shapes
: 
�
1gradients/activation_1/clip_by_value_grad/Shape_2Shape'gradients/activation_1/div_grad/Reshape*-
_class#
!loc:@activation_1/clip_by_value*
out_type0*
T0*
_output_shapes
:
�
5gradients/activation_1/clip_by_value_grad/zeros/ConstConst*
dtype0*-
_class#
!loc:@activation_1/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
/gradients/activation_1/clip_by_value_grad/zerosFill1gradients/activation_1/clip_by_value_grad/Shape_25gradients/activation_1/clip_by_value_grad/zeros/Const*-
_class#
!loc:@activation_1/clip_by_value*
T0*/
_output_shapes
:���������  @
�
6gradients/activation_1/clip_by_value_grad/GreaterEqualGreaterEqual"activation_1/clip_by_value/Minimumactivation_1/Cast*-
_class#
!loc:@activation_1/clip_by_value*
T0*/
_output_shapes
:���������  @
�
?gradients/activation_1/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/activation_1/clip_by_value_grad/Shape1gradients/activation_1/clip_by_value_grad/Shape_1*-
_class#
!loc:@activation_1/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
0gradients/activation_1/clip_by_value_grad/SelectSelect6gradients/activation_1/clip_by_value_grad/GreaterEqual'gradients/activation_1/div_grad/Reshape/gradients/activation_1/clip_by_value_grad/zeros*-
_class#
!loc:@activation_1/clip_by_value*
T0*/
_output_shapes
:���������  @
�
4gradients/activation_1/clip_by_value_grad/LogicalNot
LogicalNot6gradients/activation_1/clip_by_value_grad/GreaterEqual*-
_class#
!loc:@activation_1/clip_by_value*/
_output_shapes
:���������  @
�
2gradients/activation_1/clip_by_value_grad/Select_1Select4gradients/activation_1/clip_by_value_grad/LogicalNot'gradients/activation_1/div_grad/Reshape/gradients/activation_1/clip_by_value_grad/zeros*-
_class#
!loc:@activation_1/clip_by_value*
T0*/
_output_shapes
:���������  @
�
-gradients/activation_1/clip_by_value_grad/SumSum0gradients/activation_1/clip_by_value_grad/Select?gradients/activation_1/clip_by_value_grad/BroadcastGradientArgs*-
_class#
!loc:@activation_1/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/activation_1/clip_by_value_grad/ReshapeReshape-gradients/activation_1/clip_by_value_grad/Sum/gradients/activation_1/clip_by_value_grad/Shape*
Tshape0*-
_class#
!loc:@activation_1/clip_by_value*
T0*/
_output_shapes
:���������  @
�
/gradients/activation_1/clip_by_value_grad/Sum_1Sum2gradients/activation_1/clip_by_value_grad/Select_1Agradients/activation_1/clip_by_value_grad/BroadcastGradientArgs:1*-
_class#
!loc:@activation_1/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
3gradients/activation_1/clip_by_value_grad/Reshape_1Reshape/gradients/activation_1/clip_by_value_grad/Sum_11gradients/activation_1/clip_by_value_grad/Shape_1*
Tshape0*-
_class#
!loc:@activation_1/clip_by_value*
T0*
_output_shapes
: 
�
7gradients/activation_1/clip_by_value/Minimum_grad/ShapeShapeactivation_1/add*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:
�
9gradients/activation_1/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
9gradients/activation_1/clip_by_value/Minimum_grad/Shape_2Shape1gradients/activation_1/clip_by_value_grad/Reshape*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:
�
=gradients/activation_1/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
7gradients/activation_1/clip_by_value/Minimum_grad/zerosFill9gradients/activation_1/clip_by_value/Minimum_grad/Shape_2=gradients/activation_1/clip_by_value/Minimum_grad/zeros/Const*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*/
_output_shapes
:���������  @
�
;gradients/activation_1/clip_by_value/Minimum_grad/LessEqual	LessEqualactivation_1/addactivation_1/Cast_1*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*/
_output_shapes
:���������  @
�
Ggradients/activation_1/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/activation_1/clip_by_value/Minimum_grad/Shape9gradients/activation_1/clip_by_value/Minimum_grad/Shape_1*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
8gradients/activation_1/clip_by_value/Minimum_grad/SelectSelect;gradients/activation_1/clip_by_value/Minimum_grad/LessEqual1gradients/activation_1/clip_by_value_grad/Reshape7gradients/activation_1/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*/
_output_shapes
:���������  @
�
<gradients/activation_1/clip_by_value/Minimum_grad/LogicalNot
LogicalNot;gradients/activation_1/clip_by_value/Minimum_grad/LessEqual*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*/
_output_shapes
:���������  @
�
:gradients/activation_1/clip_by_value/Minimum_grad/Select_1Select<gradients/activation_1/clip_by_value/Minimum_grad/LogicalNot1gradients/activation_1/clip_by_value_grad/Reshape7gradients/activation_1/clip_by_value/Minimum_grad/zeros*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*/
_output_shapes
:���������  @
�
5gradients/activation_1/clip_by_value/Minimum_grad/SumSum8gradients/activation_1/clip_by_value/Minimum_grad/SelectGgradients/activation_1/clip_by_value/Minimum_grad/BroadcastGradientArgs*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/activation_1/clip_by_value/Minimum_grad/ReshapeReshape5gradients/activation_1/clip_by_value/Minimum_grad/Sum7gradients/activation_1/clip_by_value/Minimum_grad/Shape*
Tshape0*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*/
_output_shapes
:���������  @
�
7gradients/activation_1/clip_by_value/Minimum_grad/Sum_1Sum:gradients/activation_1/clip_by_value/Minimum_grad/Select_1Igradients/activation_1/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
;gradients/activation_1/clip_by_value/Minimum_grad/Reshape_1Reshape7gradients/activation_1/clip_by_value/Minimum_grad/Sum_19gradients/activation_1/clip_by_value/Minimum_grad/Shape_1*
Tshape0*5
_class+
)'loc:@activation_1/clip_by_value/Minimum*
T0*
_output_shapes
: 
�
+gradients/quantized_conv2d_2/mul_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_2/mul*%
valueB"      @   @   *
_output_shapes
:
�
-gradients/quantized_conv2d_2/mul_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_2/mul*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_2/mul_grad/Shape-gradients/quantized_conv2d_2/mul_grad/Shape_1*)
_class
loc:@quantized_conv2d_2/mul*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_2/mul_grad/mulMul-gradients/quantized_conv2d_2/add_grad/Reshapequantized_conv2d_2/mul/y*)
_class
loc:@quantized_conv2d_2/mul*
T0*&
_output_shapes
:@@
�
)gradients/quantized_conv2d_2/mul_grad/SumSum)gradients/quantized_conv2d_2/mul_grad/mul;gradients/quantized_conv2d_2/mul_grad/BroadcastGradientArgs*)
_class
loc:@quantized_conv2d_2/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
-gradients/quantized_conv2d_2/mul_grad/ReshapeReshape)gradients/quantized_conv2d_2/mul_grad/Sum+gradients/quantized_conv2d_2/mul_grad/Shape*
Tshape0*)
_class
loc:@quantized_conv2d_2/mul*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_2/mul_grad/mul_1Mulquantized_conv2d_2/kernel/read-gradients/quantized_conv2d_2/add_grad/Reshape*)
_class
loc:@quantized_conv2d_2/mul*
T0*&
_output_shapes
:@@
�
+gradients/quantized_conv2d_2/mul_grad/Sum_1Sum+gradients/quantized_conv2d_2/mul_grad/mul_1=gradients/quantized_conv2d_2/mul_grad/BroadcastGradientArgs:1*)
_class
loc:@quantized_conv2d_2/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_2/mul_grad/Reshape_1Reshape+gradients/quantized_conv2d_2/mul_grad/Sum_1-gradients/quantized_conv2d_2/mul_grad/Shape_1*
Tshape0*)
_class
loc:@quantized_conv2d_2/mul*
T0*
_output_shapes
: 
�
%gradients/activation_1/add_grad/ShapeShapeactivation_1/mul*#
_class
loc:@activation_1/add*
out_type0*
T0*
_output_shapes
:
�
'gradients/activation_1/add_grad/Shape_1Shapeactivation_1/StopGradient*#
_class
loc:@activation_1/add*
out_type0*
T0*
_output_shapes
:
�
5gradients/activation_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_1/add_grad/Shape'gradients/activation_1/add_grad/Shape_1*#
_class
loc:@activation_1/add*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_1/add_grad/SumSum9gradients/activation_1/clip_by_value/Minimum_grad/Reshape5gradients/activation_1/add_grad/BroadcastGradientArgs*#
_class
loc:@activation_1/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
'gradients/activation_1/add_grad/ReshapeReshape#gradients/activation_1/add_grad/Sum%gradients/activation_1/add_grad/Shape*
Tshape0*#
_class
loc:@activation_1/add*
T0*/
_output_shapes
:���������  @
�
%gradients/activation_1/add_grad/Sum_1Sum9gradients/activation_1/clip_by_value/Minimum_grad/Reshape7gradients/activation_1/add_grad/BroadcastGradientArgs:1*#
_class
loc:@activation_1/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
)gradients/activation_1/add_grad/Reshape_1Reshape%gradients/activation_1/add_grad/Sum_1'gradients/activation_1/add_grad/Shape_1*
Tshape0*#
_class
loc:@activation_1/add*
T0*/
_output_shapes
:���������  @
�
%gradients/activation_1/mul_grad/ShapeShape batch_normalization_1/cond/Merge*#
_class
loc:@activation_1/mul*
out_type0*
T0*
_output_shapes
:
�
'gradients/activation_1/mul_grad/Shape_1Const*
dtype0*#
_class
loc:@activation_1/mul*
valueB *
_output_shapes
: 
�
5gradients/activation_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/activation_1/mul_grad/Shape'gradients/activation_1/mul_grad/Shape_1*#
_class
loc:@activation_1/mul*
T0*2
_output_shapes 
:���������:���������
�
#gradients/activation_1/mul_grad/mulMul'gradients/activation_1/add_grad/Reshapeactivation_1/mul/y*#
_class
loc:@activation_1/mul*
T0*/
_output_shapes
:���������  @
�
#gradients/activation_1/mul_grad/SumSum#gradients/activation_1/mul_grad/mul5gradients/activation_1/mul_grad/BroadcastGradientArgs*#
_class
loc:@activation_1/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
'gradients/activation_1/mul_grad/ReshapeReshape#gradients/activation_1/mul_grad/Sum%gradients/activation_1/mul_grad/Shape*
Tshape0*#
_class
loc:@activation_1/mul*
T0*/
_output_shapes
:���������  @
�
%gradients/activation_1/mul_grad/mul_1Mul batch_normalization_1/cond/Merge'gradients/activation_1/add_grad/Reshape*#
_class
loc:@activation_1/mul*
T0*/
_output_shapes
:���������  @
�
%gradients/activation_1/mul_grad/Sum_1Sum%gradients/activation_1/mul_grad/mul_17gradients/activation_1/mul_grad/BroadcastGradientArgs:1*#
_class
loc:@activation_1/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
)gradients/activation_1/mul_grad/Reshape_1Reshape%gradients/activation_1/mul_grad/Sum_1'gradients/activation_1/mul_grad/Shape_1*
Tshape0*#
_class
loc:@activation_1/mul*
T0*
_output_shapes
: 
�
9gradients/batch_normalization_1/cond/Merge_grad/cond_gradSwitch'gradients/activation_1/mul_grad/Reshape"batch_normalization_1/cond/pred_id*#
_class
loc:@activation_1/mul*
T0*J
_output_shapes8
6:���������  @:���������  @
�
?gradients/batch_normalization_1/cond/batchnorm/add_1_grad/ShapeShape*batch_normalization_1/cond/batchnorm/mul_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_1/cond/batchnorm/add_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_1/cond/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_1/cond/batchnorm/add_1_grad/ShapeAgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_1/cond/batchnorm/add_1_grad/SumSum9gradients/batch_normalization_1/cond/Merge_grad/cond_gradOgradients/batch_normalization_1/cond/batchnorm/add_1_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_1/cond/batchnorm/add_1_grad/ReshapeReshape=gradients/batch_normalization_1/cond/batchnorm/add_1_grad/Sum?gradients/batch_normalization_1/cond/batchnorm/add_1_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*
T0*/
_output_shapes
:���������  @
�
?gradients/batch_normalization_1/cond/batchnorm/add_1_grad/Sum_1Sum9gradients/batch_normalization_1/cond/Merge_grad/cond_gradQgradients/batch_normalization_1/cond/batchnorm/add_1_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Reshape_1Reshape?gradients/batch_normalization_1/cond/batchnorm/add_1_grad/Sum_1Agradients/batch_normalization_1/cond/batchnorm/add_1_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/add_1*
T0*
_output_shapes
:@
�
gradients/Switch_12Switch%batch_normalization_1/batchnorm/add_1"batch_normalization_1/cond/pred_id*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*J
_output_shapes8
6:���������  @:���������  @
�
gradients/Shape_13Shapegradients/Switch_12*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_12/ConstConst*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_12Fillgradients/Shape_13gradients/zeros_12/Const*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*/
_output_shapes
:���������  @
�
<gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradMerge;gradients/batch_normalization_1/cond/Merge_grad/cond_grad:1gradients/zeros_12*
N*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*1
_output_shapes
:���������  @: 
�
?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/ShapeShape1batch_normalization_1/cond/batchnorm/mul_1/Switch*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_1/cond/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/ShapeAgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Shape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/mulMulAgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Reshape(batch_normalization_1/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @
�
=gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/SumSum=gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/mulOgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_1/cond/batchnorm/mul_1_grad/ReshapeReshape=gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Sum?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @
�
?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/mul_1Mul1batch_normalization_1/cond/batchnorm/mul_1/SwitchAgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Reshape*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @
�
?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Sum_1Sum?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/mul_1Qgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Reshape_1Reshape?gradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Sum_1Agradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_1/cond/batchnorm/sub_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_1/cond/batchnorm/sub_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_1/cond/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_1/cond/batchnorm/sub_grad/Shape?gradients/batch_normalization_1/cond/batchnorm/sub_grad/Shape_1*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_1/cond/batchnorm/sub_grad/SumSumCgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Reshape_1Mgradients/batch_normalization_1/cond/batchnorm/sub_grad/BroadcastGradientArgs*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
?gradients/batch_normalization_1/cond/batchnorm/sub_grad/ReshapeReshape;gradients/batch_normalization_1/cond/batchnorm/sub_grad/Sum=gradients/batch_normalization_1/cond/batchnorm/sub_grad/Shape*
Tshape0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_1/cond/batchnorm/sub_grad/Sum_1SumCgradients/batch_normalization_1/cond/batchnorm/add_1_grad/Reshape_1Ogradients/batch_normalization_1/cond/batchnorm/sub_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
;gradients/batch_normalization_1/cond/batchnorm/sub_grad/NegNeg=gradients/batch_normalization_1/cond/batchnorm/sub_grad/Sum_1*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
T0*
_output_shapes
:
�
Agradients/batch_normalization_1/cond/batchnorm/sub_grad/Reshape_1Reshape;gradients/batch_normalization_1/cond/batchnorm/sub_grad/Neg?gradients/batch_normalization_1/cond/batchnorm/sub_grad/Shape_1*
Tshape0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/sub*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_1/batchnorm/add_1_grad/ShapeShape%batch_normalization_1/batchnorm/mul_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
out_type0*
T0*
_output_shapes
:
�
<gradients/batch_normalization_1/batchnorm/add_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_1/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_1/batchnorm/add_1_grad/Shape<gradients/batch_normalization_1/batchnorm/add_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_1/batchnorm/add_1_grad/SumSum<gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradJgradients/batch_normalization_1/batchnorm/add_1_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_1/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_1/batchnorm/add_1_grad/Sum:gradients/batch_normalization_1/batchnorm/add_1_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*/
_output_shapes
:���������  @
�
:gradients/batch_normalization_1/batchnorm/add_1_grad/Sum_1Sum<gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradLgradients/batch_normalization_1/batchnorm/add_1_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_1/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_1/batchnorm/add_1_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1*
T0*
_output_shapes
:@
�
gradients/Switch_13Switchquantized_conv2d_1/BiasAdd"batch_normalization_1/cond/pred_id*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
T0*J
_output_shapes8
6:���������  @:���������  @
�
gradients/Shape_14Shapegradients/Switch_13:1*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_13/ConstConst*
dtype0*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_13Fillgradients/Shape_14gradients/zeros_13/Const*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
T0*/
_output_shapes
:���������  @
�
Jgradients/batch_normalization_1/cond/batchnorm/mul_1/Switch_grad/cond_gradMergeAgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Reshapegradients/zeros_13*
N*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
T0*1
_output_shapes
:���������  @: 
�
gradients/Switch_14Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id*-
_class#
!loc:@batch_normalization_1/beta*
T0* 
_output_shapes
:@:@
�
gradients/Shape_15Shapegradients/Switch_14:1*-
_class#
!loc:@batch_normalization_1/beta*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_14/ConstConst*
dtype0*-
_class#
!loc:@batch_normalization_1/beta*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_14Fillgradients/Shape_15gradients/zeros_14/Const*-
_class#
!loc:@batch_normalization_1/beta*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_1/cond/batchnorm/sub/Switch_grad/cond_gradMerge?gradients/batch_normalization_1/cond/batchnorm/sub_grad/Reshapegradients/zeros_14*
N*-
_class#
!loc:@batch_normalization_1/beta*
T0*
_output_shapes

:@: 
�
?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/ShapeConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Agradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Ogradients/batch_normalization_1/cond/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/ShapeAgradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Shape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
=gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/mulMulAgradients/batch_normalization_1/cond/batchnorm/sub_grad/Reshape_1(batch_normalization_1/cond/batchnorm/mul*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/SumSum=gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/mulOgradients/batch_normalization_1/cond/batchnorm/mul_2_grad/BroadcastGradientArgs*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_1/cond/batchnorm/mul_2_grad/ReshapeReshape=gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Sum?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Shape*
Tshape0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/mul_1Mul1batch_normalization_1/cond/batchnorm/mul_2/SwitchAgradients/batch_normalization_1/cond/batchnorm/sub_grad/Reshape_1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Sum_1Sum?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/mul_1Qgradients/batch_normalization_1/cond/batchnorm/mul_2_grad/BroadcastGradientArgs:1*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Cgradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Reshape_1Reshape?gradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Sum_1Agradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Shape_1*
Tshape0*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_1/batchnorm/mul_1_grad/ShapeShapequantized_conv2d_1/BiasAdd*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:
�
<gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_1/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_1/batchnorm/mul_1_grad/mulMul<gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape#batch_normalization_1/batchnorm/mul*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @
�
8gradients/batch_normalization_1/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_1/batchnorm/mul_1_grad/mulJgradients/batch_normalization_1/batchnorm/mul_1_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_1/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_1/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @
�
:gradients/batch_normalization_1/batchnorm/mul_1_grad/mul_1Mulquantized_conv2d_1/BiasAdd<gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*/
_output_shapes
:���������  @
�
:gradients/batch_normalization_1/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_1/batchnorm/mul_1_grad/mul_1Lgradients/batch_normalization_1/batchnorm/mul_1_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_1/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_1/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_1/batchnorm/sub_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_1/batchnorm/sub_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_1/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_1/batchnorm/sub_grad/Shape:gradients/batch_normalization_1/batchnorm/sub_grad/Shape_1*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_1/batchnorm/sub_grad/SumSum>gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape_1Hgradients/batch_normalization_1/batchnorm/sub_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_1/batchnorm/sub_grad/ReshapeReshape6gradients/batch_normalization_1/batchnorm/sub_grad/Sum8gradients/batch_normalization_1/batchnorm/sub_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_1/batchnorm/sub_grad/Sum_1Sum>gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape_1Jgradients/batch_normalization_1/batchnorm/sub_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
6gradients/batch_normalization_1/batchnorm/sub_grad/NegNeg8gradients/batch_normalization_1/batchnorm/sub_grad/Sum_1*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
T0*
_output_shapes
:
�
<gradients/batch_normalization_1/batchnorm/sub_grad/Reshape_1Reshape6gradients/batch_normalization_1/batchnorm/sub_grad/Neg:gradients/batch_normalization_1/batchnorm/sub_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub*
T0*
_output_shapes
:@
�
gradients/AddN_21AddNCgradients/batch_normalization_1/cond/batchnorm/mul_1_grad/Reshape_1Cgradients/batch_normalization_1/cond/batchnorm/mul_2_grad/Reshape_1*
N*=
_class3
1/loc:@batch_normalization_1/cond/batchnorm/mul_1*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_1/cond/batchnorm/mul_grad/ShapeConst*
dtype0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
?gradients/batch_normalization_1/cond/batchnorm/mul_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Mgradients/batch_normalization_1/cond/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/batch_normalization_1/cond/batchnorm/mul_grad/Shape?gradients/batch_normalization_1/cond/batchnorm/mul_grad/Shape_1*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
;gradients/batch_normalization_1/cond/batchnorm/mul_grad/mulMulgradients/AddN_21/batch_normalization_1/cond/batchnorm/mul/Switch*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
;gradients/batch_normalization_1/cond/batchnorm/mul_grad/SumSum;gradients/batch_normalization_1/cond/batchnorm/mul_grad/mulMgradients/batch_normalization_1/cond/batchnorm/mul_grad/BroadcastGradientArgs*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
?gradients/batch_normalization_1/cond/batchnorm/mul_grad/ReshapeReshape;gradients/batch_normalization_1/cond/batchnorm/mul_grad/Sum=gradients/batch_normalization_1/cond/batchnorm/mul_grad/Shape*
Tshape0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_1/cond/batchnorm/mul_grad/mul_1Mul*batch_normalization_1/cond/batchnorm/Rsqrtgradients/AddN_21*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
=gradients/batch_normalization_1/cond/batchnorm/mul_grad/Sum_1Sum=gradients/batch_normalization_1/cond/batchnorm/mul_grad/mul_1Ogradients/batch_normalization_1/cond/batchnorm/mul_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/batch_normalization_1/cond/batchnorm/mul_grad/Reshape_1Reshape=gradients/batch_normalization_1/cond/batchnorm/mul_grad/Sum_1?gradients/batch_normalization_1/cond/batchnorm/mul_grad/Shape_1*
Tshape0*;
_class1
/-loc:@batch_normalization_1/cond/batchnorm/mul*
T0*
_output_shapes
:@
�
gradients/AddN_22AddNHgradients/batch_normalization_1/cond/batchnorm/sub/Switch_grad/cond_grad:gradients/batch_normalization_1/batchnorm/sub_grad/Reshape*
N*-
_class#
!loc:@batch_normalization_1/beta*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_1/batchnorm/mul_2_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
<gradients/batch_normalization_1/batchnorm/mul_2_grad/Shape_1Const*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
valueB:@*
_output_shapes
:
�
Jgradients/batch_normalization_1/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_1/batchnorm/mul_2_grad/Shape<gradients/batch_normalization_1/batchnorm/mul_2_grad/Shape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_1/batchnorm/mul_2_grad/mulMul<gradients/batch_normalization_1/batchnorm/sub_grad/Reshape_1#batch_normalization_1/batchnorm/mul*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_1/batchnorm/mul_2_grad/SumSum8gradients/batch_normalization_1/batchnorm/mul_2_grad/mulJgradients/batch_normalization_1/batchnorm/mul_2_grad/BroadcastGradientArgs*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_1/batchnorm/mul_2_grad/ReshapeReshape8gradients/batch_normalization_1/batchnorm/mul_2_grad/Sum:gradients/batch_normalization_1/batchnorm/mul_2_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_1/batchnorm/mul_2_grad/mul_1Mul%batch_normalization_1/moments/Squeeze<gradients/batch_normalization_1/batchnorm/sub_grad/Reshape_1*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:@
�
:gradients/batch_normalization_1/batchnorm/mul_2_grad/Sum_1Sum:gradients/batch_normalization_1/batchnorm/mul_2_grad/mul_1Lgradients/batch_normalization_1/batchnorm/mul_2_grad/BroadcastGradientArgs:1*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
>gradients/batch_normalization_1/batchnorm/mul_2_grad/Reshape_1Reshape:gradients/batch_normalization_1/batchnorm/mul_2_grad/Sum_1<gradients/batch_normalization_1/batchnorm/mul_2_grad/Shape_1*
Tshape0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:@
�
gradients/Switch_15Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id*.
_class$
" loc:@batch_normalization_1/gamma*
T0* 
_output_shapes
:@:@
�
gradients/Shape_16Shapegradients/Switch_15:1*.
_class$
" loc:@batch_normalization_1/gamma*
out_type0*
T0*
_output_shapes
:
�
gradients/zeros_15/ConstConst*
dtype0*.
_class$
" loc:@batch_normalization_1/gamma*
valueB
 *    *
_output_shapes
: 
�
gradients/zeros_15Fillgradients/Shape_16gradients/zeros_15/Const*.
_class$
" loc:@batch_normalization_1/gamma*
T0*
_output_shapes
:@
�
Hgradients/batch_normalization_1/cond/batchnorm/mul/Switch_grad/cond_gradMergeAgradients/batch_normalization_1/cond/batchnorm/mul_grad/Reshape_1gradients/zeros_15*
N*.
_class$
" loc:@batch_normalization_1/gamma*
T0*
_output_shapes

:@: 
�
:gradients/batch_normalization_1/moments/Squeeze_grad/ShapeConst*
dtype0*8
_class.
,*loc:@batch_normalization_1/moments/Squeeze*%
valueB"         @   *
_output_shapes
:
�
<gradients/batch_normalization_1/moments/Squeeze_grad/ReshapeReshape<gradients/batch_normalization_1/batchnorm/mul_2_grad/Reshape:gradients/batch_normalization_1/moments/Squeeze_grad/Shape*
Tshape0*8
_class.
,*loc:@batch_normalization_1/moments/Squeeze*
T0*&
_output_shapes
:@
�
gradients/AddN_23AddN>gradients/batch_normalization_1/batchnorm/mul_1_grad/Reshape_1>gradients/batch_normalization_1/batchnorm/mul_2_grad/Reshape_1*
N*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_1/batchnorm/mul_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_1/batchnorm/mul_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
valueB:@*
_output_shapes
:
�
Hgradients/batch_normalization_1/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_1/batchnorm/mul_grad/Shape:gradients/batch_normalization_1/batchnorm/mul_grad/Shape_1*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_1/batchnorm/mul_grad/mulMulgradients/AddN_23 batch_normalization_1/gamma/read*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:@
�
6gradients/batch_normalization_1/batchnorm/mul_grad/SumSum6gradients/batch_normalization_1/batchnorm/mul_grad/mulHgradients/batch_normalization_1/batchnorm/mul_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_1/batchnorm/mul_grad/ReshapeReshape6gradients/batch_normalization_1/batchnorm/mul_grad/Sum8gradients/batch_normalization_1/batchnorm/mul_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_1/batchnorm/mul_grad/mul_1Mul%batch_normalization_1/batchnorm/Rsqrtgradients/AddN_23*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_1/batchnorm/mul_grad/Sum_1Sum8gradients/batch_normalization_1/batchnorm/mul_grad/mul_1Jgradients/batch_normalization_1/batchnorm/mul_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_1/batchnorm/mul_grad/Reshape_1Reshape8gradients/batch_normalization_1/batchnorm/mul_grad/Sum_1:gradients/batch_normalization_1/batchnorm/mul_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:@
�
7gradients/batch_normalization_1/moments/mean_grad/ShapeConst*
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_1/moments/mean_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean*%
valueB"         @   *
_output_shapes
:
�
Ggradients/batch_normalization_1/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/batch_normalization_1/moments/mean_grad/Shape9gradients/batch_normalization_1/moments/mean_grad/Shape_1*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*2
_output_shapes 
:���������:���������
�
5gradients/batch_normalization_1/moments/mean_grad/SumSum<gradients/batch_normalization_1/moments/Squeeze_grad/ReshapeGgradients/batch_normalization_1/moments/mean_grad/BroadcastGradientArgs*5
_class+
)'loc:@batch_normalization_1/moments/mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/batch_normalization_1/moments/mean_grad/ReshapeReshape5gradients/batch_normalization_1/moments/mean_grad/Sum7gradients/batch_normalization_1/moments/mean_grad/Shape*
Tshape0*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*&
_output_shapes
:@
�
7gradients/batch_normalization_1/moments/mean_grad/Sum_1Sum<gradients/batch_normalization_1/moments/Squeeze_grad/ReshapeIgradients/batch_normalization_1/moments/mean_grad/BroadcastGradientArgs:1*5
_class+
)'loc:@batch_normalization_1/moments/mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
;gradients/batch_normalization_1/moments/mean_grad/Reshape_1Reshape7gradients/batch_normalization_1/moments/mean_grad/Sum_19gradients/batch_normalization_1/moments/mean_grad/Shape_1*
Tshape0*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*&
_output_shapes
:@
�
>gradients/batch_normalization_1/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad%batch_normalization_1/batchnorm/Rsqrt:gradients/batch_normalization_1/batchnorm/mul_grad/Reshape*8
_class.
,*loc:@batch_normalization_1/batchnorm/Rsqrt*
T0*
_output_shapes
:@
�
gradients/AddN_24AddNHgradients/batch_normalization_1/cond/batchnorm/mul/Switch_grad/cond_grad<gradients/batch_normalization_1/batchnorm/mul_grad/Reshape_1*
N*.
_class$
" loc:@batch_normalization_1/gamma*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_1/batchnorm/add_grad/ShapeConst*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
valueB:@*
_output_shapes
:
�
:gradients/batch_normalization_1/batchnorm/add_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
valueB *
_output_shapes
: 
�
Hgradients/batch_normalization_1/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_1/batchnorm/add_grad/Shape:gradients/batch_normalization_1/batchnorm/add_grad/Shape_1*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_1/batchnorm/add_grad/SumSum>gradients/batch_normalization_1/batchnorm/Rsqrt_grad/RsqrtGradHgradients/batch_normalization_1/batchnorm/add_grad/BroadcastGradientArgs*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
:gradients/batch_normalization_1/batchnorm/add_grad/ReshapeReshape6gradients/batch_normalization_1/batchnorm/add_grad/Sum8gradients/batch_normalization_1/batchnorm/add_grad/Shape*
Tshape0*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:@
�
8gradients/batch_normalization_1/batchnorm/add_grad/Sum_1Sum>gradients/batch_normalization_1/batchnorm/Rsqrt_grad/RsqrtGradJgradients/batch_normalization_1/batchnorm/add_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
<gradients/batch_normalization_1/batchnorm/add_grad/Reshape_1Reshape8gradients/batch_normalization_1/batchnorm/add_grad/Sum_1:gradients/batch_normalization_1/batchnorm/add_grad/Shape_1*
Tshape0*6
_class,
*(loc:@batch_normalization_1/batchnorm/add*
T0*
_output_shapes
: 
�
<gradients/batch_normalization_1/moments/Squeeze_1_grad/ShapeConst*
dtype0*:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1*%
valueB"         @   *
_output_shapes
:
�
>gradients/batch_normalization_1/moments/Squeeze_1_grad/ReshapeReshape:gradients/batch_normalization_1/batchnorm/add_grad/Reshape<gradients/batch_normalization_1/moments/Squeeze_1_grad/Shape*
Tshape0*:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1*
T0*&
_output_shapes
:@
�
;gradients/batch_normalization_1/moments/variance_grad/ShapeConst*
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance*%
valueB"         @   *
_output_shapes
:
�
=gradients/batch_normalization_1/moments/variance_grad/Shape_1Const*
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance*%
valueB"         @   *
_output_shapes
:
�
Kgradients/batch_normalization_1/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients/batch_normalization_1/moments/variance_grad/Shape=gradients/batch_normalization_1/moments/variance_grad/Shape_1*9
_class/
-+loc:@batch_normalization_1/moments/variance*
T0*2
_output_shapes 
:���������:���������
�
9gradients/batch_normalization_1/moments/variance_grad/SumSum>gradients/batch_normalization_1/moments/Squeeze_1_grad/ReshapeKgradients/batch_normalization_1/moments/variance_grad/BroadcastGradientArgs*9
_class/
-+loc:@batch_normalization_1/moments/variance*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
=gradients/batch_normalization_1/moments/variance_grad/ReshapeReshape9gradients/batch_normalization_1/moments/variance_grad/Sum;gradients/batch_normalization_1/moments/variance_grad/Shape*
Tshape0*9
_class/
-+loc:@batch_normalization_1/moments/variance*
T0*&
_output_shapes
:@
�
;gradients/batch_normalization_1/moments/variance_grad/Sum_1Sum>gradients/batch_normalization_1/moments/Squeeze_1_grad/ReshapeMgradients/batch_normalization_1/moments/variance_grad/BroadcastGradientArgs:1*9
_class/
-+loc:@batch_normalization_1/moments/variance*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/batch_normalization_1/moments/variance_grad/NegNeg;gradients/batch_normalization_1/moments/variance_grad/Sum_1*9
_class/
-+loc:@batch_normalization_1/moments/variance*
T0*
_output_shapes
:
�
?gradients/batch_normalization_1/moments/variance_grad/Reshape_1Reshape9gradients/batch_normalization_1/moments/variance_grad/Neg=gradients/batch_normalization_1/moments/variance_grad/Shape_1*
Tshape0*9
_class/
-+loc:@batch_normalization_1/moments/variance*
T0*&
_output_shapes
:@
�
9gradients/batch_normalization_1/moments/Mean_1_grad/ShapeShape/batch_normalization_1/moments/SquaredDifference*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
out_type0*
T0*
_output_shapes
:
�
8gradients/batch_normalization_1/moments/Mean_1_grad/SizeConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B :*
_output_shapes
: 
�
7gradients/batch_normalization_1/moments/Mean_1_grad/addAdd6batch_normalization_1/moments/Mean_1/reduction_indices8gradients/batch_normalization_1/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
:
�
7gradients/batch_normalization_1/moments/Mean_1_grad/modFloorMod7gradients/batch_normalization_1/moments/Mean_1_grad/add8gradients/batch_normalization_1/moments/Mean_1_grad/Size*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
valueB:*
_output_shapes
:
�
?gradients/batch_normalization_1/moments/Mean_1_grad/range/startConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B : *
_output_shapes
: 
�
?gradients/batch_normalization_1/moments/Mean_1_grad/range/deltaConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B :*
_output_shapes
: 
�
9gradients/batch_normalization_1/moments/Mean_1_grad/rangeRange?gradients/batch_normalization_1/moments/Mean_1_grad/range/start8gradients/batch_normalization_1/moments/Mean_1_grad/Size?gradients/batch_normalization_1/moments/Mean_1_grad/range/delta*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*

Tidx0*
_output_shapes
:
�
>gradients/batch_normalization_1/moments/Mean_1_grad/Fill/valueConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B :*
_output_shapes
: 
�
8gradients/batch_normalization_1/moments/Mean_1_grad/FillFill;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_1>gradients/batch_normalization_1/moments/Mean_1_grad/Fill/value*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
:
�
Agradients/batch_normalization_1/moments/Mean_1_grad/DynamicStitchDynamicStitch9gradients/batch_normalization_1/moments/Mean_1_grad/range7gradients/batch_normalization_1/moments/Mean_1_grad/mod9gradients/batch_normalization_1/moments/Mean_1_grad/Shape8gradients/batch_normalization_1/moments/Mean_1_grad/Fill*
N*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*#
_output_shapes
:���������
�
=gradients/batch_normalization_1/moments/Mean_1_grad/Maximum/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B :*
_output_shapes
: 
�
;gradients/batch_normalization_1/moments/Mean_1_grad/MaximumMaximumAgradients/batch_normalization_1/moments/Mean_1_grad/DynamicStitch=gradients/batch_normalization_1/moments/Mean_1_grad/Maximum/y*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*#
_output_shapes
:���������
�
<gradients/batch_normalization_1/moments/Mean_1_grad/floordivFloorDiv9gradients/batch_normalization_1/moments/Mean_1_grad/Shape;gradients/batch_normalization_1/moments/Mean_1_grad/Maximum*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
:
�
;gradients/batch_normalization_1/moments/Mean_1_grad/ReshapeReshape=gradients/batch_normalization_1/moments/variance_grad/ReshapeAgradients/batch_normalization_1/moments/Mean_1_grad/DynamicStitch*
Tshape0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
:
�
8gradients/batch_normalization_1/moments/Mean_1_grad/TileTile;gradients/batch_normalization_1/moments/Mean_1_grad/Reshape<gradients/batch_normalization_1/moments/Mean_1_grad/floordiv*

Tmultiples0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*J
_output_shapes8
6:4������������������������������������
�
;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_2Shape/batch_normalization_1/moments/SquaredDifference*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
out_type0*
T0*
_output_shapes
:
�
;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_3Const*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*%
valueB"         @   *
_output_shapes
:
�
9gradients/batch_normalization_1/moments/Mean_1_grad/ConstConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
valueB: *
_output_shapes
:
�
8gradients/batch_normalization_1/moments/Mean_1_grad/ProdProd;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_29gradients/batch_normalization_1/moments/Mean_1_grad/Const*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
;gradients/batch_normalization_1/moments/Mean_1_grad/Const_1Const*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
valueB: *
_output_shapes
:
�
:gradients/batch_normalization_1/moments/Mean_1_grad/Prod_1Prod;gradients/batch_normalization_1/moments/Mean_1_grad/Shape_3;gradients/batch_normalization_1/moments/Mean_1_grad/Const_1*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
?gradients/batch_normalization_1/moments/Mean_1_grad/Maximum_1/yConst*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_1/moments/Mean_1_grad/Maximum_1Maximum:gradients/batch_normalization_1/moments/Mean_1_grad/Prod_1?gradients/batch_normalization_1/moments/Mean_1_grad/Maximum_1/y*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_1/moments/Mean_1_grad/floordiv_1FloorDiv8gradients/batch_normalization_1/moments/Mean_1_grad/Prod=gradients/batch_normalization_1/moments/Mean_1_grad/Maximum_1*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*
_output_shapes
: 
�
8gradients/batch_normalization_1/moments/Mean_1_grad/CastCast>gradients/batch_normalization_1/moments/Mean_1_grad/floordiv_1*

DstT0*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*

SrcT0*
_output_shapes
: 
�
;gradients/batch_normalization_1/moments/Mean_1_grad/truedivRealDiv8gradients/batch_normalization_1/moments/Mean_1_grad/Tile8gradients/batch_normalization_1/moments/Mean_1_grad/Cast*7
_class-
+)loc:@batch_normalization_1/moments/Mean_1*
T0*/
_output_shapes
:���������  @
�
9gradients/batch_normalization_1/moments/Square_grad/mul/xConst@^gradients/batch_normalization_1/moments/variance_grad/Reshape_1*
dtype0*7
_class-
+)loc:@batch_normalization_1/moments/Square*
valueB
 *   @*
_output_shapes
: 
�
7gradients/batch_normalization_1/moments/Square_grad/mulMul9gradients/batch_normalization_1/moments/Square_grad/mul/x*batch_normalization_1/moments/shifted_mean*7
_class-
+)loc:@batch_normalization_1/moments/Square*
T0*&
_output_shapes
:@
�
9gradients/batch_normalization_1/moments/Square_grad/mul_1Mul?gradients/batch_normalization_1/moments/variance_grad/Reshape_17gradients/batch_normalization_1/moments/Square_grad/mul*7
_class-
+)loc:@batch_normalization_1/moments/Square*
T0*&
_output_shapes
:@
�
Dgradients/batch_normalization_1/moments/SquaredDifference_grad/ShapeShapequantized_conv2d_1/BiasAdd*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:
�
Fgradients/batch_normalization_1/moments/SquaredDifference_grad/Shape_1Const*
dtype0*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*%
valueB"         @   *
_output_shapes
:
�
Tgradients/batch_normalization_1/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/batch_normalization_1/moments/SquaredDifference_grad/ShapeFgradients/batch_normalization_1/moments/SquaredDifference_grad/Shape_1*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*2
_output_shapes 
:���������:���������
�
Egradients/batch_normalization_1/moments/SquaredDifference_grad/scalarConst<^gradients/batch_normalization_1/moments/Mean_1_grad/truediv*
dtype0*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
valueB
 *   @*
_output_shapes
: 
�
Bgradients/batch_normalization_1/moments/SquaredDifference_grad/mulMulEgradients/batch_normalization_1/moments/SquaredDifference_grad/scalar;gradients/batch_normalization_1/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*/
_output_shapes
:���������  @
�
Bgradients/batch_normalization_1/moments/SquaredDifference_grad/subSubquantized_conv2d_1/BiasAdd*batch_normalization_1/moments/StopGradient<^gradients/batch_normalization_1/moments/Mean_1_grad/truediv*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*/
_output_shapes
:���������  @
�
Dgradients/batch_normalization_1/moments/SquaredDifference_grad/mul_1MulBgradients/batch_normalization_1/moments/SquaredDifference_grad/mulBgradients/batch_normalization_1/moments/SquaredDifference_grad/sub*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*/
_output_shapes
:���������  @
�
Bgradients/batch_normalization_1/moments/SquaredDifference_grad/SumSumDgradients/batch_normalization_1/moments/SquaredDifference_grad/mul_1Tgradients/batch_normalization_1/moments/SquaredDifference_grad/BroadcastGradientArgs*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Fgradients/batch_normalization_1/moments/SquaredDifference_grad/ReshapeReshapeBgradients/batch_normalization_1/moments/SquaredDifference_grad/SumDgradients/batch_normalization_1/moments/SquaredDifference_grad/Shape*
Tshape0*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*/
_output_shapes
:���������  @
�
Dgradients/batch_normalization_1/moments/SquaredDifference_grad/Sum_1SumDgradients/batch_normalization_1/moments/SquaredDifference_grad/mul_1Vgradients/batch_normalization_1/moments/SquaredDifference_grad/BroadcastGradientArgs:1*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Hgradients/batch_normalization_1/moments/SquaredDifference_grad/Reshape_1ReshapeDgradients/batch_normalization_1/moments/SquaredDifference_grad/Sum_1Fgradients/batch_normalization_1/moments/SquaredDifference_grad/Shape_1*
Tshape0*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*&
_output_shapes
:@
�
Bgradients/batch_normalization_1/moments/SquaredDifference_grad/NegNegHgradients/batch_normalization_1/moments/SquaredDifference_grad/Reshape_1*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference*
T0*&
_output_shapes
:@
�
gradients/AddN_25AddN9gradients/batch_normalization_1/moments/mean_grad/Reshape9gradients/batch_normalization_1/moments/Square_grad/mul_1*
N*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*&
_output_shapes
:@
�
?gradients/batch_normalization_1/moments/shifted_mean_grad/ShapeShape!batch_normalization_1/moments/Sub*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
out_type0*
T0*
_output_shapes
:
�
>gradients/batch_normalization_1/moments/shifted_mean_grad/SizeConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
=gradients/batch_normalization_1/moments/shifted_mean_grad/addAdd<batch_normalization_1/moments/shifted_mean/reduction_indices>gradients/batch_normalization_1/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
:
�
=gradients/batch_normalization_1/moments/shifted_mean_grad/modFloorMod=gradients/batch_normalization_1/moments/shifted_mean_grad/add>gradients/batch_normalization_1/moments/shifted_mean_grad/Size*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/Shape_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
valueB:*
_output_shapes
:
�
Egradients/batch_normalization_1/moments/shifted_mean_grad/range/startConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B : *
_output_shapes
: 
�
Egradients/batch_normalization_1/moments/shifted_mean_grad/range/deltaConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
?gradients/batch_normalization_1/moments/shifted_mean_grad/rangeRangeEgradients/batch_normalization_1/moments/shifted_mean_grad/range/start>gradients/batch_normalization_1/moments/shifted_mean_grad/SizeEgradients/batch_normalization_1/moments/shifted_mean_grad/range/delta*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*

Tidx0*
_output_shapes
:
�
Dgradients/batch_normalization_1/moments/shifted_mean_grad/Fill/valueConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
>gradients/batch_normalization_1/moments/shifted_mean_grad/FillFillAgradients/batch_normalization_1/moments/shifted_mean_grad/Shape_1Dgradients/batch_normalization_1/moments/shifted_mean_grad/Fill/value*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
:
�
Ggradients/batch_normalization_1/moments/shifted_mean_grad/DynamicStitchDynamicStitch?gradients/batch_normalization_1/moments/shifted_mean_grad/range=gradients/batch_normalization_1/moments/shifted_mean_grad/mod?gradients/batch_normalization_1/moments/shifted_mean_grad/Shape>gradients/batch_normalization_1/moments/shifted_mean_grad/Fill*
N*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Cgradients/batch_normalization_1/moments/shifted_mean_grad/Maximum/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/MaximumMaximumGgradients/batch_normalization_1/moments/shifted_mean_grad/DynamicStitchCgradients/batch_normalization_1/moments/shifted_mean_grad/Maximum/y*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*#
_output_shapes
:���������
�
Bgradients/batch_normalization_1/moments/shifted_mean_grad/floordivFloorDiv?gradients/batch_normalization_1/moments/shifted_mean_grad/ShapeAgradients/batch_normalization_1/moments/shifted_mean_grad/Maximum*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
:
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_25Ggradients/batch_normalization_1/moments/shifted_mean_grad/DynamicStitch*
Tshape0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
:
�
>gradients/batch_normalization_1/moments/shifted_mean_grad/TileTileAgradients/batch_normalization_1/moments/shifted_mean_grad/ReshapeBgradients/batch_normalization_1/moments/shifted_mean_grad/floordiv*

Tmultiples0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*J
_output_shapes8
6:4������������������������������������
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/Shape_2Shape!batch_normalization_1/moments/Sub*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
out_type0*
T0*
_output_shapes
:
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/Shape_3Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*%
valueB"         @   *
_output_shapes
:
�
?gradients/batch_normalization_1/moments/shifted_mean_grad/ConstConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
valueB: *
_output_shapes
:
�
>gradients/batch_normalization_1/moments/shifted_mean_grad/ProdProdAgradients/batch_normalization_1/moments/shifted_mean_grad/Shape_2?gradients/batch_normalization_1/moments/shifted_mean_grad/Const*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/Const_1Const*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
valueB: *
_output_shapes
:
�
@gradients/batch_normalization_1/moments/shifted_mean_grad/Prod_1ProdAgradients/batch_normalization_1/moments/shifted_mean_grad/Shape_3Agradients/batch_normalization_1/moments/shifted_mean_grad/Const_1*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Egradients/batch_normalization_1/moments/shifted_mean_grad/Maximum_1/yConst*
dtype0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
value	B :*
_output_shapes
: 
�
Cgradients/batch_normalization_1/moments/shifted_mean_grad/Maximum_1Maximum@gradients/batch_normalization_1/moments/shifted_mean_grad/Prod_1Egradients/batch_normalization_1/moments/shifted_mean_grad/Maximum_1/y*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
: 
�
Dgradients/batch_normalization_1/moments/shifted_mean_grad/floordiv_1FloorDiv>gradients/batch_normalization_1/moments/shifted_mean_grad/ProdCgradients/batch_normalization_1/moments/shifted_mean_grad/Maximum_1*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*
_output_shapes
: 
�
>gradients/batch_normalization_1/moments/shifted_mean_grad/CastCastDgradients/batch_normalization_1/moments/shifted_mean_grad/floordiv_1*

DstT0*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*

SrcT0*
_output_shapes
: 
�
Agradients/batch_normalization_1/moments/shifted_mean_grad/truedivRealDiv>gradients/batch_normalization_1/moments/shifted_mean_grad/Tile>gradients/batch_normalization_1/moments/shifted_mean_grad/Cast*=
_class3
1/loc:@batch_normalization_1/moments/shifted_mean*
T0*/
_output_shapes
:���������  @
�
6gradients/batch_normalization_1/moments/Sub_grad/ShapeShapequantized_conv2d_1/BiasAdd*4
_class*
(&loc:@batch_normalization_1/moments/Sub*
out_type0*
T0*
_output_shapes
:
�
8gradients/batch_normalization_1/moments/Sub_grad/Shape_1Const*
dtype0*4
_class*
(&loc:@batch_normalization_1/moments/Sub*%
valueB"         @   *
_output_shapes
:
�
Fgradients/batch_normalization_1/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/batch_normalization_1/moments/Sub_grad/Shape8gradients/batch_normalization_1/moments/Sub_grad/Shape_1*4
_class*
(&loc:@batch_normalization_1/moments/Sub*
T0*2
_output_shapes 
:���������:���������
�
4gradients/batch_normalization_1/moments/Sub_grad/SumSumAgradients/batch_normalization_1/moments/shifted_mean_grad/truedivFgradients/batch_normalization_1/moments/Sub_grad/BroadcastGradientArgs*4
_class*
(&loc:@batch_normalization_1/moments/Sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
8gradients/batch_normalization_1/moments/Sub_grad/ReshapeReshape4gradients/batch_normalization_1/moments/Sub_grad/Sum6gradients/batch_normalization_1/moments/Sub_grad/Shape*
Tshape0*4
_class*
(&loc:@batch_normalization_1/moments/Sub*
T0*/
_output_shapes
:���������  @
�
6gradients/batch_normalization_1/moments/Sub_grad/Sum_1SumAgradients/batch_normalization_1/moments/shifted_mean_grad/truedivHgradients/batch_normalization_1/moments/Sub_grad/BroadcastGradientArgs:1*4
_class*
(&loc:@batch_normalization_1/moments/Sub*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
4gradients/batch_normalization_1/moments/Sub_grad/NegNeg6gradients/batch_normalization_1/moments/Sub_grad/Sum_1*4
_class*
(&loc:@batch_normalization_1/moments/Sub*
T0*
_output_shapes
:
�
:gradients/batch_normalization_1/moments/Sub_grad/Reshape_1Reshape4gradients/batch_normalization_1/moments/Sub_grad/Neg8gradients/batch_normalization_1/moments/Sub_grad/Shape_1*
Tshape0*4
_class*
(&loc:@batch_normalization_1/moments/Sub*
T0*&
_output_shapes
:@
�
gradients/AddN_26AddN;gradients/batch_normalization_1/moments/mean_grad/Reshape_1Bgradients/batch_normalization_1/moments/SquaredDifference_grad/Neg:gradients/batch_normalization_1/moments/Sub_grad/Reshape_1*
N*5
_class+
)'loc:@batch_normalization_1/moments/mean*
T0*&
_output_shapes
:@
�
gradients/AddN_27AddNJgradients/batch_normalization_1/cond/batchnorm/mul_1/Switch_grad/cond_grad<gradients/batch_normalization_1/batchnorm/mul_1_grad/ReshapeFgradients/batch_normalization_1/moments/SquaredDifference_grad/Reshape8gradients/batch_normalization_1/moments/Sub_grad/Reshape*
N*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
T0*/
_output_shapes
:���������  @
�
5gradients/quantized_conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_27*-
_class#
!loc:@quantized_conv2d_1/BiasAdd*
data_formatNHWC*
T0*
_output_shapes
:@
�
-gradients/quantized_conv2d_1/mul_4_grad/ShapeShapequantized_conv2d_1/sub_2*+
_class!
loc:@quantized_conv2d_1/mul_4*
out_type0*
T0*
_output_shapes
:
�
/gradients/quantized_conv2d_1/mul_4_grad/Shape_1Const*
dtype0*+
_class!
loc:@quantized_conv2d_1/mul_4*
valueB *
_output_shapes
: 
�
=gradients/quantized_conv2d_1/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_1/mul_4_grad/Shape/gradients/quantized_conv2d_1/mul_4_grad/Shape_1*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_1/mul_4_grad/mulMulgradients/AddN_27quantized_conv2d_1/mul_4/y*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*/
_output_shapes
:���������  @
�
+gradients/quantized_conv2d_1/mul_4_grad/SumSum+gradients/quantized_conv2d_1/mul_4_grad/mul=gradients/quantized_conv2d_1/mul_4_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_1/mul_4*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_1/mul_4_grad/ReshapeReshape+gradients/quantized_conv2d_1/mul_4_grad/Sum-gradients/quantized_conv2d_1/mul_4_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*/
_output_shapes
:���������  @
�
-gradients/quantized_conv2d_1/mul_4_grad/mul_1Mulquantized_conv2d_1/sub_2gradients/AddN_27*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*/
_output_shapes
:���������  @
�
-gradients/quantized_conv2d_1/mul_4_grad/Sum_1Sum-gradients/quantized_conv2d_1/mul_4_grad/mul_1?gradients/quantized_conv2d_1/mul_4_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_1/mul_4*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/quantized_conv2d_1/mul_4_grad/Reshape_1Reshape-gradients/quantized_conv2d_1/mul_4_grad/Sum_1/gradients/quantized_conv2d_1/mul_4_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_1/mul_4*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_1/sub_2_grad/ShapeShapequantized_conv2d_1/convolution*+
_class!
loc:@quantized_conv2d_1/sub_2*
out_type0*
T0*
_output_shapes
:
�
/gradients/quantized_conv2d_1/sub_2_grad/Shape_1Shapequantized_conv2d_1/mul_3*+
_class!
loc:@quantized_conv2d_1/sub_2*
out_type0*
T0*
_output_shapes
:
�
=gradients/quantized_conv2d_1/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_1/sub_2_grad/Shape/gradients/quantized_conv2d_1/sub_2_grad/Shape_1*+
_class!
loc:@quantized_conv2d_1/sub_2*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_1/sub_2_grad/SumSum/gradients/quantized_conv2d_1/mul_4_grad/Reshape=gradients/quantized_conv2d_1/sub_2_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_1/sub_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_1/sub_2_grad/ReshapeReshape+gradients/quantized_conv2d_1/sub_2_grad/Sum-gradients/quantized_conv2d_1/sub_2_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_1/sub_2*
T0*/
_output_shapes
:���������  @
�
-gradients/quantized_conv2d_1/sub_2_grad/Sum_1Sum/gradients/quantized_conv2d_1/mul_4_grad/Reshape?gradients/quantized_conv2d_1/sub_2_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_1/sub_2*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
+gradients/quantized_conv2d_1/sub_2_grad/NegNeg-gradients/quantized_conv2d_1/sub_2_grad/Sum_1*+
_class!
loc:@quantized_conv2d_1/sub_2*
T0*
_output_shapes
:
�
1gradients/quantized_conv2d_1/sub_2_grad/Reshape_1Reshape+gradients/quantized_conv2d_1/sub_2_grad/Neg/gradients/quantized_conv2d_1/sub_2_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_1/sub_2*
T0*/
_output_shapes
:���������  @
�
-gradients/quantized_conv2d_1/mul_3_grad/ShapeConst*
dtype0*+
_class!
loc:@quantized_conv2d_1/mul_3*
valueB *
_output_shapes
: 
�
/gradients/quantized_conv2d_1/mul_3_grad/Shape_1Shape!quantized_conv2d_1/StopGradient_2*+
_class!
loc:@quantized_conv2d_1/mul_3*
out_type0*
T0*
_output_shapes
:
�
=gradients/quantized_conv2d_1/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/quantized_conv2d_1/mul_3_grad/Shape/gradients/quantized_conv2d_1/mul_3_grad/Shape_1*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*2
_output_shapes 
:���������:���������
�
+gradients/quantized_conv2d_1/mul_3_grad/mulMul1gradients/quantized_conv2d_1/sub_2_grad/Reshape_1!quantized_conv2d_1/StopGradient_2*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*/
_output_shapes
:���������  @
�
+gradients/quantized_conv2d_1/mul_3_grad/SumSum+gradients/quantized_conv2d_1/mul_3_grad/mul=gradients/quantized_conv2d_1/mul_3_grad/BroadcastGradientArgs*+
_class!
loc:@quantized_conv2d_1/mul_3*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_1/mul_3_grad/ReshapeReshape+gradients/quantized_conv2d_1/mul_3_grad/Sum-gradients/quantized_conv2d_1/mul_3_grad/Shape*
Tshape0*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*
_output_shapes
: 
�
-gradients/quantized_conv2d_1/mul_3_grad/mul_1Mulquantized_conv2d_1/mul_3/x1gradients/quantized_conv2d_1/sub_2_grad/Reshape_1*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*/
_output_shapes
:���������  @
�
-gradients/quantized_conv2d_1/mul_3_grad/Sum_1Sum-gradients/quantized_conv2d_1/mul_3_grad/mul_1?gradients/quantized_conv2d_1/mul_3_grad/BroadcastGradientArgs:1*+
_class!
loc:@quantized_conv2d_1/mul_3*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
1gradients/quantized_conv2d_1/mul_3_grad/Reshape_1Reshape-gradients/quantized_conv2d_1/mul_3_grad/Sum_1/gradients/quantized_conv2d_1/mul_3_grad/Shape_1*
Tshape0*+
_class!
loc:@quantized_conv2d_1/mul_3*
T0*/
_output_shapes
:���������  @
�
3gradients/quantized_conv2d_1/convolution_grad/ShapeShapequantized_conv2d_1/mul_2*1
_class'
%#loc:@quantized_conv2d_1/convolution*
out_type0*
T0*
_output_shapes
:
�
Agradients/quantized_conv2d_1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput3gradients/quantized_conv2d_1/convolution_grad/Shapequantized_conv2d_1/div/gradients/quantized_conv2d_1/sub_2_grad/Reshape*/
_output_shapes
:���������  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_1/convolution
�
5gradients/quantized_conv2d_1/convolution_grad/Shape_1Const*
dtype0*1
_class'
%#loc:@quantized_conv2d_1/convolution*%
valueB"         @   *
_output_shapes
:
�
Bgradients/quantized_conv2d_1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterquantized_conv2d_1/mul_25gradients/quantized_conv2d_1/convolution_grad/Shape_1/gradients/quantized_conv2d_1/sub_2_grad/Reshape*&
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*1
_class'
%#loc:@quantized_conv2d_1/convolution
�
+gradients/quantized_conv2d_1/div_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_1/div*%
valueB"         @   *
_output_shapes
:
�
-gradients/quantized_conv2d_1/div_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_1/div*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_1/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_1/div_grad/Shape-gradients/quantized_conv2d_1/div_grad/Shape_1*)
_class
loc:@quantized_conv2d_1/div*
T0*2
_output_shapes 
:���������:���������
�
-gradients/quantized_conv2d_1/div_grad/RealDivRealDivBgradients/quantized_conv2d_1/convolution_grad/Conv2DBackpropFilterquantized_conv2d_1/div/y*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@
�
)gradients/quantized_conv2d_1/div_grad/SumSum-gradients/quantized_conv2d_1/div_grad/RealDiv;gradients/quantized_conv2d_1/div_grad/BroadcastGradientArgs*)
_class
loc:@quantized_conv2d_1/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
-gradients/quantized_conv2d_1/div_grad/ReshapeReshape)gradients/quantized_conv2d_1/div_grad/Sum+gradients/quantized_conv2d_1/div_grad/Shape*
Tshape0*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@
�
)gradients/quantized_conv2d_1/div_grad/NegNeg quantized_conv2d_1/clip_by_value*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@
�
/gradients/quantized_conv2d_1/div_grad/RealDiv_1RealDiv)gradients/quantized_conv2d_1/div_grad/Negquantized_conv2d_1/div/y*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@
�
/gradients/quantized_conv2d_1/div_grad/RealDiv_2RealDiv/gradients/quantized_conv2d_1/div_grad/RealDiv_1quantized_conv2d_1/div/y*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@
�
)gradients/quantized_conv2d_1/div_grad/mulMulBgradients/quantized_conv2d_1/convolution_grad/Conv2DBackpropFilter/gradients/quantized_conv2d_1/div_grad/RealDiv_2*)
_class
loc:@quantized_conv2d_1/div*
T0*&
_output_shapes
:@
�
+gradients/quantized_conv2d_1/div_grad/Sum_1Sum)gradients/quantized_conv2d_1/div_grad/mul=gradients/quantized_conv2d_1/div_grad/BroadcastGradientArgs:1*)
_class
loc:@quantized_conv2d_1/div*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_1/div_grad/Reshape_1Reshape+gradients/quantized_conv2d_1/div_grad/Sum_1-gradients/quantized_conv2d_1/div_grad/Shape_1*
Tshape0*)
_class
loc:@quantized_conv2d_1/div*
T0*
_output_shapes
: 
�
5gradients/quantized_conv2d_1/clip_by_value_grad/ShapeConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*%
valueB"         @   *
_output_shapes
:
�
7gradients/quantized_conv2d_1/clip_by_value_grad/Shape_1Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
valueB *
_output_shapes
: 
�
7gradients/quantized_conv2d_1/clip_by_value_grad/Shape_2Const*
dtype0*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*%
valueB"         @   *
_output_shapes
:
�
;gradients/quantized_conv2d_1/clip_by_value_grad/zeros/ConstConst*
dtype0*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
valueB
 *    *
_output_shapes
: 
�
5gradients/quantized_conv2d_1/clip_by_value_grad/zerosFill7gradients/quantized_conv2d_1/clip_by_value_grad/Shape_2;gradients/quantized_conv2d_1/clip_by_value_grad/zeros/Const*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*&
_output_shapes
:@
�
<gradients/quantized_conv2d_1/clip_by_value_grad/GreaterEqualGreaterEqual(quantized_conv2d_1/clip_by_value/Minimumquantized_conv2d_1/Cast*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*&
_output_shapes
:@
�
Egradients/quantized_conv2d_1/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients/quantized_conv2d_1/clip_by_value_grad/Shape7gradients/quantized_conv2d_1/clip_by_value_grad/Shape_1*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
6gradients/quantized_conv2d_1/clip_by_value_grad/SelectSelect<gradients/quantized_conv2d_1/clip_by_value_grad/GreaterEqual-gradients/quantized_conv2d_1/div_grad/Reshape5gradients/quantized_conv2d_1/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*&
_output_shapes
:@
�
:gradients/quantized_conv2d_1/clip_by_value_grad/LogicalNot
LogicalNot<gradients/quantized_conv2d_1/clip_by_value_grad/GreaterEqual*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*&
_output_shapes
:@
�
8gradients/quantized_conv2d_1/clip_by_value_grad/Select_1Select:gradients/quantized_conv2d_1/clip_by_value_grad/LogicalNot-gradients/quantized_conv2d_1/div_grad/Reshape5gradients/quantized_conv2d_1/clip_by_value_grad/zeros*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*&
_output_shapes
:@
�
3gradients/quantized_conv2d_1/clip_by_value_grad/SumSum6gradients/quantized_conv2d_1/clip_by_value_grad/SelectEgradients/quantized_conv2d_1/clip_by_value_grad/BroadcastGradientArgs*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
7gradients/quantized_conv2d_1/clip_by_value_grad/ReshapeReshape3gradients/quantized_conv2d_1/clip_by_value_grad/Sum5gradients/quantized_conv2d_1/clip_by_value_grad/Shape*
Tshape0*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*&
_output_shapes
:@
�
5gradients/quantized_conv2d_1/clip_by_value_grad/Sum_1Sum8gradients/quantized_conv2d_1/clip_by_value_grad/Select_1Ggradients/quantized_conv2d_1/clip_by_value_grad/BroadcastGradientArgs:1*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
9gradients/quantized_conv2d_1/clip_by_value_grad/Reshape_1Reshape5gradients/quantized_conv2d_1/clip_by_value_grad/Sum_17gradients/quantized_conv2d_1/clip_by_value_grad/Shape_1*
Tshape0*3
_class)
'%loc:@quantized_conv2d_1/clip_by_value*
T0*
_output_shapes
: 
�
=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/ShapeConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*%
valueB"         @   *
_output_shapes
:
�
?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
valueB *
_output_shapes
: 
�
?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape_2Const*
dtype0*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*%
valueB"         @   *
_output_shapes
:
�
Cgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
�
=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/zerosFill?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape_2Cgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/zeros/Const*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*&
_output_shapes
:@
�
Agradients/quantized_conv2d_1/clip_by_value/Minimum_grad/LessEqual	LessEqualquantized_conv2d_1/addquantized_conv2d_1/Cast_1*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*&
_output_shapes
:@
�
Mgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape_1*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
>gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/SelectSelectAgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/LessEqual7gradients/quantized_conv2d_1/clip_by_value_grad/Reshape=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*&
_output_shapes
:@
�
Bgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/LogicalNot
LogicalNotAgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/LessEqual*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*&
_output_shapes
:@
�
@gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Select_1SelectBgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/LogicalNot7gradients/quantized_conv2d_1/clip_by_value_grad/Reshape=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/zeros*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*&
_output_shapes
:@
�
;gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/SumSum>gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/SelectMgradients/quantized_conv2d_1/clip_by_value/Minimum_grad/BroadcastGradientArgs*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/ReshapeReshape;gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Sum=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape*
Tshape0*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*&
_output_shapes
:@
�
=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Sum_1Sum@gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Select_1Ogradients/quantized_conv2d_1/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Agradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Reshape_1Reshape=gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Sum_1?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Shape_1*
Tshape0*;
_class1
/-loc:@quantized_conv2d_1/clip_by_value/Minimum*
T0*
_output_shapes
: 
�
+gradients/quantized_conv2d_1/add_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_1/add*%
valueB"         @   *
_output_shapes
:
�
-gradients/quantized_conv2d_1/add_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_1/add*%
valueB"         @   *
_output_shapes
:
�
;gradients/quantized_conv2d_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_1/add_grad/Shape-gradients/quantized_conv2d_1/add_grad/Shape_1*)
_class
loc:@quantized_conv2d_1/add*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_1/add_grad/SumSum?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Reshape;gradients/quantized_conv2d_1/add_grad/BroadcastGradientArgs*)
_class
loc:@quantized_conv2d_1/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
-gradients/quantized_conv2d_1/add_grad/ReshapeReshape)gradients/quantized_conv2d_1/add_grad/Sum+gradients/quantized_conv2d_1/add_grad/Shape*
Tshape0*)
_class
loc:@quantized_conv2d_1/add*
T0*&
_output_shapes
:@
�
+gradients/quantized_conv2d_1/add_grad/Sum_1Sum?gradients/quantized_conv2d_1/clip_by_value/Minimum_grad/Reshape=gradients/quantized_conv2d_1/add_grad/BroadcastGradientArgs:1*)
_class
loc:@quantized_conv2d_1/add*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_1/add_grad/Reshape_1Reshape+gradients/quantized_conv2d_1/add_grad/Sum_1-gradients/quantized_conv2d_1/add_grad/Shape_1*
Tshape0*)
_class
loc:@quantized_conv2d_1/add*
T0*&
_output_shapes
:@
�
+gradients/quantized_conv2d_1/mul_grad/ShapeConst*
dtype0*)
_class
loc:@quantized_conv2d_1/mul*%
valueB"         @   *
_output_shapes
:
�
-gradients/quantized_conv2d_1/mul_grad/Shape_1Const*
dtype0*)
_class
loc:@quantized_conv2d_1/mul*
valueB *
_output_shapes
: 
�
;gradients/quantized_conv2d_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/quantized_conv2d_1/mul_grad/Shape-gradients/quantized_conv2d_1/mul_grad/Shape_1*)
_class
loc:@quantized_conv2d_1/mul*
T0*2
_output_shapes 
:���������:���������
�
)gradients/quantized_conv2d_1/mul_grad/mulMul-gradients/quantized_conv2d_1/add_grad/Reshapequantized_conv2d_1/mul/y*)
_class
loc:@quantized_conv2d_1/mul*
T0*&
_output_shapes
:@
�
)gradients/quantized_conv2d_1/mul_grad/SumSum)gradients/quantized_conv2d_1/mul_grad/mul;gradients/quantized_conv2d_1/mul_grad/BroadcastGradientArgs*)
_class
loc:@quantized_conv2d_1/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
-gradients/quantized_conv2d_1/mul_grad/ReshapeReshape)gradients/quantized_conv2d_1/mul_grad/Sum+gradients/quantized_conv2d_1/mul_grad/Shape*
Tshape0*)
_class
loc:@quantized_conv2d_1/mul*
T0*&
_output_shapes
:@
�
+gradients/quantized_conv2d_1/mul_grad/mul_1Mulquantized_conv2d_1/kernel/read-gradients/quantized_conv2d_1/add_grad/Reshape*)
_class
loc:@quantized_conv2d_1/mul*
T0*&
_output_shapes
:@
�
+gradients/quantized_conv2d_1/mul_grad/Sum_1Sum+gradients/quantized_conv2d_1/mul_grad/mul_1=gradients/quantized_conv2d_1/mul_grad/BroadcastGradientArgs:1*)
_class
loc:@quantized_conv2d_1/mul*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
/gradients/quantized_conv2d_1/mul_grad/Reshape_1Reshape+gradients/quantized_conv2d_1/mul_grad/Sum_1-gradients/quantized_conv2d_1/mul_grad/Shape_1*
Tshape0*)
_class
loc:@quantized_conv2d_1/mul*
T0*
_output_shapes
: 
J
mul_3Mul
decay/readiterations/read*
T0*
_output_shapes
: 
L
add_3/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
=
add_3Addadd_3/xmul_3*
T0*
_output_shapes
: 
L
div_1/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
A
div_1RealDivdiv_1/xadd_3*
T0*
_output_shapes
: 
=
mul_4Mullr/readdiv_1*
T0*
_output_shapes
: 
T
AssignAdd/valueConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
	AssignAdd	AssignAdd
iterationsAssignAdd/value*
_class
loc:@iterations*
use_locking( *
T0*
_output_shapes
: 
T
Const_2Const*
dtype0*
valueB@*    *
_output_shapes
:@
t
Variable
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
Variable/AssignAssignVariableConst_2*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0*
_output_shapes
:@
e
Variable/readIdentityVariable*
_class
loc:@Variable*
T0*
_output_shapes
:@
T
Const_3Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_1
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
Variable_1/AssignAssign
Variable_1Const_3*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0*
_output_shapes
:@
k
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0*
_output_shapes
:@
T
Const_4Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_2
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
Variable_2/AssignAssign
Variable_2Const_4*
validate_shape(*
_class
loc:@Variable_2*
use_locking(*
T0*
_output_shapes
:@
k
Variable_2/readIdentity
Variable_2*
_class
loc:@Variable_2*
T0*
_output_shapes
:@
T
Const_5Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_3
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
Variable_3/AssignAssign
Variable_3Const_5*
validate_shape(*
_class
loc:@Variable_3*
use_locking(*
T0*
_output_shapes
:@
k
Variable_3/readIdentity
Variable_3*
_class
loc:@Variable_3*
T0*
_output_shapes
:@
T
Const_6Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_4
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
Variable_4/AssignAssign
Variable_4Const_6*
validate_shape(*
_class
loc:@Variable_4*
use_locking(*
T0*
_output_shapes
:@
k
Variable_4/readIdentity
Variable_4*
_class
loc:@Variable_4*
T0*
_output_shapes
:@
T
Const_7Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_5
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
Variable_5/AssignAssign
Variable_5Const_7*
validate_shape(*
_class
loc:@Variable_5*
use_locking(*
T0*
_output_shapes
:@
k
Variable_5/readIdentity
Variable_5*
_class
loc:@Variable_5*
T0*
_output_shapes
:@
T
Const_8Const*
dtype0*
valueB
*    *
_output_shapes
:

v

Variable_6
VariableV2*
dtype0*
shape:
*
shared_name *
	container *
_output_shapes
:

�
Variable_6/AssignAssign
Variable_6Const_8*
validate_shape(*
_class
loc:@Variable_6*
use_locking(*
T0*
_output_shapes
:

k
Variable_6/readIdentity
Variable_6*
_class
loc:@Variable_6*
T0*
_output_shapes
:

T
Const_9Const*
dtype0*
valueB
*    *
_output_shapes
:

v

Variable_7
VariableV2*
dtype0*
shape:
*
shared_name *
	container *
_output_shapes
:

�
Variable_7/AssignAssign
Variable_7Const_9*
validate_shape(*
_class
loc:@Variable_7*
use_locking(*
T0*
_output_shapes
:

k
Variable_7/readIdentity
Variable_7*
_class
loc:@Variable_7*
T0*
_output_shapes
:

_
Const_10Const*
dtype0*
valueB	�
*    *
_output_shapes
:	�

�

Variable_8
VariableV2*
dtype0*
shape:	�
*
shared_name *
	container *
_output_shapes
:	�

�
Variable_8/AssignAssign
Variable_8Const_10*
validate_shape(*
_class
loc:@Variable_8*
use_locking(*
T0*
_output_shapes
:	�

p
Variable_8/readIdentity
Variable_8*
_class
loc:@Variable_8*
T0*
_output_shapes
:	�

U
Const_11Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_9
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
Variable_9/AssignAssign
Variable_9Const_11*
validate_shape(*
_class
loc:@Variable_9*
use_locking(*
T0*
_output_shapes
:@
k
Variable_9/readIdentity
Variable_9*
_class
loc:@Variable_9*
T0*
_output_shapes
:@
m
Const_12Const*
dtype0*%
valueB@*    *&
_output_shapes
:@
�
Variable_10
VariableV2*
dtype0*
shape:@*
shared_name *
	container *&
_output_shapes
:@
�
Variable_10/AssignAssignVariable_10Const_12*
validate_shape(*
_class
loc:@Variable_10*
use_locking(*
T0*&
_output_shapes
:@
z
Variable_10/readIdentityVariable_10*
_class
loc:@Variable_10*
T0*&
_output_shapes
:@
U
Const_13Const*
dtype0*
valueB@*    *
_output_shapes
:@
w
Variable_11
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
Variable_11/AssignAssignVariable_11Const_13*
validate_shape(*
_class
loc:@Variable_11*
use_locking(*
T0*
_output_shapes
:@
n
Variable_11/readIdentityVariable_11*
_class
loc:@Variable_11*
T0*
_output_shapes
:@
m
Const_14Const*
dtype0*%
valueB@@*    *&
_output_shapes
:@@
�
Variable_12
VariableV2*
dtype0*
shape:@@*
shared_name *
	container *&
_output_shapes
:@@
�
Variable_12/AssignAssignVariable_12Const_14*
validate_shape(*
_class
loc:@Variable_12*
use_locking(*
T0*&
_output_shapes
:@@
z
Variable_12/readIdentityVariable_12*
_class
loc:@Variable_12*
T0*&
_output_shapes
:@@
U
Const_15Const*
dtype0*
valueB@*    *
_output_shapes
:@
w
Variable_13
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
�
Variable_13/AssignAssignVariable_13Const_15*
validate_shape(*
_class
loc:@Variable_13*
use_locking(*
T0*
_output_shapes
:@
n
Variable_13/readIdentityVariable_13*
_class
loc:@Variable_13*
T0*
_output_shapes
:@
m
Const_16Const*
dtype0*%
valueB@@*    *&
_output_shapes
:@@
�
Variable_14
VariableV2*
dtype0*
shape:@@*
shared_name *
	container *&
_output_shapes
:@@
�
Variable_14/AssignAssignVariable_14Const_16*
validate_shape(*
_class
loc:@Variable_14*
use_locking(*
T0*&
_output_shapes
:@@
z
Variable_14/readIdentityVariable_14*
_class
loc:@Variable_14*
T0*&
_output_shapes
:@@
O
mul_5Mulmomentum/readVariable/read*
T0*
_output_shapes
:@
K
mul_6Mulmul_4gradients/AddN_22*
T0*
_output_shapes
:@
?
sub_1Submul_5mul_6*
T0*
_output_shapes
:@
�
AssignAssignVariablesub_1*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0*
_output_shapes
:@
G
mul_7Mulmomentum/readsub_1*
T0*
_output_shapes
:@
Y
add_4Addbatch_normalization_1/beta/readmul_7*
T0*
_output_shapes
:@
K
mul_8Mulmul_4gradients/AddN_22*
T0*
_output_shapes
:@
?
sub_2Subadd_4mul_8*
T0*
_output_shapes
:@
�
Assign_1Assignbatch_normalization_1/betasub_2*
validate_shape(*-
_class#
!loc:@batch_normalization_1/beta*
use_locking(*
T0*
_output_shapes
:@
Q
mul_9Mulmomentum/readVariable_1/read*
T0*
_output_shapes
:@
L
mul_10Mulmul_4gradients/AddN_24*
T0*
_output_shapes
:@
@
sub_3Submul_9mul_10*
T0*
_output_shapes
:@
�
Assign_2Assign
Variable_1sub_3*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0*
_output_shapes
:@
H
mul_11Mulmomentum/readsub_3*
T0*
_output_shapes
:@
[
add_5Add batch_normalization_1/gamma/readmul_11*
T0*
_output_shapes
:@
L
mul_12Mulmul_4gradients/AddN_24*
T0*
_output_shapes
:@
@
sub_4Subadd_5mul_12*
T0*
_output_shapes
:@
�
Assign_3Assignbatch_normalization_1/gammasub_4*
validate_shape(*.
_class$
" loc:@batch_normalization_1/gamma*
use_locking(*
T0*
_output_shapes
:@
R
mul_13Mulmomentum/readVariable_2/read*
T0*
_output_shapes
:@
L
mul_14Mulmul_4gradients/AddN_15*
T0*
_output_shapes
:@
A
sub_5Submul_13mul_14*
T0*
_output_shapes
:@
�
Assign_4Assign
Variable_2sub_5*
validate_shape(*
_class
loc:@Variable_2*
use_locking(*
T0*
_output_shapes
:@
H
mul_15Mulmomentum/readsub_5*
T0*
_output_shapes
:@
Z
add_6Addbatch_normalization_2/beta/readmul_15*
T0*
_output_shapes
:@
L
mul_16Mulmul_4gradients/AddN_15*
T0*
_output_shapes
:@
@
sub_6Subadd_6mul_16*
T0*
_output_shapes
:@
�
Assign_5Assignbatch_normalization_2/betasub_6*
validate_shape(*-
_class#
!loc:@batch_normalization_2/beta*
use_locking(*
T0*
_output_shapes
:@
R
mul_17Mulmomentum/readVariable_3/read*
T0*
_output_shapes
:@
L
mul_18Mulmul_4gradients/AddN_17*
T0*
_output_shapes
:@
A
sub_7Submul_17mul_18*
T0*
_output_shapes
:@
�
Assign_6Assign
Variable_3sub_7*
validate_shape(*
_class
loc:@Variable_3*
use_locking(*
T0*
_output_shapes
:@
H
mul_19Mulmomentum/readsub_7*
T0*
_output_shapes
:@
[
add_7Add batch_normalization_2/gamma/readmul_19*
T0*
_output_shapes
:@
L
mul_20Mulmul_4gradients/AddN_17*
T0*
_output_shapes
:@
@
sub_8Subadd_7mul_20*
T0*
_output_shapes
:@
�
Assign_7Assignbatch_normalization_2/gammasub_8*
validate_shape(*.
_class$
" loc:@batch_normalization_2/gamma*
use_locking(*
T0*
_output_shapes
:@
R
mul_21Mulmomentum/readVariable_4/read*
T0*
_output_shapes
:@
K
mul_22Mulmul_4gradients/AddN_8*
T0*
_output_shapes
:@
A
sub_9Submul_21mul_22*
T0*
_output_shapes
:@
�
Assign_8Assign
Variable_4sub_9*
validate_shape(*
_class
loc:@Variable_4*
use_locking(*
T0*
_output_shapes
:@
H
mul_23Mulmomentum/readsub_9*
T0*
_output_shapes
:@
Z
add_8Addbatch_normalization_3/beta/readmul_23*
T0*
_output_shapes
:@
K
mul_24Mulmul_4gradients/AddN_8*
T0*
_output_shapes
:@
A
sub_10Subadd_8mul_24*
T0*
_output_shapes
:@
�
Assign_9Assignbatch_normalization_3/betasub_10*
validate_shape(*-
_class#
!loc:@batch_normalization_3/beta*
use_locking(*
T0*
_output_shapes
:@
R
mul_25Mulmomentum/readVariable_5/read*
T0*
_output_shapes
:@
L
mul_26Mulmul_4gradients/AddN_10*
T0*
_output_shapes
:@
B
sub_11Submul_25mul_26*
T0*
_output_shapes
:@
�
	Assign_10Assign
Variable_5sub_11*
validate_shape(*
_class
loc:@Variable_5*
use_locking(*
T0*
_output_shapes
:@
I
mul_27Mulmomentum/readsub_11*
T0*
_output_shapes
:@
[
add_9Add batch_normalization_3/gamma/readmul_27*
T0*
_output_shapes
:@
L
mul_28Mulmul_4gradients/AddN_10*
T0*
_output_shapes
:@
A
sub_12Subadd_9mul_28*
T0*
_output_shapes
:@
�
	Assign_11Assignbatch_normalization_3/gammasub_12*
validate_shape(*.
_class$
" loc:@batch_normalization_3/gamma*
use_locking(*
T0*
_output_shapes
:@
R
mul_29Mulmomentum/readVariable_6/read*
T0*
_output_shapes
:

K
mul_30Mulmul_4gradients/AddN_1*
T0*
_output_shapes
:

B
sub_13Submul_29mul_30*
T0*
_output_shapes
:

�
	Assign_12Assign
Variable_6sub_13*
validate_shape(*
_class
loc:@Variable_6*
use_locking(*
T0*
_output_shapes
:

I
mul_31Mulmomentum/readsub_13*
T0*
_output_shapes
:

[
add_10Addbatch_normalization_4/beta/readmul_31*
T0*
_output_shapes
:

K
mul_32Mulmul_4gradients/AddN_1*
T0*
_output_shapes
:

B
sub_14Subadd_10mul_32*
T0*
_output_shapes
:

�
	Assign_13Assignbatch_normalization_4/betasub_14*
validate_shape(*-
_class#
!loc:@batch_normalization_4/beta*
use_locking(*
T0*
_output_shapes
:

R
mul_33Mulmomentum/readVariable_7/read*
T0*
_output_shapes
:

K
mul_34Mulmul_4gradients/AddN_3*
T0*
_output_shapes
:

B
sub_15Submul_33mul_34*
T0*
_output_shapes
:

�
	Assign_14Assign
Variable_7sub_15*
validate_shape(*
_class
loc:@Variable_7*
use_locking(*
T0*
_output_shapes
:

I
mul_35Mulmomentum/readsub_15*
T0*
_output_shapes
:

\
add_11Add batch_normalization_4/gamma/readmul_35*
T0*
_output_shapes
:

K
mul_36Mulmul_4gradients/AddN_3*
T0*
_output_shapes
:

B
sub_16Subadd_11mul_36*
T0*
_output_shapes
:

�
	Assign_15Assignbatch_normalization_4/gammasub_16*
validate_shape(*.
_class$
" loc:@batch_normalization_4/gamma*
use_locking(*
T0*
_output_shapes
:

W
mul_37Mulmomentum/readVariable_8/read*
T0*
_output_shapes
:	�

f
mul_38Mulmul_4&gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�

G
sub_17Submul_37mul_38*
T0*
_output_shapes
:	�

�
	Assign_16Assign
Variable_8sub_17*
validate_shape(*
_class
loc:@Variable_8*
use_locking(*
T0*
_output_shapes
:	�

N
mul_39Mulmomentum/readsub_17*
T0*
_output_shapes
:	�

T
add_12Adddense_1/kernel/readmul_39*
T0*
_output_shapes
:	�

f
mul_40Mulmul_4&gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�

G
sub_18Subadd_12mul_40*
T0*
_output_shapes
:	�

�
	Assign_17Assigndense_1/kernelsub_18*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0*
_output_shapes
:	�

R
mul_41Mulmomentum/readVariable_9/read*
T0*
_output_shapes
:@
p
mul_42Mulmul_45gradients/quantized_conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_19Submul_41mul_42*
T0*
_output_shapes
:@
�
	Assign_18Assign
Variable_9sub_19*
validate_shape(*
_class
loc:@Variable_9*
use_locking(*
T0*
_output_shapes
:@
I
mul_43Mulmomentum/readsub_19*
T0*
_output_shapes
:@
X
add_13Addquantized_conv2d_1/bias/readmul_43*
T0*
_output_shapes
:@
p
mul_44Mulmul_45gradients/quantized_conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_20Subadd_13mul_44*
T0*
_output_shapes
:@
�
	Assign_19Assignquantized_conv2d_1/biassub_20*
validate_shape(**
_class 
loc:@quantized_conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
_
mul_45Mulmomentum/readVariable_10/read*
T0*&
_output_shapes
:@
t
mul_46Mulmul_4-gradients/quantized_conv2d_1/mul_grad/Reshape*
T0*&
_output_shapes
:@
N
sub_21Submul_45mul_46*
T0*&
_output_shapes
:@
�
	Assign_20AssignVariable_10sub_21*
validate_shape(*
_class
loc:@Variable_10*
use_locking(*
T0*&
_output_shapes
:@
U
mul_47Mulmomentum/readsub_21*
T0*&
_output_shapes
:@
f
add_14Addquantized_conv2d_1/kernel/readmul_47*
T0*&
_output_shapes
:@
t
mul_48Mulmul_4-gradients/quantized_conv2d_1/mul_grad/Reshape*
T0*&
_output_shapes
:@
N
sub_22Subadd_14mul_48*
T0*&
_output_shapes
:@
S
Const_17Const*
dtype0*
valueB :
���������*
_output_shapes
: 
H
Cast_1CastConst_17*

DstT0*

SrcT0*
_output_shapes
: 
J
Const_18Const*
dtype0*
value	B :*
_output_shapes
: 
H
Cast_2CastConst_18*

DstT0*

SrcT0*
_output_shapes
: 
a
clip_by_value/MinimumMinimumsub_22Cast_2*
T0*&
_output_shapes
:@
h
clip_by_valueMaximumclip_by_value/MinimumCast_1*
T0*&
_output_shapes
:@
�
	Assign_21Assignquantized_conv2d_1/kernelclip_by_value*
validate_shape(*,
_class"
 loc:@quantized_conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
:@
S
mul_49Mulmomentum/readVariable_11/read*
T0*
_output_shapes
:@
p
mul_50Mulmul_45gradients/quantized_conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_23Submul_49mul_50*
T0*
_output_shapes
:@
�
	Assign_22AssignVariable_11sub_23*
validate_shape(*
_class
loc:@Variable_11*
use_locking(*
T0*
_output_shapes
:@
I
mul_51Mulmomentum/readsub_23*
T0*
_output_shapes
:@
X
add_15Addquantized_conv2d_2/bias/readmul_51*
T0*
_output_shapes
:@
p
mul_52Mulmul_45gradients/quantized_conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_24Subadd_15mul_52*
T0*
_output_shapes
:@
�
	Assign_23Assignquantized_conv2d_2/biassub_24*
validate_shape(**
_class 
loc:@quantized_conv2d_2/bias*
use_locking(*
T0*
_output_shapes
:@
_
mul_53Mulmomentum/readVariable_12/read*
T0*&
_output_shapes
:@@
t
mul_54Mulmul_4-gradients/quantized_conv2d_2/mul_grad/Reshape*
T0*&
_output_shapes
:@@
N
sub_25Submul_53mul_54*
T0*&
_output_shapes
:@@
�
	Assign_24AssignVariable_12sub_25*
validate_shape(*
_class
loc:@Variable_12*
use_locking(*
T0*&
_output_shapes
:@@
U
mul_55Mulmomentum/readsub_25*
T0*&
_output_shapes
:@@
f
add_16Addquantized_conv2d_2/kernel/readmul_55*
T0*&
_output_shapes
:@@
t
mul_56Mulmul_4-gradients/quantized_conv2d_2/mul_grad/Reshape*
T0*&
_output_shapes
:@@
N
sub_26Subadd_16mul_56*
T0*&
_output_shapes
:@@
S
Const_19Const*
dtype0*
valueB :
���������*
_output_shapes
: 
H
Cast_3CastConst_19*

DstT0*

SrcT0*
_output_shapes
: 
J
Const_20Const*
dtype0*
value	B :*
_output_shapes
: 
H
Cast_4CastConst_20*

DstT0*

SrcT0*
_output_shapes
: 
c
clip_by_value_1/MinimumMinimumsub_26Cast_4*
T0*&
_output_shapes
:@@
l
clip_by_value_1Maximumclip_by_value_1/MinimumCast_3*
T0*&
_output_shapes
:@@
�
	Assign_25Assignquantized_conv2d_2/kernelclip_by_value_1*
validate_shape(*,
_class"
 loc:@quantized_conv2d_2/kernel*
use_locking(*
T0*&
_output_shapes
:@@
S
mul_57Mulmomentum/readVariable_13/read*
T0*
_output_shapes
:@
p
mul_58Mulmul_45gradients/quantized_conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_27Submul_57mul_58*
T0*
_output_shapes
:@
�
	Assign_26AssignVariable_13sub_27*
validate_shape(*
_class
loc:@Variable_13*
use_locking(*
T0*
_output_shapes
:@
I
mul_59Mulmomentum/readsub_27*
T0*
_output_shapes
:@
X
add_17Addquantized_conv2d_3/bias/readmul_59*
T0*
_output_shapes
:@
p
mul_60Mulmul_45gradients/quantized_conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
B
sub_28Subadd_17mul_60*
T0*
_output_shapes
:@
�
	Assign_27Assignquantized_conv2d_3/biassub_28*
validate_shape(**
_class 
loc:@quantized_conv2d_3/bias*
use_locking(*
T0*
_output_shapes
:@
_
mul_61Mulmomentum/readVariable_14/read*
T0*&
_output_shapes
:@@
t
mul_62Mulmul_4-gradients/quantized_conv2d_3/mul_grad/Reshape*
T0*&
_output_shapes
:@@
N
sub_29Submul_61mul_62*
T0*&
_output_shapes
:@@
�
	Assign_28AssignVariable_14sub_29*
validate_shape(*
_class
loc:@Variable_14*
use_locking(*
T0*&
_output_shapes
:@@
U
mul_63Mulmomentum/readsub_29*
T0*&
_output_shapes
:@@
f
add_18Addquantized_conv2d_3/kernel/readmul_63*
T0*&
_output_shapes
:@@
t
mul_64Mulmul_4-gradients/quantized_conv2d_3/mul_grad/Reshape*
T0*&
_output_shapes
:@@
N
sub_30Subadd_18mul_64*
T0*&
_output_shapes
:@@
S
Const_21Const*
dtype0*
valueB :
���������*
_output_shapes
: 
H
Cast_5CastConst_21*

DstT0*

SrcT0*
_output_shapes
: 
J
Const_22Const*
dtype0*
value	B :*
_output_shapes
: 
H
Cast_6CastConst_22*

DstT0*

SrcT0*
_output_shapes
: 
c
clip_by_value_2/MinimumMinimumsub_30Cast_6*
T0*&
_output_shapes
:@@
l
clip_by_value_2Maximumclip_by_value_2/MinimumCast_5*
T0*&
_output_shapes
:@@
�
	Assign_29Assignquantized_conv2d_3/kernelclip_by_value_2*
validate_shape(*,
_class"
 loc:@quantized_conv2d_3/kernel*
use_locking(*
T0*&
_output_shapes
:@@
�
group_deps_1NoOp^add_2&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1
^AssignAdd^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6	^Assign_7	^Assign_8	^Assign_9
^Assign_10
^Assign_11
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
�	
initNoOp!^quantized_conv2d_1/kernel/Assign^quantized_conv2d_1/bias/Assign#^batch_normalization_1/gamma/Assign"^batch_normalization_1/beta/Assign)^batch_normalization_1/moving_mean/Assign-^batch_normalization_1/moving_variance/Assign!^quantized_conv2d_2/kernel/Assign^quantized_conv2d_2/bias/Assign#^batch_normalization_2/gamma/Assign"^batch_normalization_2/beta/Assign)^batch_normalization_2/moving_mean/Assign-^batch_normalization_2/moving_variance/Assign!^quantized_conv2d_3/kernel/Assign^quantized_conv2d_3/bias/Assign#^batch_normalization_3/gamma/Assign"^batch_normalization_3/beta/Assign)^batch_normalization_3/moving_mean/Assign-^batch_normalization_3/moving_variance/Assign^dense_1/kernel/Assign#^batch_normalization_4/gamma/Assign"^batch_normalization_4/beta/Assign)^batch_normalization_4/moving_mean/Assign-^batch_normalization_4/moving_variance/Assign^iterations/Assign
^lr/Assign^momentum/Assign^decay/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign^Variable_8/Assign^Variable_9/Assign^Variable_10/Assign^Variable_11/Assign^Variable_12/Assign^Variable_13/Assign^Variable_14/Assign""�:
cond_context�:�:
�
$batch_normalization_1/cond/cond_text$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_t:0 *�
'batch_normalization_1/batchnorm/add_1:0
%batch_normalization_1/cond/Switch_1:0
%batch_normalization_1/cond/Switch_1:1
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_t:0P
'batch_normalization_1/batchnorm/add_1:0%batch_normalization_1/cond/Switch_1:1
�
&batch_normalization_1/cond/cond_text_1$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_f:0*�

!batch_normalization_1/beta/read:0
,batch_normalization_1/cond/batchnorm/Rsqrt:0
1batch_normalization_1/cond/batchnorm/add/Switch:0
,batch_normalization_1/cond/batchnorm/add/y:0
*batch_normalization_1/cond/batchnorm/add:0
,batch_normalization_1/cond/batchnorm/add_1:0
1batch_normalization_1/cond/batchnorm/mul/Switch:0
*batch_normalization_1/cond/batchnorm/mul:0
3batch_normalization_1/cond/batchnorm/mul_1/Switch:0
,batch_normalization_1/cond/batchnorm/mul_1:0
3batch_normalization_1/cond/batchnorm/mul_2/Switch:0
,batch_normalization_1/cond/batchnorm/mul_2:0
1batch_normalization_1/cond/batchnorm/sub/Switch:0
*batch_normalization_1/cond/batchnorm/sub:0
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_f:0
"batch_normalization_1/gamma/read:0
(batch_normalization_1/moving_mean/read:0
,batch_normalization_1/moving_variance/read:0
quantized_conv2d_1/BiasAdd:0a
,batch_normalization_1/moving_variance/read:01batch_normalization_1/cond/batchnorm/add/Switch:0S
quantized_conv2d_1/BiasAdd:03batch_normalization_1/cond/batchnorm/mul_1/Switch:0_
(batch_normalization_1/moving_mean/read:03batch_normalization_1/cond/batchnorm/mul_2/Switch:0W
"batch_normalization_1/gamma/read:01batch_normalization_1/cond/batchnorm/mul/Switch:0V
!batch_normalization_1/beta/read:01batch_normalization_1/cond/batchnorm/sub/Switch:0
�
$batch_normalization_2/cond/cond_text$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_t:0 *�
'batch_normalization_2/batchnorm/add_1:0
%batch_normalization_2/cond/Switch_1:0
%batch_normalization_2/cond/Switch_1:1
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_t:0P
'batch_normalization_2/batchnorm/add_1:0%batch_normalization_2/cond/Switch_1:1
�
&batch_normalization_2/cond/cond_text_1$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_f:0*�

!batch_normalization_2/beta/read:0
,batch_normalization_2/cond/batchnorm/Rsqrt:0
1batch_normalization_2/cond/batchnorm/add/Switch:0
,batch_normalization_2/cond/batchnorm/add/y:0
*batch_normalization_2/cond/batchnorm/add:0
,batch_normalization_2/cond/batchnorm/add_1:0
1batch_normalization_2/cond/batchnorm/mul/Switch:0
*batch_normalization_2/cond/batchnorm/mul:0
3batch_normalization_2/cond/batchnorm/mul_1/Switch:0
,batch_normalization_2/cond/batchnorm/mul_1:0
3batch_normalization_2/cond/batchnorm/mul_2/Switch:0
,batch_normalization_2/cond/batchnorm/mul_2:0
1batch_normalization_2/cond/batchnorm/sub/Switch:0
*batch_normalization_2/cond/batchnorm/sub:0
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_f:0
"batch_normalization_2/gamma/read:0
(batch_normalization_2/moving_mean/read:0
,batch_normalization_2/moving_variance/read:0
quantized_conv2d_2/BiasAdd:0W
"batch_normalization_2/gamma/read:01batch_normalization_2/cond/batchnorm/mul/Switch:0a
,batch_normalization_2/moving_variance/read:01batch_normalization_2/cond/batchnorm/add/Switch:0V
!batch_normalization_2/beta/read:01batch_normalization_2/cond/batchnorm/sub/Switch:0S
quantized_conv2d_2/BiasAdd:03batch_normalization_2/cond/batchnorm/mul_1/Switch:0_
(batch_normalization_2/moving_mean/read:03batch_normalization_2/cond/batchnorm/mul_2/Switch:0
�
$batch_normalization_3/cond/cond_text$batch_normalization_3/cond/pred_id:0%batch_normalization_3/cond/switch_t:0 *�
'batch_normalization_3/batchnorm/add_1:0
%batch_normalization_3/cond/Switch_1:0
%batch_normalization_3/cond/Switch_1:1
$batch_normalization_3/cond/pred_id:0
%batch_normalization_3/cond/switch_t:0P
'batch_normalization_3/batchnorm/add_1:0%batch_normalization_3/cond/Switch_1:1
�
&batch_normalization_3/cond/cond_text_1$batch_normalization_3/cond/pred_id:0%batch_normalization_3/cond/switch_f:0*�

!batch_normalization_3/beta/read:0
,batch_normalization_3/cond/batchnorm/Rsqrt:0
1batch_normalization_3/cond/batchnorm/add/Switch:0
,batch_normalization_3/cond/batchnorm/add/y:0
*batch_normalization_3/cond/batchnorm/add:0
,batch_normalization_3/cond/batchnorm/add_1:0
1batch_normalization_3/cond/batchnorm/mul/Switch:0
*batch_normalization_3/cond/batchnorm/mul:0
3batch_normalization_3/cond/batchnorm/mul_1/Switch:0
,batch_normalization_3/cond/batchnorm/mul_1:0
3batch_normalization_3/cond/batchnorm/mul_2/Switch:0
,batch_normalization_3/cond/batchnorm/mul_2:0
1batch_normalization_3/cond/batchnorm/sub/Switch:0
*batch_normalization_3/cond/batchnorm/sub:0
$batch_normalization_3/cond/pred_id:0
%batch_normalization_3/cond/switch_f:0
"batch_normalization_3/gamma/read:0
(batch_normalization_3/moving_mean/read:0
,batch_normalization_3/moving_variance/read:0
quantized_conv2d_3/BiasAdd:0V
!batch_normalization_3/beta/read:01batch_normalization_3/cond/batchnorm/sub/Switch:0_
(batch_normalization_3/moving_mean/read:03batch_normalization_3/cond/batchnorm/mul_2/Switch:0W
"batch_normalization_3/gamma/read:01batch_normalization_3/cond/batchnorm/mul/Switch:0a
,batch_normalization_3/moving_variance/read:01batch_normalization_3/cond/batchnorm/add/Switch:0S
quantized_conv2d_3/BiasAdd:03batch_normalization_3/cond/batchnorm/mul_1/Switch:0
�
$batch_normalization_4/cond/cond_text$batch_normalization_4/cond/pred_id:0%batch_normalization_4/cond/switch_t:0 *�
'batch_normalization_4/batchnorm/add_1:0
%batch_normalization_4/cond/Switch_1:0
%batch_normalization_4/cond/Switch_1:1
$batch_normalization_4/cond/pred_id:0
%batch_normalization_4/cond/switch_t:0P
'batch_normalization_4/batchnorm/add_1:0%batch_normalization_4/cond/Switch_1:1
�
&batch_normalization_4/cond/cond_text_1$batch_normalization_4/cond/pred_id:0%batch_normalization_4/cond/switch_f:0*�

!batch_normalization_4/beta/read:0
,batch_normalization_4/cond/batchnorm/Rsqrt:0
1batch_normalization_4/cond/batchnorm/add/Switch:0
,batch_normalization_4/cond/batchnorm/add/y:0
*batch_normalization_4/cond/batchnorm/add:0
,batch_normalization_4/cond/batchnorm/add_1:0
1batch_normalization_4/cond/batchnorm/mul/Switch:0
*batch_normalization_4/cond/batchnorm/mul:0
3batch_normalization_4/cond/batchnorm/mul_1/Switch:0
,batch_normalization_4/cond/batchnorm/mul_1:0
3batch_normalization_4/cond/batchnorm/mul_2/Switch:0
,batch_normalization_4/cond/batchnorm/mul_2:0
1batch_normalization_4/cond/batchnorm/sub/Switch:0
*batch_normalization_4/cond/batchnorm/sub:0
$batch_normalization_4/cond/pred_id:0
%batch_normalization_4/cond/switch_f:0
"batch_normalization_4/gamma/read:0
(batch_normalization_4/moving_mean/read:0
,batch_normalization_4/moving_variance/read:0
dense_1/MatMul:0_
(batch_normalization_4/moving_mean/read:03batch_normalization_4/cond/batchnorm/mul_2/Switch:0G
dense_1/MatMul:03batch_normalization_4/cond/batchnorm/mul_1/Switch:0a
,batch_normalization_4/moving_variance/read:01batch_normalization_4/cond/batchnorm/add/Switch:0V
!batch_normalization_4/beta/read:01batch_normalization_4/cond/batchnorm/sub/Switch:0W
"batch_normalization_4/gamma/read:01batch_normalization_4/cond/batchnorm/mul/Switch:0"�
	variables��
a
quantized_conv2d_1/kernel:0 quantized_conv2d_1/kernel/Assign quantized_conv2d_1/kernel/read:0
[
quantized_conv2d_1/bias:0quantized_conv2d_1/bias/Assignquantized_conv2d_1/bias/read:0
g
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:0
d
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:0
y
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:0
�
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:0
a
quantized_conv2d_2/kernel:0 quantized_conv2d_2/kernel/Assign quantized_conv2d_2/kernel/read:0
[
quantized_conv2d_2/bias:0quantized_conv2d_2/bias/Assignquantized_conv2d_2/bias/read:0
g
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:0
d
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:0
y
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign(batch_normalization_2/moving_mean/read:0
�
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign,batch_normalization_2/moving_variance/read:0
a
quantized_conv2d_3/kernel:0 quantized_conv2d_3/kernel/Assign quantized_conv2d_3/kernel/read:0
[
quantized_conv2d_3/bias:0quantized_conv2d_3/bias/Assignquantized_conv2d_3/bias/read:0
g
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:0
d
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:0
y
#batch_normalization_3/moving_mean:0(batch_normalization_3/moving_mean/Assign(batch_normalization_3/moving_mean/read:0
�
'batch_normalization_3/moving_variance:0,batch_normalization_3/moving_variance/Assign,batch_normalization_3/moving_variance/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
g
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign"batch_normalization_4/gamma/read:0
d
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign!batch_normalization_4/beta/read:0
y
#batch_normalization_4/moving_mean:0(batch_normalization_4/moving_mean/Assign(batch_normalization_4/moving_mean/read:0
�
'batch_normalization_4/moving_variance:0,batch_normalization_4/moving_variance/Assign,batch_normalization_4/moving_variance/read:0
4
iterations:0iterations/Assigniterations/read:0

lr:0	lr/Assign	lr/read:0
.

momentum:0momentum/Assignmomentum/read:0
%
decay:0decay/Assigndecay/read:0
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0
4
Variable_2:0Variable_2/AssignVariable_2/read:0
4
Variable_3:0Variable_3/AssignVariable_3/read:0
4
Variable_4:0Variable_4/AssignVariable_4/read:0
4
Variable_5:0Variable_5/AssignVariable_5/read:0
4
Variable_6:0Variable_6/AssignVariable_6/read:0
4
Variable_7:0Variable_7/AssignVariable_7/read:0
4
Variable_8:0Variable_8/AssignVariable_8/read:0
4
Variable_9:0Variable_9/AssignVariable_9/read:0
7
Variable_10:0Variable_10/AssignVariable_10/read:0
7
Variable_11:0Variable_11/AssignVariable_11/read:0
7
Variable_12:0Variable_12/AssignVariable_12/read:0
7
Variable_13:0Variable_13/AssignVariable_13/read:0
7
Variable_14:0Variable_14/AssignVariable_14/read:0"�
trainable_variables��
a
quantized_conv2d_1/kernel:0 quantized_conv2d_1/kernel/Assign quantized_conv2d_1/kernel/read:0
[
quantized_conv2d_1/bias:0quantized_conv2d_1/bias/Assignquantized_conv2d_1/bias/read:0
g
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:0
d
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:0
y
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:0
�
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:0
a
quantized_conv2d_2/kernel:0 quantized_conv2d_2/kernel/Assign quantized_conv2d_2/kernel/read:0
[
quantized_conv2d_2/bias:0quantized_conv2d_2/bias/Assignquantized_conv2d_2/bias/read:0
g
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:0
d
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:0
y
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign(batch_normalization_2/moving_mean/read:0
�
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign,batch_normalization_2/moving_variance/read:0
a
quantized_conv2d_3/kernel:0 quantized_conv2d_3/kernel/Assign quantized_conv2d_3/kernel/read:0
[
quantized_conv2d_3/bias:0quantized_conv2d_3/bias/Assignquantized_conv2d_3/bias/read:0
g
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:0
d
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:0
y
#batch_normalization_3/moving_mean:0(batch_normalization_3/moving_mean/Assign(batch_normalization_3/moving_mean/read:0
�
'batch_normalization_3/moving_variance:0,batch_normalization_3/moving_variance/Assign,batch_normalization_3/moving_variance/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
g
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign"batch_normalization_4/gamma/read:0
d
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign!batch_normalization_4/beta/read:0
y
#batch_normalization_4/moving_mean:0(batch_normalization_4/moving_mean/Assign(batch_normalization_4/moving_mean/read:0
�
'batch_normalization_4/moving_variance:0,batch_normalization_4/moving_variance/Assign,batch_normalization_4/moving_variance/read:0
4
iterations:0iterations/Assigniterations/read:0

lr:0	lr/Assign	lr/read:0
.

momentum:0momentum/Assignmomentum/read:0
%
decay:0decay/Assigndecay/read:0
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0
4
Variable_2:0Variable_2/AssignVariable_2/read:0
4
Variable_3:0Variable_3/AssignVariable_3/read:0
4
Variable_4:0Variable_4/AssignVariable_4/read:0
4
Variable_5:0Variable_5/AssignVariable_5/read:0
4
Variable_6:0Variable_6/AssignVariable_6/read:0
4
Variable_7:0Variable_7/AssignVariable_7/read:0
4
Variable_8:0Variable_8/AssignVariable_8/read:0
4
Variable_9:0Variable_9/AssignVariable_9/read:0
7
Variable_10:0Variable_10/AssignVariable_10/read:0
7
Variable_11:0Variable_11/AssignVariable_11/read:0
7
Variable_12:0Variable_12/AssignVariable_12/read:0
7
Variable_13:0Variable_13/AssignVariable_13/read:0
7
Variable_14:0Variable_14/AssignVariable_14/read:0���