
Ä
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.02v2.7.0-0-gc256c071bb28ù®

dueling_dqn/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_namedueling_dqn/dense/kernel

,dueling_dqn/dense/kernel/Read/ReadVariableOpReadVariableOpdueling_dqn/dense/kernel*
_output_shapes
:	*
dtype0

dueling_dqn/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namedueling_dqn/dense/bias
~
*dueling_dqn/dense/bias/Read/ReadVariableOpReadVariableOpdueling_dqn/dense/bias*
_output_shapes	
:*
dtype0

dueling_dqn/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_namedueling_dqn/dense_1/kernel

.dueling_dqn/dense_1/kernel/Read/ReadVariableOpReadVariableOpdueling_dqn/dense_1/kernel* 
_output_shapes
:
*
dtype0

dueling_dqn/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namedueling_dqn/dense_1/bias

,dueling_dqn/dense_1/bias/Read/ReadVariableOpReadVariableOpdueling_dqn/dense_1/bias*
_output_shapes	
:*
dtype0

dueling_dqn/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*+
shared_namedueling_dqn/dense_2/kernel

.dueling_dqn/dense_2/kernel/Read/ReadVariableOpReadVariableOpdueling_dqn/dense_2/kernel*
_output_shapes
:	*
dtype0

dueling_dqn/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namedueling_dqn/dense_2/bias

,dueling_dqn/dense_2/bias/Read/ReadVariableOpReadVariableOpdueling_dqn/dense_2/bias*
_output_shapes
:*
dtype0

dueling_dqn/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*+
shared_namedueling_dqn/dense_3/kernel

.dueling_dqn/dense_3/kernel/Read/ReadVariableOpReadVariableOpdueling_dqn/dense_3/kernel*
_output_shapes
:	*
dtype0

dueling_dqn/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namedueling_dqn/dense_3/bias

,dueling_dqn/dense_3/bias/Read/ReadVariableOpReadVariableOpdueling_dqn/dense_3/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0

Adam/dueling_dqn/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*0
shared_name!Adam/dueling_dqn/dense/kernel/m

3Adam/dueling_dqn/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dueling_dqn/dense/kernel/m*
_output_shapes
:	*
dtype0

Adam/dueling_dqn/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/dueling_dqn/dense/bias/m

1Adam/dueling_dqn/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dueling_dqn/dense/bias/m*
_output_shapes	
:*
dtype0
 
!Adam/dueling_dqn/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/dueling_dqn/dense_1/kernel/m

5Adam/dueling_dqn/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/dueling_dqn/dense_1/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dueling_dqn/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/dueling_dqn/dense_1/bias/m

3Adam/dueling_dqn/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dueling_dqn/dense_1/bias/m*
_output_shapes	
:*
dtype0

!Adam/dueling_dqn/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adam/dueling_dqn/dense_2/kernel/m

5Adam/dueling_dqn/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/dueling_dqn/dense_2/kernel/m*
_output_shapes
:	*
dtype0

Adam/dueling_dqn/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/dueling_dqn/dense_2/bias/m

3Adam/dueling_dqn/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dueling_dqn/dense_2/bias/m*
_output_shapes
:*
dtype0

!Adam/dueling_dqn/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adam/dueling_dqn/dense_3/kernel/m

5Adam/dueling_dqn/dense_3/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/dueling_dqn/dense_3/kernel/m*
_output_shapes
:	*
dtype0

Adam/dueling_dqn/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/dueling_dqn/dense_3/bias/m

3Adam/dueling_dqn/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dueling_dqn/dense_3/bias/m*
_output_shapes
:*
dtype0

Adam/dueling_dqn/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*0
shared_name!Adam/dueling_dqn/dense/kernel/v

3Adam/dueling_dqn/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dueling_dqn/dense/kernel/v*
_output_shapes
:	*
dtype0

Adam/dueling_dqn/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/dueling_dqn/dense/bias/v

1Adam/dueling_dqn/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dueling_dqn/dense/bias/v*
_output_shapes	
:*
dtype0
 
!Adam/dueling_dqn/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/dueling_dqn/dense_1/kernel/v

5Adam/dueling_dqn/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/dueling_dqn/dense_1/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dueling_dqn/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/dueling_dqn/dense_1/bias/v

3Adam/dueling_dqn/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dueling_dqn/dense_1/bias/v*
_output_shapes	
:*
dtype0

!Adam/dueling_dqn/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adam/dueling_dqn/dense_2/kernel/v

5Adam/dueling_dqn/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/dueling_dqn/dense_2/kernel/v*
_output_shapes
:	*
dtype0

Adam/dueling_dqn/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/dueling_dqn/dense_2/bias/v

3Adam/dueling_dqn/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dueling_dqn/dense_2/bias/v*
_output_shapes
:*
dtype0

!Adam/dueling_dqn/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adam/dueling_dqn/dense_3/kernel/v

5Adam/dueling_dqn/dense_3/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/dueling_dqn/dense_3/kernel/v*
_output_shapes
:	*
dtype0

Adam/dueling_dqn/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/dueling_dqn/dense_3/bias/v

3Adam/dueling_dqn/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dueling_dqn/dense_3/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Î-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*-
valueÿ,Bü, Bõ,


dense1

dense2
V
A
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
 regularization_losses
!	variables
"	keras_api
Ð
#iter

$beta_1

%beta_2
	&decay
'learning_ratemPmQmRmSmTmUmVmWvXvYvZv[v\v]v^v_
8
0
1
2
3
4
5
6
7
8
0
1
2
3
4
5
6
7
 
­
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
 
VT
VARIABLE_VALUEdueling_dqn/dense/kernel(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdueling_dqn/dense/bias&dense1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
-layer_regularization_losses
.layer_metrics
/non_trainable_variables
0metrics
trainable_variables

1layers
regularization_losses
	variables
XV
VARIABLE_VALUEdueling_dqn/dense_1/kernel(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdueling_dqn/dense_1/bias&dense2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
2layer_regularization_losses
3layer_metrics
4non_trainable_variables
5metrics
trainable_variables

6layers
regularization_losses
	variables
SQ
VARIABLE_VALUEdueling_dqn/dense_2/kernel#V/kernel/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEdueling_dqn/dense_2/bias!V/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
7layer_regularization_losses
8layer_metrics
9non_trainable_variables
:metrics
trainable_variables

;layers
regularization_losses
	variables
SQ
VARIABLE_VALUEdueling_dqn/dense_3/kernel#A/kernel/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEdueling_dqn/dense_3/bias!A/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
<layer_regularization_losses
=layer_metrics
>non_trainable_variables
?metrics
trainable_variables

@layers
 regularization_losses
!	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 

A0
B1
C2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Dtotal
	Ecount
F	variables
G	keras_api
4
	Htotal
	Icount
J	variables
K	keras_api
4
	Ltotal
	Mcount
N	variables
O	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

D0
E1

F	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

H0
I1

J	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

L0
M1

N	variables
yw
VARIABLE_VALUEAdam/dueling_dqn/dense/kernel/mDdense1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dueling_dqn/dense/bias/mBdense1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE!Adam/dueling_dqn/dense_1/kernel/mDdense2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dueling_dqn/dense_1/bias/mBdense2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE!Adam/dueling_dqn/dense_2/kernel/m?V/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/dueling_dqn/dense_2/bias/m=V/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE!Adam/dueling_dqn/dense_3/kernel/m?A/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/dueling_dqn/dense_3/bias/m=A/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dueling_dqn/dense/kernel/vDdense1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dueling_dqn/dense/bias/vBdense1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE!Adam/dueling_dqn/dense_1/kernel/vDdense2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dueling_dqn/dense_1/bias/vBdense2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE!Adam/dueling_dqn/dense_2/kernel/v?V/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/dueling_dqn/dense_2/bias/v=V/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE!Adam/dueling_dqn/dense_3/kernel/v?A/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/dueling_dqn/dense_3/bias/v=A/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
¯
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dueling_dqn/dense/kerneldueling_dqn/dense/biasdueling_dqn/dense_1/kerneldueling_dqn/dense_1/biasdueling_dqn/dense_2/kerneldueling_dqn/dense_2/biasdueling_dqn/dense_3/kerneldueling_dqn/dense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 */
f*R(
&__inference_signature_wrapper_22785346
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
â
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,dueling_dqn/dense/kernel/Read/ReadVariableOp*dueling_dqn/dense/bias/Read/ReadVariableOp.dueling_dqn/dense_1/kernel/Read/ReadVariableOp,dueling_dqn/dense_1/bias/Read/ReadVariableOp.dueling_dqn/dense_2/kernel/Read/ReadVariableOp,dueling_dqn/dense_2/bias/Read/ReadVariableOp.dueling_dqn/dense_3/kernel/Read/ReadVariableOp,dueling_dqn/dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp3Adam/dueling_dqn/dense/kernel/m/Read/ReadVariableOp1Adam/dueling_dqn/dense/bias/m/Read/ReadVariableOp5Adam/dueling_dqn/dense_1/kernel/m/Read/ReadVariableOp3Adam/dueling_dqn/dense_1/bias/m/Read/ReadVariableOp5Adam/dueling_dqn/dense_2/kernel/m/Read/ReadVariableOp3Adam/dueling_dqn/dense_2/bias/m/Read/ReadVariableOp5Adam/dueling_dqn/dense_3/kernel/m/Read/ReadVariableOp3Adam/dueling_dqn/dense_3/bias/m/Read/ReadVariableOp3Adam/dueling_dqn/dense/kernel/v/Read/ReadVariableOp1Adam/dueling_dqn/dense/bias/v/Read/ReadVariableOp5Adam/dueling_dqn/dense_1/kernel/v/Read/ReadVariableOp3Adam/dueling_dqn/dense_1/bias/v/Read/ReadVariableOp5Adam/dueling_dqn/dense_2/kernel/v/Read/ReadVariableOp3Adam/dueling_dqn/dense_2/bias/v/Read/ReadVariableOp5Adam/dueling_dqn/dense_3/kernel/v/Read/ReadVariableOp3Adam/dueling_dqn/dense_3/bias/v/Read/ReadVariableOpConst*0
Tin)
'2%	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_save_22785533
¡	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedueling_dqn/dense/kerneldueling_dqn/dense/biasdueling_dqn/dense_1/kerneldueling_dqn/dense_1/biasdueling_dqn/dense_2/kerneldueling_dqn/dense_2/biasdueling_dqn/dense_3/kerneldueling_dqn/dense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/dueling_dqn/dense/kernel/mAdam/dueling_dqn/dense/bias/m!Adam/dueling_dqn/dense_1/kernel/mAdam/dueling_dqn/dense_1/bias/m!Adam/dueling_dqn/dense_2/kernel/mAdam/dueling_dqn/dense_2/bias/m!Adam/dueling_dqn/dense_3/kernel/mAdam/dueling_dqn/dense_3/bias/mAdam/dueling_dqn/dense/kernel/vAdam/dueling_dqn/dense/bias/v!Adam/dueling_dqn/dense_1/kernel/vAdam/dueling_dqn/dense_1/bias/v!Adam/dueling_dqn/dense_2/kernel/vAdam/dueling_dqn/dense_2/bias/v!Adam/dueling_dqn/dense_3/kernel/vAdam/dueling_dqn/dense_3/bias/v*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference__traced_restore_22785648
Î&
À
I__inference_dueling_dqn_layer_call_and_return_conditional_losses_22785315
input_17
$dense_matmul_readvariableop_resource:	4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	9
&dense_2_matmul_readvariableop_resource:	5
'dense_2_biasadd_readvariableop_resource:9
&dense_3_matmul_readvariableop_resource:	5
'dense_3_biasadd_readvariableop_resource:
identity

identity_1¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0w
dense/MatMulMatMulinput_1#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_3/MatMulMatMuldense_1/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
MeanMeandense_3/BiasAdd:output:0Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(e
subSubdense_3/BiasAdd:output:0Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
addAddV2dense_2/BiasAdd:output:0sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi

Identity_1Identitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
äI

!__inference__traced_save_22785533
file_prefix7
3savev2_dueling_dqn_dense_kernel_read_readvariableop5
1savev2_dueling_dqn_dense_bias_read_readvariableop9
5savev2_dueling_dqn_dense_1_kernel_read_readvariableop7
3savev2_dueling_dqn_dense_1_bias_read_readvariableop9
5savev2_dueling_dqn_dense_2_kernel_read_readvariableop7
3savev2_dueling_dqn_dense_2_bias_read_readvariableop9
5savev2_dueling_dqn_dense_3_kernel_read_readvariableop7
3savev2_dueling_dqn_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop>
:savev2_adam_dueling_dqn_dense_kernel_m_read_readvariableop<
8savev2_adam_dueling_dqn_dense_bias_m_read_readvariableop@
<savev2_adam_dueling_dqn_dense_1_kernel_m_read_readvariableop>
:savev2_adam_dueling_dqn_dense_1_bias_m_read_readvariableop@
<savev2_adam_dueling_dqn_dense_2_kernel_m_read_readvariableop>
:savev2_adam_dueling_dqn_dense_2_bias_m_read_readvariableop@
<savev2_adam_dueling_dqn_dense_3_kernel_m_read_readvariableop>
:savev2_adam_dueling_dqn_dense_3_bias_m_read_readvariableop>
:savev2_adam_dueling_dqn_dense_kernel_v_read_readvariableop<
8savev2_adam_dueling_dqn_dense_bias_v_read_readvariableop@
<savev2_adam_dueling_dqn_dense_1_kernel_v_read_readvariableop>
:savev2_adam_dueling_dqn_dense_1_bias_v_read_readvariableop@
<savev2_adam_dueling_dqn_dense_2_kernel_v_read_readvariableop>
:savev2_adam_dueling_dqn_dense_2_bias_v_read_readvariableop@
<savev2_adam_dueling_dqn_dense_3_kernel_v_read_readvariableop>
:savev2_adam_dueling_dqn_dense_3_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*¸
value®B«$B(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB#V/kernel/.ATTRIBUTES/VARIABLE_VALUEB!V/bias/.ATTRIBUTES/VARIABLE_VALUEB#A/kernel/.ATTRIBUTES/VARIABLE_VALUEB!A/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBDdense1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBdense1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?V/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB=V/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?A/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB=A/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDdense1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBdense1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?V/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB=V/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?A/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB=A/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHµ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ç
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_dueling_dqn_dense_kernel_read_readvariableop1savev2_dueling_dqn_dense_bias_read_readvariableop5savev2_dueling_dqn_dense_1_kernel_read_readvariableop3savev2_dueling_dqn_dense_1_bias_read_readvariableop5savev2_dueling_dqn_dense_2_kernel_read_readvariableop3savev2_dueling_dqn_dense_2_bias_read_readvariableop5savev2_dueling_dqn_dense_3_kernel_read_readvariableop3savev2_dueling_dqn_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop:savev2_adam_dueling_dqn_dense_kernel_m_read_readvariableop8savev2_adam_dueling_dqn_dense_bias_m_read_readvariableop<savev2_adam_dueling_dqn_dense_1_kernel_m_read_readvariableop:savev2_adam_dueling_dqn_dense_1_bias_m_read_readvariableop<savev2_adam_dueling_dqn_dense_2_kernel_m_read_readvariableop:savev2_adam_dueling_dqn_dense_2_bias_m_read_readvariableop<savev2_adam_dueling_dqn_dense_3_kernel_m_read_readvariableop:savev2_adam_dueling_dqn_dense_3_bias_m_read_readvariableop:savev2_adam_dueling_dqn_dense_kernel_v_read_readvariableop8savev2_adam_dueling_dqn_dense_bias_v_read_readvariableop<savev2_adam_dueling_dqn_dense_1_kernel_v_read_readvariableop:savev2_adam_dueling_dqn_dense_1_bias_v_read_readvariableop<savev2_adam_dueling_dqn_dense_2_kernel_v_read_readvariableop:savev2_adam_dueling_dqn_dense_2_bias_v_read_readvariableop<savev2_adam_dueling_dqn_dense_3_kernel_v_read_readvariableop:savev2_adam_dueling_dqn_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapesò
ï: :	::
::	::	:: : : : : : : : : : : :	::
::	::	::	::
::	::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::% !

_output_shapes
:	: !

_output_shapes
::%"!

_output_shapes
:	: #

_output_shapes
::$

_output_shapes
: 

×
$__inference__traced_restore_22785648
file_prefix<
)assignvariableop_dueling_dqn_dense_kernel:	8
)assignvariableop_1_dueling_dqn_dense_bias:	A
-assignvariableop_2_dueling_dqn_dense_1_kernel:
:
+assignvariableop_3_dueling_dqn_dense_1_bias:	@
-assignvariableop_4_dueling_dqn_dense_2_kernel:	9
+assignvariableop_5_dueling_dqn_dense_2_bias:@
-assignvariableop_6_dueling_dqn_dense_3_kernel:	9
+assignvariableop_7_dueling_dqn_dense_3_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: %
assignvariableop_17_total_2: %
assignvariableop_18_count_2: F
3assignvariableop_19_adam_dueling_dqn_dense_kernel_m:	@
1assignvariableop_20_adam_dueling_dqn_dense_bias_m:	I
5assignvariableop_21_adam_dueling_dqn_dense_1_kernel_m:
B
3assignvariableop_22_adam_dueling_dqn_dense_1_bias_m:	H
5assignvariableop_23_adam_dueling_dqn_dense_2_kernel_m:	A
3assignvariableop_24_adam_dueling_dqn_dense_2_bias_m:H
5assignvariableop_25_adam_dueling_dqn_dense_3_kernel_m:	A
3assignvariableop_26_adam_dueling_dqn_dense_3_bias_m:F
3assignvariableop_27_adam_dueling_dqn_dense_kernel_v:	@
1assignvariableop_28_adam_dueling_dqn_dense_bias_v:	I
5assignvariableop_29_adam_dueling_dqn_dense_1_kernel_v:
B
3assignvariableop_30_adam_dueling_dqn_dense_1_bias_v:	H
5assignvariableop_31_adam_dueling_dqn_dense_2_kernel_v:	A
3assignvariableop_32_adam_dueling_dqn_dense_2_bias_v:H
5assignvariableop_33_adam_dueling_dqn_dense_3_kernel_v:	A
3assignvariableop_34_adam_dueling_dqn_dense_3_bias_v:
identity_36¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*¸
value®B«$B(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB#V/kernel/.ATTRIBUTES/VARIABLE_VALUEB!V/bias/.ATTRIBUTES/VARIABLE_VALUEB#A/kernel/.ATTRIBUTES/VARIABLE_VALUEB!A/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBDdense1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBdense1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?V/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB=V/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?A/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB=A/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDdense1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBdense1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?V/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB=V/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?A/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB=A/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¸
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Õ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¦
_output_shapes
::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp)assignvariableop_dueling_dqn_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp)assignvariableop_1_dueling_dqn_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp-assignvariableop_2_dueling_dqn_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp+assignvariableop_3_dueling_dqn_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp-assignvariableop_4_dueling_dqn_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp+assignvariableop_5_dueling_dqn_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp-assignvariableop_6_dueling_dqn_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp+assignvariableop_7_dueling_dqn_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_19AssignVariableOp3assignvariableop_19_adam_dueling_dqn_dense_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_20AssignVariableOp1assignvariableop_20_adam_dueling_dqn_dense_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adam_dueling_dqn_dense_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_22AssignVariableOp3assignvariableop_22_adam_dueling_dqn_dense_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_23AssignVariableOp5assignvariableop_23_adam_dueling_dqn_dense_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_24AssignVariableOp3assignvariableop_24_adam_dueling_dqn_dense_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_25AssignVariableOp5assignvariableop_25_adam_dueling_dqn_dense_3_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_26AssignVariableOp3assignvariableop_26_adam_dueling_dqn_dense_3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_27AssignVariableOp3assignvariableop_27_adam_dueling_dqn_dense_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_28AssignVariableOp1assignvariableop_28_adam_dueling_dqn_dense_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adam_dueling_dqn_dense_1_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_30AssignVariableOp3assignvariableop_30_adam_dueling_dqn_dense_1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_31AssignVariableOp5assignvariableop_31_adam_dueling_dqn_dense_2_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_32AssignVariableOp3assignvariableop_32_adam_dueling_dqn_dense_2_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_33AssignVariableOp5assignvariableop_33_adam_dueling_dqn_dense_3_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_34AssignVariableOp3assignvariableop_34_adam_dueling_dqn_dense_3_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ñ
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_36IdentityIdentity_35:output:0^NoOp_1*
T0*
_output_shapes
: ¾
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
È&
¾
I__inference_dueling_dqn_layer_call_and_return_conditional_losses_22785236	
state7
$dense_matmul_readvariableop_resource:	4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	9
&dense_2_matmul_readvariableop_resource:	5
'dense_2_biasadd_readvariableop_resource:9
&dense_3_matmul_readvariableop_resource:	5
'dense_3_biasadd_readvariableop_resource:
identity

identity_1¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0u
dense/MatMulMatMulstate#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_3/MatMulMatMuldense_1/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
MeanMeandense_3/BiasAdd:output:0Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(e
subSubdense_3/BiasAdd:output:0Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
addAddV2dense_2/BiasAdd:output:0sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi

Identity_1Identitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namestate

Ó
.__inference_dueling_dqn_layer_call_fn_22785369	
state
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	
	unknown_4:
	unknown_5:	
	unknown_6:
identity

identity_1¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCallstateunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_dueling_dqn_layer_call_and_return_conditional_losses_22785236o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namestate
 /
Ú
#__inference__wrapped_model_22785197
input_1C
0dueling_dqn_dense_matmul_readvariableop_resource:	@
1dueling_dqn_dense_biasadd_readvariableop_resource:	F
2dueling_dqn_dense_1_matmul_readvariableop_resource:
B
3dueling_dqn_dense_1_biasadd_readvariableop_resource:	E
2dueling_dqn_dense_2_matmul_readvariableop_resource:	A
3dueling_dqn_dense_2_biasadd_readvariableop_resource:E
2dueling_dqn_dense_3_matmul_readvariableop_resource:	A
3dueling_dqn_dense_3_biasadd_readvariableop_resource:
identity

identity_1¢(dueling_dqn/dense/BiasAdd/ReadVariableOp¢'dueling_dqn/dense/MatMul/ReadVariableOp¢*dueling_dqn/dense_1/BiasAdd/ReadVariableOp¢)dueling_dqn/dense_1/MatMul/ReadVariableOp¢*dueling_dqn/dense_2/BiasAdd/ReadVariableOp¢)dueling_dqn/dense_2/MatMul/ReadVariableOp¢*dueling_dqn/dense_3/BiasAdd/ReadVariableOp¢)dueling_dqn/dense_3/MatMul/ReadVariableOp
'dueling_dqn/dense/MatMul/ReadVariableOpReadVariableOp0dueling_dqn_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dueling_dqn/dense/MatMulMatMulinput_1/dueling_dqn/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(dueling_dqn/dense/BiasAdd/ReadVariableOpReadVariableOp1dueling_dqn_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
dueling_dqn/dense/BiasAddBiasAdd"dueling_dqn/dense/MatMul:product:00dueling_dqn/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
dueling_dqn/dense/ReluRelu"dueling_dqn/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)dueling_dqn/dense_1/MatMul/ReadVariableOpReadVariableOp2dueling_dqn_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0°
dueling_dqn/dense_1/MatMulMatMul$dueling_dqn/dense/Relu:activations:01dueling_dqn/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*dueling_dqn/dense_1/BiasAdd/ReadVariableOpReadVariableOp3dueling_dqn_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0³
dueling_dqn/dense_1/BiasAddBiasAdd$dueling_dqn/dense_1/MatMul:product:02dueling_dqn/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
dueling_dqn/dense_1/ReluRelu$dueling_dqn/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)dueling_dqn/dense_2/MatMul/ReadVariableOpReadVariableOp2dueling_dqn_dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0±
dueling_dqn/dense_2/MatMulMatMul&dueling_dqn/dense_1/Relu:activations:01dueling_dqn/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*dueling_dqn/dense_2/BiasAdd/ReadVariableOpReadVariableOp3dueling_dqn_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0²
dueling_dqn/dense_2/BiasAddBiasAdd$dueling_dqn/dense_2/MatMul:product:02dueling_dqn/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)dueling_dqn/dense_3/MatMul/ReadVariableOpReadVariableOp2dueling_dqn_dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0±
dueling_dqn/dense_3/MatMulMatMul&dueling_dqn/dense_1/Relu:activations:01dueling_dqn/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*dueling_dqn/dense_3/BiasAdd/ReadVariableOpReadVariableOp3dueling_dqn_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0²
dueling_dqn/dense_3/BiasAddBiasAdd$dueling_dqn/dense_3/MatMul:product:02dueling_dqn/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"dueling_dqn/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :®
dueling_dqn/MeanMean$dueling_dqn/dense_3/BiasAdd:output:0+dueling_dqn/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
dueling_dqn/subSub$dueling_dqn/dense_3/BiasAdd:output:0dueling_dqn/Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dueling_dqn/addAddV2$dueling_dqn/dense_2/BiasAdd:output:0dueling_dqn/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitydueling_dqn/add:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu

Identity_1Identity$dueling_dqn/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
NoOpNoOp)^dueling_dqn/dense/BiasAdd/ReadVariableOp(^dueling_dqn/dense/MatMul/ReadVariableOp+^dueling_dqn/dense_1/BiasAdd/ReadVariableOp*^dueling_dqn/dense_1/MatMul/ReadVariableOp+^dueling_dqn/dense_2/BiasAdd/ReadVariableOp*^dueling_dqn/dense_2/MatMul/ReadVariableOp+^dueling_dqn/dense_3/BiasAdd/ReadVariableOp*^dueling_dqn/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2T
(dueling_dqn/dense/BiasAdd/ReadVariableOp(dueling_dqn/dense/BiasAdd/ReadVariableOp2R
'dueling_dqn/dense/MatMul/ReadVariableOp'dueling_dqn/dense/MatMul/ReadVariableOp2X
*dueling_dqn/dense_1/BiasAdd/ReadVariableOp*dueling_dqn/dense_1/BiasAdd/ReadVariableOp2V
)dueling_dqn/dense_1/MatMul/ReadVariableOp)dueling_dqn/dense_1/MatMul/ReadVariableOp2X
*dueling_dqn/dense_2/BiasAdd/ReadVariableOp*dueling_dqn/dense_2/BiasAdd/ReadVariableOp2V
)dueling_dqn/dense_2/MatMul/ReadVariableOp)dueling_dqn/dense_2/MatMul/ReadVariableOp2X
*dueling_dqn/dense_3/BiasAdd/ReadVariableOp*dueling_dqn/dense_3/BiasAdd/ReadVariableOp2V
)dueling_dqn/dense_3/MatMul/ReadVariableOp)dueling_dqn/dense_3/MatMul/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
È&
¾
I__inference_dueling_dqn_layer_call_and_return_conditional_losses_22785404	
state7
$dense_matmul_readvariableop_resource:	4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	9
&dense_2_matmul_readvariableop_resource:	5
'dense_2_biasadd_readvariableop_resource:9
&dense_3_matmul_readvariableop_resource:	5
'dense_3_biasadd_readvariableop_resource:
identity

identity_1¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0u
dense/MatMulMatMulstate#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_3/MatMulMatMuldense_1/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
MeanMeandense_3/BiasAdd:output:0Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(e
subSubdense_3/BiasAdd:output:0Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
addAddV2dense_2/BiasAdd:output:0sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi

Identity_1Identitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namestate

Õ
.__inference_dueling_dqn_layer_call_fn_22785257
input_1
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	
	unknown_4:
	unknown_5:	
	unknown_6:
identity

identity_1¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_dueling_dqn_layer_call_and_return_conditional_losses_22785236o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
á

Í
&__inference_signature_wrapper_22785346
input_1
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	
	unknown_4:
	unknown_5:	
	unknown_6:
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__wrapped_model_22785197o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*é
serving_defaultÕ
;
input_10
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ<
output_20
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¸M


dense1

dense2
V
A
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
`__call__
*a&call_and_return_all_conditional_losses
b_default_save_signature"
_tf_keras_model
»

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
trainable_variables
 regularization_losses
!	variables
"	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
ã
#iter

$beta_1

%beta_2
	&decay
'learning_ratemPmQmRmSmTmUmVmWvXvYvZv[v\v]v^v_"
	optimizer
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
`__call__
b_default_save_signature
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
,
kserving_default"
signature_map
+:)	2dueling_dqn/dense/kernel
%:#2dueling_dqn/dense/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
-layer_regularization_losses
.layer_metrics
/non_trainable_variables
0metrics
trainable_variables

1layers
regularization_losses
	variables
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
.:,
2dueling_dqn/dense_1/kernel
':%2dueling_dqn/dense_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
2layer_regularization_losses
3layer_metrics
4non_trainable_variables
5metrics
trainable_variables

6layers
regularization_losses
	variables
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
-:+	2dueling_dqn/dense_2/kernel
&:$2dueling_dqn/dense_2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
7layer_regularization_losses
8layer_metrics
9non_trainable_variables
:metrics
trainable_variables

;layers
regularization_losses
	variables
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
-:+	2dueling_dqn/dense_3/kernel
&:$2dueling_dqn/dense_3/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
<layer_regularization_losses
=layer_metrics
>non_trainable_variables
?metrics
trainable_variables

@layers
 regularization_losses
!	variables
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
A0
B1
C2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	Dtotal
	Ecount
F	variables
G	keras_api"
_tf_keras_metric
N
	Htotal
	Icount
J	variables
K	keras_api"
_tf_keras_metric
N
	Ltotal
	Mcount
N	variables
O	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
D0
E1"
trackable_list_wrapper
-
F	variables"
_generic_user_object
:  (2total
:  (2count
.
H0
I1"
trackable_list_wrapper
-
J	variables"
_generic_user_object
:  (2total
:  (2count
.
L0
M1"
trackable_list_wrapper
-
N	variables"
_generic_user_object
0:.	2Adam/dueling_dqn/dense/kernel/m
*:(2Adam/dueling_dqn/dense/bias/m
3:1
2!Adam/dueling_dqn/dense_1/kernel/m
,:*2Adam/dueling_dqn/dense_1/bias/m
2:0	2!Adam/dueling_dqn/dense_2/kernel/m
+:)2Adam/dueling_dqn/dense_2/bias/m
2:0	2!Adam/dueling_dqn/dense_3/kernel/m
+:)2Adam/dueling_dqn/dense_3/bias/m
0:.	2Adam/dueling_dqn/dense/kernel/v
*:(2Adam/dueling_dqn/dense/bias/v
3:1
2!Adam/dueling_dqn/dense_1/kernel/v
,:*2Adam/dueling_dqn/dense_1/bias/v
2:0	2!Adam/dueling_dqn/dense_2/kernel/v
+:)2Adam/dueling_dqn/dense_2/bias/v
2:0	2!Adam/dueling_dqn/dense_3/kernel/v
+:)2Adam/dueling_dqn/dense_3/bias/v
2
.__inference_dueling_dqn_layer_call_fn_22785257
.__inference_dueling_dqn_layer_call_fn_22785369¡
²
FullArgSpec
args
jself
jstate
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
½2º
I__inference_dueling_dqn_layer_call_and_return_conditional_losses_22785404
I__inference_dueling_dqn_layer_call_and_return_conditional_losses_22785315¡
²
FullArgSpec
args
jself
jstate
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÎBË
#__inference__wrapped_model_22785197input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÍBÊ
&__inference_signature_wrapper_22785346input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 É
#__inference__wrapped_model_22785197¡0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "cª`
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ
.
output_2"
output_2ÿÿÿÿÿÿÿÿÿ×
I__inference_dueling_dqn_layer_call_and_return_conditional_losses_227853150¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "K¢H
A¢>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 Õ
I__inference_dueling_dqn_layer_call_and_return_conditional_losses_22785404.¢+
$¢!

stateÿÿÿÿÿÿÿÿÿ
ª "K¢H
A¢>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 ­
.__inference_dueling_dqn_layer_call_fn_22785257{0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "=¢:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ«
.__inference_dueling_dqn_layer_call_fn_22785369y.¢+
$¢!

stateÿÿÿÿÿÿÿÿÿ
ª "=¢:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ×
&__inference_signature_wrapper_22785346¬;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ"cª`
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ
.
output_2"
output_2ÿÿÿÿÿÿÿÿÿ