??5
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.02v2.9.0-rc2-42-g8a20d54a3c18??1
?
5Adam/transformer_block_1/layer_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_block_1/layer_normalization_3/beta/v
?
IAdam/transformer_block_1/layer_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_1/layer_normalization_3/beta/v*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_1/layer_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_1/layer_normalization_3/gamma/v
?
JAdam/transformer_block_1/layer_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_1/layer_normalization_3/gamma/v*
_output_shapes	
:?*
dtype0
?
5Adam/transformer_block_1/layer_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_block_1/layer_normalization_2/beta/v
?
IAdam/transformer_block_1/layer_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_1/layer_normalization_2/beta/v*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_1/layer_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_1/layer_normalization_2/gamma/v
?
JAdam/transformer_block_1/layer_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_1/layer_normalization_2/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_17/bias/v
z
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_17/kernel/v
?
*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_16/bias/v
z
(Adam/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_16/kernel/v
?
*Adam/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_15/bias/v
z
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_15/kernel/v
?
*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_14/bias/v
z
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_14/kernel/v
?
*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/v
?
SAdam/transformer_block_1/multi_head_attention_1/dense_13/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/v*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/v
?
UAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/v* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/v
?
SAdam/transformer_block_1/multi_head_attention_1/dense_12/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/v*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/v
?
UAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/v* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/v
?
SAdam/transformer_block_1/multi_head_attention_1/dense_11/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/v*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/v
?
UAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/v* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/v
?
SAdam/transformer_block_1/multi_head_attention_1/dense_10/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/v*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/v
?
UAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/v* 
_output_shapes
:
??*
dtype0
?
<Adam/token_and_position_embedding_1/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*M
shared_name><Adam/token_and_position_embedding_1/embedding_3/embeddings/v
?
PAdam/token_and_position_embedding_1/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_3/embeddings/v* 
_output_shapes
:
??*
dtype0
?
<Adam/token_and_position_embedding_1/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*M
shared_name><Adam/token_and_position_embedding_1/embedding_2/embeddings/v
?
PAdam/token_and_position_embedding_1/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_2/embeddings/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_19/bias/v
z
(Adam/dense_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_19/kernel/v
?
*Adam/dense_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/v* 
_output_shapes
:
??*
dtype0
?
5Adam/transformer_block_1/layer_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_block_1/layer_normalization_3/beta/m
?
IAdam/transformer_block_1/layer_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_1/layer_normalization_3/beta/m*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_1/layer_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_1/layer_normalization_3/gamma/m
?
JAdam/transformer_block_1/layer_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_1/layer_normalization_3/gamma/m*
_output_shapes	
:?*
dtype0
?
5Adam/transformer_block_1/layer_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_block_1/layer_normalization_2/beta/m
?
IAdam/transformer_block_1/layer_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_1/layer_normalization_2/beta/m*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_1/layer_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_1/layer_normalization_2/gamma/m
?
JAdam/transformer_block_1/layer_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_1/layer_normalization_2/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_17/bias/m
z
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_17/kernel/m
?
*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_16/bias/m
z
(Adam/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_16/kernel/m
?
*Adam/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_15/bias/m
z
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_15/kernel/m
?
*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_14/bias/m
z
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_14/kernel/m
?
*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/m
?
SAdam/transformer_block_1/multi_head_attention_1/dense_13/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/m*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/m
?
UAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/m* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/m
?
SAdam/transformer_block_1/multi_head_attention_1/dense_12/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/m*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/m
?
UAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/m* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/m
?
SAdam/transformer_block_1/multi_head_attention_1/dense_11/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/m*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/m
?
UAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/m* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/m
?
SAdam/transformer_block_1/multi_head_attention_1/dense_10/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/m*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/m
?
UAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/m* 
_output_shapes
:
??*
dtype0
?
<Adam/token_and_position_embedding_1/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*M
shared_name><Adam/token_and_position_embedding_1/embedding_3/embeddings/m
?
PAdam/token_and_position_embedding_1/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_3/embeddings/m* 
_output_shapes
:
??*
dtype0
?
<Adam/token_and_position_embedding_1/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*M
shared_name><Adam/token_and_position_embedding_1/embedding_2/embeddings/m
?
PAdam/token_and_position_embedding_1/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_2/embeddings/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_19/bias/m
z
(Adam/dense_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_19/kernel/m
?
*Adam/dense_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/m* 
_output_shapes
:
??*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
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
?
.transformer_block_1/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.transformer_block_1/layer_normalization_3/beta
?
Btransformer_block_1/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp.transformer_block_1/layer_normalization_3/beta*
_output_shapes	
:?*
dtype0
?
/transformer_block_1/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/transformer_block_1/layer_normalization_3/gamma
?
Ctransformer_block_1/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_1/layer_normalization_3/gamma*
_output_shapes	
:?*
dtype0
?
.transformer_block_1/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.transformer_block_1/layer_normalization_2/beta
?
Btransformer_block_1/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp.transformer_block_1/layer_normalization_2/beta*
_output_shapes	
:?*
dtype0
?
/transformer_block_1/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/transformer_block_1/layer_normalization_2/gamma
?
Ctransformer_block_1/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_1/layer_normalization_2/gamma*
_output_shapes	
:?*
dtype0
s
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_17/bias
l
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes	
:?*
dtype0
|
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_17/kernel
u
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel* 
_output_shapes
:
??*
dtype0
s
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_16/bias
l
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes	
:?*
dtype0
|
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_16/kernel
u
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel* 
_output_shapes
:
??*
dtype0
s
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_15/bias
l
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes	
:?*
dtype0
|
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_15/kernel
u
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel* 
_output_shapes
:
??*
dtype0
s
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_14/bias
l
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes	
:?*
dtype0
|
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_14/kernel
u
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel* 
_output_shapes
:
??*
dtype0
?
8transformer_block_1/multi_head_attention_1/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8transformer_block_1/multi_head_attention_1/dense_13/bias
?
Ltransformer_block_1/multi_head_attention_1/dense_13/bias/Read/ReadVariableOpReadVariableOp8transformer_block_1/multi_head_attention_1/dense_13/bias*
_output_shapes	
:?*
dtype0
?
:transformer_block_1/multi_head_attention_1/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*K
shared_name<:transformer_block_1/multi_head_attention_1/dense_13/kernel
?
Ntransformer_block_1/multi_head_attention_1/dense_13/kernel/Read/ReadVariableOpReadVariableOp:transformer_block_1/multi_head_attention_1/dense_13/kernel* 
_output_shapes
:
??*
dtype0
?
8transformer_block_1/multi_head_attention_1/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8transformer_block_1/multi_head_attention_1/dense_12/bias
?
Ltransformer_block_1/multi_head_attention_1/dense_12/bias/Read/ReadVariableOpReadVariableOp8transformer_block_1/multi_head_attention_1/dense_12/bias*
_output_shapes	
:?*
dtype0
?
:transformer_block_1/multi_head_attention_1/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*K
shared_name<:transformer_block_1/multi_head_attention_1/dense_12/kernel
?
Ntransformer_block_1/multi_head_attention_1/dense_12/kernel/Read/ReadVariableOpReadVariableOp:transformer_block_1/multi_head_attention_1/dense_12/kernel* 
_output_shapes
:
??*
dtype0
?
8transformer_block_1/multi_head_attention_1/dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8transformer_block_1/multi_head_attention_1/dense_11/bias
?
Ltransformer_block_1/multi_head_attention_1/dense_11/bias/Read/ReadVariableOpReadVariableOp8transformer_block_1/multi_head_attention_1/dense_11/bias*
_output_shapes	
:?*
dtype0
?
:transformer_block_1/multi_head_attention_1/dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*K
shared_name<:transformer_block_1/multi_head_attention_1/dense_11/kernel
?
Ntransformer_block_1/multi_head_attention_1/dense_11/kernel/Read/ReadVariableOpReadVariableOp:transformer_block_1/multi_head_attention_1/dense_11/kernel* 
_output_shapes
:
??*
dtype0
?
8transformer_block_1/multi_head_attention_1/dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8transformer_block_1/multi_head_attention_1/dense_10/bias
?
Ltransformer_block_1/multi_head_attention_1/dense_10/bias/Read/ReadVariableOpReadVariableOp8transformer_block_1/multi_head_attention_1/dense_10/bias*
_output_shapes	
:?*
dtype0
?
:transformer_block_1/multi_head_attention_1/dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*K
shared_name<:transformer_block_1/multi_head_attention_1/dense_10/kernel
?
Ntransformer_block_1/multi_head_attention_1/dense_10/kernel/Read/ReadVariableOpReadVariableOp:transformer_block_1/multi_head_attention_1/dense_10/kernel* 
_output_shapes
:
??*
dtype0
?
5token_and_position_embedding_1/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*F
shared_name75token_and_position_embedding_1/embedding_3/embeddings
?
Itoken_and_position_embedding_1/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_1/embedding_3/embeddings* 
_output_shapes
:
??*
dtype0
?
5token_and_position_embedding_1/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*F
shared_name75token_and_position_embedding_1/embedding_2/embeddings
?
Itoken_and_position_embedding_1/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_1/embedding_2/embeddings* 
_output_shapes
:
??*
dtype0
s
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_19/bias
l
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes	
:?*
dtype0
|
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_19/kernel
u
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel* 
_output_shapes
:
??*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
att
ffn
 
layernorm1
!
layernorm2
"dropout1
#dropout2*
?
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
?
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator* 
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias*
?
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
722
823*
?
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
722
823*
* 
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_3* 
6
Xtrace_0
Ytrace_1
Ztrace_2
[trace_3* 
* 
?
\iter

]beta_1

^beta_2
	_decay
`learning_rate7m?8m?9m?:m?;m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Nm?7v?8v?9v?:v?;v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?Nv?*

aserving_default* 

90
:1*

90
:1*
* 
?
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

gtrace_0* 

htrace_0* 
?
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
9
embeddings*
?
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
:
embeddings*
?
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11
G12
H13
I14
J15
K16
L17
M18
N19*
?
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11
G12
H13
I14
J15
K16
L17
M18
N19*
* 
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ztrace_0
{trace_1* 

|trace_0
}trace_1* 
?
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?query_dense
?	key_dense
?value_dense

?dense*
?
?layer_with_weights-0
?layer-0
?layer-1
?layer_with_weights-1
?layer-2
?layer-3
?layer_with_weights-2
?layer-4
?layer-5
?layer_with_weights-3
?layer-6
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	Kgamma
Lbeta*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	Mgamma
Nbeta*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

70
81*

70
81*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_19/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_1/embedding_2/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_1/embedding_3/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block_1/multi_head_attention_1/dense_10/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block_1/multi_head_attention_1/dense_10/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block_1/multi_head_attention_1/dense_11/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block_1/multi_head_attention_1/dense_11/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block_1/multi_head_attention_1/dense_12/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block_1/multi_head_attention_1/dense_12/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block_1/multi_head_attention_1/dense_13/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block_1/multi_head_attention_1/dense_13/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_14/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_14/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_15/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_15/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_16/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_16/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_17/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_17/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_block_1/layer_normalization_2/gamma'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.transformer_block_1/layer_normalization_2/beta'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_block_1/layer_normalization_3/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.transformer_block_1/layer_normalization_3/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*
$
?0
?1
?2
?3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

0
1*
* 
* 
* 
* 
* 

90*

90*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*
* 
* 

:0*

:0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*
* 
* 
* 
.
0
1
 2
!3
"4
#5*
* 
* 
* 
* 
* 
* 
* 
<
;0
<1
=2
>3
?4
@5
A6
B7*
<
;0
<1
=2
>3
?4
@5
A6
B7*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

;kernel
<bias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

=kernel
>bias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

?kernel
@bias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Akernel
Bbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Ckernel
Dbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Ekernel
Fbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Gkernel
Hbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Ikernel
Jbias*
<
C0
D1
E2
F3
G4
H5
I6
J7*
<
C0
D1
E2
F3
G4
H5
I6
J7*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 

K0
L1*

K0
L1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 

M0
N1*

M0
N1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*
`
?	variables
?	keras_api
?
thresholds
?true_positives
?false_negatives*
`
?	variables
?	keras_api
?
thresholds
?true_positives
?false_positives*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
$
?0
?1
?2
?3*
* 
* 
* 

;0
<1*

;0
<1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 

=0
>1*

=0
>1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 

?0
@1*

?0
@1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 

A0
B1*

A0
B1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 

C0
D1*

C0
D1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

E0
F1*

E0
F1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

G0
H1*

G0
H1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

I0
J1*

I0
J1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
<
?0
?1
?2
?3
?4
?5
?6*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
* 
ga
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
* 
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
?|
VARIABLE_VALUEAdam/dense_19/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_19/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_2/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_3/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_14/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_14/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_15/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_15/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_16/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_16/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_17/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_17/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_block_1/layer_normalization_2/gamma/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_block_1/layer_normalization_2/beta/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_block_1/layer_normalization_3/gamma/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_block_1/layer_normalization_3/beta/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_19/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_19/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_2/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_3/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_14/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_14/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_15/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_15/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_16/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_16/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_17/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_17/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_block_1/layer_normalization_2/gamma/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_block_1/layer_normalization_2/beta/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_block_1/layer_normalization_3/gamma/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_block_1/layer_normalization_3/beta/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
serving_default_input_2Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_25token_and_position_embedding_1/embedding_3/embeddings5token_and_position_embedding_1/embedding_2/embeddings:transformer_block_1/multi_head_attention_1/dense_10/kernel8transformer_block_1/multi_head_attention_1/dense_10/bias:transformer_block_1/multi_head_attention_1/dense_11/kernel8transformer_block_1/multi_head_attention_1/dense_11/bias:transformer_block_1/multi_head_attention_1/dense_12/kernel8transformer_block_1/multi_head_attention_1/dense_12/bias:transformer_block_1/multi_head_attention_1/dense_13/kernel8transformer_block_1/multi_head_attention_1/dense_13/bias/transformer_block_1/layer_normalization_2/gamma.transformer_block_1/layer_normalization_2/betadense_14/kerneldense_14/biasdense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/bias/transformer_block_1/layer_normalization_3/gamma.transformer_block_1/layer_normalization_3/betadense_19/kerneldense_19/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_102454
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?*
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOpItoken_and_position_embedding_1/embedding_2/embeddings/Read/ReadVariableOpItoken_and_position_embedding_1/embedding_3/embeddings/Read/ReadVariableOpNtransformer_block_1/multi_head_attention_1/dense_10/kernel/Read/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_10/bias/Read/ReadVariableOpNtransformer_block_1/multi_head_attention_1/dense_11/kernel/Read/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_11/bias/Read/ReadVariableOpNtransformer_block_1/multi_head_attention_1/dense_12/kernel/Read/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_12/bias/Read/ReadVariableOpNtransformer_block_1/multi_head_attention_1/dense_13/kernel/Read/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOpCtransformer_block_1/layer_normalization_2/gamma/Read/ReadVariableOpBtransformer_block_1/layer_normalization_2/beta/Read/ReadVariableOpCtransformer_block_1/layer_normalization_3/gamma/Read/ReadVariableOpBtransformer_block_1/layer_normalization_3/beta/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp*Adam/dense_19/kernel/m/Read/ReadVariableOp(Adam/dense_19/bias/m/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_2/embeddings/m/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_3/embeddings/m/Read/ReadVariableOpUAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/m/Read/ReadVariableOpSAdam/transformer_block_1/multi_head_attention_1/dense_10/bias/m/Read/ReadVariableOpUAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/m/Read/ReadVariableOpSAdam/transformer_block_1/multi_head_attention_1/dense_11/bias/m/Read/ReadVariableOpUAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/m/Read/ReadVariableOpSAdam/transformer_block_1/multi_head_attention_1/dense_12/bias/m/Read/ReadVariableOpUAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/m/Read/ReadVariableOpSAdam/transformer_block_1/multi_head_attention_1/dense_13/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp*Adam/dense_16/kernel/m/Read/ReadVariableOp(Adam/dense_16/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOpJAdam/transformer_block_1/layer_normalization_2/gamma/m/Read/ReadVariableOpIAdam/transformer_block_1/layer_normalization_2/beta/m/Read/ReadVariableOpJAdam/transformer_block_1/layer_normalization_3/gamma/m/Read/ReadVariableOpIAdam/transformer_block_1/layer_normalization_3/beta/m/Read/ReadVariableOp*Adam/dense_19/kernel/v/Read/ReadVariableOp(Adam/dense_19/bias/v/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_2/embeddings/v/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_3/embeddings/v/Read/ReadVariableOpUAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/v/Read/ReadVariableOpSAdam/transformer_block_1/multi_head_attention_1/dense_10/bias/v/Read/ReadVariableOpUAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/v/Read/ReadVariableOpSAdam/transformer_block_1/multi_head_attention_1/dense_11/bias/v/Read/ReadVariableOpUAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/v/Read/ReadVariableOpSAdam/transformer_block_1/multi_head_attention_1/dense_12/bias/v/Read/ReadVariableOpUAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/v/Read/ReadVariableOpSAdam/transformer_block_1/multi_head_attention_1/dense_13/bias/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOp*Adam/dense_16/kernel/v/Read/ReadVariableOp(Adam/dense_16/bias/v/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOpJAdam/transformer_block_1/layer_normalization_2/gamma/v/Read/ReadVariableOpIAdam/transformer_block_1/layer_normalization_2/beta/v/Read/ReadVariableOpJAdam/transformer_block_1/layer_normalization_3/gamma/v/Read/ReadVariableOpIAdam/transformer_block_1/layer_normalization_3/beta/v/Read/ReadVariableOpConst*b
Tin[
Y2W	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_105104
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_19/kerneldense_19/bias5token_and_position_embedding_1/embedding_2/embeddings5token_and_position_embedding_1/embedding_3/embeddings:transformer_block_1/multi_head_attention_1/dense_10/kernel8transformer_block_1/multi_head_attention_1/dense_10/bias:transformer_block_1/multi_head_attention_1/dense_11/kernel8transformer_block_1/multi_head_attention_1/dense_11/bias:transformer_block_1/multi_head_attention_1/dense_12/kernel8transformer_block_1/multi_head_attention_1/dense_12/bias:transformer_block_1/multi_head_attention_1/dense_13/kernel8transformer_block_1/multi_head_attention_1/dense_13/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/bias/transformer_block_1/layer_normalization_2/gamma.transformer_block_1/layer_normalization_2/beta/transformer_block_1/layer_normalization_3/gamma.transformer_block_1/layer_normalization_3/beta	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcounttrue_positives_1false_negativestrue_positivesfalse_positivesAdam/dense_19/kernel/mAdam/dense_19/bias/m<Adam/token_and_position_embedding_1/embedding_2/embeddings/m<Adam/token_and_position_embedding_1/embedding_3/embeddings/mAAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/m?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/mAAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/m?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/mAAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/m?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/mAAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/m?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/dense_15/kernel/mAdam/dense_15/bias/mAdam/dense_16/kernel/mAdam/dense_16/bias/mAdam/dense_17/kernel/mAdam/dense_17/bias/m6Adam/transformer_block_1/layer_normalization_2/gamma/m5Adam/transformer_block_1/layer_normalization_2/beta/m6Adam/transformer_block_1/layer_normalization_3/gamma/m5Adam/transformer_block_1/layer_normalization_3/beta/mAdam/dense_19/kernel/vAdam/dense_19/bias/v<Adam/token_and_position_embedding_1/embedding_2/embeddings/v<Adam/token_and_position_embedding_1/embedding_3/embeddings/vAAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/v?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/vAAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/v?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/vAAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/v?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/vAAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/v?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/vAdam/dense_14/kernel/vAdam/dense_14/bias/vAdam/dense_15/kernel/vAdam/dense_15/bias/vAdam/dense_16/kernel/vAdam/dense_16/bias/vAdam/dense_17/kernel/vAdam/dense_17/bias/v6Adam/transformer_block_1/layer_normalization_2/gamma/v5Adam/transformer_block_1/layer_normalization_2/beta/v6Adam/transformer_block_1/layer_normalization_3/gamma/v5Adam/transformer_block_1/layer_normalization_3/beta/v*a
TinZ
X2V*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_105369??-
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_100989
dense_14_input#
dense_14_100965:
??
dense_14_100967:	?#
dense_15_100971:
??
dense_15_100973:	?#
dense_16_100977:
??
dense_16_100979:	?#
dense_17_100983:
??
dense_17_100985:	?
identity?? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCalldense_14_inputdense_14_100965dense_14_100967*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_100606?
dropout_7/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_100617?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_15_100971dense_15_100973*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_100650?
dropout_8/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_100661?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0dense_16_100977dense_16_100979*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_100694?
dropout_9/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_100705?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0dense_17_100983dense_17_100985*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_100737~
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:] Y
-
_output_shapes
:???????????
(
_user_specified_namedense_14_input
?

e
F__inference_dropout_12_layer_call_and_return_conditional_losses_104275

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed2????[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_dense_14_layer_call_and_return_conditional_losses_104626

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:???????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_8_layer_call_fn_104703

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_100826u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_dense_19_layer_call_fn_104284

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_101481p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
-__inference_sequential_1_layer_call_fn_104316

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_100744u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_dense_14_layer_call_fn_104595

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_100606u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_12_layer_call_and_return_conditional_losses_101569

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed2????[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_7_layer_call_fn_104636

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_100859u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_9_layer_call_fn_104765

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_100705f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_103847

inputsU
Amulti_head_attention_1_dense_10_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_10_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_11_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_11_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_12_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_12_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_13_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_13_biasadd_readvariableop_resource:	?B
3layer_normalization_2_mul_3_readvariableop_resource:	?@
1layer_normalization_2_add_readvariableop_resource:	?K
7sequential_1_dense_14_tensordot_readvariableop_resource:
??D
5sequential_1_dense_14_biasadd_readvariableop_resource:	?K
7sequential_1_dense_15_tensordot_readvariableop_resource:
??D
5sequential_1_dense_15_biasadd_readvariableop_resource:	?K
7sequential_1_dense_16_tensordot_readvariableop_resource:
??D
5sequential_1_dense_16_biasadd_readvariableop_resource:	?K
7sequential_1_dense_17_tensordot_readvariableop_resource:
??D
5sequential_1_dense_17_biasadd_readvariableop_resource:	?B
3layer_normalization_3_mul_3_readvariableop_resource:	?@
1layer_normalization_3_add_readvariableop_resource:	?
identity??(layer_normalization_2/add/ReadVariableOp?*layer_normalization_2/mul_3/ReadVariableOp?(layer_normalization_3/add/ReadVariableOp?*layer_normalization_3/mul_3/ReadVariableOp?6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp?,sequential_1/dense_14/BiasAdd/ReadVariableOp?.sequential_1/dense_14/Tensordot/ReadVariableOp?,sequential_1/dense_15/BiasAdd/ReadVariableOp?.sequential_1/dense_15/Tensordot/ReadVariableOp?,sequential_1/dense_16/BiasAdd/ReadVariableOp?.sequential_1/dense_16/Tensordot/ReadVariableOp?,sequential_1/dense_17/BiasAdd/ReadVariableOp?.sequential_1/dense_17/Tensordot/ReadVariableOpR
multi_head_attention_1/ShapeShapeinputs*
T0*
_output_shapes
:t
*multi_head_attention_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,multi_head_attention_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,multi_head_attention_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$multi_head_attention_1/strided_sliceStridedSlice%multi_head_attention_1/Shape:output:03multi_head_attention_1/strided_slice/stack:output:05multi_head_attention_1/strided_slice/stack_1:output:05multi_head_attention_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
8multi_head_attention_1/dense_10/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_10_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_10/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_10/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_10/Tensordot/Shape:output:07multi_head_attention_1/dense_10/Tensordot/free:output:0@multi_head_attention_1/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_10/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_10/Tensordot/Shape:output:07multi_head_attention_1/dense_10/Tensordot/axes:output:0Bmulti_head_attention_1/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_10/Tensordot/ProdProd;multi_head_attention_1/dense_10/Tensordot/GatherV2:output:08multi_head_attention_1/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_10/Tensordot/Prod_1Prod=multi_head_attention_1/dense_10/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_10/Tensordot/concatConcatV27multi_head_attention_1/dense_10/Tensordot/free:output:07multi_head_attention_1/dense_10/Tensordot/axes:output:0>multi_head_attention_1/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_10/Tensordot/stackPack7multi_head_attention_1/dense_10/Tensordot/Prod:output:09multi_head_attention_1/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_10/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_10/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_10/Tensordot/ReshapeReshape7multi_head_attention_1/dense_10/Tensordot/transpose:y:08multi_head_attention_1/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_10/Tensordot/MatMulMatMul:multi_head_attention_1/dense_10/Tensordot/Reshape:output:0@multi_head_attention_1/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_10/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_10/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_10/Tensordot/Const_2:output:0@multi_head_attention_1/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_10/TensordotReshape:multi_head_attention_1/dense_10/Tensordot/MatMul:product:0;multi_head_attention_1/dense_10/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_10/BiasAddBiasAdd2multi_head_attention_1/dense_10/Tensordot:output:0>multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_10/ReluRelu0multi_head_attention_1/dense_10/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_1/dense_11/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_11_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_11/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_11/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_11/Tensordot/Shape:output:07multi_head_attention_1/dense_11/Tensordot/free:output:0@multi_head_attention_1/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_11/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_11/Tensordot/Shape:output:07multi_head_attention_1/dense_11/Tensordot/axes:output:0Bmulti_head_attention_1/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_11/Tensordot/ProdProd;multi_head_attention_1/dense_11/Tensordot/GatherV2:output:08multi_head_attention_1/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_11/Tensordot/Prod_1Prod=multi_head_attention_1/dense_11/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_11/Tensordot/concatConcatV27multi_head_attention_1/dense_11/Tensordot/free:output:07multi_head_attention_1/dense_11/Tensordot/axes:output:0>multi_head_attention_1/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_11/Tensordot/stackPack7multi_head_attention_1/dense_11/Tensordot/Prod:output:09multi_head_attention_1/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_11/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_11/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_11/Tensordot/ReshapeReshape7multi_head_attention_1/dense_11/Tensordot/transpose:y:08multi_head_attention_1/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_11/Tensordot/MatMulMatMul:multi_head_attention_1/dense_11/Tensordot/Reshape:output:0@multi_head_attention_1/dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_11/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_11/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_11/Tensordot/Const_2:output:0@multi_head_attention_1/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_11/TensordotReshape:multi_head_attention_1/dense_11/Tensordot/MatMul:product:0;multi_head_attention_1/dense_11/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_11/BiasAddBiasAdd2multi_head_attention_1/dense_11/Tensordot:output:0>multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_11/ReluRelu0multi_head_attention_1/dense_11/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_1/dense_12/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_12/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_12/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_12/Tensordot/Shape:output:07multi_head_attention_1/dense_12/Tensordot/free:output:0@multi_head_attention_1/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_12/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_12/Tensordot/Shape:output:07multi_head_attention_1/dense_12/Tensordot/axes:output:0Bmulti_head_attention_1/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_12/Tensordot/ProdProd;multi_head_attention_1/dense_12/Tensordot/GatherV2:output:08multi_head_attention_1/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_12/Tensordot/Prod_1Prod=multi_head_attention_1/dense_12/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_12/Tensordot/concatConcatV27multi_head_attention_1/dense_12/Tensordot/free:output:07multi_head_attention_1/dense_12/Tensordot/axes:output:0>multi_head_attention_1/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_12/Tensordot/stackPack7multi_head_attention_1/dense_12/Tensordot/Prod:output:09multi_head_attention_1/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_12/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_12/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_12/Tensordot/ReshapeReshape7multi_head_attention_1/dense_12/Tensordot/transpose:y:08multi_head_attention_1/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_12/Tensordot/MatMulMatMul:multi_head_attention_1/dense_12/Tensordot/Reshape:output:0@multi_head_attention_1/dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_12/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_12/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_12/Tensordot/Const_2:output:0@multi_head_attention_1/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_12/TensordotReshape:multi_head_attention_1/dense_12/Tensordot/MatMul:product:0;multi_head_attention_1/dense_12/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_12/BiasAddBiasAdd2multi_head_attention_1/dense_12/Tensordot:output:0>multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_12/ReluRelu0multi_head_attention_1/dense_12/BiasAdd:output:0*
T0*-
_output_shapes
:???????????q
&multi_head_attention_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????h
&multi_head_attention_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&multi_head_attention_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
$multi_head_attention_1/Reshape/shapePack-multi_head_attention_1/strided_slice:output:0/multi_head_attention_1/Reshape/shape/1:output:0/multi_head_attention_1/Reshape/shape/2:output:0/multi_head_attention_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
multi_head_attention_1/ReshapeReshape2multi_head_attention_1/dense_10/Relu:activations:0-multi_head_attention_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????~
%multi_head_attention_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 multi_head_attention_1/transpose	Transpose'multi_head_attention_1/Reshape:output:0.multi_head_attention_1/transpose/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_1/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_1/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
&multi_head_attention_1/Reshape_1/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_1/shape/1:output:01multi_head_attention_1/Reshape_1/shape/2:output:01multi_head_attention_1/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_1Reshape2multi_head_attention_1/dense_11/Relu:activations:0/multi_head_attention_1/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_1	Transpose)multi_head_attention_1/Reshape_1:output:00multi_head_attention_1/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_1/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_1/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
&multi_head_attention_1/Reshape_2/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_2/shape/1:output:01multi_head_attention_1/Reshape_2/shape/2:output:01multi_head_attention_1/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_2Reshape2multi_head_attention_1/dense_12/Relu:activations:0/multi_head_attention_1/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_2	Transpose)multi_head_attention_1/Reshape_2:output:00multi_head_attention_1/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
multi_head_attention_1/MatMulBatchMatMulV2$multi_head_attention_1/transpose:y:0&multi_head_attention_1/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(t
multi_head_attention_1/Shape_1Shape&multi_head_attention_1/transpose_1:y:0*
T0*
_output_shapes
:
,multi_head_attention_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.multi_head_attention_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.multi_head_attention_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&multi_head_attention_1/strided_slice_1StridedSlice'multi_head_attention_1/Shape_1:output:05multi_head_attention_1/strided_slice_1/stack:output:07multi_head_attention_1/strided_slice_1/stack_1:output:07multi_head_attention_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
multi_head_attention_1/CastCast/multi_head_attention_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: e
multi_head_attention_1/SqrtSqrtmulti_head_attention_1/Cast:y:0*
T0*
_output_shapes
: ?
multi_head_attention_1/truedivRealDiv&multi_head_attention_1/MatMul:output:0multi_head_attention_1/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_1/SoftmaxSoftmax"multi_head_attention_1/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_1/MatMul_1BatchMatMulV2(multi_head_attention_1/Softmax:softmax:0&multi_head_attention_1/transpose_2:y:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_3	Transpose(multi_head_attention_1/MatMul_1:output:00multi_head_attention_1/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????k
(multi_head_attention_1/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
&multi_head_attention_1/Reshape_3/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_3/shape/1:output:01multi_head_attention_1/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_3Reshape&multi_head_attention_1/transpose_3:y:0/multi_head_attention_1/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
8multi_head_attention_1/dense_13/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_13_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
/multi_head_attention_1/dense_13/Tensordot/ShapeShape)multi_head_attention_1/Reshape_3:output:0*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_13/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_13/Tensordot/Shape:output:07multi_head_attention_1/dense_13/Tensordot/free:output:0@multi_head_attention_1/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_13/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_13/Tensordot/Shape:output:07multi_head_attention_1/dense_13/Tensordot/axes:output:0Bmulti_head_attention_1/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_13/Tensordot/ProdProd;multi_head_attention_1/dense_13/Tensordot/GatherV2:output:08multi_head_attention_1/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_13/Tensordot/Prod_1Prod=multi_head_attention_1/dense_13/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_13/Tensordot/concatConcatV27multi_head_attention_1/dense_13/Tensordot/free:output:07multi_head_attention_1/dense_13/Tensordot/axes:output:0>multi_head_attention_1/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_13/Tensordot/stackPack7multi_head_attention_1/dense_13/Tensordot/Prod:output:09multi_head_attention_1/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_13/Tensordot/transpose	Transpose)multi_head_attention_1/Reshape_3:output:09multi_head_attention_1/dense_13/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
1multi_head_attention_1/dense_13/Tensordot/ReshapeReshape7multi_head_attention_1/dense_13/Tensordot/transpose:y:08multi_head_attention_1/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_13/Tensordot/MatMulMatMul:multi_head_attention_1/dense_13/Tensordot/Reshape:output:0@multi_head_attention_1/dense_13/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_13/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_13/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_13/Tensordot/Const_2:output:0@multi_head_attention_1/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_13/TensordotReshape:multi_head_attention_1/dense_13/Tensordot/MatMul:product:0;multi_head_attention_1/dense_13/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_13/BiasAddBiasAdd2multi_head_attention_1/dense_13/Tensordot:output:0>multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
$multi_head_attention_1/dense_13/ReluRelu0multi_head_attention_1/dense_13/BiasAdd:output:0*
T0*5
_output_shapes#
!:????????????????????
dropout_10/IdentityIdentity2multi_head_attention_1/dense_13/Relu:activations:0*
T0*5
_output_shapes#
!:???????????????????j
addAddV2inputsdropout_10/Identity:output:0*
T0*-
_output_shapes
:???????????R
layer_normalization_2/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_2/mul_1Mullayer_normalization_2/mul:z:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_2StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_2/stack:output:06layer_normalization_2/strided_slice_2/stack_1:output:06layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mul_2Mul&layer_normalization_2/mul_2/x:output:0.layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul_1:z:0layer_normalization_2/mul_2:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_2/ReshapeReshapeadd:z:0,layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_2/mul_3/ReadVariableOpReadVariableOp3layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/mul_3Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/addAddV2layer_normalization_2/mul_3:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_14/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
%sequential_1/dense_14/Tensordot/ShapeShapelayer_normalization_2/add:z:0*
T0*
_output_shapes
:o
-sequential_1/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_14/Tensordot/GatherV2GatherV2.sequential_1/dense_14/Tensordot/Shape:output:0-sequential_1/dense_14/Tensordot/free:output:06sequential_1/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_14/Tensordot/GatherV2_1GatherV2.sequential_1/dense_14/Tensordot/Shape:output:0-sequential_1/dense_14/Tensordot/axes:output:08sequential_1/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_14/Tensordot/ProdProd1sequential_1/dense_14/Tensordot/GatherV2:output:0.sequential_1/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_14/Tensordot/Prod_1Prod3sequential_1/dense_14/Tensordot/GatherV2_1:output:00sequential_1/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_14/Tensordot/concatConcatV2-sequential_1/dense_14/Tensordot/free:output:0-sequential_1/dense_14/Tensordot/axes:output:04sequential_1/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_14/Tensordot/stackPack-sequential_1/dense_14/Tensordot/Prod:output:0/sequential_1/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_14/Tensordot/transpose	Transposelayer_normalization_2/add:z:0/sequential_1/dense_14/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_14/Tensordot/ReshapeReshape-sequential_1/dense_14/Tensordot/transpose:y:0.sequential_1/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_14/Tensordot/MatMulMatMul0sequential_1/dense_14/Tensordot/Reshape:output:06sequential_1/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_14/Tensordot/concat_1ConcatV21sequential_1/dense_14/Tensordot/GatherV2:output:00sequential_1/dense_14/Tensordot/Const_2:output:06sequential_1/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_14/TensordotReshape0sequential_1/dense_14/Tensordot/MatMul:product:01sequential_1/dense_14/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_14/BiasAddBiasAdd(sequential_1/dense_14/Tensordot:output:04sequential_1/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_14/ReluRelu&sequential_1/dense_14/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
sequential_1/dropout_7/IdentityIdentity(sequential_1/dense_14/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_15/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_15/Tensordot/ShapeShape(sequential_1/dropout_7/Identity:output:0*
T0*
_output_shapes
:o
-sequential_1/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_15/Tensordot/GatherV2GatherV2.sequential_1/dense_15/Tensordot/Shape:output:0-sequential_1/dense_15/Tensordot/free:output:06sequential_1/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_15/Tensordot/GatherV2_1GatherV2.sequential_1/dense_15/Tensordot/Shape:output:0-sequential_1/dense_15/Tensordot/axes:output:08sequential_1/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_15/Tensordot/ProdProd1sequential_1/dense_15/Tensordot/GatherV2:output:0.sequential_1/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_15/Tensordot/Prod_1Prod3sequential_1/dense_15/Tensordot/GatherV2_1:output:00sequential_1/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_15/Tensordot/concatConcatV2-sequential_1/dense_15/Tensordot/free:output:0-sequential_1/dense_15/Tensordot/axes:output:04sequential_1/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_15/Tensordot/stackPack-sequential_1/dense_15/Tensordot/Prod:output:0/sequential_1/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_15/Tensordot/transpose	Transpose(sequential_1/dropout_7/Identity:output:0/sequential_1/dense_15/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_15/Tensordot/ReshapeReshape-sequential_1/dense_15/Tensordot/transpose:y:0.sequential_1/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_15/Tensordot/MatMulMatMul0sequential_1/dense_15/Tensordot/Reshape:output:06sequential_1/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_15/Tensordot/concat_1ConcatV21sequential_1/dense_15/Tensordot/GatherV2:output:00sequential_1/dense_15/Tensordot/Const_2:output:06sequential_1/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_15/TensordotReshape0sequential_1/dense_15/Tensordot/MatMul:product:01sequential_1/dense_15/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_15/BiasAddBiasAdd(sequential_1/dense_15/Tensordot:output:04sequential_1/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_15/ReluRelu&sequential_1/dense_15/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
sequential_1/dropout_8/IdentityIdentity(sequential_1/dense_15/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_16/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_16/Tensordot/ShapeShape(sequential_1/dropout_8/Identity:output:0*
T0*
_output_shapes
:o
-sequential_1/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_16/Tensordot/GatherV2GatherV2.sequential_1/dense_16/Tensordot/Shape:output:0-sequential_1/dense_16/Tensordot/free:output:06sequential_1/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_16/Tensordot/GatherV2_1GatherV2.sequential_1/dense_16/Tensordot/Shape:output:0-sequential_1/dense_16/Tensordot/axes:output:08sequential_1/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_16/Tensordot/ProdProd1sequential_1/dense_16/Tensordot/GatherV2:output:0.sequential_1/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_16/Tensordot/Prod_1Prod3sequential_1/dense_16/Tensordot/GatherV2_1:output:00sequential_1/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_16/Tensordot/concatConcatV2-sequential_1/dense_16/Tensordot/free:output:0-sequential_1/dense_16/Tensordot/axes:output:04sequential_1/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_16/Tensordot/stackPack-sequential_1/dense_16/Tensordot/Prod:output:0/sequential_1/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_16/Tensordot/transpose	Transpose(sequential_1/dropout_8/Identity:output:0/sequential_1/dense_16/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_16/Tensordot/ReshapeReshape-sequential_1/dense_16/Tensordot/transpose:y:0.sequential_1/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_16/Tensordot/MatMulMatMul0sequential_1/dense_16/Tensordot/Reshape:output:06sequential_1/dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_16/Tensordot/concat_1ConcatV21sequential_1/dense_16/Tensordot/GatherV2:output:00sequential_1/dense_16/Tensordot/Const_2:output:06sequential_1/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_16/TensordotReshape0sequential_1/dense_16/Tensordot/MatMul:product:01sequential_1/dense_16/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_16/BiasAddBiasAdd(sequential_1/dense_16/Tensordot:output:04sequential_1/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_16/ReluRelu&sequential_1/dense_16/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
sequential_1/dropout_9/IdentityIdentity(sequential_1/dense_16/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_17/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_17/Tensordot/ShapeShape(sequential_1/dropout_9/Identity:output:0*
T0*
_output_shapes
:o
-sequential_1/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_17/Tensordot/GatherV2GatherV2.sequential_1/dense_17/Tensordot/Shape:output:0-sequential_1/dense_17/Tensordot/free:output:06sequential_1/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_17/Tensordot/GatherV2_1GatherV2.sequential_1/dense_17/Tensordot/Shape:output:0-sequential_1/dense_17/Tensordot/axes:output:08sequential_1/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_17/Tensordot/ProdProd1sequential_1/dense_17/Tensordot/GatherV2:output:0.sequential_1/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_17/Tensordot/Prod_1Prod3sequential_1/dense_17/Tensordot/GatherV2_1:output:00sequential_1/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_17/Tensordot/concatConcatV2-sequential_1/dense_17/Tensordot/free:output:0-sequential_1/dense_17/Tensordot/axes:output:04sequential_1/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_17/Tensordot/stackPack-sequential_1/dense_17/Tensordot/Prod:output:0/sequential_1/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_17/Tensordot/transpose	Transpose(sequential_1/dropout_9/Identity:output:0/sequential_1/dense_17/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_17/Tensordot/ReshapeReshape-sequential_1/dense_17/Tensordot/transpose:y:0.sequential_1/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_17/Tensordot/MatMulMatMul0sequential_1/dense_17/Tensordot/Reshape:output:06sequential_1/dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_17/Tensordot/concat_1ConcatV21sequential_1/dense_17/Tensordot/GatherV2:output:00sequential_1/dense_17/Tensordot/Const_2:output:06sequential_1/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_17/TensordotReshape0sequential_1/dense_17/Tensordot/MatMul:product:01sequential_1/dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_17/BiasAddBiasAdd(sequential_1/dense_17/Tensordot:output:04sequential_1/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????
dropout_11/IdentityIdentity&sequential_1/dense_17/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
add_1AddV2layer_normalization_2/add:z:0dropout_11/Identity:output:0*
T0*-
_output_shapes
:???????????T
layer_normalization_3/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_3/mul_1Mullayer_normalization_3/mul:z:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_2StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_2/stack:output:06layer_normalization_3/strided_slice_2/stack_1:output:06layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mul_2Mul&layer_normalization_3/mul_2/x:output:0.layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul_1:z:0layer_normalization_3/mul_2:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_3/ReshapeReshape	add_1:z:0,layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_3/mul_3/ReadVariableOpReadVariableOp3layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/mul_3Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/addAddV2layer_normalization_3/mul_3:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
IdentityIdentitylayer_normalization_3/add:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_3/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_3/ReadVariableOp7^multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_10/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_11/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_12/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_13/Tensordot/ReadVariableOp-^sequential_1/dense_14/BiasAdd/ReadVariableOp/^sequential_1/dense_14/Tensordot/ReadVariableOp-^sequential_1/dense_15/BiasAdd/ReadVariableOp/^sequential_1/dense_15/Tensordot/ReadVariableOp-^sequential_1/dense_16/BiasAdd/ReadVariableOp/^sequential_1/dense_16/Tensordot/ReadVariableOp-^sequential_1/dense_17/BiasAdd/ReadVariableOp/^sequential_1/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : : : 2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_3/ReadVariableOp*layer_normalization_2/mul_3/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_3/ReadVariableOp*layer_normalization_3/mul_3/ReadVariableOp2p
6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp2\
,sequential_1/dense_14/BiasAdd/ReadVariableOp,sequential_1/dense_14/BiasAdd/ReadVariableOp2`
.sequential_1/dense_14/Tensordot/ReadVariableOp.sequential_1/dense_14/Tensordot/ReadVariableOp2\
,sequential_1/dense_15/BiasAdd/ReadVariableOp,sequential_1/dense_15/BiasAdd/ReadVariableOp2`
.sequential_1/dense_15/Tensordot/ReadVariableOp.sequential_1/dense_15/Tensordot/ReadVariableOp2\
,sequential_1/dense_16/BiasAdd/ReadVariableOp,sequential_1/dense_16/BiasAdd/ReadVariableOp2`
.sequential_1/dense_16/Tensordot/ReadVariableOp.sequential_1/dense_16/Tensordot/ReadVariableOp2\
,sequential_1/dense_17/BiasAdd/ReadVariableOp,sequential_1/dense_17/BiasAdd/ReadVariableOp2`
.sequential_1/dense_17/Tensordot/ReadVariableOp.sequential_1/dense_17/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_104653

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:???????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2????[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????u
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????o
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:???????????_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_dense_17_layer_call_fn_104796

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_100737u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_101468

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
S
7__inference_global_max_pooling1d_1_layer_call_fn_104242

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_101026i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_dense_15_layer_call_and_return_conditional_losses_100650

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:???????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_12_layer_call_fn_104258

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_101569p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
n
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_101026

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?%
?

C__inference_model_1_layer_call_and_return_conditional_losses_102336
input_29
%token_and_position_embedding_1_102282:
??9
%token_and_position_embedding_1_102284:
??.
transformer_block_1_102287:
??)
transformer_block_1_102289:	?.
transformer_block_1_102291:
??)
transformer_block_1_102293:	?.
transformer_block_1_102295:
??)
transformer_block_1_102297:	?.
transformer_block_1_102299:
??)
transformer_block_1_102301:	?)
transformer_block_1_102303:	?)
transformer_block_1_102305:	?.
transformer_block_1_102307:
??)
transformer_block_1_102309:	?.
transformer_block_1_102311:
??)
transformer_block_1_102313:	?.
transformer_block_1_102315:
??)
transformer_block_1_102317:	?.
transformer_block_1_102319:
??)
transformer_block_1_102321:	?)
transformer_block_1_102323:	?)
transformer_block_1_102325:	?#
dense_19_102330:
??
dense_19_102332:	?
identity?? dense_19/StatefulPartitionedCall?6token_and_position_embedding_1/StatefulPartitionedCall?+transformer_block_1/StatefulPartitionedCall?
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2%token_and_position_embedding_1_102282%token_and_position_embedding_1_102284*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *c
f^R\
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_101059?
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_block_1_102287transformer_block_1_102289transformer_block_1_102291transformer_block_1_102293transformer_block_1_102295transformer_block_1_102297transformer_block_1_102299transformer_block_1_102301transformer_block_1_102303transformer_block_1_102305transformer_block_1_102307transformer_block_1_102309transformer_block_1_102311transformer_block_1_102313transformer_block_1_102315transformer_block_1_102317transformer_block_1_102319transformer_block_1_102321transformer_block_1_102323transformer_block_1_102325* 
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_101420?
&global_max_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_101026?
dropout_12/PartitionedCallPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_101468?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_19_102330dense_19_102332*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_101481y
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_19/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?&
?

C__inference_model_1_layer_call_and_return_conditional_losses_102175

inputs9
%token_and_position_embedding_1_102121:
??9
%token_and_position_embedding_1_102123:
??.
transformer_block_1_102126:
??)
transformer_block_1_102128:	?.
transformer_block_1_102130:
??)
transformer_block_1_102132:	?.
transformer_block_1_102134:
??)
transformer_block_1_102136:	?.
transformer_block_1_102138:
??)
transformer_block_1_102140:	?)
transformer_block_1_102142:	?)
transformer_block_1_102144:	?.
transformer_block_1_102146:
??)
transformer_block_1_102148:	?.
transformer_block_1_102150:
??)
transformer_block_1_102152:	?.
transformer_block_1_102154:
??)
transformer_block_1_102156:	?.
transformer_block_1_102158:
??)
transformer_block_1_102160:	?)
transformer_block_1_102162:	?)
transformer_block_1_102164:	?#
dense_19_102169:
??
dense_19_102171:	?
identity?? dense_19/StatefulPartitionedCall?"dropout_12/StatefulPartitionedCall?6token_and_position_embedding_1/StatefulPartitionedCall?+transformer_block_1/StatefulPartitionedCall?
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_1_102121%token_and_position_embedding_1_102123*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *c
f^R\
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_101059?
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_block_1_102126transformer_block_1_102128transformer_block_1_102130transformer_block_1_102132transformer_block_1_102134transformer_block_1_102136transformer_block_1_102138transformer_block_1_102140transformer_block_1_102142transformer_block_1_102144transformer_block_1_102146transformer_block_1_102148transformer_block_1_102150transformer_block_1_102152transformer_block_1_102154transformer_block_1_102156transformer_block_1_102158transformer_block_1_102160transformer_block_1_102162transformer_block_1_102164* 
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_102010?
&global_max_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_101026?
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_101569?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_19_102169dense_19_102171*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_101481y
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_19/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_9_layer_call_fn_104770

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_100793u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_dense_17_layer_call_and_return_conditional_losses_104826

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????e
IdentityIdentityBiasAdd:output:0^NoOp*
T0*-
_output_shapes
:???????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_104641

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:???????????a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:???????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
?__inference_token_and_position_embedding_1_layer_call_fn_103379
x
unknown:
??
	unknown_0:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *c
f^R\
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_101059u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
(
_output_shapes
:??????????

_user_specified_namex
?
n
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_104248

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_dense_15_layer_call_fn_104662

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_100650u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?&
?

C__inference_model_1_layer_call_and_return_conditional_losses_102393
input_29
%token_and_position_embedding_1_102339:
??9
%token_and_position_embedding_1_102341:
??.
transformer_block_1_102344:
??)
transformer_block_1_102346:	?.
transformer_block_1_102348:
??)
transformer_block_1_102350:	?.
transformer_block_1_102352:
??)
transformer_block_1_102354:	?.
transformer_block_1_102356:
??)
transformer_block_1_102358:	?)
transformer_block_1_102360:	?)
transformer_block_1_102362:	?.
transformer_block_1_102364:
??)
transformer_block_1_102366:	?.
transformer_block_1_102368:
??)
transformer_block_1_102370:	?.
transformer_block_1_102372:
??)
transformer_block_1_102374:	?.
transformer_block_1_102376:
??)
transformer_block_1_102378:	?)
transformer_block_1_102380:	?)
transformer_block_1_102382:	?#
dense_19_102387:
??
dense_19_102389:	?
identity?? dense_19/StatefulPartitionedCall?"dropout_12/StatefulPartitionedCall?6token_and_position_embedding_1/StatefulPartitionedCall?+transformer_block_1/StatefulPartitionedCall?
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2%token_and_position_embedding_1_102339%token_and_position_embedding_1_102341*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *c
f^R\
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_101059?
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_block_1_102344transformer_block_1_102346transformer_block_1_102348transformer_block_1_102350transformer_block_1_102352transformer_block_1_102354transformer_block_1_102356transformer_block_1_102358transformer_block_1_102360transformer_block_1_102362transformer_block_1_102364transformer_block_1_102366transformer_block_1_102368transformer_block_1_102370transformer_block_1_102372transformer_block_1_102374transformer_block_1_102376transformer_block_1_102378transformer_block_1_102380transformer_block_1_102382* 
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_102010?
&global_max_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_101026?
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_101569?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_19_102387dense_19_102389*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_101481y
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_19/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?

?
D__inference_dense_19_layer_call_and_return_conditional_losses_101481

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????W
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:??????????a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_model_1_layer_call_fn_102560

inputs
unknown:
??
	unknown_0:
??
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:
??

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:
??

unknown_22:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_102175p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_100617

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:???????????a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:???????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_dense_15_layer_call_and_return_conditional_losses_104693

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:???????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?%
?

C__inference_model_1_layer_call_and_return_conditional_losses_101488

inputs9
%token_and_position_embedding_1_101060:
??9
%token_and_position_embedding_1_101062:
??.
transformer_block_1_101421:
??)
transformer_block_1_101423:	?.
transformer_block_1_101425:
??)
transformer_block_1_101427:	?.
transformer_block_1_101429:
??)
transformer_block_1_101431:	?.
transformer_block_1_101433:
??)
transformer_block_1_101435:	?)
transformer_block_1_101437:	?)
transformer_block_1_101439:	?.
transformer_block_1_101441:
??)
transformer_block_1_101443:	?.
transformer_block_1_101445:
??)
transformer_block_1_101447:	?.
transformer_block_1_101449:
??)
transformer_block_1_101451:	?.
transformer_block_1_101453:
??)
transformer_block_1_101455:	?)
transformer_block_1_101457:	?)
transformer_block_1_101459:	?#
dense_19_101482:
??
dense_19_101484:	?
identity?? dense_19/StatefulPartitionedCall?6token_and_position_embedding_1/StatefulPartitionedCall?+transformer_block_1/StatefulPartitionedCall?
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_1_101060%token_and_position_embedding_1_101062*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *c
f^R\
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_101059?
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_block_1_101421transformer_block_1_101423transformer_block_1_101425transformer_block_1_101427transformer_block_1_101429transformer_block_1_101431transformer_block_1_101433transformer_block_1_101435transformer_block_1_101437transformer_block_1_101439transformer_block_1_101441transformer_block_1_101443transformer_block_1_101445transformer_block_1_101447transformer_block_1_101449transformer_block_1_101451transformer_block_1_101453transformer_block_1_101455transformer_block_1_101457transformer_block_1_101459* 
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_101420?
&global_max_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_101026?
dropout_12/PartitionedCallPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_101468?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_19_101482dense_19_101484*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_101481y
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_19/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?A
"__inference__traced_restore_105369
file_prefix4
 assignvariableop_dense_19_kernel:
??/
 assignvariableop_1_dense_19_bias:	?\
Hassignvariableop_2_token_and_position_embedding_1_embedding_2_embeddings:
??\
Hassignvariableop_3_token_and_position_embedding_1_embedding_3_embeddings:
??a
Massignvariableop_4_transformer_block_1_multi_head_attention_1_dense_10_kernel:
??Z
Kassignvariableop_5_transformer_block_1_multi_head_attention_1_dense_10_bias:	?a
Massignvariableop_6_transformer_block_1_multi_head_attention_1_dense_11_kernel:
??Z
Kassignvariableop_7_transformer_block_1_multi_head_attention_1_dense_11_bias:	?a
Massignvariableop_8_transformer_block_1_multi_head_attention_1_dense_12_kernel:
??Z
Kassignvariableop_9_transformer_block_1_multi_head_attention_1_dense_12_bias:	?b
Nassignvariableop_10_transformer_block_1_multi_head_attention_1_dense_13_kernel:
??[
Lassignvariableop_11_transformer_block_1_multi_head_attention_1_dense_13_bias:	?7
#assignvariableop_12_dense_14_kernel:
??0
!assignvariableop_13_dense_14_bias:	?7
#assignvariableop_14_dense_15_kernel:
??0
!assignvariableop_15_dense_15_bias:	?7
#assignvariableop_16_dense_16_kernel:
??0
!assignvariableop_17_dense_16_bias:	?7
#assignvariableop_18_dense_17_kernel:
??0
!assignvariableop_19_dense_17_bias:	?R
Cassignvariableop_20_transformer_block_1_layer_normalization_2_gamma:	?Q
Bassignvariableop_21_transformer_block_1_layer_normalization_2_beta:	?R
Cassignvariableop_22_transformer_block_1_layer_normalization_3_gamma:	?Q
Bassignvariableop_23_transformer_block_1_layer_normalization_3_beta:	?'
assignvariableop_24_adam_iter:	 )
assignvariableop_25_adam_beta_1: )
assignvariableop_26_adam_beta_2: (
assignvariableop_27_adam_decay: 0
&assignvariableop_28_adam_learning_rate: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: #
assignvariableop_31_total: #
assignvariableop_32_count: 2
$assignvariableop_33_true_positives_1:1
#assignvariableop_34_false_negatives:0
"assignvariableop_35_true_positives:1
#assignvariableop_36_false_positives:>
*assignvariableop_37_adam_dense_19_kernel_m:
??7
(assignvariableop_38_adam_dense_19_bias_m:	?d
Passignvariableop_39_adam_token_and_position_embedding_1_embedding_2_embeddings_m:
??d
Passignvariableop_40_adam_token_and_position_embedding_1_embedding_3_embeddings_m:
??i
Uassignvariableop_41_adam_transformer_block_1_multi_head_attention_1_dense_10_kernel_m:
??b
Sassignvariableop_42_adam_transformer_block_1_multi_head_attention_1_dense_10_bias_m:	?i
Uassignvariableop_43_adam_transformer_block_1_multi_head_attention_1_dense_11_kernel_m:
??b
Sassignvariableop_44_adam_transformer_block_1_multi_head_attention_1_dense_11_bias_m:	?i
Uassignvariableop_45_adam_transformer_block_1_multi_head_attention_1_dense_12_kernel_m:
??b
Sassignvariableop_46_adam_transformer_block_1_multi_head_attention_1_dense_12_bias_m:	?i
Uassignvariableop_47_adam_transformer_block_1_multi_head_attention_1_dense_13_kernel_m:
??b
Sassignvariableop_48_adam_transformer_block_1_multi_head_attention_1_dense_13_bias_m:	?>
*assignvariableop_49_adam_dense_14_kernel_m:
??7
(assignvariableop_50_adam_dense_14_bias_m:	?>
*assignvariableop_51_adam_dense_15_kernel_m:
??7
(assignvariableop_52_adam_dense_15_bias_m:	?>
*assignvariableop_53_adam_dense_16_kernel_m:
??7
(assignvariableop_54_adam_dense_16_bias_m:	?>
*assignvariableop_55_adam_dense_17_kernel_m:
??7
(assignvariableop_56_adam_dense_17_bias_m:	?Y
Jassignvariableop_57_adam_transformer_block_1_layer_normalization_2_gamma_m:	?X
Iassignvariableop_58_adam_transformer_block_1_layer_normalization_2_beta_m:	?Y
Jassignvariableop_59_adam_transformer_block_1_layer_normalization_3_gamma_m:	?X
Iassignvariableop_60_adam_transformer_block_1_layer_normalization_3_beta_m:	?>
*assignvariableop_61_adam_dense_19_kernel_v:
??7
(assignvariableop_62_adam_dense_19_bias_v:	?d
Passignvariableop_63_adam_token_and_position_embedding_1_embedding_2_embeddings_v:
??d
Passignvariableop_64_adam_token_and_position_embedding_1_embedding_3_embeddings_v:
??i
Uassignvariableop_65_adam_transformer_block_1_multi_head_attention_1_dense_10_kernel_v:
??b
Sassignvariableop_66_adam_transformer_block_1_multi_head_attention_1_dense_10_bias_v:	?i
Uassignvariableop_67_adam_transformer_block_1_multi_head_attention_1_dense_11_kernel_v:
??b
Sassignvariableop_68_adam_transformer_block_1_multi_head_attention_1_dense_11_bias_v:	?i
Uassignvariableop_69_adam_transformer_block_1_multi_head_attention_1_dense_12_kernel_v:
??b
Sassignvariableop_70_adam_transformer_block_1_multi_head_attention_1_dense_12_bias_v:	?i
Uassignvariableop_71_adam_transformer_block_1_multi_head_attention_1_dense_13_kernel_v:
??b
Sassignvariableop_72_adam_transformer_block_1_multi_head_attention_1_dense_13_bias_v:	?>
*assignvariableop_73_adam_dense_14_kernel_v:
??7
(assignvariableop_74_adam_dense_14_bias_v:	?>
*assignvariableop_75_adam_dense_15_kernel_v:
??7
(assignvariableop_76_adam_dense_15_bias_v:	?>
*assignvariableop_77_adam_dense_16_kernel_v:
??7
(assignvariableop_78_adam_dense_16_bias_v:	?>
*assignvariableop_79_adam_dense_17_kernel_v:
??7
(assignvariableop_80_adam_dense_17_bias_v:	?Y
Jassignvariableop_81_adam_transformer_block_1_layer_normalization_2_gamma_v:	?X
Iassignvariableop_82_adam_transformer_block_1_layer_normalization_2_beta_v:	?Y
Jassignvariableop_83_adam_transformer_block_1_layer_normalization_3_gamma_v:	?X
Iassignvariableop_84_adam_transformer_block_1_layer_normalization_3_beta_v:	?
identity_86??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_9?(
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?'
value?'B?'VB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?
value?B?VB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*d
dtypesZ
X2V	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_dense_19_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_19_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpHassignvariableop_2_token_and_position_embedding_1_embedding_2_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpHassignvariableop_3_token_and_position_embedding_1_embedding_3_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpMassignvariableop_4_transformer_block_1_multi_head_attention_1_dense_10_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpKassignvariableop_5_transformer_block_1_multi_head_attention_1_dense_10_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpMassignvariableop_6_transformer_block_1_multi_head_attention_1_dense_11_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpKassignvariableop_7_transformer_block_1_multi_head_attention_1_dense_11_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpMassignvariableop_8_transformer_block_1_multi_head_attention_1_dense_12_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpKassignvariableop_9_transformer_block_1_multi_head_attention_1_dense_12_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpNassignvariableop_10_transformer_block_1_multi_head_attention_1_dense_13_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpLassignvariableop_11_transformer_block_1_multi_head_attention_1_dense_13_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_14_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_14_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_15_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_15_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_16_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_16_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_17_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_17_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpCassignvariableop_20_transformer_block_1_layer_normalization_2_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_transformer_block_1_layer_normalization_2_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpCassignvariableop_22_transformer_block_1_layer_normalization_3_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpBassignvariableop_23_transformer_block_1_layer_normalization_3_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_iterIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_beta_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_beta_2Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_decayIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_learning_rateIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp$assignvariableop_33_true_positives_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp#assignvariableop_34_false_negativesIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp"assignvariableop_35_true_positivesIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp#assignvariableop_36_false_positivesIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_19_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_19_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOpPassignvariableop_39_adam_token_and_position_embedding_1_embedding_2_embeddings_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOpPassignvariableop_40_adam_token_and_position_embedding_1_embedding_3_embeddings_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOpUassignvariableop_41_adam_transformer_block_1_multi_head_attention_1_dense_10_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOpSassignvariableop_42_adam_transformer_block_1_multi_head_attention_1_dense_10_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOpUassignvariableop_43_adam_transformer_block_1_multi_head_attention_1_dense_11_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOpSassignvariableop_44_adam_transformer_block_1_multi_head_attention_1_dense_11_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOpUassignvariableop_45_adam_transformer_block_1_multi_head_attention_1_dense_12_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOpSassignvariableop_46_adam_transformer_block_1_multi_head_attention_1_dense_12_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOpUassignvariableop_47_adam_transformer_block_1_multi_head_attention_1_dense_13_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOpSassignvariableop_48_adam_transformer_block_1_multi_head_attention_1_dense_13_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_14_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_14_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_15_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_15_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_16_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_16_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_17_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_17_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOpJassignvariableop_57_adam_transformer_block_1_layer_normalization_2_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOpIassignvariableop_58_adam_transformer_block_1_layer_normalization_2_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOpJassignvariableop_59_adam_transformer_block_1_layer_normalization_3_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOpIassignvariableop_60_adam_transformer_block_1_layer_normalization_3_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_dense_19_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_dense_19_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOpPassignvariableop_63_adam_token_and_position_embedding_1_embedding_2_embeddings_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOpPassignvariableop_64_adam_token_and_position_embedding_1_embedding_3_embeddings_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOpUassignvariableop_65_adam_transformer_block_1_multi_head_attention_1_dense_10_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOpSassignvariableop_66_adam_transformer_block_1_multi_head_attention_1_dense_10_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOpUassignvariableop_67_adam_transformer_block_1_multi_head_attention_1_dense_11_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOpSassignvariableop_68_adam_transformer_block_1_multi_head_attention_1_dense_11_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOpUassignvariableop_69_adam_transformer_block_1_multi_head_attention_1_dense_12_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOpSassignvariableop_70_adam_transformer_block_1_multi_head_attention_1_dense_12_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOpUassignvariableop_71_adam_transformer_block_1_multi_head_attention_1_dense_13_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOpSassignvariableop_72_adam_transformer_block_1_multi_head_attention_1_dense_13_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_dense_14_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_dense_14_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOp*assignvariableop_75_adam_dense_15_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOp(assignvariableop_76_adam_dense_15_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOp*assignvariableop_77_adam_dense_16_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOp(assignvariableop_78_adam_dense_16_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOp*assignvariableop_79_adam_dense_17_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOp(assignvariableop_80_adam_dense_17_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOpJassignvariableop_81_adam_transformer_block_1_layer_normalization_2_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOpIassignvariableop_82_adam_transformer_block_1_layer_normalization_2_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_83AssignVariableOpJassignvariableop_83_adam_transformer_block_1_layer_normalization_3_gamma_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_84AssignVariableOpIassignvariableop_84_adam_transformer_block_1_layer_normalization_3_beta_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_85Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_86IdentityIdentity_85:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_86Identity_86:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
)__inference_dense_16_layer_call_fn_104729

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_100694u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_8_layer_call_fn_104698

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_100661f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_104720

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:???????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2????[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????u
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????o
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:???????????_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_dense_16_layer_call_and_return_conditional_losses_104760

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:???????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_102454
input_2
unknown:
??
	unknown_0:
??
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:
??

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:
??

unknown_22:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_100568p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_100705

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:???????????a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:???????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_100859

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:???????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2????[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????u
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????o
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:???????????_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_104775

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:???????????a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:???????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
-__inference_sequential_1_layer_call_fn_100763
dense_14_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_100744u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
-
_output_shapes
:???????????
(
_user_specified_namedense_14_input
??
?!
!__inference__wrapped_model_100568
input_2^
Jmodel_1_token_and_position_embedding_1_embedding_3_embedding_lookup_100195:
??^
Jmodel_1_token_and_position_embedding_1_embedding_2_embedding_lookup_100200:
??q
]model_1_transformer_block_1_multi_head_attention_1_dense_10_tensordot_readvariableop_resource:
??j
[model_1_transformer_block_1_multi_head_attention_1_dense_10_biasadd_readvariableop_resource:	?q
]model_1_transformer_block_1_multi_head_attention_1_dense_11_tensordot_readvariableop_resource:
??j
[model_1_transformer_block_1_multi_head_attention_1_dense_11_biasadd_readvariableop_resource:	?q
]model_1_transformer_block_1_multi_head_attention_1_dense_12_tensordot_readvariableop_resource:
??j
[model_1_transformer_block_1_multi_head_attention_1_dense_12_biasadd_readvariableop_resource:	?q
]model_1_transformer_block_1_multi_head_attention_1_dense_13_tensordot_readvariableop_resource:
??j
[model_1_transformer_block_1_multi_head_attention_1_dense_13_biasadd_readvariableop_resource:	?^
Omodel_1_transformer_block_1_layer_normalization_2_mul_3_readvariableop_resource:	?\
Mmodel_1_transformer_block_1_layer_normalization_2_add_readvariableop_resource:	?g
Smodel_1_transformer_block_1_sequential_1_dense_14_tensordot_readvariableop_resource:
??`
Qmodel_1_transformer_block_1_sequential_1_dense_14_biasadd_readvariableop_resource:	?g
Smodel_1_transformer_block_1_sequential_1_dense_15_tensordot_readvariableop_resource:
??`
Qmodel_1_transformer_block_1_sequential_1_dense_15_biasadd_readvariableop_resource:	?g
Smodel_1_transformer_block_1_sequential_1_dense_16_tensordot_readvariableop_resource:
??`
Qmodel_1_transformer_block_1_sequential_1_dense_16_biasadd_readvariableop_resource:	?g
Smodel_1_transformer_block_1_sequential_1_dense_17_tensordot_readvariableop_resource:
??`
Qmodel_1_transformer_block_1_sequential_1_dense_17_biasadd_readvariableop_resource:	?^
Omodel_1_transformer_block_1_layer_normalization_3_mul_3_readvariableop_resource:	?\
Mmodel_1_transformer_block_1_layer_normalization_3_add_readvariableop_resource:	?C
/model_1_dense_19_matmul_readvariableop_resource:
???
0model_1_dense_19_biasadd_readvariableop_resource:	?
identity??'model_1/dense_19/BiasAdd/ReadVariableOp?&model_1/dense_19/MatMul/ReadVariableOp?Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup?Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup?Dmodel_1/transformer_block_1/layer_normalization_2/add/ReadVariableOp?Fmodel_1/transformer_block_1/layer_normalization_2/mul_3/ReadVariableOp?Dmodel_1/transformer_block_1/layer_normalization_3/add/ReadVariableOp?Fmodel_1/transformer_block_1/layer_normalization_3/mul_3/ReadVariableOp?Rmodel_1/transformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp?Tmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOp?Rmodel_1/transformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp?Tmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOp?Rmodel_1/transformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp?Tmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOp?Rmodel_1/transformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp?Tmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOp?Hmodel_1/transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOp?Jmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOp?Hmodel_1/transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOp?Jmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOp?Hmodel_1/transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOp?Jmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOp?Hmodel_1/transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOp?Jmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOpc
,model_1/token_and_position_embedding_1/ShapeShapeinput_2*
T0*
_output_shapes
:?
:model_1/token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
<model_1/token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
<model_1/token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4model_1/token_and_position_embedding_1/strided_sliceStridedSlice5model_1/token_and_position_embedding_1/Shape:output:0Cmodel_1/token_and_position_embedding_1/strided_slice/stack:output:0Emodel_1/token_and_position_embedding_1/strided_slice/stack_1:output:0Emodel_1/token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2model_1/token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2model_1/token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
,model_1/token_and_position_embedding_1/rangeRange;model_1/token_and_position_embedding_1/range/start:output:0=model_1/token_and_position_embedding_1/strided_slice:output:0;model_1/token_and_position_embedding_1/range/delta:output:0*
_output_shapes	
:??
Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherJmodel_1_token_and_position_embedding_1_embedding_3_embedding_lookup_1001955model_1/token_and_position_embedding_1/range:output:0*
Tindices0*]
_classS
QOloc:@model_1/token_and_position_embedding_1/embedding_3/embedding_lookup/100195* 
_output_shapes
:
??*
dtype0?
Lmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityLmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup:output:0*
T0*]
_classS
QOloc:@model_1/token_and_position_embedding_1/embedding_3/embedding_lookup/100195* 
_output_shapes
:
???
Nmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityUmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
???
Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherJmodel_1_token_and_position_embedding_1_embedding_2_embedding_lookup_100200input_2*
Tindices0*]
_classS
QOloc:@model_1/token_and_position_embedding_1/embedding_2/embedding_lookup/100200*-
_output_shapes
:???????????*
dtype0?
Lmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityLmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup:output:0*
T0*]
_classS
QOloc:@model_1/token_and_position_embedding_1/embedding_2/embedding_lookup/100200*-
_output_shapes
:????????????
Nmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityUmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
*model_1/token_and_position_embedding_1/addAddV2Wmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Wmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:????????????
8model_1/transformer_block_1/multi_head_attention_1/ShapeShape.model_1/token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
Fmodel_1/transformer_block_1/multi_head_attention_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Hmodel_1/transformer_block_1/multi_head_attention_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Hmodel_1/transformer_block_1/multi_head_attention_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
@model_1/transformer_block_1/multi_head_attention_1/strided_sliceStridedSliceAmodel_1/transformer_block_1/multi_head_attention_1/Shape:output:0Omodel_1/transformer_block_1/multi_head_attention_1/strided_slice/stack:output:0Qmodel_1/transformer_block_1/multi_head_attention_1/strided_slice/stack_1:output:0Qmodel_1/transformer_block_1/multi_head_attention_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Tmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOpReadVariableOp]model_1_transformer_block_1_multi_head_attention_1_dense_10_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ShapeShape.model_1/token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
Smodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2GatherV2Tmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/Shape:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/free:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Umodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Pmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1GatherV2Tmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/Shape:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/axes:output:0^model_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ProdProdWmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2:output:0Tmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/Prod_1ProdYmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1:output:0Vmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Qmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/concatConcatV2Smodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/free:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/axes:output:0Zmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/stackPackSmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/Prod:output:0Umodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Omodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/transpose	Transpose.model_1/token_and_position_embedding_1/add:z:0Umodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReshapeReshapeSmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/transpose:y:0Tmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/MatMulMatMulVmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/Reshape:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Smodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1ConcatV2Wmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2:output:0Vmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_2:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Emodel_1/transformer_block_1/multi_head_attention_1/dense_10/TensordotReshapeVmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/MatMul:product:0Wmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Rmodel_1/transformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpReadVariableOp[model_1_transformer_block_1_multi_head_attention_1_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Cmodel_1/transformer_block_1/multi_head_attention_1/dense_10/BiasAddBiasAddNmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot:output:0Zmodel_1/transformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
@model_1/transformer_block_1/multi_head_attention_1/dense_10/ReluReluLmodel_1/transformer_block_1/multi_head_attention_1/dense_10/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Tmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOpReadVariableOp]model_1_transformer_block_1_multi_head_attention_1_dense_11_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ShapeShape.model_1/token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
Smodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2GatherV2Tmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/Shape:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/free:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Umodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Pmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1GatherV2Tmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/Shape:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/axes:output:0^model_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ProdProdWmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2:output:0Tmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/Prod_1ProdYmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1:output:0Vmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Qmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/concatConcatV2Smodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/free:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/axes:output:0Zmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/stackPackSmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/Prod:output:0Umodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Omodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/transpose	Transpose.model_1/token_and_position_embedding_1/add:z:0Umodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReshapeReshapeSmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/transpose:y:0Tmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/MatMulMatMulVmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/Reshape:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Smodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1ConcatV2Wmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2:output:0Vmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_2:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Emodel_1/transformer_block_1/multi_head_attention_1/dense_11/TensordotReshapeVmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/MatMul:product:0Wmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Rmodel_1/transformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpReadVariableOp[model_1_transformer_block_1_multi_head_attention_1_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Cmodel_1/transformer_block_1/multi_head_attention_1/dense_11/BiasAddBiasAddNmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot:output:0Zmodel_1/transformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
@model_1/transformer_block_1/multi_head_attention_1/dense_11/ReluReluLmodel_1/transformer_block_1/multi_head_attention_1/dense_11/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Tmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOpReadVariableOp]model_1_transformer_block_1_multi_head_attention_1_dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ShapeShape.model_1/token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
Smodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2GatherV2Tmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/Shape:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/free:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Umodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Pmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1GatherV2Tmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/Shape:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/axes:output:0^model_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ProdProdWmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2:output:0Tmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/Prod_1ProdYmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1:output:0Vmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Qmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/concatConcatV2Smodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/free:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/axes:output:0Zmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/stackPackSmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/Prod:output:0Umodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Omodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/transpose	Transpose.model_1/token_and_position_embedding_1/add:z:0Umodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReshapeReshapeSmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/transpose:y:0Tmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/MatMulMatMulVmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/Reshape:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Smodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1ConcatV2Wmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2:output:0Vmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_2:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Emodel_1/transformer_block_1/multi_head_attention_1/dense_12/TensordotReshapeVmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/MatMul:product:0Wmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Rmodel_1/transformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpReadVariableOp[model_1_transformer_block_1_multi_head_attention_1_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Cmodel_1/transformer_block_1/multi_head_attention_1/dense_12/BiasAddBiasAddNmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot:output:0Zmodel_1/transformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
@model_1/transformer_block_1/multi_head_attention_1/dense_12/ReluReluLmodel_1/transformer_block_1/multi_head_attention_1/dense_12/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Bmodel_1/transformer_block_1/multi_head_attention_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
??????????
Bmodel_1/transformer_block_1/multi_head_attention_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Bmodel_1/transformer_block_1/multi_head_attention_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
@model_1/transformer_block_1/multi_head_attention_1/Reshape/shapePackImodel_1/transformer_block_1/multi_head_attention_1/strided_slice:output:0Kmodel_1/transformer_block_1/multi_head_attention_1/Reshape/shape/1:output:0Kmodel_1/transformer_block_1/multi_head_attention_1/Reshape/shape/2:output:0Kmodel_1/transformer_block_1/multi_head_attention_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
:model_1/transformer_block_1/multi_head_attention_1/ReshapeReshapeNmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Relu:activations:0Imodel_1/transformer_block_1/multi_head_attention_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
Amodel_1/transformer_block_1/multi_head_attention_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
<model_1/transformer_block_1/multi_head_attention_1/transpose	TransposeCmodel_1/transformer_block_1/multi_head_attention_1/Reshape:output:0Jmodel_1/transformer_block_1/multi_head_attention_1/transpose/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
Dmodel_1/transformer_block_1/multi_head_attention_1/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
??????????
Dmodel_1/transformer_block_1/multi_head_attention_1/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Dmodel_1/transformer_block_1/multi_head_attention_1/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Bmodel_1/transformer_block_1/multi_head_attention_1/Reshape_1/shapePackImodel_1/transformer_block_1/multi_head_attention_1/strided_slice:output:0Mmodel_1/transformer_block_1/multi_head_attention_1/Reshape_1/shape/1:output:0Mmodel_1/transformer_block_1/multi_head_attention_1/Reshape_1/shape/2:output:0Mmodel_1/transformer_block_1/multi_head_attention_1/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
<model_1/transformer_block_1/multi_head_attention_1/Reshape_1ReshapeNmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Relu:activations:0Kmodel_1/transformer_block_1/multi_head_attention_1/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
Cmodel_1/transformer_block_1/multi_head_attention_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
>model_1/transformer_block_1/multi_head_attention_1/transpose_1	TransposeEmodel_1/transformer_block_1/multi_head_attention_1/Reshape_1:output:0Lmodel_1/transformer_block_1/multi_head_attention_1/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
Dmodel_1/transformer_block_1/multi_head_attention_1/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
??????????
Dmodel_1/transformer_block_1/multi_head_attention_1/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Dmodel_1/transformer_block_1/multi_head_attention_1/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Bmodel_1/transformer_block_1/multi_head_attention_1/Reshape_2/shapePackImodel_1/transformer_block_1/multi_head_attention_1/strided_slice:output:0Mmodel_1/transformer_block_1/multi_head_attention_1/Reshape_2/shape/1:output:0Mmodel_1/transformer_block_1/multi_head_attention_1/Reshape_2/shape/2:output:0Mmodel_1/transformer_block_1/multi_head_attention_1/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
<model_1/transformer_block_1/multi_head_attention_1/Reshape_2ReshapeNmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Relu:activations:0Kmodel_1/transformer_block_1/multi_head_attention_1/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
Cmodel_1/transformer_block_1/multi_head_attention_1/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
>model_1/transformer_block_1/multi_head_attention_1/transpose_2	TransposeEmodel_1/transformer_block_1/multi_head_attention_1/Reshape_2:output:0Lmodel_1/transformer_block_1/multi_head_attention_1/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
9model_1/transformer_block_1/multi_head_attention_1/MatMulBatchMatMulV2@model_1/transformer_block_1/multi_head_attention_1/transpose:y:0Bmodel_1/transformer_block_1/multi_head_attention_1/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(?
:model_1/transformer_block_1/multi_head_attention_1/Shape_1ShapeBmodel_1/transformer_block_1/multi_head_attention_1/transpose_1:y:0*
T0*
_output_shapes
:?
Hmodel_1/transformer_block_1/multi_head_attention_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Jmodel_1/transformer_block_1/multi_head_attention_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Jmodel_1/transformer_block_1/multi_head_attention_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Bmodel_1/transformer_block_1/multi_head_attention_1/strided_slice_1StridedSliceCmodel_1/transformer_block_1/multi_head_attention_1/Shape_1:output:0Qmodel_1/transformer_block_1/multi_head_attention_1/strided_slice_1/stack:output:0Smodel_1/transformer_block_1/multi_head_attention_1/strided_slice_1/stack_1:output:0Smodel_1/transformer_block_1/multi_head_attention_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7model_1/transformer_block_1/multi_head_attention_1/CastCastKmodel_1/transformer_block_1/multi_head_attention_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
7model_1/transformer_block_1/multi_head_attention_1/SqrtSqrt;model_1/transformer_block_1/multi_head_attention_1/Cast:y:0*
T0*
_output_shapes
: ?
:model_1/transformer_block_1/multi_head_attention_1/truedivRealDivBmodel_1/transformer_block_1/multi_head_attention_1/MatMul:output:0;model_1/transformer_block_1/multi_head_attention_1/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
:model_1/transformer_block_1/multi_head_attention_1/SoftmaxSoftmax>model_1/transformer_block_1/multi_head_attention_1/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
;model_1/transformer_block_1/multi_head_attention_1/MatMul_1BatchMatMulV2Dmodel_1/transformer_block_1/multi_head_attention_1/Softmax:softmax:0Bmodel_1/transformer_block_1/multi_head_attention_1/transpose_2:y:0*
T0*8
_output_shapes&
$:"???????????????????
Cmodel_1/transformer_block_1/multi_head_attention_1/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
>model_1/transformer_block_1/multi_head_attention_1/transpose_3	TransposeDmodel_1/transformer_block_1/multi_head_attention_1/MatMul_1:output:0Lmodel_1/transformer_block_1/multi_head_attention_1/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
Dmodel_1/transformer_block_1/multi_head_attention_1/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
??????????
Dmodel_1/transformer_block_1/multi_head_attention_1/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
Bmodel_1/transformer_block_1/multi_head_attention_1/Reshape_3/shapePackImodel_1/transformer_block_1/multi_head_attention_1/strided_slice:output:0Mmodel_1/transformer_block_1/multi_head_attention_1/Reshape_3/shape/1:output:0Mmodel_1/transformer_block_1/multi_head_attention_1/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
<model_1/transformer_block_1/multi_head_attention_1/Reshape_3ReshapeBmodel_1/transformer_block_1/multi_head_attention_1/transpose_3:y:0Kmodel_1/transformer_block_1/multi_head_attention_1/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
Tmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOpReadVariableOp]model_1_transformer_block_1_multi_head_attention_1_dense_13_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ShapeShapeEmodel_1/transformer_block_1/multi_head_attention_1/Reshape_3:output:0*
T0*
_output_shapes
:?
Smodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2GatherV2Tmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/Shape:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/free:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Umodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Pmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1GatherV2Tmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/Shape:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/axes:output:0^model_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Jmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ProdProdWmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2:output:0Tmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/Prod_1ProdYmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1:output:0Vmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Qmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/concatConcatV2Smodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/free:output:0Smodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/axes:output:0Zmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Kmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/stackPackSmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/Prod:output:0Umodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Omodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/transpose	TransposeEmodel_1/transformer_block_1/multi_head_attention_1/Reshape_3:output:0Umodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReshapeReshapeSmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/transpose:y:0Tmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Lmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/MatMulMatMulVmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/Reshape:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Smodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1ConcatV2Wmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2:output:0Vmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_2:output:0\model_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Emodel_1/transformer_block_1/multi_head_attention_1/dense_13/TensordotReshapeVmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/MatMul:product:0Wmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
Rmodel_1/transformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpReadVariableOp[model_1_transformer_block_1_multi_head_attention_1_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Cmodel_1/transformer_block_1/multi_head_attention_1/dense_13/BiasAddBiasAddNmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot:output:0Zmodel_1/transformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
@model_1/transformer_block_1/multi_head_attention_1/dense_13/ReluReluLmodel_1/transformer_block_1/multi_head_attention_1/dense_13/BiasAdd:output:0*
T0*5
_output_shapes#
!:????????????????????
/model_1/transformer_block_1/dropout_10/IdentityIdentityNmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Relu:activations:0*
T0*5
_output_shapes#
!:????????????????????
model_1/transformer_block_1/addAddV2.model_1/token_and_position_embedding_1/add:z:08model_1/transformer_block_1/dropout_10/Identity:output:0*
T0*-
_output_shapes
:????????????
7model_1/transformer_block_1/layer_normalization_2/ShapeShape#model_1/transformer_block_1/add:z:0*
T0*
_output_shapes
:?
Emodel_1/transformer_block_1/layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Gmodel_1/transformer_block_1/layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Gmodel_1/transformer_block_1/layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
?model_1/transformer_block_1/layer_normalization_2/strided_sliceStridedSlice@model_1/transformer_block_1/layer_normalization_2/Shape:output:0Nmodel_1/transformer_block_1/layer_normalization_2/strided_slice/stack:output:0Pmodel_1/transformer_block_1/layer_normalization_2/strided_slice/stack_1:output:0Pmodel_1/transformer_block_1/layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
7model_1/transformer_block_1/layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
5model_1/transformer_block_1/layer_normalization_2/mulMul@model_1/transformer_block_1/layer_normalization_2/mul/x:output:0Hmodel_1/transformer_block_1/layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: ?
Gmodel_1/transformer_block_1/layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Imodel_1/transformer_block_1/layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Imodel_1/transformer_block_1/layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Amodel_1/transformer_block_1/layer_normalization_2/strided_slice_1StridedSlice@model_1/transformer_block_1/layer_normalization_2/Shape:output:0Pmodel_1/transformer_block_1/layer_normalization_2/strided_slice_1/stack:output:0Rmodel_1/transformer_block_1/layer_normalization_2/strided_slice_1/stack_1:output:0Rmodel_1/transformer_block_1/layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7model_1/transformer_block_1/layer_normalization_2/mul_1Mul9model_1/transformer_block_1/layer_normalization_2/mul:z:0Jmodel_1/transformer_block_1/layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: ?
Gmodel_1/transformer_block_1/layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Imodel_1/transformer_block_1/layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Imodel_1/transformer_block_1/layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Amodel_1/transformer_block_1/layer_normalization_2/strided_slice_2StridedSlice@model_1/transformer_block_1/layer_normalization_2/Shape:output:0Pmodel_1/transformer_block_1/layer_normalization_2/strided_slice_2/stack:output:0Rmodel_1/transformer_block_1/layer_normalization_2/strided_slice_2/stack_1:output:0Rmodel_1/transformer_block_1/layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9model_1/transformer_block_1/layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
7model_1/transformer_block_1/layer_normalization_2/mul_2MulBmodel_1/transformer_block_1/layer_normalization_2/mul_2/x:output:0Jmodel_1/transformer_block_1/layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: ?
Amodel_1/transformer_block_1/layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :?
Amodel_1/transformer_block_1/layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
?model_1/transformer_block_1/layer_normalization_2/Reshape/shapePackJmodel_1/transformer_block_1/layer_normalization_2/Reshape/shape/0:output:0;model_1/transformer_block_1/layer_normalization_2/mul_1:z:0;model_1/transformer_block_1/layer_normalization_2/mul_2:z:0Jmodel_1/transformer_block_1/layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
9model_1/transformer_block_1/layer_normalization_2/ReshapeReshape#model_1/transformer_block_1/add:z:0Hmodel_1/transformer_block_1/layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
=model_1/transformer_block_1/layer_normalization_2/ones/packedPack;model_1/transformer_block_1/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:?
<model_1/transformer_block_1/layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
6model_1/transformer_block_1/layer_normalization_2/onesFillFmodel_1/transformer_block_1/layer_normalization_2/ones/packed:output:0Emodel_1/transformer_block_1/layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:??????????
>model_1/transformer_block_1/layer_normalization_2/zeros/packedPack;model_1/transformer_block_1/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:?
=model_1/transformer_block_1/layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
7model_1/transformer_block_1/layer_normalization_2/zerosFillGmodel_1/transformer_block_1/layer_normalization_2/zeros/packed:output:0Fmodel_1/transformer_block_1/layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????z
7model_1/transformer_block_1/layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB |
9model_1/transformer_block_1/layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
Bmodel_1/transformer_block_1/layer_normalization_2/FusedBatchNormV3FusedBatchNormV3Bmodel_1/transformer_block_1/layer_normalization_2/Reshape:output:0?model_1/transformer_block_1/layer_normalization_2/ones:output:0@model_1/transformer_block_1/layer_normalization_2/zeros:output:0@model_1/transformer_block_1/layer_normalization_2/Const:output:0Bmodel_1/transformer_block_1/layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
;model_1/transformer_block_1/layer_normalization_2/Reshape_1ReshapeFmodel_1/transformer_block_1/layer_normalization_2/FusedBatchNormV3:y:0@model_1/transformer_block_1/layer_normalization_2/Shape:output:0*
T0*-
_output_shapes
:????????????
Fmodel_1/transformer_block_1/layer_normalization_2/mul_3/ReadVariableOpReadVariableOpOmodel_1_transformer_block_1_layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7model_1/transformer_block_1/layer_normalization_2/mul_3MulDmodel_1/transformer_block_1/layer_normalization_2/Reshape_1:output:0Nmodel_1/transformer_block_1/layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
Dmodel_1/transformer_block_1/layer_normalization_2/add/ReadVariableOpReadVariableOpMmodel_1_transformer_block_1_layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5model_1/transformer_block_1/layer_normalization_2/addAddV2;model_1/transformer_block_1/layer_normalization_2/mul_3:z:0Lmodel_1/transformer_block_1/layer_normalization_2/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
Jmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOpReadVariableOpSmodel_1_transformer_block_1_sequential_1_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
@model_1/transformer_block_1/sequential_1/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
@model_1/transformer_block_1/sequential_1/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Amodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/ShapeShape9model_1/transformer_block_1/layer_normalization_2/add:z:0*
T0*
_output_shapes
:?
Imodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2GatherV2Jmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/Shape:output:0Imodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/free:output:0Rmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Fmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1GatherV2Jmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/Shape:output:0Imodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/axes:output:0Tmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Amodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@model_1/transformer_block_1/sequential_1/dense_14/Tensordot/ProdProdMmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2:output:0Jmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Cmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Bmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/Prod_1ProdOmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1:output:0Lmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Gmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Bmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/concatConcatV2Imodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/free:output:0Imodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/axes:output:0Pmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Amodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/stackPackImodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/Prod:output:0Kmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Emodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/transpose	Transpose9model_1/transformer_block_1/layer_normalization_2/add:z:0Kmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Cmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/ReshapeReshapeImodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/transpose:y:0Jmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Bmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/MatMulMatMulLmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/Reshape:output:0Rmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Cmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Imodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/concat_1ConcatV2Mmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2:output:0Lmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/Const_2:output:0Rmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
;model_1/transformer_block_1/sequential_1/dense_14/TensordotReshapeLmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/MatMul:product:0Mmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Hmodel_1/transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOpReadVariableOpQmodel_1_transformer_block_1_sequential_1_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9model_1/transformer_block_1/sequential_1/dense_14/BiasAddBiasAddDmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot:output:0Pmodel_1/transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
6model_1/transformer_block_1/sequential_1/dense_14/ReluReluBmodel_1/transformer_block_1/sequential_1/dense_14/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
;model_1/transformer_block_1/sequential_1/dropout_7/IdentityIdentityDmodel_1/transformer_block_1/sequential_1/dense_14/Relu:activations:0*
T0*-
_output_shapes
:????????????
Jmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOpReadVariableOpSmodel_1_transformer_block_1_sequential_1_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
@model_1/transformer_block_1/sequential_1/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
@model_1/transformer_block_1/sequential_1/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Amodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/ShapeShapeDmodel_1/transformer_block_1/sequential_1/dropout_7/Identity:output:0*
T0*
_output_shapes
:?
Imodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2GatherV2Jmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/Shape:output:0Imodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/free:output:0Rmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Fmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1GatherV2Jmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/Shape:output:0Imodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/axes:output:0Tmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Amodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@model_1/transformer_block_1/sequential_1/dense_15/Tensordot/ProdProdMmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2:output:0Jmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Cmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Bmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/Prod_1ProdOmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1:output:0Lmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Gmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Bmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/concatConcatV2Imodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/free:output:0Imodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/axes:output:0Pmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Amodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/stackPackImodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/Prod:output:0Kmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Emodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/transpose	TransposeDmodel_1/transformer_block_1/sequential_1/dropout_7/Identity:output:0Kmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Cmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/ReshapeReshapeImodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/transpose:y:0Jmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Bmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/MatMulMatMulLmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/Reshape:output:0Rmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Cmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Imodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/concat_1ConcatV2Mmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2:output:0Lmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/Const_2:output:0Rmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
;model_1/transformer_block_1/sequential_1/dense_15/TensordotReshapeLmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/MatMul:product:0Mmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Hmodel_1/transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOpReadVariableOpQmodel_1_transformer_block_1_sequential_1_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9model_1/transformer_block_1/sequential_1/dense_15/BiasAddBiasAddDmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot:output:0Pmodel_1/transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
6model_1/transformer_block_1/sequential_1/dense_15/ReluReluBmodel_1/transformer_block_1/sequential_1/dense_15/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
;model_1/transformer_block_1/sequential_1/dropout_8/IdentityIdentityDmodel_1/transformer_block_1/sequential_1/dense_15/Relu:activations:0*
T0*-
_output_shapes
:????????????
Jmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOpReadVariableOpSmodel_1_transformer_block_1_sequential_1_dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
@model_1/transformer_block_1/sequential_1/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
@model_1/transformer_block_1/sequential_1/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Amodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/ShapeShapeDmodel_1/transformer_block_1/sequential_1/dropout_8/Identity:output:0*
T0*
_output_shapes
:?
Imodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2GatherV2Jmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/Shape:output:0Imodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/free:output:0Rmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Fmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1GatherV2Jmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/Shape:output:0Imodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/axes:output:0Tmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Amodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@model_1/transformer_block_1/sequential_1/dense_16/Tensordot/ProdProdMmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2:output:0Jmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Cmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Bmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/Prod_1ProdOmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1:output:0Lmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Gmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Bmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/concatConcatV2Imodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/free:output:0Imodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/axes:output:0Pmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Amodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/stackPackImodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/Prod:output:0Kmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Emodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/transpose	TransposeDmodel_1/transformer_block_1/sequential_1/dropout_8/Identity:output:0Kmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Cmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/ReshapeReshapeImodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/transpose:y:0Jmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Bmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/MatMulMatMulLmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/Reshape:output:0Rmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Cmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Imodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/concat_1ConcatV2Mmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2:output:0Lmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/Const_2:output:0Rmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
;model_1/transformer_block_1/sequential_1/dense_16/TensordotReshapeLmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/MatMul:product:0Mmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Hmodel_1/transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOpReadVariableOpQmodel_1_transformer_block_1_sequential_1_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9model_1/transformer_block_1/sequential_1/dense_16/BiasAddBiasAddDmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot:output:0Pmodel_1/transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
6model_1/transformer_block_1/sequential_1/dense_16/ReluReluBmodel_1/transformer_block_1/sequential_1/dense_16/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
;model_1/transformer_block_1/sequential_1/dropout_9/IdentityIdentityDmodel_1/transformer_block_1/sequential_1/dense_16/Relu:activations:0*
T0*-
_output_shapes
:????????????
Jmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOpReadVariableOpSmodel_1_transformer_block_1_sequential_1_dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
@model_1/transformer_block_1/sequential_1/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
@model_1/transformer_block_1/sequential_1/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Amodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/ShapeShapeDmodel_1/transformer_block_1/sequential_1/dropout_9/Identity:output:0*
T0*
_output_shapes
:?
Imodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2GatherV2Jmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/Shape:output:0Imodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/free:output:0Rmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Fmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1GatherV2Jmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/Shape:output:0Imodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/axes:output:0Tmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Amodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@model_1/transformer_block_1/sequential_1/dense_17/Tensordot/ProdProdMmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2:output:0Jmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Cmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Bmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/Prod_1ProdOmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1:output:0Lmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Gmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Bmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/concatConcatV2Imodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/free:output:0Imodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/axes:output:0Pmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Amodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/stackPackImodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/Prod:output:0Kmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Emodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/transpose	TransposeDmodel_1/transformer_block_1/sequential_1/dropout_9/Identity:output:0Kmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Cmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/ReshapeReshapeImodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/transpose:y:0Jmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Bmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/MatMulMatMulLmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/Reshape:output:0Rmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Cmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Imodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/concat_1ConcatV2Mmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2:output:0Lmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/Const_2:output:0Rmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
;model_1/transformer_block_1/sequential_1/dense_17/TensordotReshapeLmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/MatMul:product:0Mmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Hmodel_1/transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOpReadVariableOpQmodel_1_transformer_block_1_sequential_1_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9model_1/transformer_block_1/sequential_1/dense_17/BiasAddBiasAddDmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot:output:0Pmodel_1/transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
/model_1/transformer_block_1/dropout_11/IdentityIdentityBmodel_1/transformer_block_1/sequential_1/dense_17/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
!model_1/transformer_block_1/add_1AddV29model_1/transformer_block_1/layer_normalization_2/add:z:08model_1/transformer_block_1/dropout_11/Identity:output:0*
T0*-
_output_shapes
:????????????
7model_1/transformer_block_1/layer_normalization_3/ShapeShape%model_1/transformer_block_1/add_1:z:0*
T0*
_output_shapes
:?
Emodel_1/transformer_block_1/layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Gmodel_1/transformer_block_1/layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Gmodel_1/transformer_block_1/layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
?model_1/transformer_block_1/layer_normalization_3/strided_sliceStridedSlice@model_1/transformer_block_1/layer_normalization_3/Shape:output:0Nmodel_1/transformer_block_1/layer_normalization_3/strided_slice/stack:output:0Pmodel_1/transformer_block_1/layer_normalization_3/strided_slice/stack_1:output:0Pmodel_1/transformer_block_1/layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
7model_1/transformer_block_1/layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
5model_1/transformer_block_1/layer_normalization_3/mulMul@model_1/transformer_block_1/layer_normalization_3/mul/x:output:0Hmodel_1/transformer_block_1/layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: ?
Gmodel_1/transformer_block_1/layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Imodel_1/transformer_block_1/layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Imodel_1/transformer_block_1/layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Amodel_1/transformer_block_1/layer_normalization_3/strided_slice_1StridedSlice@model_1/transformer_block_1/layer_normalization_3/Shape:output:0Pmodel_1/transformer_block_1/layer_normalization_3/strided_slice_1/stack:output:0Rmodel_1/transformer_block_1/layer_normalization_3/strided_slice_1/stack_1:output:0Rmodel_1/transformer_block_1/layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7model_1/transformer_block_1/layer_normalization_3/mul_1Mul9model_1/transformer_block_1/layer_normalization_3/mul:z:0Jmodel_1/transformer_block_1/layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: ?
Gmodel_1/transformer_block_1/layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Imodel_1/transformer_block_1/layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Imodel_1/transformer_block_1/layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Amodel_1/transformer_block_1/layer_normalization_3/strided_slice_2StridedSlice@model_1/transformer_block_1/layer_normalization_3/Shape:output:0Pmodel_1/transformer_block_1/layer_normalization_3/strided_slice_2/stack:output:0Rmodel_1/transformer_block_1/layer_normalization_3/strided_slice_2/stack_1:output:0Rmodel_1/transformer_block_1/layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9model_1/transformer_block_1/layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
7model_1/transformer_block_1/layer_normalization_3/mul_2MulBmodel_1/transformer_block_1/layer_normalization_3/mul_2/x:output:0Jmodel_1/transformer_block_1/layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: ?
Amodel_1/transformer_block_1/layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :?
Amodel_1/transformer_block_1/layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
?model_1/transformer_block_1/layer_normalization_3/Reshape/shapePackJmodel_1/transformer_block_1/layer_normalization_3/Reshape/shape/0:output:0;model_1/transformer_block_1/layer_normalization_3/mul_1:z:0;model_1/transformer_block_1/layer_normalization_3/mul_2:z:0Jmodel_1/transformer_block_1/layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
9model_1/transformer_block_1/layer_normalization_3/ReshapeReshape%model_1/transformer_block_1/add_1:z:0Hmodel_1/transformer_block_1/layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
=model_1/transformer_block_1/layer_normalization_3/ones/packedPack;model_1/transformer_block_1/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:?
<model_1/transformer_block_1/layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
6model_1/transformer_block_1/layer_normalization_3/onesFillFmodel_1/transformer_block_1/layer_normalization_3/ones/packed:output:0Emodel_1/transformer_block_1/layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:??????????
>model_1/transformer_block_1/layer_normalization_3/zeros/packedPack;model_1/transformer_block_1/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:?
=model_1/transformer_block_1/layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
7model_1/transformer_block_1/layer_normalization_3/zerosFillGmodel_1/transformer_block_1/layer_normalization_3/zeros/packed:output:0Fmodel_1/transformer_block_1/layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????z
7model_1/transformer_block_1/layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB |
9model_1/transformer_block_1/layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
Bmodel_1/transformer_block_1/layer_normalization_3/FusedBatchNormV3FusedBatchNormV3Bmodel_1/transformer_block_1/layer_normalization_3/Reshape:output:0?model_1/transformer_block_1/layer_normalization_3/ones:output:0@model_1/transformer_block_1/layer_normalization_3/zeros:output:0@model_1/transformer_block_1/layer_normalization_3/Const:output:0Bmodel_1/transformer_block_1/layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
;model_1/transformer_block_1/layer_normalization_3/Reshape_1ReshapeFmodel_1/transformer_block_1/layer_normalization_3/FusedBatchNormV3:y:0@model_1/transformer_block_1/layer_normalization_3/Shape:output:0*
T0*-
_output_shapes
:????????????
Fmodel_1/transformer_block_1/layer_normalization_3/mul_3/ReadVariableOpReadVariableOpOmodel_1_transformer_block_1_layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7model_1/transformer_block_1/layer_normalization_3/mul_3MulDmodel_1/transformer_block_1/layer_normalization_3/Reshape_1:output:0Nmodel_1/transformer_block_1/layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
Dmodel_1/transformer_block_1/layer_normalization_3/add/ReadVariableOpReadVariableOpMmodel_1_transformer_block_1_layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5model_1/transformer_block_1/layer_normalization_3/addAddV2;model_1/transformer_block_1/layer_normalization_3/mul_3:z:0Lmodel_1/transformer_block_1/layer_normalization_3/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????v
4model_1/global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
"model_1/global_max_pooling1d_1/MaxMax9model_1/transformer_block_1/layer_normalization_3/add:z:0=model_1/global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
model_1/dropout_12/IdentityIdentity+model_1/global_max_pooling1d_1/Max:output:0*
T0*(
_output_shapes
:???????????
&model_1/dense_19/MatMul/ReadVariableOpReadVariableOp/model_1_dense_19_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
model_1/dense_19/MatMulMatMul$model_1/dropout_12/Identity:output:0.model_1/dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'model_1/dense_19/BiasAdd/ReadVariableOpReadVariableOp0model_1_dense_19_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_1/dense_19/BiasAddBiasAdd!model_1/dense_19/MatMul:product:0/model_1/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
model_1/dense_19/SoftmaxSoftmax!model_1/dense_19/BiasAdd:output:0*
T0*(
_output_shapes
:??????????r
IdentityIdentity"model_1/dense_19/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp(^model_1/dense_19/BiasAdd/ReadVariableOp'^model_1/dense_19/MatMul/ReadVariableOpD^model_1/token_and_position_embedding_1/embedding_2/embedding_lookupD^model_1/token_and_position_embedding_1/embedding_3/embedding_lookupE^model_1/transformer_block_1/layer_normalization_2/add/ReadVariableOpG^model_1/transformer_block_1/layer_normalization_2/mul_3/ReadVariableOpE^model_1/transformer_block_1/layer_normalization_3/add/ReadVariableOpG^model_1/transformer_block_1/layer_normalization_3/mul_3/ReadVariableOpS^model_1/transformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpU^model_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOpS^model_1/transformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpU^model_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOpS^model_1/transformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpU^model_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOpS^model_1/transformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpU^model_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOpI^model_1/transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOpK^model_1/transformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOpI^model_1/transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOpK^model_1/transformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOpI^model_1/transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOpK^model_1/transformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOpI^model_1/transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOpK^model_1/transformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2R
'model_1/dense_19/BiasAdd/ReadVariableOp'model_1/dense_19/BiasAdd/ReadVariableOp2P
&model_1/dense_19/MatMul/ReadVariableOp&model_1/dense_19/MatMul/ReadVariableOp2?
Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookupCmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup2?
Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupCmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup2?
Dmodel_1/transformer_block_1/layer_normalization_2/add/ReadVariableOpDmodel_1/transformer_block_1/layer_normalization_2/add/ReadVariableOp2?
Fmodel_1/transformer_block_1/layer_normalization_2/mul_3/ReadVariableOpFmodel_1/transformer_block_1/layer_normalization_2/mul_3/ReadVariableOp2?
Dmodel_1/transformer_block_1/layer_normalization_3/add/ReadVariableOpDmodel_1/transformer_block_1/layer_normalization_3/add/ReadVariableOp2?
Fmodel_1/transformer_block_1/layer_normalization_3/mul_3/ReadVariableOpFmodel_1/transformer_block_1/layer_normalization_3/mul_3/ReadVariableOp2?
Rmodel_1/transformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpRmodel_1/transformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp2?
Tmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOpTmodel_1/transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOp2?
Rmodel_1/transformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpRmodel_1/transformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp2?
Tmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOpTmodel_1/transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOp2?
Rmodel_1/transformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpRmodel_1/transformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp2?
Tmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOpTmodel_1/transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOp2?
Rmodel_1/transformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpRmodel_1/transformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp2?
Tmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOpTmodel_1/transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOp2?
Hmodel_1/transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOpHmodel_1/transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOp2?
Jmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOpJmodel_1/transformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOp2?
Hmodel_1/transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOpHmodel_1/transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOp2?
Jmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOpJmodel_1/transformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOp2?
Hmodel_1/transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOpHmodel_1/transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOp2?
Jmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOpJmodel_1/transformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOp2?
Hmodel_1/transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOpHmodel_1/transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOp2?
Jmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOpJmodel_1/transformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOp:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
??
?
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_101420

inputsU
Amulti_head_attention_1_dense_10_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_10_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_11_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_11_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_12_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_12_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_13_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_13_biasadd_readvariableop_resource:	?B
3layer_normalization_2_mul_3_readvariableop_resource:	?@
1layer_normalization_2_add_readvariableop_resource:	?K
7sequential_1_dense_14_tensordot_readvariableop_resource:
??D
5sequential_1_dense_14_biasadd_readvariableop_resource:	?K
7sequential_1_dense_15_tensordot_readvariableop_resource:
??D
5sequential_1_dense_15_biasadd_readvariableop_resource:	?K
7sequential_1_dense_16_tensordot_readvariableop_resource:
??D
5sequential_1_dense_16_biasadd_readvariableop_resource:	?K
7sequential_1_dense_17_tensordot_readvariableop_resource:
??D
5sequential_1_dense_17_biasadd_readvariableop_resource:	?B
3layer_normalization_3_mul_3_readvariableop_resource:	?@
1layer_normalization_3_add_readvariableop_resource:	?
identity??(layer_normalization_2/add/ReadVariableOp?*layer_normalization_2/mul_3/ReadVariableOp?(layer_normalization_3/add/ReadVariableOp?*layer_normalization_3/mul_3/ReadVariableOp?6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp?,sequential_1/dense_14/BiasAdd/ReadVariableOp?.sequential_1/dense_14/Tensordot/ReadVariableOp?,sequential_1/dense_15/BiasAdd/ReadVariableOp?.sequential_1/dense_15/Tensordot/ReadVariableOp?,sequential_1/dense_16/BiasAdd/ReadVariableOp?.sequential_1/dense_16/Tensordot/ReadVariableOp?,sequential_1/dense_17/BiasAdd/ReadVariableOp?.sequential_1/dense_17/Tensordot/ReadVariableOpR
multi_head_attention_1/ShapeShapeinputs*
T0*
_output_shapes
:t
*multi_head_attention_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,multi_head_attention_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,multi_head_attention_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$multi_head_attention_1/strided_sliceStridedSlice%multi_head_attention_1/Shape:output:03multi_head_attention_1/strided_slice/stack:output:05multi_head_attention_1/strided_slice/stack_1:output:05multi_head_attention_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
8multi_head_attention_1/dense_10/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_10_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_10/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_10/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_10/Tensordot/Shape:output:07multi_head_attention_1/dense_10/Tensordot/free:output:0@multi_head_attention_1/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_10/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_10/Tensordot/Shape:output:07multi_head_attention_1/dense_10/Tensordot/axes:output:0Bmulti_head_attention_1/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_10/Tensordot/ProdProd;multi_head_attention_1/dense_10/Tensordot/GatherV2:output:08multi_head_attention_1/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_10/Tensordot/Prod_1Prod=multi_head_attention_1/dense_10/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_10/Tensordot/concatConcatV27multi_head_attention_1/dense_10/Tensordot/free:output:07multi_head_attention_1/dense_10/Tensordot/axes:output:0>multi_head_attention_1/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_10/Tensordot/stackPack7multi_head_attention_1/dense_10/Tensordot/Prod:output:09multi_head_attention_1/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_10/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_10/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_10/Tensordot/ReshapeReshape7multi_head_attention_1/dense_10/Tensordot/transpose:y:08multi_head_attention_1/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_10/Tensordot/MatMulMatMul:multi_head_attention_1/dense_10/Tensordot/Reshape:output:0@multi_head_attention_1/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_10/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_10/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_10/Tensordot/Const_2:output:0@multi_head_attention_1/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_10/TensordotReshape:multi_head_attention_1/dense_10/Tensordot/MatMul:product:0;multi_head_attention_1/dense_10/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_10/BiasAddBiasAdd2multi_head_attention_1/dense_10/Tensordot:output:0>multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_10/ReluRelu0multi_head_attention_1/dense_10/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_1/dense_11/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_11_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_11/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_11/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_11/Tensordot/Shape:output:07multi_head_attention_1/dense_11/Tensordot/free:output:0@multi_head_attention_1/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_11/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_11/Tensordot/Shape:output:07multi_head_attention_1/dense_11/Tensordot/axes:output:0Bmulti_head_attention_1/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_11/Tensordot/ProdProd;multi_head_attention_1/dense_11/Tensordot/GatherV2:output:08multi_head_attention_1/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_11/Tensordot/Prod_1Prod=multi_head_attention_1/dense_11/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_11/Tensordot/concatConcatV27multi_head_attention_1/dense_11/Tensordot/free:output:07multi_head_attention_1/dense_11/Tensordot/axes:output:0>multi_head_attention_1/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_11/Tensordot/stackPack7multi_head_attention_1/dense_11/Tensordot/Prod:output:09multi_head_attention_1/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_11/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_11/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_11/Tensordot/ReshapeReshape7multi_head_attention_1/dense_11/Tensordot/transpose:y:08multi_head_attention_1/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_11/Tensordot/MatMulMatMul:multi_head_attention_1/dense_11/Tensordot/Reshape:output:0@multi_head_attention_1/dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_11/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_11/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_11/Tensordot/Const_2:output:0@multi_head_attention_1/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_11/TensordotReshape:multi_head_attention_1/dense_11/Tensordot/MatMul:product:0;multi_head_attention_1/dense_11/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_11/BiasAddBiasAdd2multi_head_attention_1/dense_11/Tensordot:output:0>multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_11/ReluRelu0multi_head_attention_1/dense_11/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_1/dense_12/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_12/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_12/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_12/Tensordot/Shape:output:07multi_head_attention_1/dense_12/Tensordot/free:output:0@multi_head_attention_1/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_12/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_12/Tensordot/Shape:output:07multi_head_attention_1/dense_12/Tensordot/axes:output:0Bmulti_head_attention_1/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_12/Tensordot/ProdProd;multi_head_attention_1/dense_12/Tensordot/GatherV2:output:08multi_head_attention_1/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_12/Tensordot/Prod_1Prod=multi_head_attention_1/dense_12/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_12/Tensordot/concatConcatV27multi_head_attention_1/dense_12/Tensordot/free:output:07multi_head_attention_1/dense_12/Tensordot/axes:output:0>multi_head_attention_1/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_12/Tensordot/stackPack7multi_head_attention_1/dense_12/Tensordot/Prod:output:09multi_head_attention_1/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_12/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_12/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_12/Tensordot/ReshapeReshape7multi_head_attention_1/dense_12/Tensordot/transpose:y:08multi_head_attention_1/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_12/Tensordot/MatMulMatMul:multi_head_attention_1/dense_12/Tensordot/Reshape:output:0@multi_head_attention_1/dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_12/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_12/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_12/Tensordot/Const_2:output:0@multi_head_attention_1/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_12/TensordotReshape:multi_head_attention_1/dense_12/Tensordot/MatMul:product:0;multi_head_attention_1/dense_12/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_12/BiasAddBiasAdd2multi_head_attention_1/dense_12/Tensordot:output:0>multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_12/ReluRelu0multi_head_attention_1/dense_12/BiasAdd:output:0*
T0*-
_output_shapes
:???????????q
&multi_head_attention_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????h
&multi_head_attention_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&multi_head_attention_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
$multi_head_attention_1/Reshape/shapePack-multi_head_attention_1/strided_slice:output:0/multi_head_attention_1/Reshape/shape/1:output:0/multi_head_attention_1/Reshape/shape/2:output:0/multi_head_attention_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
multi_head_attention_1/ReshapeReshape2multi_head_attention_1/dense_10/Relu:activations:0-multi_head_attention_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????~
%multi_head_attention_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 multi_head_attention_1/transpose	Transpose'multi_head_attention_1/Reshape:output:0.multi_head_attention_1/transpose/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_1/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_1/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
&multi_head_attention_1/Reshape_1/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_1/shape/1:output:01multi_head_attention_1/Reshape_1/shape/2:output:01multi_head_attention_1/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_1Reshape2multi_head_attention_1/dense_11/Relu:activations:0/multi_head_attention_1/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_1	Transpose)multi_head_attention_1/Reshape_1:output:00multi_head_attention_1/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_1/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_1/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
&multi_head_attention_1/Reshape_2/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_2/shape/1:output:01multi_head_attention_1/Reshape_2/shape/2:output:01multi_head_attention_1/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_2Reshape2multi_head_attention_1/dense_12/Relu:activations:0/multi_head_attention_1/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_2	Transpose)multi_head_attention_1/Reshape_2:output:00multi_head_attention_1/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
multi_head_attention_1/MatMulBatchMatMulV2$multi_head_attention_1/transpose:y:0&multi_head_attention_1/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(t
multi_head_attention_1/Shape_1Shape&multi_head_attention_1/transpose_1:y:0*
T0*
_output_shapes
:
,multi_head_attention_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.multi_head_attention_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.multi_head_attention_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&multi_head_attention_1/strided_slice_1StridedSlice'multi_head_attention_1/Shape_1:output:05multi_head_attention_1/strided_slice_1/stack:output:07multi_head_attention_1/strided_slice_1/stack_1:output:07multi_head_attention_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
multi_head_attention_1/CastCast/multi_head_attention_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: e
multi_head_attention_1/SqrtSqrtmulti_head_attention_1/Cast:y:0*
T0*
_output_shapes
: ?
multi_head_attention_1/truedivRealDiv&multi_head_attention_1/MatMul:output:0multi_head_attention_1/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_1/SoftmaxSoftmax"multi_head_attention_1/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_1/MatMul_1BatchMatMulV2(multi_head_attention_1/Softmax:softmax:0&multi_head_attention_1/transpose_2:y:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_3	Transpose(multi_head_attention_1/MatMul_1:output:00multi_head_attention_1/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????k
(multi_head_attention_1/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
&multi_head_attention_1/Reshape_3/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_3/shape/1:output:01multi_head_attention_1/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_3Reshape&multi_head_attention_1/transpose_3:y:0/multi_head_attention_1/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
8multi_head_attention_1/dense_13/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_13_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
/multi_head_attention_1/dense_13/Tensordot/ShapeShape)multi_head_attention_1/Reshape_3:output:0*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_13/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_13/Tensordot/Shape:output:07multi_head_attention_1/dense_13/Tensordot/free:output:0@multi_head_attention_1/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_13/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_13/Tensordot/Shape:output:07multi_head_attention_1/dense_13/Tensordot/axes:output:0Bmulti_head_attention_1/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_13/Tensordot/ProdProd;multi_head_attention_1/dense_13/Tensordot/GatherV2:output:08multi_head_attention_1/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_13/Tensordot/Prod_1Prod=multi_head_attention_1/dense_13/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_13/Tensordot/concatConcatV27multi_head_attention_1/dense_13/Tensordot/free:output:07multi_head_attention_1/dense_13/Tensordot/axes:output:0>multi_head_attention_1/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_13/Tensordot/stackPack7multi_head_attention_1/dense_13/Tensordot/Prod:output:09multi_head_attention_1/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_13/Tensordot/transpose	Transpose)multi_head_attention_1/Reshape_3:output:09multi_head_attention_1/dense_13/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
1multi_head_attention_1/dense_13/Tensordot/ReshapeReshape7multi_head_attention_1/dense_13/Tensordot/transpose:y:08multi_head_attention_1/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_13/Tensordot/MatMulMatMul:multi_head_attention_1/dense_13/Tensordot/Reshape:output:0@multi_head_attention_1/dense_13/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_13/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_13/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_13/Tensordot/Const_2:output:0@multi_head_attention_1/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_13/TensordotReshape:multi_head_attention_1/dense_13/Tensordot/MatMul:product:0;multi_head_attention_1/dense_13/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_13/BiasAddBiasAdd2multi_head_attention_1/dense_13/Tensordot:output:0>multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
$multi_head_attention_1/dense_13/ReluRelu0multi_head_attention_1/dense_13/BiasAdd:output:0*
T0*5
_output_shapes#
!:????????????????????
dropout_10/IdentityIdentity2multi_head_attention_1/dense_13/Relu:activations:0*
T0*5
_output_shapes#
!:???????????????????j
addAddV2inputsdropout_10/Identity:output:0*
T0*-
_output_shapes
:???????????R
layer_normalization_2/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_2/mul_1Mullayer_normalization_2/mul:z:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_2StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_2/stack:output:06layer_normalization_2/strided_slice_2/stack_1:output:06layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mul_2Mul&layer_normalization_2/mul_2/x:output:0.layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul_1:z:0layer_normalization_2/mul_2:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_2/ReshapeReshapeadd:z:0,layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_2/mul_3/ReadVariableOpReadVariableOp3layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/mul_3Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/addAddV2layer_normalization_2/mul_3:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_14/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
%sequential_1/dense_14/Tensordot/ShapeShapelayer_normalization_2/add:z:0*
T0*
_output_shapes
:o
-sequential_1/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_14/Tensordot/GatherV2GatherV2.sequential_1/dense_14/Tensordot/Shape:output:0-sequential_1/dense_14/Tensordot/free:output:06sequential_1/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_14/Tensordot/GatherV2_1GatherV2.sequential_1/dense_14/Tensordot/Shape:output:0-sequential_1/dense_14/Tensordot/axes:output:08sequential_1/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_14/Tensordot/ProdProd1sequential_1/dense_14/Tensordot/GatherV2:output:0.sequential_1/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_14/Tensordot/Prod_1Prod3sequential_1/dense_14/Tensordot/GatherV2_1:output:00sequential_1/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_14/Tensordot/concatConcatV2-sequential_1/dense_14/Tensordot/free:output:0-sequential_1/dense_14/Tensordot/axes:output:04sequential_1/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_14/Tensordot/stackPack-sequential_1/dense_14/Tensordot/Prod:output:0/sequential_1/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_14/Tensordot/transpose	Transposelayer_normalization_2/add:z:0/sequential_1/dense_14/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_14/Tensordot/ReshapeReshape-sequential_1/dense_14/Tensordot/transpose:y:0.sequential_1/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_14/Tensordot/MatMulMatMul0sequential_1/dense_14/Tensordot/Reshape:output:06sequential_1/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_14/Tensordot/concat_1ConcatV21sequential_1/dense_14/Tensordot/GatherV2:output:00sequential_1/dense_14/Tensordot/Const_2:output:06sequential_1/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_14/TensordotReshape0sequential_1/dense_14/Tensordot/MatMul:product:01sequential_1/dense_14/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_14/BiasAddBiasAdd(sequential_1/dense_14/Tensordot:output:04sequential_1/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_14/ReluRelu&sequential_1/dense_14/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
sequential_1/dropout_7/IdentityIdentity(sequential_1/dense_14/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_15/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_15/Tensordot/ShapeShape(sequential_1/dropout_7/Identity:output:0*
T0*
_output_shapes
:o
-sequential_1/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_15/Tensordot/GatherV2GatherV2.sequential_1/dense_15/Tensordot/Shape:output:0-sequential_1/dense_15/Tensordot/free:output:06sequential_1/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_15/Tensordot/GatherV2_1GatherV2.sequential_1/dense_15/Tensordot/Shape:output:0-sequential_1/dense_15/Tensordot/axes:output:08sequential_1/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_15/Tensordot/ProdProd1sequential_1/dense_15/Tensordot/GatherV2:output:0.sequential_1/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_15/Tensordot/Prod_1Prod3sequential_1/dense_15/Tensordot/GatherV2_1:output:00sequential_1/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_15/Tensordot/concatConcatV2-sequential_1/dense_15/Tensordot/free:output:0-sequential_1/dense_15/Tensordot/axes:output:04sequential_1/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_15/Tensordot/stackPack-sequential_1/dense_15/Tensordot/Prod:output:0/sequential_1/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_15/Tensordot/transpose	Transpose(sequential_1/dropout_7/Identity:output:0/sequential_1/dense_15/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_15/Tensordot/ReshapeReshape-sequential_1/dense_15/Tensordot/transpose:y:0.sequential_1/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_15/Tensordot/MatMulMatMul0sequential_1/dense_15/Tensordot/Reshape:output:06sequential_1/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_15/Tensordot/concat_1ConcatV21sequential_1/dense_15/Tensordot/GatherV2:output:00sequential_1/dense_15/Tensordot/Const_2:output:06sequential_1/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_15/TensordotReshape0sequential_1/dense_15/Tensordot/MatMul:product:01sequential_1/dense_15/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_15/BiasAddBiasAdd(sequential_1/dense_15/Tensordot:output:04sequential_1/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_15/ReluRelu&sequential_1/dense_15/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
sequential_1/dropout_8/IdentityIdentity(sequential_1/dense_15/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_16/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_16/Tensordot/ShapeShape(sequential_1/dropout_8/Identity:output:0*
T0*
_output_shapes
:o
-sequential_1/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_16/Tensordot/GatherV2GatherV2.sequential_1/dense_16/Tensordot/Shape:output:0-sequential_1/dense_16/Tensordot/free:output:06sequential_1/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_16/Tensordot/GatherV2_1GatherV2.sequential_1/dense_16/Tensordot/Shape:output:0-sequential_1/dense_16/Tensordot/axes:output:08sequential_1/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_16/Tensordot/ProdProd1sequential_1/dense_16/Tensordot/GatherV2:output:0.sequential_1/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_16/Tensordot/Prod_1Prod3sequential_1/dense_16/Tensordot/GatherV2_1:output:00sequential_1/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_16/Tensordot/concatConcatV2-sequential_1/dense_16/Tensordot/free:output:0-sequential_1/dense_16/Tensordot/axes:output:04sequential_1/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_16/Tensordot/stackPack-sequential_1/dense_16/Tensordot/Prod:output:0/sequential_1/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_16/Tensordot/transpose	Transpose(sequential_1/dropout_8/Identity:output:0/sequential_1/dense_16/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_16/Tensordot/ReshapeReshape-sequential_1/dense_16/Tensordot/transpose:y:0.sequential_1/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_16/Tensordot/MatMulMatMul0sequential_1/dense_16/Tensordot/Reshape:output:06sequential_1/dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_16/Tensordot/concat_1ConcatV21sequential_1/dense_16/Tensordot/GatherV2:output:00sequential_1/dense_16/Tensordot/Const_2:output:06sequential_1/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_16/TensordotReshape0sequential_1/dense_16/Tensordot/MatMul:product:01sequential_1/dense_16/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_16/BiasAddBiasAdd(sequential_1/dense_16/Tensordot:output:04sequential_1/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_16/ReluRelu&sequential_1/dense_16/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
sequential_1/dropout_9/IdentityIdentity(sequential_1/dense_16/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_17/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_17/Tensordot/ShapeShape(sequential_1/dropout_9/Identity:output:0*
T0*
_output_shapes
:o
-sequential_1/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_17/Tensordot/GatherV2GatherV2.sequential_1/dense_17/Tensordot/Shape:output:0-sequential_1/dense_17/Tensordot/free:output:06sequential_1/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_17/Tensordot/GatherV2_1GatherV2.sequential_1/dense_17/Tensordot/Shape:output:0-sequential_1/dense_17/Tensordot/axes:output:08sequential_1/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_17/Tensordot/ProdProd1sequential_1/dense_17/Tensordot/GatherV2:output:0.sequential_1/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_17/Tensordot/Prod_1Prod3sequential_1/dense_17/Tensordot/GatherV2_1:output:00sequential_1/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_17/Tensordot/concatConcatV2-sequential_1/dense_17/Tensordot/free:output:0-sequential_1/dense_17/Tensordot/axes:output:04sequential_1/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_17/Tensordot/stackPack-sequential_1/dense_17/Tensordot/Prod:output:0/sequential_1/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_17/Tensordot/transpose	Transpose(sequential_1/dropout_9/Identity:output:0/sequential_1/dense_17/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_17/Tensordot/ReshapeReshape-sequential_1/dense_17/Tensordot/transpose:y:0.sequential_1/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_17/Tensordot/MatMulMatMul0sequential_1/dense_17/Tensordot/Reshape:output:06sequential_1/dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_17/Tensordot/concat_1ConcatV21sequential_1/dense_17/Tensordot/GatherV2:output:00sequential_1/dense_17/Tensordot/Const_2:output:06sequential_1/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_17/TensordotReshape0sequential_1/dense_17/Tensordot/MatMul:product:01sequential_1/dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_17/BiasAddBiasAdd(sequential_1/dense_17/Tensordot:output:04sequential_1/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????
dropout_11/IdentityIdentity&sequential_1/dense_17/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
add_1AddV2layer_normalization_2/add:z:0dropout_11/Identity:output:0*
T0*-
_output_shapes
:???????????T
layer_normalization_3/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_3/mul_1Mullayer_normalization_3/mul:z:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_2StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_2/stack:output:06layer_normalization_3/strided_slice_2/stack_1:output:06layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mul_2Mul&layer_normalization_3/mul_2/x:output:0.layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul_1:z:0layer_normalization_3/mul_2:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_3/ReshapeReshape	add_1:z:0,layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_3/mul_3/ReadVariableOpReadVariableOp3layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/mul_3Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/addAddV2layer_normalization_3/mul_3:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
IdentityIdentitylayer_normalization_3/add:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_3/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_3/ReadVariableOp7^multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_10/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_11/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_12/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_13/Tensordot/ReadVariableOp-^sequential_1/dense_14/BiasAdd/ReadVariableOp/^sequential_1/dense_14/Tensordot/ReadVariableOp-^sequential_1/dense_15/BiasAdd/ReadVariableOp/^sequential_1/dense_15/Tensordot/ReadVariableOp-^sequential_1/dense_16/BiasAdd/ReadVariableOp/^sequential_1/dense_16/Tensordot/ReadVariableOp-^sequential_1/dense_17/BiasAdd/ReadVariableOp/^sequential_1/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : : : 2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_3/ReadVariableOp*layer_normalization_2/mul_3/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_3/ReadVariableOp*layer_normalization_3/mul_3/ReadVariableOp2p
6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp2\
,sequential_1/dense_14/BiasAdd/ReadVariableOp,sequential_1/dense_14/BiasAdd/ReadVariableOp2`
.sequential_1/dense_14/Tensordot/ReadVariableOp.sequential_1/dense_14/Tensordot/ReadVariableOp2\
,sequential_1/dense_15/BiasAdd/ReadVariableOp,sequential_1/dense_15/BiasAdd/ReadVariableOp2`
.sequential_1/dense_15/Tensordot/ReadVariableOp.sequential_1/dense_15/Tensordot/ReadVariableOp2\
,sequential_1/dense_16/BiasAdd/ReadVariableOp,sequential_1/dense_16/BiasAdd/ReadVariableOp2`
.sequential_1/dense_16/Tensordot/ReadVariableOp.sequential_1/dense_16/Tensordot/ReadVariableOp2\
,sequential_1/dense_17/BiasAdd/ReadVariableOp,sequential_1/dense_17/BiasAdd/ReadVariableOp2`
.sequential_1/dense_17/Tensordot/ReadVariableOp.sequential_1/dense_17/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_12_layer_call_fn_104253

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_101468a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_100793

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:???????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2????[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????u
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????o
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:???????????_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_104237

inputsU
Amulti_head_attention_1_dense_10_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_10_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_11_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_11_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_12_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_12_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_13_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_13_biasadd_readvariableop_resource:	?B
3layer_normalization_2_mul_3_readvariableop_resource:	?@
1layer_normalization_2_add_readvariableop_resource:	?K
7sequential_1_dense_14_tensordot_readvariableop_resource:
??D
5sequential_1_dense_14_biasadd_readvariableop_resource:	?K
7sequential_1_dense_15_tensordot_readvariableop_resource:
??D
5sequential_1_dense_15_biasadd_readvariableop_resource:	?K
7sequential_1_dense_16_tensordot_readvariableop_resource:
??D
5sequential_1_dense_16_biasadd_readvariableop_resource:	?K
7sequential_1_dense_17_tensordot_readvariableop_resource:
??D
5sequential_1_dense_17_biasadd_readvariableop_resource:	?B
3layer_normalization_3_mul_3_readvariableop_resource:	?@
1layer_normalization_3_add_readvariableop_resource:	?
identity??(layer_normalization_2/add/ReadVariableOp?*layer_normalization_2/mul_3/ReadVariableOp?(layer_normalization_3/add/ReadVariableOp?*layer_normalization_3/mul_3/ReadVariableOp?6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp?,sequential_1/dense_14/BiasAdd/ReadVariableOp?.sequential_1/dense_14/Tensordot/ReadVariableOp?,sequential_1/dense_15/BiasAdd/ReadVariableOp?.sequential_1/dense_15/Tensordot/ReadVariableOp?,sequential_1/dense_16/BiasAdd/ReadVariableOp?.sequential_1/dense_16/Tensordot/ReadVariableOp?,sequential_1/dense_17/BiasAdd/ReadVariableOp?.sequential_1/dense_17/Tensordot/ReadVariableOpR
multi_head_attention_1/ShapeShapeinputs*
T0*
_output_shapes
:t
*multi_head_attention_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,multi_head_attention_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,multi_head_attention_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$multi_head_attention_1/strided_sliceStridedSlice%multi_head_attention_1/Shape:output:03multi_head_attention_1/strided_slice/stack:output:05multi_head_attention_1/strided_slice/stack_1:output:05multi_head_attention_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
8multi_head_attention_1/dense_10/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_10_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_10/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_10/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_10/Tensordot/Shape:output:07multi_head_attention_1/dense_10/Tensordot/free:output:0@multi_head_attention_1/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_10/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_10/Tensordot/Shape:output:07multi_head_attention_1/dense_10/Tensordot/axes:output:0Bmulti_head_attention_1/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_10/Tensordot/ProdProd;multi_head_attention_1/dense_10/Tensordot/GatherV2:output:08multi_head_attention_1/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_10/Tensordot/Prod_1Prod=multi_head_attention_1/dense_10/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_10/Tensordot/concatConcatV27multi_head_attention_1/dense_10/Tensordot/free:output:07multi_head_attention_1/dense_10/Tensordot/axes:output:0>multi_head_attention_1/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_10/Tensordot/stackPack7multi_head_attention_1/dense_10/Tensordot/Prod:output:09multi_head_attention_1/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_10/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_10/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_10/Tensordot/ReshapeReshape7multi_head_attention_1/dense_10/Tensordot/transpose:y:08multi_head_attention_1/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_10/Tensordot/MatMulMatMul:multi_head_attention_1/dense_10/Tensordot/Reshape:output:0@multi_head_attention_1/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_10/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_10/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_10/Tensordot/Const_2:output:0@multi_head_attention_1/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_10/TensordotReshape:multi_head_attention_1/dense_10/Tensordot/MatMul:product:0;multi_head_attention_1/dense_10/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_10/BiasAddBiasAdd2multi_head_attention_1/dense_10/Tensordot:output:0>multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_10/ReluRelu0multi_head_attention_1/dense_10/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_1/dense_11/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_11_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_11/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_11/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_11/Tensordot/Shape:output:07multi_head_attention_1/dense_11/Tensordot/free:output:0@multi_head_attention_1/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_11/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_11/Tensordot/Shape:output:07multi_head_attention_1/dense_11/Tensordot/axes:output:0Bmulti_head_attention_1/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_11/Tensordot/ProdProd;multi_head_attention_1/dense_11/Tensordot/GatherV2:output:08multi_head_attention_1/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_11/Tensordot/Prod_1Prod=multi_head_attention_1/dense_11/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_11/Tensordot/concatConcatV27multi_head_attention_1/dense_11/Tensordot/free:output:07multi_head_attention_1/dense_11/Tensordot/axes:output:0>multi_head_attention_1/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_11/Tensordot/stackPack7multi_head_attention_1/dense_11/Tensordot/Prod:output:09multi_head_attention_1/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_11/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_11/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_11/Tensordot/ReshapeReshape7multi_head_attention_1/dense_11/Tensordot/transpose:y:08multi_head_attention_1/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_11/Tensordot/MatMulMatMul:multi_head_attention_1/dense_11/Tensordot/Reshape:output:0@multi_head_attention_1/dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_11/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_11/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_11/Tensordot/Const_2:output:0@multi_head_attention_1/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_11/TensordotReshape:multi_head_attention_1/dense_11/Tensordot/MatMul:product:0;multi_head_attention_1/dense_11/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_11/BiasAddBiasAdd2multi_head_attention_1/dense_11/Tensordot:output:0>multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_11/ReluRelu0multi_head_attention_1/dense_11/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_1/dense_12/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_12/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_12/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_12/Tensordot/Shape:output:07multi_head_attention_1/dense_12/Tensordot/free:output:0@multi_head_attention_1/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_12/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_12/Tensordot/Shape:output:07multi_head_attention_1/dense_12/Tensordot/axes:output:0Bmulti_head_attention_1/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_12/Tensordot/ProdProd;multi_head_attention_1/dense_12/Tensordot/GatherV2:output:08multi_head_attention_1/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_12/Tensordot/Prod_1Prod=multi_head_attention_1/dense_12/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_12/Tensordot/concatConcatV27multi_head_attention_1/dense_12/Tensordot/free:output:07multi_head_attention_1/dense_12/Tensordot/axes:output:0>multi_head_attention_1/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_12/Tensordot/stackPack7multi_head_attention_1/dense_12/Tensordot/Prod:output:09multi_head_attention_1/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_12/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_12/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_12/Tensordot/ReshapeReshape7multi_head_attention_1/dense_12/Tensordot/transpose:y:08multi_head_attention_1/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_12/Tensordot/MatMulMatMul:multi_head_attention_1/dense_12/Tensordot/Reshape:output:0@multi_head_attention_1/dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_12/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_12/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_12/Tensordot/Const_2:output:0@multi_head_attention_1/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_12/TensordotReshape:multi_head_attention_1/dense_12/Tensordot/MatMul:product:0;multi_head_attention_1/dense_12/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_12/BiasAddBiasAdd2multi_head_attention_1/dense_12/Tensordot:output:0>multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_12/ReluRelu0multi_head_attention_1/dense_12/BiasAdd:output:0*
T0*-
_output_shapes
:???????????q
&multi_head_attention_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????h
&multi_head_attention_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&multi_head_attention_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
$multi_head_attention_1/Reshape/shapePack-multi_head_attention_1/strided_slice:output:0/multi_head_attention_1/Reshape/shape/1:output:0/multi_head_attention_1/Reshape/shape/2:output:0/multi_head_attention_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
multi_head_attention_1/ReshapeReshape2multi_head_attention_1/dense_10/Relu:activations:0-multi_head_attention_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????~
%multi_head_attention_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 multi_head_attention_1/transpose	Transpose'multi_head_attention_1/Reshape:output:0.multi_head_attention_1/transpose/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_1/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_1/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
&multi_head_attention_1/Reshape_1/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_1/shape/1:output:01multi_head_attention_1/Reshape_1/shape/2:output:01multi_head_attention_1/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_1Reshape2multi_head_attention_1/dense_11/Relu:activations:0/multi_head_attention_1/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_1	Transpose)multi_head_attention_1/Reshape_1:output:00multi_head_attention_1/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_1/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_1/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
&multi_head_attention_1/Reshape_2/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_2/shape/1:output:01multi_head_attention_1/Reshape_2/shape/2:output:01multi_head_attention_1/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_2Reshape2multi_head_attention_1/dense_12/Relu:activations:0/multi_head_attention_1/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_2	Transpose)multi_head_attention_1/Reshape_2:output:00multi_head_attention_1/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
multi_head_attention_1/MatMulBatchMatMulV2$multi_head_attention_1/transpose:y:0&multi_head_attention_1/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(t
multi_head_attention_1/Shape_1Shape&multi_head_attention_1/transpose_1:y:0*
T0*
_output_shapes
:
,multi_head_attention_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.multi_head_attention_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.multi_head_attention_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&multi_head_attention_1/strided_slice_1StridedSlice'multi_head_attention_1/Shape_1:output:05multi_head_attention_1/strided_slice_1/stack:output:07multi_head_attention_1/strided_slice_1/stack_1:output:07multi_head_attention_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
multi_head_attention_1/CastCast/multi_head_attention_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: e
multi_head_attention_1/SqrtSqrtmulti_head_attention_1/Cast:y:0*
T0*
_output_shapes
: ?
multi_head_attention_1/truedivRealDiv&multi_head_attention_1/MatMul:output:0multi_head_attention_1/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_1/SoftmaxSoftmax"multi_head_attention_1/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_1/MatMul_1BatchMatMulV2(multi_head_attention_1/Softmax:softmax:0&multi_head_attention_1/transpose_2:y:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_3	Transpose(multi_head_attention_1/MatMul_1:output:00multi_head_attention_1/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????k
(multi_head_attention_1/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
&multi_head_attention_1/Reshape_3/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_3/shape/1:output:01multi_head_attention_1/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_3Reshape&multi_head_attention_1/transpose_3:y:0/multi_head_attention_1/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
8multi_head_attention_1/dense_13/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_13_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
/multi_head_attention_1/dense_13/Tensordot/ShapeShape)multi_head_attention_1/Reshape_3:output:0*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_13/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_13/Tensordot/Shape:output:07multi_head_attention_1/dense_13/Tensordot/free:output:0@multi_head_attention_1/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_13/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_13/Tensordot/Shape:output:07multi_head_attention_1/dense_13/Tensordot/axes:output:0Bmulti_head_attention_1/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_13/Tensordot/ProdProd;multi_head_attention_1/dense_13/Tensordot/GatherV2:output:08multi_head_attention_1/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_13/Tensordot/Prod_1Prod=multi_head_attention_1/dense_13/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_13/Tensordot/concatConcatV27multi_head_attention_1/dense_13/Tensordot/free:output:07multi_head_attention_1/dense_13/Tensordot/axes:output:0>multi_head_attention_1/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_13/Tensordot/stackPack7multi_head_attention_1/dense_13/Tensordot/Prod:output:09multi_head_attention_1/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_13/Tensordot/transpose	Transpose)multi_head_attention_1/Reshape_3:output:09multi_head_attention_1/dense_13/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
1multi_head_attention_1/dense_13/Tensordot/ReshapeReshape7multi_head_attention_1/dense_13/Tensordot/transpose:y:08multi_head_attention_1/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_13/Tensordot/MatMulMatMul:multi_head_attention_1/dense_13/Tensordot/Reshape:output:0@multi_head_attention_1/dense_13/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_13/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_13/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_13/Tensordot/Const_2:output:0@multi_head_attention_1/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_13/TensordotReshape:multi_head_attention_1/dense_13/Tensordot/MatMul:product:0;multi_head_attention_1/dense_13/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_13/BiasAddBiasAdd2multi_head_attention_1/dense_13/Tensordot:output:0>multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
$multi_head_attention_1/dense_13/ReluRelu0multi_head_attention_1/dense_13/BiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_10/dropout/MulMul2multi_head_attention_1/dense_13/Relu:activations:0!dropout_10/dropout/Const:output:0*
T0*5
_output_shapes#
!:???????????????????z
dropout_10/dropout/ShapeShape2multi_head_attention_1/dense_13/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype0*
seed2????f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:????????????????????
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:????????????????????
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*5
_output_shapes#
!:???????????????????j
addAddV2inputsdropout_10/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????R
layer_normalization_2/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_2/mul_1Mullayer_normalization_2/mul:z:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_2StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_2/stack:output:06layer_normalization_2/strided_slice_2/stack_1:output:06layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mul_2Mul&layer_normalization_2/mul_2/x:output:0.layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul_1:z:0layer_normalization_2/mul_2:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_2/ReshapeReshapeadd:z:0,layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_2/mul_3/ReadVariableOpReadVariableOp3layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/mul_3Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/addAddV2layer_normalization_2/mul_3:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_14/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
%sequential_1/dense_14/Tensordot/ShapeShapelayer_normalization_2/add:z:0*
T0*
_output_shapes
:o
-sequential_1/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_14/Tensordot/GatherV2GatherV2.sequential_1/dense_14/Tensordot/Shape:output:0-sequential_1/dense_14/Tensordot/free:output:06sequential_1/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_14/Tensordot/GatherV2_1GatherV2.sequential_1/dense_14/Tensordot/Shape:output:0-sequential_1/dense_14/Tensordot/axes:output:08sequential_1/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_14/Tensordot/ProdProd1sequential_1/dense_14/Tensordot/GatherV2:output:0.sequential_1/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_14/Tensordot/Prod_1Prod3sequential_1/dense_14/Tensordot/GatherV2_1:output:00sequential_1/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_14/Tensordot/concatConcatV2-sequential_1/dense_14/Tensordot/free:output:0-sequential_1/dense_14/Tensordot/axes:output:04sequential_1/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_14/Tensordot/stackPack-sequential_1/dense_14/Tensordot/Prod:output:0/sequential_1/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_14/Tensordot/transpose	Transposelayer_normalization_2/add:z:0/sequential_1/dense_14/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_14/Tensordot/ReshapeReshape-sequential_1/dense_14/Tensordot/transpose:y:0.sequential_1/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_14/Tensordot/MatMulMatMul0sequential_1/dense_14/Tensordot/Reshape:output:06sequential_1/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_14/Tensordot/concat_1ConcatV21sequential_1/dense_14/Tensordot/GatherV2:output:00sequential_1/dense_14/Tensordot/Const_2:output:06sequential_1/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_14/TensordotReshape0sequential_1/dense_14/Tensordot/MatMul:product:01sequential_1/dense_14/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_14/BiasAddBiasAdd(sequential_1/dense_14/Tensordot:output:04sequential_1/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_14/ReluRelu&sequential_1/dense_14/BiasAdd:output:0*
T0*-
_output_shapes
:???????????i
$sequential_1/dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
"sequential_1/dropout_7/dropout/MulMul(sequential_1/dense_14/Relu:activations:0-sequential_1/dropout_7/dropout/Const:output:0*
T0*-
_output_shapes
:???????????|
$sequential_1/dropout_7/dropout/ShapeShape(sequential_1/dense_14/Relu:activations:0*
T0*
_output_shapes
:?
;sequential_1/dropout_7/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_7/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2r
-sequential_1/dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
+sequential_1/dropout_7/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_7/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_7/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
#sequential_1/dropout_7/dropout/CastCast/sequential_1/dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
$sequential_1/dropout_7/dropout/Mul_1Mul&sequential_1/dropout_7/dropout/Mul:z:0'sequential_1/dropout_7/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_15/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_15/Tensordot/ShapeShape(sequential_1/dropout_7/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_1/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_15/Tensordot/GatherV2GatherV2.sequential_1/dense_15/Tensordot/Shape:output:0-sequential_1/dense_15/Tensordot/free:output:06sequential_1/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_15/Tensordot/GatherV2_1GatherV2.sequential_1/dense_15/Tensordot/Shape:output:0-sequential_1/dense_15/Tensordot/axes:output:08sequential_1/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_15/Tensordot/ProdProd1sequential_1/dense_15/Tensordot/GatherV2:output:0.sequential_1/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_15/Tensordot/Prod_1Prod3sequential_1/dense_15/Tensordot/GatherV2_1:output:00sequential_1/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_15/Tensordot/concatConcatV2-sequential_1/dense_15/Tensordot/free:output:0-sequential_1/dense_15/Tensordot/axes:output:04sequential_1/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_15/Tensordot/stackPack-sequential_1/dense_15/Tensordot/Prod:output:0/sequential_1/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_15/Tensordot/transpose	Transpose(sequential_1/dropout_7/dropout/Mul_1:z:0/sequential_1/dense_15/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_15/Tensordot/ReshapeReshape-sequential_1/dense_15/Tensordot/transpose:y:0.sequential_1/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_15/Tensordot/MatMulMatMul0sequential_1/dense_15/Tensordot/Reshape:output:06sequential_1/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_15/Tensordot/concat_1ConcatV21sequential_1/dense_15/Tensordot/GatherV2:output:00sequential_1/dense_15/Tensordot/Const_2:output:06sequential_1/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_15/TensordotReshape0sequential_1/dense_15/Tensordot/MatMul:product:01sequential_1/dense_15/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_15/BiasAddBiasAdd(sequential_1/dense_15/Tensordot:output:04sequential_1/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_15/ReluRelu&sequential_1/dense_15/BiasAdd:output:0*
T0*-
_output_shapes
:???????????i
$sequential_1/dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
"sequential_1/dropout_8/dropout/MulMul(sequential_1/dense_15/Relu:activations:0-sequential_1/dropout_8/dropout/Const:output:0*
T0*-
_output_shapes
:???????????|
$sequential_1/dropout_8/dropout/ShapeShape(sequential_1/dense_15/Relu:activations:0*
T0*
_output_shapes
:?
;sequential_1/dropout_8/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_8/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2r
-sequential_1/dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
+sequential_1/dropout_8/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_8/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_8/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
#sequential_1/dropout_8/dropout/CastCast/sequential_1/dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
$sequential_1/dropout_8/dropout/Mul_1Mul&sequential_1/dropout_8/dropout/Mul:z:0'sequential_1/dropout_8/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_16/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_16/Tensordot/ShapeShape(sequential_1/dropout_8/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_1/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_16/Tensordot/GatherV2GatherV2.sequential_1/dense_16/Tensordot/Shape:output:0-sequential_1/dense_16/Tensordot/free:output:06sequential_1/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_16/Tensordot/GatherV2_1GatherV2.sequential_1/dense_16/Tensordot/Shape:output:0-sequential_1/dense_16/Tensordot/axes:output:08sequential_1/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_16/Tensordot/ProdProd1sequential_1/dense_16/Tensordot/GatherV2:output:0.sequential_1/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_16/Tensordot/Prod_1Prod3sequential_1/dense_16/Tensordot/GatherV2_1:output:00sequential_1/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_16/Tensordot/concatConcatV2-sequential_1/dense_16/Tensordot/free:output:0-sequential_1/dense_16/Tensordot/axes:output:04sequential_1/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_16/Tensordot/stackPack-sequential_1/dense_16/Tensordot/Prod:output:0/sequential_1/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_16/Tensordot/transpose	Transpose(sequential_1/dropout_8/dropout/Mul_1:z:0/sequential_1/dense_16/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_16/Tensordot/ReshapeReshape-sequential_1/dense_16/Tensordot/transpose:y:0.sequential_1/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_16/Tensordot/MatMulMatMul0sequential_1/dense_16/Tensordot/Reshape:output:06sequential_1/dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_16/Tensordot/concat_1ConcatV21sequential_1/dense_16/Tensordot/GatherV2:output:00sequential_1/dense_16/Tensordot/Const_2:output:06sequential_1/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_16/TensordotReshape0sequential_1/dense_16/Tensordot/MatMul:product:01sequential_1/dense_16/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_16/BiasAddBiasAdd(sequential_1/dense_16/Tensordot:output:04sequential_1/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_16/ReluRelu&sequential_1/dense_16/BiasAdd:output:0*
T0*-
_output_shapes
:???????????i
$sequential_1/dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
"sequential_1/dropout_9/dropout/MulMul(sequential_1/dense_16/Relu:activations:0-sequential_1/dropout_9/dropout/Const:output:0*
T0*-
_output_shapes
:???????????|
$sequential_1/dropout_9/dropout/ShapeShape(sequential_1/dense_16/Relu:activations:0*
T0*
_output_shapes
:?
;sequential_1/dropout_9/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_9/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2r
-sequential_1/dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
+sequential_1/dropout_9/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_9/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_9/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
#sequential_1/dropout_9/dropout/CastCast/sequential_1/dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
$sequential_1/dropout_9/dropout/Mul_1Mul&sequential_1/dropout_9/dropout/Mul:z:0'sequential_1/dropout_9/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_17/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_17/Tensordot/ShapeShape(sequential_1/dropout_9/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_1/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_17/Tensordot/GatherV2GatherV2.sequential_1/dense_17/Tensordot/Shape:output:0-sequential_1/dense_17/Tensordot/free:output:06sequential_1/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_17/Tensordot/GatherV2_1GatherV2.sequential_1/dense_17/Tensordot/Shape:output:0-sequential_1/dense_17/Tensordot/axes:output:08sequential_1/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_17/Tensordot/ProdProd1sequential_1/dense_17/Tensordot/GatherV2:output:0.sequential_1/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_17/Tensordot/Prod_1Prod3sequential_1/dense_17/Tensordot/GatherV2_1:output:00sequential_1/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_17/Tensordot/concatConcatV2-sequential_1/dense_17/Tensordot/free:output:0-sequential_1/dense_17/Tensordot/axes:output:04sequential_1/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_17/Tensordot/stackPack-sequential_1/dense_17/Tensordot/Prod:output:0/sequential_1/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_17/Tensordot/transpose	Transpose(sequential_1/dropout_9/dropout/Mul_1:z:0/sequential_1/dense_17/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_17/Tensordot/ReshapeReshape-sequential_1/dense_17/Tensordot/transpose:y:0.sequential_1/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_17/Tensordot/MatMulMatMul0sequential_1/dense_17/Tensordot/Reshape:output:06sequential_1/dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_17/Tensordot/concat_1ConcatV21sequential_1/dense_17/Tensordot/GatherV2:output:00sequential_1/dense_17/Tensordot/Const_2:output:06sequential_1/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_17/TensordotReshape0sequential_1/dense_17/Tensordot/MatMul:product:01sequential_1/dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_17/BiasAddBiasAdd(sequential_1/dense_17/Tensordot:output:04sequential_1/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_11/dropout/MulMul&sequential_1/dense_17/BiasAdd:output:0!dropout_11/dropout/Const:output:0*
T0*-
_output_shapes
:???????????n
dropout_11/dropout/ShapeShape&sequential_1/dense_17/BiasAdd:output:0*
T0*
_output_shapes
:?
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
add_1AddV2layer_normalization_2/add:z:0dropout_11/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????T
layer_normalization_3/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_3/mul_1Mullayer_normalization_3/mul:z:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_2StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_2/stack:output:06layer_normalization_3/strided_slice_2/stack_1:output:06layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mul_2Mul&layer_normalization_3/mul_2/x:output:0.layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul_1:z:0layer_normalization_3/mul_2:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_3/ReshapeReshape	add_1:z:0,layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_3/mul_3/ReadVariableOpReadVariableOp3layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/mul_3Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/addAddV2layer_normalization_3/mul_3:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
IdentityIdentitylayer_normalization_3/add:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_3/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_3/ReadVariableOp7^multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_10/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_11/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_12/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_13/Tensordot/ReadVariableOp-^sequential_1/dense_14/BiasAdd/ReadVariableOp/^sequential_1/dense_14/Tensordot/ReadVariableOp-^sequential_1/dense_15/BiasAdd/ReadVariableOp/^sequential_1/dense_15/Tensordot/ReadVariableOp-^sequential_1/dense_16/BiasAdd/ReadVariableOp/^sequential_1/dense_16/Tensordot/ReadVariableOp-^sequential_1/dense_17/BiasAdd/ReadVariableOp/^sequential_1/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : : : 2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_3/ReadVariableOp*layer_normalization_2/mul_3/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_3/ReadVariableOp*layer_normalization_3/mul_3/ReadVariableOp2p
6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp2\
,sequential_1/dense_14/BiasAdd/ReadVariableOp,sequential_1/dense_14/BiasAdd/ReadVariableOp2`
.sequential_1/dense_14/Tensordot/ReadVariableOp.sequential_1/dense_14/Tensordot/ReadVariableOp2\
,sequential_1/dense_15/BiasAdd/ReadVariableOp,sequential_1/dense_15/BiasAdd/ReadVariableOp2`
.sequential_1/dense_15/Tensordot/ReadVariableOp.sequential_1/dense_15/Tensordot/ReadVariableOp2\
,sequential_1/dense_16/BiasAdd/ReadVariableOp,sequential_1/dense_16/BiasAdd/ReadVariableOp2`
.sequential_1/dense_16/Tensordot/ReadVariableOp.sequential_1/dense_16/Tensordot/ReadVariableOp2\
,sequential_1/dense_17/BiasAdd/ReadVariableOp,sequential_1/dense_17/BiasAdd/ReadVariableOp2`
.sequential_1/dense_17/Tensordot/ReadVariableOp.sequential_1/dense_17/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_101059
x7
#embedding_3_embedding_lookup_101047:
??7
#embedding_2_embedding_lookup_101052:
??
identity??embedding_2/embedding_lookup?embedding_3/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :o
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes	
:??
embedding_3/embedding_lookupResourceGather#embedding_3_embedding_lookup_101047range:output:0*
Tindices0*6
_class,
*(loc:@embedding_3/embedding_lookup/101047* 
_output_shapes
:
??*
dtype0?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_3/embedding_lookup/101047* 
_output_shapes
:
???
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
???
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_101052x*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/101052*-
_output_shapes
:???????????*
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/101052*-
_output_shapes
:????????????
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????\
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp^embedding_2/embedding_lookup^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:K G
(
_output_shapes
:??????????

_user_specified_namex
?
?
4__inference_transformer_block_1_layer_call_fn_103492

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:
??

unknown_16:	?

unknown_17:	?

unknown_18:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_102010u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
D__inference_dense_19_layer_call_and_return_conditional_losses_104295

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????W
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:??????????a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_104451

inputs>
*dense_14_tensordot_readvariableop_resource:
??7
(dense_14_biasadd_readvariableop_resource:	?>
*dense_15_tensordot_readvariableop_resource:
??7
(dense_15_biasadd_readvariableop_resource:	?>
*dense_16_tensordot_readvariableop_resource:
??7
(dense_16_biasadd_readvariableop_resource:	?>
*dense_17_tensordot_readvariableop_resource:
??7
(dense_17_biasadd_readvariableop_resource:	?
identity??dense_14/BiasAdd/ReadVariableOp?!dense_14/Tensordot/ReadVariableOp?dense_15/BiasAdd/ReadVariableOp?!dense_15/Tensordot/ReadVariableOp?dense_16/BiasAdd/ReadVariableOp?!dense_16/Tensordot/ReadVariableOp?dense_17/BiasAdd/ReadVariableOp?!dense_17/Tensordot/ReadVariableOp?
!dense_14/Tensordot/ReadVariableOpReadVariableOp*dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_14/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_14/Tensordot/GatherV2GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/free:output:0)dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_14/Tensordot/GatherV2_1GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/axes:output:0+dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_14/Tensordot/ProdProd$dense_14/Tensordot/GatherV2:output:0!dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_14/Tensordot/Prod_1Prod&dense_14/Tensordot/GatherV2_1:output:0#dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_14/Tensordot/concatConcatV2 dense_14/Tensordot/free:output:0 dense_14/Tensordot/axes:output:0'dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_14/Tensordot/stackPack dense_14/Tensordot/Prod:output:0"dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_14/Tensordot/transpose	Transposeinputs"dense_14/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_14/Tensordot/ReshapeReshape dense_14/Tensordot/transpose:y:0!dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_14/Tensordot/MatMulMatMul#dense_14/Tensordot/Reshape:output:0)dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_14/Tensordot/concat_1ConcatV2$dense_14/Tensordot/GatherV2:output:0#dense_14/Tensordot/Const_2:output:0)dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_14/TensordotReshape#dense_14/Tensordot/MatMul:product:0$dense_14/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_14/BiasAddBiasAdddense_14/Tensordot:output:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*-
_output_shapes
:???????????s
dropout_7/IdentityIdentitydense_14/Relu:activations:0*
T0*-
_output_shapes
:????????????
!dense_15/Tensordot/ReadVariableOpReadVariableOp*dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_15/Tensordot/ShapeShapedropout_7/Identity:output:0*
T0*
_output_shapes
:b
 dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_15/Tensordot/GatherV2GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/free:output:0)dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_15/Tensordot/GatherV2_1GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/axes:output:0+dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_15/Tensordot/ProdProd$dense_15/Tensordot/GatherV2:output:0!dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_15/Tensordot/Prod_1Prod&dense_15/Tensordot/GatherV2_1:output:0#dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_15/Tensordot/concatConcatV2 dense_15/Tensordot/free:output:0 dense_15/Tensordot/axes:output:0'dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_15/Tensordot/stackPack dense_15/Tensordot/Prod:output:0"dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_15/Tensordot/transpose	Transposedropout_7/Identity:output:0"dense_15/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_15/Tensordot/ReshapeReshape dense_15/Tensordot/transpose:y:0!dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_15/Tensordot/MatMulMatMul#dense_15/Tensordot/Reshape:output:0)dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_15/Tensordot/concat_1ConcatV2$dense_15/Tensordot/GatherV2:output:0#dense_15/Tensordot/Const_2:output:0)dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_15/TensordotReshape#dense_15/Tensordot/MatMul:product:0$dense_15/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_15/BiasAddBiasAdddense_15/Tensordot:output:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*-
_output_shapes
:???????????s
dropout_8/IdentityIdentitydense_15/Relu:activations:0*
T0*-
_output_shapes
:????????????
!dense_16/Tensordot/ReadVariableOpReadVariableOp*dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_16/Tensordot/ShapeShapedropout_8/Identity:output:0*
T0*
_output_shapes
:b
 dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_16/Tensordot/GatherV2GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/free:output:0)dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_16/Tensordot/GatherV2_1GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/axes:output:0+dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_16/Tensordot/ProdProd$dense_16/Tensordot/GatherV2:output:0!dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_16/Tensordot/Prod_1Prod&dense_16/Tensordot/GatherV2_1:output:0#dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_16/Tensordot/concatConcatV2 dense_16/Tensordot/free:output:0 dense_16/Tensordot/axes:output:0'dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_16/Tensordot/stackPack dense_16/Tensordot/Prod:output:0"dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_16/Tensordot/transpose	Transposedropout_8/Identity:output:0"dense_16/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_16/Tensordot/ReshapeReshape dense_16/Tensordot/transpose:y:0!dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_16/Tensordot/MatMulMatMul#dense_16/Tensordot/Reshape:output:0)dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_16/Tensordot/concat_1ConcatV2$dense_16/Tensordot/GatherV2:output:0#dense_16/Tensordot/Const_2:output:0)dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_16/TensordotReshape#dense_16/Tensordot/MatMul:product:0$dense_16/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_16/BiasAddBiasAdddense_16/Tensordot:output:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*-
_output_shapes
:???????????s
dropout_9/IdentityIdentitydense_16/Relu:activations:0*
T0*-
_output_shapes
:????????????
!dense_17/Tensordot/ReadVariableOpReadVariableOp*dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_17/Tensordot/ShapeShapedropout_9/Identity:output:0*
T0*
_output_shapes
:b
 dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_17/Tensordot/GatherV2GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/free:output:0)dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_17/Tensordot/GatherV2_1GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/axes:output:0+dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_17/Tensordot/ProdProd$dense_17/Tensordot/GatherV2:output:0!dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_17/Tensordot/Prod_1Prod&dense_17/Tensordot/GatherV2_1:output:0#dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_17/Tensordot/concatConcatV2 dense_17/Tensordot/free:output:0 dense_17/Tensordot/axes:output:0'dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_17/Tensordot/stackPack dense_17/Tensordot/Prod:output:0"dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_17/Tensordot/transpose	Transposedropout_9/Identity:output:0"dense_17/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_17/Tensordot/ReshapeReshape dense_17/Tensordot/transpose:y:0!dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_17/Tensordot/MatMulMatMul#dense_17/Tensordot/Reshape:output:0)dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_17/Tensordot/concat_1ConcatV2$dense_17/Tensordot/GatherV2:output:0#dense_17/Tensordot/Const_2:output:0)dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_17/TensordotReshape#dense_17/Tensordot/MatMul:product:0$dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_17/BiasAddBiasAdddense_17/Tensordot:output:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????n
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp ^dense_14/BiasAdd/ReadVariableOp"^dense_14/Tensordot/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp"^dense_15/Tensordot/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp"^dense_16/Tensordot/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp"^dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2F
!dense_14/Tensordot/ReadVariableOp!dense_14/Tensordot/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2F
!dense_15/Tensordot/ReadVariableOp!dense_15/Tensordot/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2F
!dense_16/Tensordot/ReadVariableOp!dense_16/Tensordot/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2F
!dense_17/Tensordot/ReadVariableOp!dense_17/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_100744

inputs#
dense_14_100607:
??
dense_14_100609:	?#
dense_15_100651:
??
dense_15_100653:	?#
dense_16_100695:
??
dense_16_100697:	?#
dense_17_100738:
??
dense_17_100740:	?
identity?? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCallinputsdense_14_100607dense_14_100609*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_100606?
dropout_7/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_100617?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_15_100651dense_15_100653*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_100650?
dropout_8/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_100661?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0dense_16_100695dense_16_100697*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_100694?
dropout_9/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_100705?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0dense_17_100738dense_17_100740*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_100737~
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
4__inference_transformer_block_1_layer_call_fn_103447

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:
??

unknown_16:	?

unknown_17:	?

unknown_18:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_101420u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_dense_14_layer_call_and_return_conditional_losses_100606

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:???????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_104787

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:???????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2????[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????u
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????o
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:???????????_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
(__inference_model_1_layer_call_fn_102279
input_2
unknown:
??
	unknown_0:
??
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:
??

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:
??

unknown_22:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_102175p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
??
?
C__inference_model_1_layer_call_and_return_conditional_losses_103370

inputsV
Btoken_and_position_embedding_1_embedding_3_embedding_lookup_102955:
??V
Btoken_and_position_embedding_1_embedding_2_embedding_lookup_102960:
??i
Utransformer_block_1_multi_head_attention_1_dense_10_tensordot_readvariableop_resource:
??b
Stransformer_block_1_multi_head_attention_1_dense_10_biasadd_readvariableop_resource:	?i
Utransformer_block_1_multi_head_attention_1_dense_11_tensordot_readvariableop_resource:
??b
Stransformer_block_1_multi_head_attention_1_dense_11_biasadd_readvariableop_resource:	?i
Utransformer_block_1_multi_head_attention_1_dense_12_tensordot_readvariableop_resource:
??b
Stransformer_block_1_multi_head_attention_1_dense_12_biasadd_readvariableop_resource:	?i
Utransformer_block_1_multi_head_attention_1_dense_13_tensordot_readvariableop_resource:
??b
Stransformer_block_1_multi_head_attention_1_dense_13_biasadd_readvariableop_resource:	?V
Gtransformer_block_1_layer_normalization_2_mul_3_readvariableop_resource:	?T
Etransformer_block_1_layer_normalization_2_add_readvariableop_resource:	?_
Ktransformer_block_1_sequential_1_dense_14_tensordot_readvariableop_resource:
??X
Itransformer_block_1_sequential_1_dense_14_biasadd_readvariableop_resource:	?_
Ktransformer_block_1_sequential_1_dense_15_tensordot_readvariableop_resource:
??X
Itransformer_block_1_sequential_1_dense_15_biasadd_readvariableop_resource:	?_
Ktransformer_block_1_sequential_1_dense_16_tensordot_readvariableop_resource:
??X
Itransformer_block_1_sequential_1_dense_16_biasadd_readvariableop_resource:	?_
Ktransformer_block_1_sequential_1_dense_17_tensordot_readvariableop_resource:
??X
Itransformer_block_1_sequential_1_dense_17_biasadd_readvariableop_resource:	?V
Gtransformer_block_1_layer_normalization_3_mul_3_readvariableop_resource:	?T
Etransformer_block_1_layer_normalization_3_add_readvariableop_resource:	?;
'dense_19_matmul_readvariableop_resource:
??7
(dense_19_biasadd_readvariableop_resource:	?
identity??dense_19/BiasAdd/ReadVariableOp?dense_19/MatMul/ReadVariableOp?;token_and_position_embedding_1/embedding_2/embedding_lookup?;token_and_position_embedding_1/embedding_3/embedding_lookup?<transformer_block_1/layer_normalization_2/add/ReadVariableOp?>transformer_block_1/layer_normalization_2/mul_3/ReadVariableOp?<transformer_block_1/layer_normalization_3/add/ReadVariableOp?>transformer_block_1/layer_normalization_3/mul_3/ReadVariableOp?Jtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp?Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOp?Jtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp?Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOp?Jtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp?Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOp?Jtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp?Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOp?@transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOp?Btransformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOp?@transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOp?Btransformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOp?@transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOp?Btransformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOp?@transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOp?Btransformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOpZ
$token_and_position_embedding_1/ShapeShapeinputs*
T0*
_output_shapes
:?
2token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????~
4token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,token_and_position_embedding_1/strided_sliceStridedSlice-token_and_position_embedding_1/Shape:output:0;token_and_position_embedding_1/strided_slice/stack:output:0=token_and_position_embedding_1/strided_slice/stack_1:output:0=token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
$token_and_position_embedding_1/rangeRange3token_and_position_embedding_1/range/start:output:05token_and_position_embedding_1/strided_slice:output:03token_and_position_embedding_1/range/delta:output:0*
_output_shapes	
:??
;token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherBtoken_and_position_embedding_1_embedding_3_embedding_lookup_102955-token_and_position_embedding_1/range:output:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/102955* 
_output_shapes
:
??*
dtype0?
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_3/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/102955* 
_output_shapes
:
???
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
???
;token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherBtoken_and_position_embedding_1_embedding_2_embedding_lookup_102960inputs*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/102960*-
_output_shapes
:???????????*
dtype0?
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_2/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/102960*-
_output_shapes
:????????????
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
"token_and_position_embedding_1/addAddV2Otoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:????????????
0transformer_block_1/multi_head_attention_1/ShapeShape&token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
>transformer_block_1/multi_head_attention_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@transformer_block_1/multi_head_attention_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@transformer_block_1/multi_head_attention_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_1/multi_head_attention_1/strided_sliceStridedSlice9transformer_block_1/multi_head_attention_1/Shape:output:0Gtransformer_block_1/multi_head_attention_1/strided_slice/stack:output:0Itransformer_block_1/multi_head_attention_1/strided_slice/stack_1:output:0Itransformer_block_1/multi_head_attention_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_1_multi_head_attention_1_dense_10_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_1/multi_head_attention_1/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_1/multi_head_attention_1/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ShapeShape&token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2GatherV2Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/free:output:0Ttransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1GatherV2Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/axes:output:0Vtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ProdProdOtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2:output:0Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Prod_1ProdQtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1:output:0Ntransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concatConcatV2Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/free:output:0Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/axes:output:0Rtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_10/Tensordot/stackPackKtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Prod:output:0Mtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/transpose	Transpose&token_and_position_embedding_1/add:z:0Mtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReshapeReshapeKtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/transpose:y:0Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/MatMulMatMulNtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Reshape:output:0Ttransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1ConcatV2Otransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2:output:0Ntransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_2:output:0Ttransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/multi_head_attention_1/dense_10/TensordotReshapeNtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/MatMul:product:0Otransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_1_multi_head_attention_1_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_1/multi_head_attention_1/dense_10/BiasAddBiasAddFtransformer_block_1/multi_head_attention_1/dense_10/Tensordot:output:0Rtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_1/multi_head_attention_1/dense_10/ReluReluDtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_1_multi_head_attention_1_dense_11_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_1/multi_head_attention_1/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_1/multi_head_attention_1/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ShapeShape&token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2GatherV2Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/free:output:0Ttransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1GatherV2Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/axes:output:0Vtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ProdProdOtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2:output:0Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Prod_1ProdQtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1:output:0Ntransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concatConcatV2Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/free:output:0Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/axes:output:0Rtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_11/Tensordot/stackPackKtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Prod:output:0Mtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/transpose	Transpose&token_and_position_embedding_1/add:z:0Mtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReshapeReshapeKtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/transpose:y:0Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/MatMulMatMulNtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Reshape:output:0Ttransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1ConcatV2Otransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2:output:0Ntransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_2:output:0Ttransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/multi_head_attention_1/dense_11/TensordotReshapeNtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/MatMul:product:0Otransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_1_multi_head_attention_1_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_1/multi_head_attention_1/dense_11/BiasAddBiasAddFtransformer_block_1/multi_head_attention_1/dense_11/Tensordot:output:0Rtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_1/multi_head_attention_1/dense_11/ReluReluDtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_1_multi_head_attention_1_dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_1/multi_head_attention_1/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_1/multi_head_attention_1/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ShapeShape&token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2GatherV2Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/free:output:0Ttransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1GatherV2Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/axes:output:0Vtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ProdProdOtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2:output:0Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Prod_1ProdQtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1:output:0Ntransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concatConcatV2Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/free:output:0Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/axes:output:0Rtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_12/Tensordot/stackPackKtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Prod:output:0Mtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/transpose	Transpose&token_and_position_embedding_1/add:z:0Mtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReshapeReshapeKtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/transpose:y:0Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/MatMulMatMulNtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Reshape:output:0Ttransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1ConcatV2Otransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2:output:0Ntransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_2:output:0Ttransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/multi_head_attention_1/dense_12/TensordotReshapeNtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/MatMul:product:0Otransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_1_multi_head_attention_1_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_1/multi_head_attention_1/dense_12/BiasAddBiasAddFtransformer_block_1/multi_head_attention_1/dense_12/Tensordot:output:0Rtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_1/multi_head_attention_1/dense_12/ReluReluDtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
:transformer_block_1/multi_head_attention_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????|
:transformer_block_1/multi_head_attention_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :|
:transformer_block_1/multi_head_attention_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
8transformer_block_1/multi_head_attention_1/Reshape/shapePackAtransformer_block_1/multi_head_attention_1/strided_slice:output:0Ctransformer_block_1/multi_head_attention_1/Reshape/shape/1:output:0Ctransformer_block_1/multi_head_attention_1/Reshape/shape/2:output:0Ctransformer_block_1/multi_head_attention_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
2transformer_block_1/multi_head_attention_1/ReshapeReshapeFtransformer_block_1/multi_head_attention_1/dense_10/Relu:activations:0Atransformer_block_1/multi_head_attention_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
9transformer_block_1/multi_head_attention_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
4transformer_block_1/multi_head_attention_1/transpose	Transpose;transformer_block_1/multi_head_attention_1/Reshape:output:0Btransformer_block_1/multi_head_attention_1/transpose/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
<transformer_block_1/multi_head_attention_1/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????~
<transformer_block_1/multi_head_attention_1/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<transformer_block_1/multi_head_attention_1/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
:transformer_block_1/multi_head_attention_1/Reshape_1/shapePackAtransformer_block_1/multi_head_attention_1/strided_slice:output:0Etransformer_block_1/multi_head_attention_1/Reshape_1/shape/1:output:0Etransformer_block_1/multi_head_attention_1/Reshape_1/shape/2:output:0Etransformer_block_1/multi_head_attention_1/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_1/multi_head_attention_1/Reshape_1ReshapeFtransformer_block_1/multi_head_attention_1/dense_11/Relu:activations:0Ctransformer_block_1/multi_head_attention_1/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
;transformer_block_1/multi_head_attention_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_1/multi_head_attention_1/transpose_1	Transpose=transformer_block_1/multi_head_attention_1/Reshape_1:output:0Dtransformer_block_1/multi_head_attention_1/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
<transformer_block_1/multi_head_attention_1/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????~
<transformer_block_1/multi_head_attention_1/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<transformer_block_1/multi_head_attention_1/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
:transformer_block_1/multi_head_attention_1/Reshape_2/shapePackAtransformer_block_1/multi_head_attention_1/strided_slice:output:0Etransformer_block_1/multi_head_attention_1/Reshape_2/shape/1:output:0Etransformer_block_1/multi_head_attention_1/Reshape_2/shape/2:output:0Etransformer_block_1/multi_head_attention_1/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_1/multi_head_attention_1/Reshape_2ReshapeFtransformer_block_1/multi_head_attention_1/dense_12/Relu:activations:0Ctransformer_block_1/multi_head_attention_1/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
;transformer_block_1/multi_head_attention_1/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_1/multi_head_attention_1/transpose_2	Transpose=transformer_block_1/multi_head_attention_1/Reshape_2:output:0Dtransformer_block_1/multi_head_attention_1/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
1transformer_block_1/multi_head_attention_1/MatMulBatchMatMulV28transformer_block_1/multi_head_attention_1/transpose:y:0:transformer_block_1/multi_head_attention_1/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(?
2transformer_block_1/multi_head_attention_1/Shape_1Shape:transformer_block_1/multi_head_attention_1/transpose_1:y:0*
T0*
_output_shapes
:?
@transformer_block_1/multi_head_attention_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Btransformer_block_1/multi_head_attention_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_1/multi_head_attention_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:transformer_block_1/multi_head_attention_1/strided_slice_1StridedSlice;transformer_block_1/multi_head_attention_1/Shape_1:output:0Itransformer_block_1/multi_head_attention_1/strided_slice_1/stack:output:0Ktransformer_block_1/multi_head_attention_1/strided_slice_1/stack_1:output:0Ktransformer_block_1/multi_head_attention_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_1/multi_head_attention_1/CastCastCtransformer_block_1/multi_head_attention_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
/transformer_block_1/multi_head_attention_1/SqrtSqrt3transformer_block_1/multi_head_attention_1/Cast:y:0*
T0*
_output_shapes
: ?
2transformer_block_1/multi_head_attention_1/truedivRealDiv:transformer_block_1/multi_head_attention_1/MatMul:output:03transformer_block_1/multi_head_attention_1/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
2transformer_block_1/multi_head_attention_1/SoftmaxSoftmax6transformer_block_1/multi_head_attention_1/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
3transformer_block_1/multi_head_attention_1/MatMul_1BatchMatMulV2<transformer_block_1/multi_head_attention_1/Softmax:softmax:0:transformer_block_1/multi_head_attention_1/transpose_2:y:0*
T0*8
_output_shapes&
$:"???????????????????
;transformer_block_1/multi_head_attention_1/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_1/multi_head_attention_1/transpose_3	Transpose<transformer_block_1/multi_head_attention_1/MatMul_1:output:0Dtransformer_block_1/multi_head_attention_1/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
<transformer_block_1/multi_head_attention_1/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
<transformer_block_1/multi_head_attention_1/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
:transformer_block_1/multi_head_attention_1/Reshape_3/shapePackAtransformer_block_1/multi_head_attention_1/strided_slice:output:0Etransformer_block_1/multi_head_attention_1/Reshape_3/shape/1:output:0Etransformer_block_1/multi_head_attention_1/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_1/multi_head_attention_1/Reshape_3Reshape:transformer_block_1/multi_head_attention_1/transpose_3:y:0Ctransformer_block_1/multi_head_attention_1/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_1_multi_head_attention_1_dense_13_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_1/multi_head_attention_1/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_1/multi_head_attention_1/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ShapeShape=transformer_block_1/multi_head_attention_1/Reshape_3:output:0*
T0*
_output_shapes
:?
Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2GatherV2Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/free:output:0Ttransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1GatherV2Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/axes:output:0Vtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ProdProdOtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2:output:0Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Prod_1ProdQtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1:output:0Ntransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concatConcatV2Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/free:output:0Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/axes:output:0Rtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_13/Tensordot/stackPackKtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Prod:output:0Mtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/transpose	Transpose=transformer_block_1/multi_head_attention_1/Reshape_3:output:0Mtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
Etransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReshapeReshapeKtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/transpose:y:0Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/MatMulMatMulNtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Reshape:output:0Ttransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1ConcatV2Otransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2:output:0Ntransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_2:output:0Ttransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/multi_head_attention_1/dense_13/TensordotReshapeNtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/MatMul:product:0Otransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
Jtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_1_multi_head_attention_1_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_1/multi_head_attention_1/dense_13/BiasAddBiasAddFtransformer_block_1/multi_head_attention_1/dense_13/Tensordot:output:0Rtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
8transformer_block_1/multi_head_attention_1/dense_13/ReluReluDtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????q
,transformer_block_1/dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
*transformer_block_1/dropout_10/dropout/MulMulFtransformer_block_1/multi_head_attention_1/dense_13/Relu:activations:05transformer_block_1/dropout_10/dropout/Const:output:0*
T0*5
_output_shapes#
!:????????????????????
,transformer_block_1/dropout_10/dropout/ShapeShapeFtransformer_block_1/multi_head_attention_1/dense_13/Relu:activations:0*
T0*
_output_shapes
:?
Ctransformer_block_1/dropout_10/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_1/dropout_10/dropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype0*
seed2????z
5transformer_block_1/dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
3transformer_block_1/dropout_10/dropout/GreaterEqualGreaterEqualLtransformer_block_1/dropout_10/dropout/random_uniform/RandomUniform:output:0>transformer_block_1/dropout_10/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:????????????????????
+transformer_block_1/dropout_10/dropout/CastCast7transformer_block_1/dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:????????????????????
,transformer_block_1/dropout_10/dropout/Mul_1Mul.transformer_block_1/dropout_10/dropout/Mul:z:0/transformer_block_1/dropout_10/dropout/Cast:y:0*
T0*5
_output_shapes#
!:????????????????????
transformer_block_1/addAddV2&token_and_position_embedding_1/add:z:00transformer_block_1/dropout_10/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????z
/transformer_block_1/layer_normalization_2/ShapeShapetransformer_block_1/add:z:0*
T0*
_output_shapes
:?
=transformer_block_1/layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?transformer_block_1/layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?transformer_block_1/layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block_1/layer_normalization_2/strided_sliceStridedSlice8transformer_block_1/layer_normalization_2/Shape:output:0Ftransformer_block_1/layer_normalization_2/strided_slice/stack:output:0Htransformer_block_1/layer_normalization_2/strided_slice/stack_1:output:0Htransformer_block_1/layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/transformer_block_1/layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
-transformer_block_1/layer_normalization_2/mulMul8transformer_block_1/layer_normalization_2/mul/x:output:0@transformer_block_1/layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_1/layer_normalization_2/strided_slice_1StridedSlice8transformer_block_1/layer_normalization_2/Shape:output:0Htransformer_block_1/layer_normalization_2/strided_slice_1/stack:output:0Jtransformer_block_1/layer_normalization_2/strided_slice_1/stack_1:output:0Jtransformer_block_1/layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_1/layer_normalization_2/mul_1Mul1transformer_block_1/layer_normalization_2/mul:z:0Btransformer_block_1/layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_1/layer_normalization_2/strided_slice_2StridedSlice8transformer_block_1/layer_normalization_2/Shape:output:0Htransformer_block_1/layer_normalization_2/strided_slice_2/stack:output:0Jtransformer_block_1/layer_normalization_2/strided_slice_2/stack_1:output:0Jtransformer_block_1/layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1transformer_block_1/layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
/transformer_block_1/layer_normalization_2/mul_2Mul:transformer_block_1/layer_normalization_2/mul_2/x:output:0Btransformer_block_1/layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: {
9transformer_block_1/layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :{
9transformer_block_1/layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
7transformer_block_1/layer_normalization_2/Reshape/shapePackBtransformer_block_1/layer_normalization_2/Reshape/shape/0:output:03transformer_block_1/layer_normalization_2/mul_1:z:03transformer_block_1/layer_normalization_2/mul_2:z:0Btransformer_block_1/layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
1transformer_block_1/layer_normalization_2/ReshapeReshapetransformer_block_1/add:z:0@transformer_block_1/layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
5transformer_block_1/layer_normalization_2/ones/packedPack3transformer_block_1/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:y
4transformer_block_1/layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
.transformer_block_1/layer_normalization_2/onesFill>transformer_block_1/layer_normalization_2/ones/packed:output:0=transformer_block_1/layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:??????????
6transformer_block_1/layer_normalization_2/zeros/packedPack3transformer_block_1/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:z
5transformer_block_1/layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
/transformer_block_1/layer_normalization_2/zerosFill?transformer_block_1/layer_normalization_2/zeros/packed:output:0>transformer_block_1/layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????r
/transformer_block_1/layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB t
1transformer_block_1/layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
:transformer_block_1/layer_normalization_2/FusedBatchNormV3FusedBatchNormV3:transformer_block_1/layer_normalization_2/Reshape:output:07transformer_block_1/layer_normalization_2/ones:output:08transformer_block_1/layer_normalization_2/zeros:output:08transformer_block_1/layer_normalization_2/Const:output:0:transformer_block_1/layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
3transformer_block_1/layer_normalization_2/Reshape_1Reshape>transformer_block_1/layer_normalization_2/FusedBatchNormV3:y:08transformer_block_1/layer_normalization_2/Shape:output:0*
T0*-
_output_shapes
:????????????
>transformer_block_1/layer_normalization_2/mul_3/ReadVariableOpReadVariableOpGtransformer_block_1_layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/transformer_block_1/layer_normalization_2/mul_3Mul<transformer_block_1/layer_normalization_2/Reshape_1:output:0Ftransformer_block_1/layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
<transformer_block_1/layer_normalization_2/add/ReadVariableOpReadVariableOpEtransformer_block_1_layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-transformer_block_1/layer_normalization_2/addAddV23transformer_block_1/layer_normalization_2/mul_3:z:0Dtransformer_block_1/layer_normalization_2/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
Btransformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_1_sequential_1_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_1/sequential_1/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_1/sequential_1/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_1/sequential_1/dense_14/Tensordot/ShapeShape1transformer_block_1/layer_normalization_2/add:z:0*
T0*
_output_shapes
:?
Atransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2GatherV2Btransformer_block_1/sequential_1/dense_14/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_14/Tensordot/free:output:0Jtransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1GatherV2Btransformer_block_1/sequential_1/dense_14/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_14/Tensordot/axes:output:0Ltransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_1/sequential_1/dense_14/Tensordot/ProdProdEtransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2:output:0Btransformer_block_1/sequential_1/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_1/sequential_1/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_1/sequential_1/dense_14/Tensordot/Prod_1ProdGtransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1:output:0Dtransformer_block_1/sequential_1/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/sequential_1/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_1/sequential_1/dense_14/Tensordot/concatConcatV2Atransformer_block_1/sequential_1/dense_14/Tensordot/free:output:0Atransformer_block_1/sequential_1/dense_14/Tensordot/axes:output:0Htransformer_block_1/sequential_1/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_14/Tensordot/stackPackAtransformer_block_1/sequential_1/dense_14/Tensordot/Prod:output:0Ctransformer_block_1/sequential_1/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/sequential_1/dense_14/Tensordot/transpose	Transpose1transformer_block_1/layer_normalization_2/add:z:0Ctransformer_block_1/sequential_1/dense_14/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_1/sequential_1/dense_14/Tensordot/ReshapeReshapeAtransformer_block_1/sequential_1/dense_14/Tensordot/transpose:y:0Btransformer_block_1/sequential_1/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_1/sequential_1/dense_14/Tensordot/MatMulMatMulDtransformer_block_1/sequential_1/dense_14/Tensordot/Reshape:output:0Jtransformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_1/sequential_1/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_1/sequential_1/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_14/Tensordot/concat_1ConcatV2Etransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2:output:0Dtransformer_block_1/sequential_1/dense_14/Tensordot/Const_2:output:0Jtransformer_block_1/sequential_1/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_1/sequential_1/dense_14/TensordotReshapeDtransformer_block_1/sequential_1/dense_14/Tensordot/MatMul:product:0Etransformer_block_1/sequential_1/dense_14/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_1_sequential_1_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_1/sequential_1/dense_14/BiasAddBiasAdd<transformer_block_1/sequential_1/dense_14/Tensordot:output:0Htransformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_1/sequential_1/dense_14/ReluRelu:transformer_block_1/sequential_1/dense_14/BiasAdd:output:0*
T0*-
_output_shapes
:???????????}
8transformer_block_1/sequential_1/dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
6transformer_block_1/sequential_1/dropout_7/dropout/MulMul<transformer_block_1/sequential_1/dense_14/Relu:activations:0Atransformer_block_1/sequential_1/dropout_7/dropout/Const:output:0*
T0*-
_output_shapes
:????????????
8transformer_block_1/sequential_1/dropout_7/dropout/ShapeShape<transformer_block_1/sequential_1/dense_14/Relu:activations:0*
T0*
_output_shapes
:?
Otransformer_block_1/sequential_1/dropout_7/dropout/random_uniform/RandomUniformRandomUniformAtransformer_block_1/sequential_1/dropout_7/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2?
Atransformer_block_1/sequential_1/dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
?transformer_block_1/sequential_1/dropout_7/dropout/GreaterEqualGreaterEqualXtransformer_block_1/sequential_1/dropout_7/dropout/random_uniform/RandomUniform:output:0Jtransformer_block_1/sequential_1/dropout_7/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
7transformer_block_1/sequential_1/dropout_7/dropout/CastCastCtransformer_block_1/sequential_1/dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
8transformer_block_1/sequential_1/dropout_7/dropout/Mul_1Mul:transformer_block_1/sequential_1/dropout_7/dropout/Mul:z:0;transformer_block_1/sequential_1/dropout_7/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
Btransformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_1_sequential_1_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_1/sequential_1/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_1/sequential_1/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_1/sequential_1/dense_15/Tensordot/ShapeShape<transformer_block_1/sequential_1/dropout_7/dropout/Mul_1:z:0*
T0*
_output_shapes
:?
Atransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2GatherV2Btransformer_block_1/sequential_1/dense_15/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_15/Tensordot/free:output:0Jtransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1GatherV2Btransformer_block_1/sequential_1/dense_15/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_15/Tensordot/axes:output:0Ltransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_1/sequential_1/dense_15/Tensordot/ProdProdEtransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2:output:0Btransformer_block_1/sequential_1/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_1/sequential_1/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_1/sequential_1/dense_15/Tensordot/Prod_1ProdGtransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1:output:0Dtransformer_block_1/sequential_1/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/sequential_1/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_1/sequential_1/dense_15/Tensordot/concatConcatV2Atransformer_block_1/sequential_1/dense_15/Tensordot/free:output:0Atransformer_block_1/sequential_1/dense_15/Tensordot/axes:output:0Htransformer_block_1/sequential_1/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_15/Tensordot/stackPackAtransformer_block_1/sequential_1/dense_15/Tensordot/Prod:output:0Ctransformer_block_1/sequential_1/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/sequential_1/dense_15/Tensordot/transpose	Transpose<transformer_block_1/sequential_1/dropout_7/dropout/Mul_1:z:0Ctransformer_block_1/sequential_1/dense_15/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_1/sequential_1/dense_15/Tensordot/ReshapeReshapeAtransformer_block_1/sequential_1/dense_15/Tensordot/transpose:y:0Btransformer_block_1/sequential_1/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_1/sequential_1/dense_15/Tensordot/MatMulMatMulDtransformer_block_1/sequential_1/dense_15/Tensordot/Reshape:output:0Jtransformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_1/sequential_1/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_1/sequential_1/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_15/Tensordot/concat_1ConcatV2Etransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2:output:0Dtransformer_block_1/sequential_1/dense_15/Tensordot/Const_2:output:0Jtransformer_block_1/sequential_1/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_1/sequential_1/dense_15/TensordotReshapeDtransformer_block_1/sequential_1/dense_15/Tensordot/MatMul:product:0Etransformer_block_1/sequential_1/dense_15/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_1_sequential_1_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_1/sequential_1/dense_15/BiasAddBiasAdd<transformer_block_1/sequential_1/dense_15/Tensordot:output:0Htransformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_1/sequential_1/dense_15/ReluRelu:transformer_block_1/sequential_1/dense_15/BiasAdd:output:0*
T0*-
_output_shapes
:???????????}
8transformer_block_1/sequential_1/dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
6transformer_block_1/sequential_1/dropout_8/dropout/MulMul<transformer_block_1/sequential_1/dense_15/Relu:activations:0Atransformer_block_1/sequential_1/dropout_8/dropout/Const:output:0*
T0*-
_output_shapes
:????????????
8transformer_block_1/sequential_1/dropout_8/dropout/ShapeShape<transformer_block_1/sequential_1/dense_15/Relu:activations:0*
T0*
_output_shapes
:?
Otransformer_block_1/sequential_1/dropout_8/dropout/random_uniform/RandomUniformRandomUniformAtransformer_block_1/sequential_1/dropout_8/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2?
Atransformer_block_1/sequential_1/dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
?transformer_block_1/sequential_1/dropout_8/dropout/GreaterEqualGreaterEqualXtransformer_block_1/sequential_1/dropout_8/dropout/random_uniform/RandomUniform:output:0Jtransformer_block_1/sequential_1/dropout_8/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
7transformer_block_1/sequential_1/dropout_8/dropout/CastCastCtransformer_block_1/sequential_1/dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
8transformer_block_1/sequential_1/dropout_8/dropout/Mul_1Mul:transformer_block_1/sequential_1/dropout_8/dropout/Mul:z:0;transformer_block_1/sequential_1/dropout_8/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
Btransformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_1_sequential_1_dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_1/sequential_1/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_1/sequential_1/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_1/sequential_1/dense_16/Tensordot/ShapeShape<transformer_block_1/sequential_1/dropout_8/dropout/Mul_1:z:0*
T0*
_output_shapes
:?
Atransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2GatherV2Btransformer_block_1/sequential_1/dense_16/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_16/Tensordot/free:output:0Jtransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1GatherV2Btransformer_block_1/sequential_1/dense_16/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_16/Tensordot/axes:output:0Ltransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_1/sequential_1/dense_16/Tensordot/ProdProdEtransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2:output:0Btransformer_block_1/sequential_1/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_1/sequential_1/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_1/sequential_1/dense_16/Tensordot/Prod_1ProdGtransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1:output:0Dtransformer_block_1/sequential_1/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/sequential_1/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_1/sequential_1/dense_16/Tensordot/concatConcatV2Atransformer_block_1/sequential_1/dense_16/Tensordot/free:output:0Atransformer_block_1/sequential_1/dense_16/Tensordot/axes:output:0Htransformer_block_1/sequential_1/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_16/Tensordot/stackPackAtransformer_block_1/sequential_1/dense_16/Tensordot/Prod:output:0Ctransformer_block_1/sequential_1/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/sequential_1/dense_16/Tensordot/transpose	Transpose<transformer_block_1/sequential_1/dropout_8/dropout/Mul_1:z:0Ctransformer_block_1/sequential_1/dense_16/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_1/sequential_1/dense_16/Tensordot/ReshapeReshapeAtransformer_block_1/sequential_1/dense_16/Tensordot/transpose:y:0Btransformer_block_1/sequential_1/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_1/sequential_1/dense_16/Tensordot/MatMulMatMulDtransformer_block_1/sequential_1/dense_16/Tensordot/Reshape:output:0Jtransformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_1/sequential_1/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_1/sequential_1/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_16/Tensordot/concat_1ConcatV2Etransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2:output:0Dtransformer_block_1/sequential_1/dense_16/Tensordot/Const_2:output:0Jtransformer_block_1/sequential_1/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_1/sequential_1/dense_16/TensordotReshapeDtransformer_block_1/sequential_1/dense_16/Tensordot/MatMul:product:0Etransformer_block_1/sequential_1/dense_16/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_1_sequential_1_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_1/sequential_1/dense_16/BiasAddBiasAdd<transformer_block_1/sequential_1/dense_16/Tensordot:output:0Htransformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_1/sequential_1/dense_16/ReluRelu:transformer_block_1/sequential_1/dense_16/BiasAdd:output:0*
T0*-
_output_shapes
:???????????}
8transformer_block_1/sequential_1/dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
6transformer_block_1/sequential_1/dropout_9/dropout/MulMul<transformer_block_1/sequential_1/dense_16/Relu:activations:0Atransformer_block_1/sequential_1/dropout_9/dropout/Const:output:0*
T0*-
_output_shapes
:????????????
8transformer_block_1/sequential_1/dropout_9/dropout/ShapeShape<transformer_block_1/sequential_1/dense_16/Relu:activations:0*
T0*
_output_shapes
:?
Otransformer_block_1/sequential_1/dropout_9/dropout/random_uniform/RandomUniformRandomUniformAtransformer_block_1/sequential_1/dropout_9/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2?
Atransformer_block_1/sequential_1/dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
?transformer_block_1/sequential_1/dropout_9/dropout/GreaterEqualGreaterEqualXtransformer_block_1/sequential_1/dropout_9/dropout/random_uniform/RandomUniform:output:0Jtransformer_block_1/sequential_1/dropout_9/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
7transformer_block_1/sequential_1/dropout_9/dropout/CastCastCtransformer_block_1/sequential_1/dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
8transformer_block_1/sequential_1/dropout_9/dropout/Mul_1Mul:transformer_block_1/sequential_1/dropout_9/dropout/Mul:z:0;transformer_block_1/sequential_1/dropout_9/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
Btransformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_1_sequential_1_dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_1/sequential_1/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_1/sequential_1/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_1/sequential_1/dense_17/Tensordot/ShapeShape<transformer_block_1/sequential_1/dropout_9/dropout/Mul_1:z:0*
T0*
_output_shapes
:?
Atransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2GatherV2Btransformer_block_1/sequential_1/dense_17/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_17/Tensordot/free:output:0Jtransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1GatherV2Btransformer_block_1/sequential_1/dense_17/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_17/Tensordot/axes:output:0Ltransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_1/sequential_1/dense_17/Tensordot/ProdProdEtransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2:output:0Btransformer_block_1/sequential_1/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_1/sequential_1/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_1/sequential_1/dense_17/Tensordot/Prod_1ProdGtransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1:output:0Dtransformer_block_1/sequential_1/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/sequential_1/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_1/sequential_1/dense_17/Tensordot/concatConcatV2Atransformer_block_1/sequential_1/dense_17/Tensordot/free:output:0Atransformer_block_1/sequential_1/dense_17/Tensordot/axes:output:0Htransformer_block_1/sequential_1/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_17/Tensordot/stackPackAtransformer_block_1/sequential_1/dense_17/Tensordot/Prod:output:0Ctransformer_block_1/sequential_1/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/sequential_1/dense_17/Tensordot/transpose	Transpose<transformer_block_1/sequential_1/dropout_9/dropout/Mul_1:z:0Ctransformer_block_1/sequential_1/dense_17/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_1/sequential_1/dense_17/Tensordot/ReshapeReshapeAtransformer_block_1/sequential_1/dense_17/Tensordot/transpose:y:0Btransformer_block_1/sequential_1/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_1/sequential_1/dense_17/Tensordot/MatMulMatMulDtransformer_block_1/sequential_1/dense_17/Tensordot/Reshape:output:0Jtransformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_1/sequential_1/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_1/sequential_1/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_17/Tensordot/concat_1ConcatV2Etransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2:output:0Dtransformer_block_1/sequential_1/dense_17/Tensordot/Const_2:output:0Jtransformer_block_1/sequential_1/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_1/sequential_1/dense_17/TensordotReshapeDtransformer_block_1/sequential_1/dense_17/Tensordot/MatMul:product:0Etransformer_block_1/sequential_1/dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_1_sequential_1_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_1/sequential_1/dense_17/BiasAddBiasAdd<transformer_block_1/sequential_1/dense_17/Tensordot:output:0Htransformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????q
,transformer_block_1/dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
*transformer_block_1/dropout_11/dropout/MulMul:transformer_block_1/sequential_1/dense_17/BiasAdd:output:05transformer_block_1/dropout_11/dropout/Const:output:0*
T0*-
_output_shapes
:????????????
,transformer_block_1/dropout_11/dropout/ShapeShape:transformer_block_1/sequential_1/dense_17/BiasAdd:output:0*
T0*
_output_shapes
:?
Ctransformer_block_1/dropout_11/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_1/dropout_11/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2z
5transformer_block_1/dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
3transformer_block_1/dropout_11/dropout/GreaterEqualGreaterEqualLtransformer_block_1/dropout_11/dropout/random_uniform/RandomUniform:output:0>transformer_block_1/dropout_11/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
+transformer_block_1/dropout_11/dropout/CastCast7transformer_block_1/dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
,transformer_block_1/dropout_11/dropout/Mul_1Mul.transformer_block_1/dropout_11/dropout/Mul:z:0/transformer_block_1/dropout_11/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
transformer_block_1/add_1AddV21transformer_block_1/layer_normalization_2/add:z:00transformer_block_1/dropout_11/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????|
/transformer_block_1/layer_normalization_3/ShapeShapetransformer_block_1/add_1:z:0*
T0*
_output_shapes
:?
=transformer_block_1/layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?transformer_block_1/layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?transformer_block_1/layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block_1/layer_normalization_3/strided_sliceStridedSlice8transformer_block_1/layer_normalization_3/Shape:output:0Ftransformer_block_1/layer_normalization_3/strided_slice/stack:output:0Htransformer_block_1/layer_normalization_3/strided_slice/stack_1:output:0Htransformer_block_1/layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/transformer_block_1/layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
-transformer_block_1/layer_normalization_3/mulMul8transformer_block_1/layer_normalization_3/mul/x:output:0@transformer_block_1/layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_1/layer_normalization_3/strided_slice_1StridedSlice8transformer_block_1/layer_normalization_3/Shape:output:0Htransformer_block_1/layer_normalization_3/strided_slice_1/stack:output:0Jtransformer_block_1/layer_normalization_3/strided_slice_1/stack_1:output:0Jtransformer_block_1/layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_1/layer_normalization_3/mul_1Mul1transformer_block_1/layer_normalization_3/mul:z:0Btransformer_block_1/layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_1/layer_normalization_3/strided_slice_2StridedSlice8transformer_block_1/layer_normalization_3/Shape:output:0Htransformer_block_1/layer_normalization_3/strided_slice_2/stack:output:0Jtransformer_block_1/layer_normalization_3/strided_slice_2/stack_1:output:0Jtransformer_block_1/layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1transformer_block_1/layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
/transformer_block_1/layer_normalization_3/mul_2Mul:transformer_block_1/layer_normalization_3/mul_2/x:output:0Btransformer_block_1/layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: {
9transformer_block_1/layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :{
9transformer_block_1/layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
7transformer_block_1/layer_normalization_3/Reshape/shapePackBtransformer_block_1/layer_normalization_3/Reshape/shape/0:output:03transformer_block_1/layer_normalization_3/mul_1:z:03transformer_block_1/layer_normalization_3/mul_2:z:0Btransformer_block_1/layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
1transformer_block_1/layer_normalization_3/ReshapeReshapetransformer_block_1/add_1:z:0@transformer_block_1/layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
5transformer_block_1/layer_normalization_3/ones/packedPack3transformer_block_1/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:y
4transformer_block_1/layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
.transformer_block_1/layer_normalization_3/onesFill>transformer_block_1/layer_normalization_3/ones/packed:output:0=transformer_block_1/layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:??????????
6transformer_block_1/layer_normalization_3/zeros/packedPack3transformer_block_1/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:z
5transformer_block_1/layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
/transformer_block_1/layer_normalization_3/zerosFill?transformer_block_1/layer_normalization_3/zeros/packed:output:0>transformer_block_1/layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????r
/transformer_block_1/layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB t
1transformer_block_1/layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
:transformer_block_1/layer_normalization_3/FusedBatchNormV3FusedBatchNormV3:transformer_block_1/layer_normalization_3/Reshape:output:07transformer_block_1/layer_normalization_3/ones:output:08transformer_block_1/layer_normalization_3/zeros:output:08transformer_block_1/layer_normalization_3/Const:output:0:transformer_block_1/layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
3transformer_block_1/layer_normalization_3/Reshape_1Reshape>transformer_block_1/layer_normalization_3/FusedBatchNormV3:y:08transformer_block_1/layer_normalization_3/Shape:output:0*
T0*-
_output_shapes
:????????????
>transformer_block_1/layer_normalization_3/mul_3/ReadVariableOpReadVariableOpGtransformer_block_1_layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/transformer_block_1/layer_normalization_3/mul_3Mul<transformer_block_1/layer_normalization_3/Reshape_1:output:0Ftransformer_block_1/layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
<transformer_block_1/layer_normalization_3/add/ReadVariableOpReadVariableOpEtransformer_block_1_layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-transformer_block_1/layer_normalization_3/addAddV23transformer_block_1/layer_normalization_3/mul_3:z:0Dtransformer_block_1/layer_normalization_3/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????n
,global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d_1/MaxMax1transformer_block_1/layer_normalization_3/add:z:05global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*(
_output_shapes
:??????????]
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_12/dropout/MulMul#global_max_pooling1d_1/Max:output:0!dropout_12/dropout/Const:output:0*
T0*(
_output_shapes
:??????????k
dropout_12/dropout/ShapeShape#global_max_pooling1d_1/Max:output:0*
T0*
_output_shapes
:?
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed2f
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_19/MatMulMatMuldropout_12/dropout/Mul_1:z:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*(
_output_shapes
:??????????j
IdentityIdentitydense_19/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp<^token_and_position_embedding_1/embedding_2/embedding_lookup<^token_and_position_embedding_1/embedding_3/embedding_lookup=^transformer_block_1/layer_normalization_2/add/ReadVariableOp?^transformer_block_1/layer_normalization_2/mul_3/ReadVariableOp=^transformer_block_1/layer_normalization_3/add/ReadVariableOp?^transformer_block_1/layer_normalization_3/mul_3/ReadVariableOpK^transformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpM^transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOpK^transformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpM^transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOpK^transformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpM^transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOpK^transformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpM^transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOpA^transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOpC^transformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOpA^transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOpC^transformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOpA^transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOpC^transformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOpA^transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOpC^transformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2z
;token_and_position_embedding_1/embedding_2/embedding_lookup;token_and_position_embedding_1/embedding_2/embedding_lookup2z
;token_and_position_embedding_1/embedding_3/embedding_lookup;token_and_position_embedding_1/embedding_3/embedding_lookup2|
<transformer_block_1/layer_normalization_2/add/ReadVariableOp<transformer_block_1/layer_normalization_2/add/ReadVariableOp2?
>transformer_block_1/layer_normalization_2/mul_3/ReadVariableOp>transformer_block_1/layer_normalization_2/mul_3/ReadVariableOp2|
<transformer_block_1/layer_normalization_3/add/ReadVariableOp<transformer_block_1/layer_normalization_3/add/ReadVariableOp2?
>transformer_block_1/layer_normalization_3/mul_3/ReadVariableOp>transformer_block_1/layer_normalization_3/mul_3/ReadVariableOp2?
Jtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpJtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp2?
Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOp2?
Jtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpJtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp2?
Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOp2?
Jtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpJtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp2?
Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOp2?
Jtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpJtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp2?
Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOp2?
@transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOp@transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOp2?
Btransformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOpBtransformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOp2?
@transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOp@transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOp2?
Btransformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOpBtransformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOp2?
@transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOp@transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOp2?
Btransformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOpBtransformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOp2?
@transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOp@transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOp2?
Btransformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOpBtransformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_100826

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:???????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2????[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????u
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????o
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:???????????_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
-__inference_sequential_1_layer_call_fn_100962
dense_14_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_100922u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
-
_output_shapes
:???????????
(
_user_specified_namedense_14_input
?
?
(__inference_model_1_layer_call_fn_102507

inputs
unknown:
??
	unknown_0:
??
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:
??

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:
??

unknown_22:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_101488p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
ϲ
?/
__inference__traced_save_105104
file_prefix.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableopT
Psavev2_token_and_position_embedding_1_embedding_2_embeddings_read_readvariableopT
Psavev2_token_and_position_embedding_1_embedding_3_embeddings_read_readvariableopY
Usavev2_transformer_block_1_multi_head_attention_1_dense_10_kernel_read_readvariableopW
Ssavev2_transformer_block_1_multi_head_attention_1_dense_10_bias_read_readvariableopY
Usavev2_transformer_block_1_multi_head_attention_1_dense_11_kernel_read_readvariableopW
Ssavev2_transformer_block_1_multi_head_attention_1_dense_11_bias_read_readvariableopY
Usavev2_transformer_block_1_multi_head_attention_1_dense_12_kernel_read_readvariableopW
Ssavev2_transformer_block_1_multi_head_attention_1_dense_12_bias_read_readvariableopY
Usavev2_transformer_block_1_multi_head_attention_1_dense_13_kernel_read_readvariableopW
Ssavev2_transformer_block_1_multi_head_attention_1_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableopN
Jsavev2_transformer_block_1_layer_normalization_2_gamma_read_readvariableopM
Isavev2_transformer_block_1_layer_normalization_2_beta_read_readvariableopN
Jsavev2_transformer_block_1_layer_normalization_3_gamma_read_readvariableopM
Isavev2_transformer_block_1_layer_normalization_3_beta_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_negatives_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop5
1savev2_adam_dense_19_kernel_m_read_readvariableop3
/savev2_adam_dense_19_bias_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_m_read_readvariableop`
\savev2_adam_transformer_block_1_multi_head_attention_1_dense_10_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_1_multi_head_attention_1_dense_10_bias_m_read_readvariableop`
\savev2_adam_transformer_block_1_multi_head_attention_1_dense_11_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_1_multi_head_attention_1_dense_11_bias_m_read_readvariableop`
\savev2_adam_transformer_block_1_multi_head_attention_1_dense_12_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_1_multi_head_attention_1_dense_12_bias_m_read_readvariableop`
\savev2_adam_transformer_block_1_multi_head_attention_1_dense_13_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_1_multi_head_attention_1_dense_13_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop5
1savev2_adam_dense_16_kernel_m_read_readvariableop3
/savev2_adam_dense_16_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableopU
Qsavev2_adam_transformer_block_1_layer_normalization_2_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_1_layer_normalization_2_beta_m_read_readvariableopU
Qsavev2_adam_transformer_block_1_layer_normalization_3_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_1_layer_normalization_3_beta_m_read_readvariableop5
1savev2_adam_dense_19_kernel_v_read_readvariableop3
/savev2_adam_dense_19_bias_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_v_read_readvariableop`
\savev2_adam_transformer_block_1_multi_head_attention_1_dense_10_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_1_multi_head_attention_1_dense_10_bias_v_read_readvariableop`
\savev2_adam_transformer_block_1_multi_head_attention_1_dense_11_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_1_multi_head_attention_1_dense_11_bias_v_read_readvariableop`
\savev2_adam_transformer_block_1_multi_head_attention_1_dense_12_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_1_multi_head_attention_1_dense_12_bias_v_read_readvariableop`
\savev2_adam_transformer_block_1_multi_head_attention_1_dense_13_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_1_multi_head_attention_1_dense_13_bias_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop5
1savev2_adam_dense_16_kernel_v_read_readvariableop3
/savev2_adam_dense_16_bias_v_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableopU
Qsavev2_adam_transformer_block_1_layer_normalization_2_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_1_layer_normalization_2_beta_v_read_readvariableopU
Qsavev2_adam_transformer_block_1_layer_normalization_3_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_1_layer_normalization_3_beta_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?(
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?'
value?'B?'VB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?
value?B?VB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?-
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableopPsavev2_token_and_position_embedding_1_embedding_2_embeddings_read_readvariableopPsavev2_token_and_position_embedding_1_embedding_3_embeddings_read_readvariableopUsavev2_transformer_block_1_multi_head_attention_1_dense_10_kernel_read_readvariableopSsavev2_transformer_block_1_multi_head_attention_1_dense_10_bias_read_readvariableopUsavev2_transformer_block_1_multi_head_attention_1_dense_11_kernel_read_readvariableopSsavev2_transformer_block_1_multi_head_attention_1_dense_11_bias_read_readvariableopUsavev2_transformer_block_1_multi_head_attention_1_dense_12_kernel_read_readvariableopSsavev2_transformer_block_1_multi_head_attention_1_dense_12_bias_read_readvariableopUsavev2_transformer_block_1_multi_head_attention_1_dense_13_kernel_read_readvariableopSsavev2_transformer_block_1_multi_head_attention_1_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableopJsavev2_transformer_block_1_layer_normalization_2_gamma_read_readvariableopIsavev2_transformer_block_1_layer_normalization_2_beta_read_readvariableopJsavev2_transformer_block_1_layer_normalization_3_gamma_read_readvariableopIsavev2_transformer_block_1_layer_normalization_3_beta_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop1savev2_adam_dense_19_kernel_m_read_readvariableop/savev2_adam_dense_19_bias_m_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_m_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_m_read_readvariableop\savev2_adam_transformer_block_1_multi_head_attention_1_dense_10_kernel_m_read_readvariableopZsavev2_adam_transformer_block_1_multi_head_attention_1_dense_10_bias_m_read_readvariableop\savev2_adam_transformer_block_1_multi_head_attention_1_dense_11_kernel_m_read_readvariableopZsavev2_adam_transformer_block_1_multi_head_attention_1_dense_11_bias_m_read_readvariableop\savev2_adam_transformer_block_1_multi_head_attention_1_dense_12_kernel_m_read_readvariableopZsavev2_adam_transformer_block_1_multi_head_attention_1_dense_12_bias_m_read_readvariableop\savev2_adam_transformer_block_1_multi_head_attention_1_dense_13_kernel_m_read_readvariableopZsavev2_adam_transformer_block_1_multi_head_attention_1_dense_13_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop1savev2_adam_dense_16_kernel_m_read_readvariableop/savev2_adam_dense_16_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableopQsavev2_adam_transformer_block_1_layer_normalization_2_gamma_m_read_readvariableopPsavev2_adam_transformer_block_1_layer_normalization_2_beta_m_read_readvariableopQsavev2_adam_transformer_block_1_layer_normalization_3_gamma_m_read_readvariableopPsavev2_adam_transformer_block_1_layer_normalization_3_beta_m_read_readvariableop1savev2_adam_dense_19_kernel_v_read_readvariableop/savev2_adam_dense_19_bias_v_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_v_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_v_read_readvariableop\savev2_adam_transformer_block_1_multi_head_attention_1_dense_10_kernel_v_read_readvariableopZsavev2_adam_transformer_block_1_multi_head_attention_1_dense_10_bias_v_read_readvariableop\savev2_adam_transformer_block_1_multi_head_attention_1_dense_11_kernel_v_read_readvariableopZsavev2_adam_transformer_block_1_multi_head_attention_1_dense_11_bias_v_read_readvariableop\savev2_adam_transformer_block_1_multi_head_attention_1_dense_12_kernel_v_read_readvariableopZsavev2_adam_transformer_block_1_multi_head_attention_1_dense_12_bias_v_read_readvariableop\savev2_adam_transformer_block_1_multi_head_attention_1_dense_13_kernel_v_read_readvariableopZsavev2_adam_transformer_block_1_multi_head_attention_1_dense_13_bias_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableop1savev2_adam_dense_16_kernel_v_read_readvariableop/savev2_adam_dense_16_bias_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableopQsavev2_adam_transformer_block_1_layer_normalization_2_gamma_v_read_readvariableopPsavev2_adam_transformer_block_1_layer_normalization_2_beta_v_read_readvariableopQsavev2_adam_transformer_block_1_layer_normalization_3_gamma_v_read_readvariableopPsavev2_adam_transformer_block_1_layer_normalization_3_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *d
dtypesZ
X2V	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:?:
??:
??:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:?:?:?:?: : : : : : : : : :::::
??:?:
??:
??:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:?:?:?:?:
??:?:
??:
??:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:?:?:?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: : "

_output_shapes
:: #

_output_shapes
:: $

_output_shapes
:: %

_output_shapes
::&&"
 
_output_shapes
:
??:!'

_output_shapes	
:?:&("
 
_output_shapes
:
??:&)"
 
_output_shapes
:
??:&*"
 
_output_shapes
:
??:!+

_output_shapes	
:?:&,"
 
_output_shapes
:
??:!-

_output_shapes	
:?:&."
 
_output_shapes
:
??:!/

_output_shapes	
:?:&0"
 
_output_shapes
:
??:!1

_output_shapes	
:?:&2"
 
_output_shapes
:
??:!3

_output_shapes	
:?:&4"
 
_output_shapes
:
??:!5

_output_shapes	
:?:&6"
 
_output_shapes
:
??:!7

_output_shapes	
:?:&8"
 
_output_shapes
:
??:!9

_output_shapes	
:?:!:

_output_shapes	
:?:!;

_output_shapes	
:?:!<

_output_shapes	
:?:!=

_output_shapes	
:?:&>"
 
_output_shapes
:
??:!?

_output_shapes	
:?:&@"
 
_output_shapes
:
??:&A"
 
_output_shapes
:
??:&B"
 
_output_shapes
:
??:!C

_output_shapes	
:?:&D"
 
_output_shapes
:
??:!E

_output_shapes	
:?:&F"
 
_output_shapes
:
??:!G

_output_shapes	
:?:&H"
 
_output_shapes
:
??:!I

_output_shapes	
:?:&J"
 
_output_shapes
:
??:!K

_output_shapes	
:?:&L"
 
_output_shapes
:
??:!M

_output_shapes	
:?:&N"
 
_output_shapes
:
??:!O

_output_shapes	
:?:&P"
 
_output_shapes
:
??:!Q

_output_shapes	
:?:!R

_output_shapes	
:?:!S

_output_shapes	
:?:!T

_output_shapes	
:?:!U

_output_shapes	
:?:V

_output_shapes
: 
?	
?
-__inference_sequential_1_layer_call_fn_104337

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_100922u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_dense_16_layer_call_and_return_conditional_losses_100694

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:???????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?$
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_101016
dense_14_input#
dense_14_100992:
??
dense_14_100994:	?#
dense_15_100998:
??
dense_15_101000:	?#
dense_16_101004:
??
dense_16_101006:	?#
dense_17_101010:
??
dense_17_101012:	?
identity?? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCalldense_14_inputdense_14_100992dense_14_100994*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_100606?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_100859?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_15_100998dense_15_101000*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_100650?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_100826?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0dense_16_101004dense_16_101006*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_100694?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_100793?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0dense_17_101010dense_17_101012*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_100737~
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:] Y
-
_output_shapes
:???????????
(
_user_specified_namedense_14_input
??
?
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_102010

inputsU
Amulti_head_attention_1_dense_10_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_10_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_11_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_11_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_12_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_12_biasadd_readvariableop_resource:	?U
Amulti_head_attention_1_dense_13_tensordot_readvariableop_resource:
??N
?multi_head_attention_1_dense_13_biasadd_readvariableop_resource:	?B
3layer_normalization_2_mul_3_readvariableop_resource:	?@
1layer_normalization_2_add_readvariableop_resource:	?K
7sequential_1_dense_14_tensordot_readvariableop_resource:
??D
5sequential_1_dense_14_biasadd_readvariableop_resource:	?K
7sequential_1_dense_15_tensordot_readvariableop_resource:
??D
5sequential_1_dense_15_biasadd_readvariableop_resource:	?K
7sequential_1_dense_16_tensordot_readvariableop_resource:
??D
5sequential_1_dense_16_biasadd_readvariableop_resource:	?K
7sequential_1_dense_17_tensordot_readvariableop_resource:
??D
5sequential_1_dense_17_biasadd_readvariableop_resource:	?B
3layer_normalization_3_mul_3_readvariableop_resource:	?@
1layer_normalization_3_add_readvariableop_resource:	?
identity??(layer_normalization_2/add/ReadVariableOp?*layer_normalization_2/mul_3/ReadVariableOp?(layer_normalization_3/add/ReadVariableOp?*layer_normalization_3/mul_3/ReadVariableOp?6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp?6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp?8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp?,sequential_1/dense_14/BiasAdd/ReadVariableOp?.sequential_1/dense_14/Tensordot/ReadVariableOp?,sequential_1/dense_15/BiasAdd/ReadVariableOp?.sequential_1/dense_15/Tensordot/ReadVariableOp?,sequential_1/dense_16/BiasAdd/ReadVariableOp?.sequential_1/dense_16/Tensordot/ReadVariableOp?,sequential_1/dense_17/BiasAdd/ReadVariableOp?.sequential_1/dense_17/Tensordot/ReadVariableOpR
multi_head_attention_1/ShapeShapeinputs*
T0*
_output_shapes
:t
*multi_head_attention_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,multi_head_attention_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,multi_head_attention_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$multi_head_attention_1/strided_sliceStridedSlice%multi_head_attention_1/Shape:output:03multi_head_attention_1/strided_slice/stack:output:05multi_head_attention_1/strided_slice/stack_1:output:05multi_head_attention_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
8multi_head_attention_1/dense_10/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_10_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_10/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_10/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_10/Tensordot/Shape:output:07multi_head_attention_1/dense_10/Tensordot/free:output:0@multi_head_attention_1/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_10/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_10/Tensordot/Shape:output:07multi_head_attention_1/dense_10/Tensordot/axes:output:0Bmulti_head_attention_1/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_10/Tensordot/ProdProd;multi_head_attention_1/dense_10/Tensordot/GatherV2:output:08multi_head_attention_1/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_10/Tensordot/Prod_1Prod=multi_head_attention_1/dense_10/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_10/Tensordot/concatConcatV27multi_head_attention_1/dense_10/Tensordot/free:output:07multi_head_attention_1/dense_10/Tensordot/axes:output:0>multi_head_attention_1/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_10/Tensordot/stackPack7multi_head_attention_1/dense_10/Tensordot/Prod:output:09multi_head_attention_1/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_10/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_10/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_10/Tensordot/ReshapeReshape7multi_head_attention_1/dense_10/Tensordot/transpose:y:08multi_head_attention_1/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_10/Tensordot/MatMulMatMul:multi_head_attention_1/dense_10/Tensordot/Reshape:output:0@multi_head_attention_1/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_10/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_10/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_10/Tensordot/Const_2:output:0@multi_head_attention_1/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_10/TensordotReshape:multi_head_attention_1/dense_10/Tensordot/MatMul:product:0;multi_head_attention_1/dense_10/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_10/BiasAddBiasAdd2multi_head_attention_1/dense_10/Tensordot:output:0>multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_10/ReluRelu0multi_head_attention_1/dense_10/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_1/dense_11/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_11_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_11/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_11/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_11/Tensordot/Shape:output:07multi_head_attention_1/dense_11/Tensordot/free:output:0@multi_head_attention_1/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_11/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_11/Tensordot/Shape:output:07multi_head_attention_1/dense_11/Tensordot/axes:output:0Bmulti_head_attention_1/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_11/Tensordot/ProdProd;multi_head_attention_1/dense_11/Tensordot/GatherV2:output:08multi_head_attention_1/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_11/Tensordot/Prod_1Prod=multi_head_attention_1/dense_11/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_11/Tensordot/concatConcatV27multi_head_attention_1/dense_11/Tensordot/free:output:07multi_head_attention_1/dense_11/Tensordot/axes:output:0>multi_head_attention_1/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_11/Tensordot/stackPack7multi_head_attention_1/dense_11/Tensordot/Prod:output:09multi_head_attention_1/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_11/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_11/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_11/Tensordot/ReshapeReshape7multi_head_attention_1/dense_11/Tensordot/transpose:y:08multi_head_attention_1/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_11/Tensordot/MatMulMatMul:multi_head_attention_1/dense_11/Tensordot/Reshape:output:0@multi_head_attention_1/dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_11/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_11/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_11/Tensordot/Const_2:output:0@multi_head_attention_1/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_11/TensordotReshape:multi_head_attention_1/dense_11/Tensordot/MatMul:product:0;multi_head_attention_1/dense_11/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_11/BiasAddBiasAdd2multi_head_attention_1/dense_11/Tensordot:output:0>multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_11/ReluRelu0multi_head_attention_1/dense_11/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_1/dense_12/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_1/dense_12/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_12/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_12/Tensordot/Shape:output:07multi_head_attention_1/dense_12/Tensordot/free:output:0@multi_head_attention_1/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_12/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_12/Tensordot/Shape:output:07multi_head_attention_1/dense_12/Tensordot/axes:output:0Bmulti_head_attention_1/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_12/Tensordot/ProdProd;multi_head_attention_1/dense_12/Tensordot/GatherV2:output:08multi_head_attention_1/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_12/Tensordot/Prod_1Prod=multi_head_attention_1/dense_12/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_12/Tensordot/concatConcatV27multi_head_attention_1/dense_12/Tensordot/free:output:07multi_head_attention_1/dense_12/Tensordot/axes:output:0>multi_head_attention_1/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_12/Tensordot/stackPack7multi_head_attention_1/dense_12/Tensordot/Prod:output:09multi_head_attention_1/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_12/Tensordot/transpose	Transposeinputs9multi_head_attention_1/dense_12/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_1/dense_12/Tensordot/ReshapeReshape7multi_head_attention_1/dense_12/Tensordot/transpose:y:08multi_head_attention_1/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_12/Tensordot/MatMulMatMul:multi_head_attention_1/dense_12/Tensordot/Reshape:output:0@multi_head_attention_1/dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_12/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_12/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_12/Tensordot/Const_2:output:0@multi_head_attention_1/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_12/TensordotReshape:multi_head_attention_1/dense_12/Tensordot/MatMul:product:0;multi_head_attention_1/dense_12/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_12/BiasAddBiasAdd2multi_head_attention_1/dense_12/Tensordot:output:0>multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_1/dense_12/ReluRelu0multi_head_attention_1/dense_12/BiasAdd:output:0*
T0*-
_output_shapes
:???????????q
&multi_head_attention_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????h
&multi_head_attention_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&multi_head_attention_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
$multi_head_attention_1/Reshape/shapePack-multi_head_attention_1/strided_slice:output:0/multi_head_attention_1/Reshape/shape/1:output:0/multi_head_attention_1/Reshape/shape/2:output:0/multi_head_attention_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
multi_head_attention_1/ReshapeReshape2multi_head_attention_1/dense_10/Relu:activations:0-multi_head_attention_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????~
%multi_head_attention_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 multi_head_attention_1/transpose	Transpose'multi_head_attention_1/Reshape:output:0.multi_head_attention_1/transpose/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_1/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_1/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
&multi_head_attention_1/Reshape_1/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_1/shape/1:output:01multi_head_attention_1/Reshape_1/shape/2:output:01multi_head_attention_1/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_1Reshape2multi_head_attention_1/dense_11/Relu:activations:0/multi_head_attention_1/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_1	Transpose)multi_head_attention_1/Reshape_1:output:00multi_head_attention_1/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_1/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_1/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
&multi_head_attention_1/Reshape_2/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_2/shape/1:output:01multi_head_attention_1/Reshape_2/shape/2:output:01multi_head_attention_1/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_2Reshape2multi_head_attention_1/dense_12/Relu:activations:0/multi_head_attention_1/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_2	Transpose)multi_head_attention_1/Reshape_2:output:00multi_head_attention_1/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
multi_head_attention_1/MatMulBatchMatMulV2$multi_head_attention_1/transpose:y:0&multi_head_attention_1/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(t
multi_head_attention_1/Shape_1Shape&multi_head_attention_1/transpose_1:y:0*
T0*
_output_shapes
:
,multi_head_attention_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.multi_head_attention_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.multi_head_attention_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&multi_head_attention_1/strided_slice_1StridedSlice'multi_head_attention_1/Shape_1:output:05multi_head_attention_1/strided_slice_1/stack:output:07multi_head_attention_1/strided_slice_1/stack_1:output:07multi_head_attention_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
multi_head_attention_1/CastCast/multi_head_attention_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: e
multi_head_attention_1/SqrtSqrtmulti_head_attention_1/Cast:y:0*
T0*
_output_shapes
: ?
multi_head_attention_1/truedivRealDiv&multi_head_attention_1/MatMul:output:0multi_head_attention_1/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_1/SoftmaxSoftmax"multi_head_attention_1/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_1/MatMul_1BatchMatMulV2(multi_head_attention_1/Softmax:softmax:0&multi_head_attention_1/transpose_2:y:0*
T0*8
_output_shapes&
$:"???????????????????
'multi_head_attention_1/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_1/transpose_3	Transpose(multi_head_attention_1/MatMul_1:output:00multi_head_attention_1/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"??????????????????s
(multi_head_attention_1/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????k
(multi_head_attention_1/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
&multi_head_attention_1/Reshape_3/shapePack-multi_head_attention_1/strided_slice:output:01multi_head_attention_1/Reshape_3/shape/1:output:01multi_head_attention_1/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_1/Reshape_3Reshape&multi_head_attention_1/transpose_3:y:0/multi_head_attention_1/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
8multi_head_attention_1/dense_13/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_1_dense_13_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_1/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_1/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
/multi_head_attention_1/dense_13/Tensordot/ShapeShape)multi_head_attention_1/Reshape_3:output:0*
T0*
_output_shapes
:y
7multi_head_attention_1/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_13/Tensordot/GatherV2GatherV28multi_head_attention_1/dense_13/Tensordot/Shape:output:07multi_head_attention_1/dense_13/Tensordot/free:output:0@multi_head_attention_1/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_1/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_1/dense_13/Tensordot/GatherV2_1GatherV28multi_head_attention_1/dense_13/Tensordot/Shape:output:07multi_head_attention_1/dense_13/Tensordot/axes:output:0Bmulti_head_attention_1/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_1/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_1/dense_13/Tensordot/ProdProd;multi_head_attention_1/dense_13/Tensordot/GatherV2:output:08multi_head_attention_1/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_1/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_1/dense_13/Tensordot/Prod_1Prod=multi_head_attention_1/dense_13/Tensordot/GatherV2_1:output:0:multi_head_attention_1/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_1/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_1/dense_13/Tensordot/concatConcatV27multi_head_attention_1/dense_13/Tensordot/free:output:07multi_head_attention_1/dense_13/Tensordot/axes:output:0>multi_head_attention_1/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_1/dense_13/Tensordot/stackPack7multi_head_attention_1/dense_13/Tensordot/Prod:output:09multi_head_attention_1/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_1/dense_13/Tensordot/transpose	Transpose)multi_head_attention_1/Reshape_3:output:09multi_head_attention_1/dense_13/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
1multi_head_attention_1/dense_13/Tensordot/ReshapeReshape7multi_head_attention_1/dense_13/Tensordot/transpose:y:08multi_head_attention_1/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_1/dense_13/Tensordot/MatMulMatMul:multi_head_attention_1/dense_13/Tensordot/Reshape:output:0@multi_head_attention_1/dense_13/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_1/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_1/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_1/dense_13/Tensordot/concat_1ConcatV2;multi_head_attention_1/dense_13/Tensordot/GatherV2:output:0:multi_head_attention_1/dense_13/Tensordot/Const_2:output:0@multi_head_attention_1/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_1/dense_13/TensordotReshape:multi_head_attention_1/dense_13/Tensordot/MatMul:product:0;multi_head_attention_1/dense_13/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_1_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_1/dense_13/BiasAddBiasAdd2multi_head_attention_1/dense_13/Tensordot:output:0>multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
$multi_head_attention_1/dense_13/ReluRelu0multi_head_attention_1/dense_13/BiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_10/dropout/MulMul2multi_head_attention_1/dense_13/Relu:activations:0!dropout_10/dropout/Const:output:0*
T0*5
_output_shapes#
!:???????????????????z
dropout_10/dropout/ShapeShape2multi_head_attention_1/dense_13/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype0*
seed2????f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:????????????????????
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:????????????????????
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*5
_output_shapes#
!:???????????????????j
addAddV2inputsdropout_10/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????R
layer_normalization_2/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_2/mul_1Mullayer_normalization_2/mul:z:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_2StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_2/stack:output:06layer_normalization_2/strided_slice_2/stack_1:output:06layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mul_2Mul&layer_normalization_2/mul_2/x:output:0.layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul_1:z:0layer_normalization_2/mul_2:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_2/ReshapeReshapeadd:z:0,layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_2/mul_3/ReadVariableOpReadVariableOp3layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/mul_3Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/addAddV2layer_normalization_2/mul_3:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_14/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
%sequential_1/dense_14/Tensordot/ShapeShapelayer_normalization_2/add:z:0*
T0*
_output_shapes
:o
-sequential_1/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_14/Tensordot/GatherV2GatherV2.sequential_1/dense_14/Tensordot/Shape:output:0-sequential_1/dense_14/Tensordot/free:output:06sequential_1/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_14/Tensordot/GatherV2_1GatherV2.sequential_1/dense_14/Tensordot/Shape:output:0-sequential_1/dense_14/Tensordot/axes:output:08sequential_1/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_14/Tensordot/ProdProd1sequential_1/dense_14/Tensordot/GatherV2:output:0.sequential_1/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_14/Tensordot/Prod_1Prod3sequential_1/dense_14/Tensordot/GatherV2_1:output:00sequential_1/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_14/Tensordot/concatConcatV2-sequential_1/dense_14/Tensordot/free:output:0-sequential_1/dense_14/Tensordot/axes:output:04sequential_1/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_14/Tensordot/stackPack-sequential_1/dense_14/Tensordot/Prod:output:0/sequential_1/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_14/Tensordot/transpose	Transposelayer_normalization_2/add:z:0/sequential_1/dense_14/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_14/Tensordot/ReshapeReshape-sequential_1/dense_14/Tensordot/transpose:y:0.sequential_1/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_14/Tensordot/MatMulMatMul0sequential_1/dense_14/Tensordot/Reshape:output:06sequential_1/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_14/Tensordot/concat_1ConcatV21sequential_1/dense_14/Tensordot/GatherV2:output:00sequential_1/dense_14/Tensordot/Const_2:output:06sequential_1/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_14/TensordotReshape0sequential_1/dense_14/Tensordot/MatMul:product:01sequential_1/dense_14/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_14/BiasAddBiasAdd(sequential_1/dense_14/Tensordot:output:04sequential_1/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_14/ReluRelu&sequential_1/dense_14/BiasAdd:output:0*
T0*-
_output_shapes
:???????????i
$sequential_1/dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
"sequential_1/dropout_7/dropout/MulMul(sequential_1/dense_14/Relu:activations:0-sequential_1/dropout_7/dropout/Const:output:0*
T0*-
_output_shapes
:???????????|
$sequential_1/dropout_7/dropout/ShapeShape(sequential_1/dense_14/Relu:activations:0*
T0*
_output_shapes
:?
;sequential_1/dropout_7/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_7/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2r
-sequential_1/dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
+sequential_1/dropout_7/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_7/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_7/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
#sequential_1/dropout_7/dropout/CastCast/sequential_1/dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
$sequential_1/dropout_7/dropout/Mul_1Mul&sequential_1/dropout_7/dropout/Mul:z:0'sequential_1/dropout_7/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_15/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_15/Tensordot/ShapeShape(sequential_1/dropout_7/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_1/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_15/Tensordot/GatherV2GatherV2.sequential_1/dense_15/Tensordot/Shape:output:0-sequential_1/dense_15/Tensordot/free:output:06sequential_1/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_15/Tensordot/GatherV2_1GatherV2.sequential_1/dense_15/Tensordot/Shape:output:0-sequential_1/dense_15/Tensordot/axes:output:08sequential_1/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_15/Tensordot/ProdProd1sequential_1/dense_15/Tensordot/GatherV2:output:0.sequential_1/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_15/Tensordot/Prod_1Prod3sequential_1/dense_15/Tensordot/GatherV2_1:output:00sequential_1/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_15/Tensordot/concatConcatV2-sequential_1/dense_15/Tensordot/free:output:0-sequential_1/dense_15/Tensordot/axes:output:04sequential_1/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_15/Tensordot/stackPack-sequential_1/dense_15/Tensordot/Prod:output:0/sequential_1/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_15/Tensordot/transpose	Transpose(sequential_1/dropout_7/dropout/Mul_1:z:0/sequential_1/dense_15/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_15/Tensordot/ReshapeReshape-sequential_1/dense_15/Tensordot/transpose:y:0.sequential_1/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_15/Tensordot/MatMulMatMul0sequential_1/dense_15/Tensordot/Reshape:output:06sequential_1/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_15/Tensordot/concat_1ConcatV21sequential_1/dense_15/Tensordot/GatherV2:output:00sequential_1/dense_15/Tensordot/Const_2:output:06sequential_1/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_15/TensordotReshape0sequential_1/dense_15/Tensordot/MatMul:product:01sequential_1/dense_15/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_15/BiasAddBiasAdd(sequential_1/dense_15/Tensordot:output:04sequential_1/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_15/ReluRelu&sequential_1/dense_15/BiasAdd:output:0*
T0*-
_output_shapes
:???????????i
$sequential_1/dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
"sequential_1/dropout_8/dropout/MulMul(sequential_1/dense_15/Relu:activations:0-sequential_1/dropout_8/dropout/Const:output:0*
T0*-
_output_shapes
:???????????|
$sequential_1/dropout_8/dropout/ShapeShape(sequential_1/dense_15/Relu:activations:0*
T0*
_output_shapes
:?
;sequential_1/dropout_8/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_8/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2r
-sequential_1/dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
+sequential_1/dropout_8/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_8/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_8/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
#sequential_1/dropout_8/dropout/CastCast/sequential_1/dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
$sequential_1/dropout_8/dropout/Mul_1Mul&sequential_1/dropout_8/dropout/Mul:z:0'sequential_1/dropout_8/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_16/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_16/Tensordot/ShapeShape(sequential_1/dropout_8/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_1/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_16/Tensordot/GatherV2GatherV2.sequential_1/dense_16/Tensordot/Shape:output:0-sequential_1/dense_16/Tensordot/free:output:06sequential_1/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_16/Tensordot/GatherV2_1GatherV2.sequential_1/dense_16/Tensordot/Shape:output:0-sequential_1/dense_16/Tensordot/axes:output:08sequential_1/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_16/Tensordot/ProdProd1sequential_1/dense_16/Tensordot/GatherV2:output:0.sequential_1/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_16/Tensordot/Prod_1Prod3sequential_1/dense_16/Tensordot/GatherV2_1:output:00sequential_1/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_16/Tensordot/concatConcatV2-sequential_1/dense_16/Tensordot/free:output:0-sequential_1/dense_16/Tensordot/axes:output:04sequential_1/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_16/Tensordot/stackPack-sequential_1/dense_16/Tensordot/Prod:output:0/sequential_1/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_16/Tensordot/transpose	Transpose(sequential_1/dropout_8/dropout/Mul_1:z:0/sequential_1/dense_16/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_16/Tensordot/ReshapeReshape-sequential_1/dense_16/Tensordot/transpose:y:0.sequential_1/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_16/Tensordot/MatMulMatMul0sequential_1/dense_16/Tensordot/Reshape:output:06sequential_1/dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_16/Tensordot/concat_1ConcatV21sequential_1/dense_16/Tensordot/GatherV2:output:00sequential_1/dense_16/Tensordot/Const_2:output:06sequential_1/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_16/TensordotReshape0sequential_1/dense_16/Tensordot/MatMul:product:01sequential_1/dense_16/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_16/BiasAddBiasAdd(sequential_1/dense_16/Tensordot:output:04sequential_1/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_1/dense_16/ReluRelu&sequential_1/dense_16/BiasAdd:output:0*
T0*-
_output_shapes
:???????????i
$sequential_1/dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
"sequential_1/dropout_9/dropout/MulMul(sequential_1/dense_16/Relu:activations:0-sequential_1/dropout_9/dropout/Const:output:0*
T0*-
_output_shapes
:???????????|
$sequential_1/dropout_9/dropout/ShapeShape(sequential_1/dense_16/Relu:activations:0*
T0*
_output_shapes
:?
;sequential_1/dropout_9/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_9/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2r
-sequential_1/dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
+sequential_1/dropout_9/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_9/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_9/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
#sequential_1/dropout_9/dropout/CastCast/sequential_1/dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
$sequential_1/dropout_9/dropout/Mul_1Mul&sequential_1/dropout_9/dropout/Mul:z:0'sequential_1/dropout_9/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_1/dense_17/Tensordot/ReadVariableOpReadVariableOp7sequential_1_dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_1/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_1/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_1/dense_17/Tensordot/ShapeShape(sequential_1/dropout_9/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_1/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_17/Tensordot/GatherV2GatherV2.sequential_1/dense_17/Tensordot/Shape:output:0-sequential_1/dense_17/Tensordot/free:output:06sequential_1/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_1/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_1/dense_17/Tensordot/GatherV2_1GatherV2.sequential_1/dense_17/Tensordot/Shape:output:0-sequential_1/dense_17/Tensordot/axes:output:08sequential_1/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_1/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_1/dense_17/Tensordot/ProdProd1sequential_1/dense_17/Tensordot/GatherV2:output:0.sequential_1/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_1/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_1/dense_17/Tensordot/Prod_1Prod3sequential_1/dense_17/Tensordot/GatherV2_1:output:00sequential_1/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_1/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_1/dense_17/Tensordot/concatConcatV2-sequential_1/dense_17/Tensordot/free:output:0-sequential_1/dense_17/Tensordot/axes:output:04sequential_1/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_1/dense_17/Tensordot/stackPack-sequential_1/dense_17/Tensordot/Prod:output:0/sequential_1/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_17/Tensordot/transpose	Transpose(sequential_1/dropout_9/dropout/Mul_1:z:0/sequential_1/dense_17/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_1/dense_17/Tensordot/ReshapeReshape-sequential_1/dense_17/Tensordot/transpose:y:0.sequential_1/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_1/dense_17/Tensordot/MatMulMatMul0sequential_1/dense_17/Tensordot/Reshape:output:06sequential_1/dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_1/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_1/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_1/dense_17/Tensordot/concat_1ConcatV21sequential_1/dense_17/Tensordot/GatherV2:output:00sequential_1/dense_17/Tensordot/Const_2:output:06sequential_1/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_17/TensordotReshape0sequential_1/dense_17/Tensordot/MatMul:product:01sequential_1/dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_1/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_17/BiasAddBiasAdd(sequential_1/dense_17/Tensordot:output:04sequential_1/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_11/dropout/MulMul&sequential_1/dense_17/BiasAdd:output:0!dropout_11/dropout/Const:output:0*
T0*-
_output_shapes
:???????????n
dropout_11/dropout/ShapeShape&sequential_1/dense_17/BiasAdd:output:0*
T0*
_output_shapes
:?
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
add_1AddV2layer_normalization_2/add:z:0dropout_11/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????T
layer_normalization_3/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_3/mul_1Mullayer_normalization_3/mul:z:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_2StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_2/stack:output:06layer_normalization_3/strided_slice_2/stack_1:output:06layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mul_2Mul&layer_normalization_3/mul_2/x:output:0.layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul_1:z:0layer_normalization_3/mul_2:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_3/ReshapeReshape	add_1:z:0,layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_3/mul_3/ReadVariableOpReadVariableOp3layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/mul_3Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/addAddV2layer_normalization_3/mul_3:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
IdentityIdentitylayer_normalization_3/add:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_3/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_3/ReadVariableOp7^multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_10/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_11/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_12/Tensordot/ReadVariableOp7^multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp9^multi_head_attention_1/dense_13/Tensordot/ReadVariableOp-^sequential_1/dense_14/BiasAdd/ReadVariableOp/^sequential_1/dense_14/Tensordot/ReadVariableOp-^sequential_1/dense_15/BiasAdd/ReadVariableOp/^sequential_1/dense_15/Tensordot/ReadVariableOp-^sequential_1/dense_16/BiasAdd/ReadVariableOp/^sequential_1/dense_16/Tensordot/ReadVariableOp-^sequential_1/dense_17/BiasAdd/ReadVariableOp/^sequential_1/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : : : 2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_3/ReadVariableOp*layer_normalization_2/mul_3/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_3/ReadVariableOp*layer_normalization_3/mul_3/ReadVariableOp2p
6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp8multi_head_attention_1/dense_10/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp8multi_head_attention_1/dense_11/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp8multi_head_attention_1/dense_12/Tensordot/ReadVariableOp2p
6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp6multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp2t
8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp8multi_head_attention_1/dense_13/Tensordot/ReadVariableOp2\
,sequential_1/dense_14/BiasAdd/ReadVariableOp,sequential_1/dense_14/BiasAdd/ReadVariableOp2`
.sequential_1/dense_14/Tensordot/ReadVariableOp.sequential_1/dense_14/Tensordot/ReadVariableOp2\
,sequential_1/dense_15/BiasAdd/ReadVariableOp,sequential_1/dense_15/BiasAdd/ReadVariableOp2`
.sequential_1/dense_15/Tensordot/ReadVariableOp.sequential_1/dense_15/Tensordot/ReadVariableOp2\
,sequential_1/dense_16/BiasAdd/ReadVariableOp,sequential_1/dense_16/BiasAdd/ReadVariableOp2`
.sequential_1/dense_16/Tensordot/ReadVariableOp.sequential_1/dense_16/Tensordot/ReadVariableOp2\
,sequential_1/dense_17/BiasAdd/ReadVariableOp,sequential_1/dense_17/BiasAdd/ReadVariableOp2`
.sequential_1/dense_17/Tensordot/ReadVariableOp.sequential_1/dense_17/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_100661

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:???????????a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:???????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_104708

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:???????????a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:???????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
(__inference_model_1_layer_call_fn_101539
input_2
unknown:
??
	unknown_0:
??
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:
??

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:
??

unknown_22:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_101488p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_104586

inputs>
*dense_14_tensordot_readvariableop_resource:
??7
(dense_14_biasadd_readvariableop_resource:	?>
*dense_15_tensordot_readvariableop_resource:
??7
(dense_15_biasadd_readvariableop_resource:	?>
*dense_16_tensordot_readvariableop_resource:
??7
(dense_16_biasadd_readvariableop_resource:	?>
*dense_17_tensordot_readvariableop_resource:
??7
(dense_17_biasadd_readvariableop_resource:	?
identity??dense_14/BiasAdd/ReadVariableOp?!dense_14/Tensordot/ReadVariableOp?dense_15/BiasAdd/ReadVariableOp?!dense_15/Tensordot/ReadVariableOp?dense_16/BiasAdd/ReadVariableOp?!dense_16/Tensordot/ReadVariableOp?dense_17/BiasAdd/ReadVariableOp?!dense_17/Tensordot/ReadVariableOp?
!dense_14/Tensordot/ReadVariableOpReadVariableOp*dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_14/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_14/Tensordot/GatherV2GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/free:output:0)dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_14/Tensordot/GatherV2_1GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/axes:output:0+dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_14/Tensordot/ProdProd$dense_14/Tensordot/GatherV2:output:0!dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_14/Tensordot/Prod_1Prod&dense_14/Tensordot/GatherV2_1:output:0#dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_14/Tensordot/concatConcatV2 dense_14/Tensordot/free:output:0 dense_14/Tensordot/axes:output:0'dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_14/Tensordot/stackPack dense_14/Tensordot/Prod:output:0"dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_14/Tensordot/transpose	Transposeinputs"dense_14/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_14/Tensordot/ReshapeReshape dense_14/Tensordot/transpose:y:0!dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_14/Tensordot/MatMulMatMul#dense_14/Tensordot/Reshape:output:0)dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_14/Tensordot/concat_1ConcatV2$dense_14/Tensordot/GatherV2:output:0#dense_14/Tensordot/Const_2:output:0)dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_14/TensordotReshape#dense_14/Tensordot/MatMul:product:0$dense_14/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_14/BiasAddBiasAdddense_14/Tensordot:output:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*-
_output_shapes
:???????????\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_7/dropout/MulMuldense_14/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*-
_output_shapes
:???????????b
dropout_7/dropout/ShapeShapedense_14/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2????e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
!dense_15/Tensordot/ReadVariableOpReadVariableOp*dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_15/Tensordot/ShapeShapedropout_7/dropout/Mul_1:z:0*
T0*
_output_shapes
:b
 dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_15/Tensordot/GatherV2GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/free:output:0)dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_15/Tensordot/GatherV2_1GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/axes:output:0+dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_15/Tensordot/ProdProd$dense_15/Tensordot/GatherV2:output:0!dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_15/Tensordot/Prod_1Prod&dense_15/Tensordot/GatherV2_1:output:0#dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_15/Tensordot/concatConcatV2 dense_15/Tensordot/free:output:0 dense_15/Tensordot/axes:output:0'dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_15/Tensordot/stackPack dense_15/Tensordot/Prod:output:0"dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_15/Tensordot/transpose	Transposedropout_7/dropout/Mul_1:z:0"dense_15/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_15/Tensordot/ReshapeReshape dense_15/Tensordot/transpose:y:0!dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_15/Tensordot/MatMulMatMul#dense_15/Tensordot/Reshape:output:0)dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_15/Tensordot/concat_1ConcatV2$dense_15/Tensordot/GatherV2:output:0#dense_15/Tensordot/Const_2:output:0)dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_15/TensordotReshape#dense_15/Tensordot/MatMul:product:0$dense_15/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_15/BiasAddBiasAdddense_15/Tensordot:output:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*-
_output_shapes
:???????????\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_8/dropout/MulMuldense_15/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*-
_output_shapes
:???????????b
dropout_8/dropout/ShapeShapedense_15/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
!dense_16/Tensordot/ReadVariableOpReadVariableOp*dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_16/Tensordot/ShapeShapedropout_8/dropout/Mul_1:z:0*
T0*
_output_shapes
:b
 dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_16/Tensordot/GatherV2GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/free:output:0)dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_16/Tensordot/GatherV2_1GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/axes:output:0+dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_16/Tensordot/ProdProd$dense_16/Tensordot/GatherV2:output:0!dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_16/Tensordot/Prod_1Prod&dense_16/Tensordot/GatherV2_1:output:0#dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_16/Tensordot/concatConcatV2 dense_16/Tensordot/free:output:0 dense_16/Tensordot/axes:output:0'dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_16/Tensordot/stackPack dense_16/Tensordot/Prod:output:0"dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_16/Tensordot/transpose	Transposedropout_8/dropout/Mul_1:z:0"dense_16/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_16/Tensordot/ReshapeReshape dense_16/Tensordot/transpose:y:0!dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_16/Tensordot/MatMulMatMul#dense_16/Tensordot/Reshape:output:0)dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_16/Tensordot/concat_1ConcatV2$dense_16/Tensordot/GatherV2:output:0#dense_16/Tensordot/Const_2:output:0)dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_16/TensordotReshape#dense_16/Tensordot/MatMul:product:0$dense_16/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_16/BiasAddBiasAdddense_16/Tensordot:output:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*-
_output_shapes
:???????????\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_9/dropout/MulMuldense_16/Relu:activations:0 dropout_9/dropout/Const:output:0*
T0*-
_output_shapes
:???????????b
dropout_9/dropout/ShapeShapedense_16/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
!dense_17/Tensordot/ReadVariableOpReadVariableOp*dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_17/Tensordot/ShapeShapedropout_9/dropout/Mul_1:z:0*
T0*
_output_shapes
:b
 dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_17/Tensordot/GatherV2GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/free:output:0)dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_17/Tensordot/GatherV2_1GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/axes:output:0+dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_17/Tensordot/ProdProd$dense_17/Tensordot/GatherV2:output:0!dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_17/Tensordot/Prod_1Prod&dense_17/Tensordot/GatherV2_1:output:0#dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_17/Tensordot/concatConcatV2 dense_17/Tensordot/free:output:0 dense_17/Tensordot/axes:output:0'dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_17/Tensordot/stackPack dense_17/Tensordot/Prod:output:0"dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_17/Tensordot/transpose	Transposedropout_9/dropout/Mul_1:z:0"dense_17/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_17/Tensordot/ReshapeReshape dense_17/Tensordot/transpose:y:0!dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_17/Tensordot/MatMulMatMul#dense_17/Tensordot/Reshape:output:0)dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_17/Tensordot/concat_1ConcatV2$dense_17/Tensordot/GatherV2:output:0#dense_17/Tensordot/Const_2:output:0)dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_17/TensordotReshape#dense_17/Tensordot/MatMul:product:0$dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_17/BiasAddBiasAdddense_17/Tensordot:output:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????n
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp ^dense_14/BiasAdd/ReadVariableOp"^dense_14/Tensordot/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp"^dense_15/Tensordot/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp"^dense_16/Tensordot/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp"^dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2F
!dense_14/Tensordot/ReadVariableOp!dense_14/Tensordot/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2F
!dense_15/Tensordot/ReadVariableOp!dense_15/Tensordot/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2F
!dense_16/Tensordot/ReadVariableOp!dense_16/Tensordot/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2F
!dense_17/Tensordot/ReadVariableOp!dense_17/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_dense_17_layer_call_and_return_conditional_losses_100737

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????e
IdentityIdentityBiasAdd:output:0^NoOp*
T0*-
_output_shapes
:???????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
C__inference_model_1_layer_call_and_return_conditional_losses_102944

inputsV
Btoken_and_position_embedding_1_embedding_3_embedding_lookup_102571:
??V
Btoken_and_position_embedding_1_embedding_2_embedding_lookup_102576:
??i
Utransformer_block_1_multi_head_attention_1_dense_10_tensordot_readvariableop_resource:
??b
Stransformer_block_1_multi_head_attention_1_dense_10_biasadd_readvariableop_resource:	?i
Utransformer_block_1_multi_head_attention_1_dense_11_tensordot_readvariableop_resource:
??b
Stransformer_block_1_multi_head_attention_1_dense_11_biasadd_readvariableop_resource:	?i
Utransformer_block_1_multi_head_attention_1_dense_12_tensordot_readvariableop_resource:
??b
Stransformer_block_1_multi_head_attention_1_dense_12_biasadd_readvariableop_resource:	?i
Utransformer_block_1_multi_head_attention_1_dense_13_tensordot_readvariableop_resource:
??b
Stransformer_block_1_multi_head_attention_1_dense_13_biasadd_readvariableop_resource:	?V
Gtransformer_block_1_layer_normalization_2_mul_3_readvariableop_resource:	?T
Etransformer_block_1_layer_normalization_2_add_readvariableop_resource:	?_
Ktransformer_block_1_sequential_1_dense_14_tensordot_readvariableop_resource:
??X
Itransformer_block_1_sequential_1_dense_14_biasadd_readvariableop_resource:	?_
Ktransformer_block_1_sequential_1_dense_15_tensordot_readvariableop_resource:
??X
Itransformer_block_1_sequential_1_dense_15_biasadd_readvariableop_resource:	?_
Ktransformer_block_1_sequential_1_dense_16_tensordot_readvariableop_resource:
??X
Itransformer_block_1_sequential_1_dense_16_biasadd_readvariableop_resource:	?_
Ktransformer_block_1_sequential_1_dense_17_tensordot_readvariableop_resource:
??X
Itransformer_block_1_sequential_1_dense_17_biasadd_readvariableop_resource:	?V
Gtransformer_block_1_layer_normalization_3_mul_3_readvariableop_resource:	?T
Etransformer_block_1_layer_normalization_3_add_readvariableop_resource:	?;
'dense_19_matmul_readvariableop_resource:
??7
(dense_19_biasadd_readvariableop_resource:	?
identity??dense_19/BiasAdd/ReadVariableOp?dense_19/MatMul/ReadVariableOp?;token_and_position_embedding_1/embedding_2/embedding_lookup?;token_and_position_embedding_1/embedding_3/embedding_lookup?<transformer_block_1/layer_normalization_2/add/ReadVariableOp?>transformer_block_1/layer_normalization_2/mul_3/ReadVariableOp?<transformer_block_1/layer_normalization_3/add/ReadVariableOp?>transformer_block_1/layer_normalization_3/mul_3/ReadVariableOp?Jtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp?Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOp?Jtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp?Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOp?Jtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp?Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOp?Jtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp?Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOp?@transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOp?Btransformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOp?@transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOp?Btransformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOp?@transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOp?Btransformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOp?@transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOp?Btransformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOpZ
$token_and_position_embedding_1/ShapeShapeinputs*
T0*
_output_shapes
:?
2token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????~
4token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,token_and_position_embedding_1/strided_sliceStridedSlice-token_and_position_embedding_1/Shape:output:0;token_and_position_embedding_1/strided_slice/stack:output:0=token_and_position_embedding_1/strided_slice/stack_1:output:0=token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
$token_and_position_embedding_1/rangeRange3token_and_position_embedding_1/range/start:output:05token_and_position_embedding_1/strided_slice:output:03token_and_position_embedding_1/range/delta:output:0*
_output_shapes	
:??
;token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherBtoken_and_position_embedding_1_embedding_3_embedding_lookup_102571-token_and_position_embedding_1/range:output:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/102571* 
_output_shapes
:
??*
dtype0?
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_3/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/102571* 
_output_shapes
:
???
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
???
;token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherBtoken_and_position_embedding_1_embedding_2_embedding_lookup_102576inputs*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/102576*-
_output_shapes
:???????????*
dtype0?
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_2/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/102576*-
_output_shapes
:????????????
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
"token_and_position_embedding_1/addAddV2Otoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:????????????
0transformer_block_1/multi_head_attention_1/ShapeShape&token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
>transformer_block_1/multi_head_attention_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@transformer_block_1/multi_head_attention_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@transformer_block_1/multi_head_attention_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_1/multi_head_attention_1/strided_sliceStridedSlice9transformer_block_1/multi_head_attention_1/Shape:output:0Gtransformer_block_1/multi_head_attention_1/strided_slice/stack:output:0Itransformer_block_1/multi_head_attention_1/strided_slice/stack_1:output:0Itransformer_block_1/multi_head_attention_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_1_multi_head_attention_1_dense_10_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_1/multi_head_attention_1/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_1/multi_head_attention_1/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ShapeShape&token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2GatherV2Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/free:output:0Ttransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1GatherV2Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/axes:output:0Vtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ProdProdOtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2:output:0Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Prod_1ProdQtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2_1:output:0Ntransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concatConcatV2Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/free:output:0Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/axes:output:0Rtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_10/Tensordot/stackPackKtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Prod:output:0Mtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/transpose	Transpose&token_and_position_embedding_1/add:z:0Mtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReshapeReshapeKtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/transpose:y:0Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/MatMulMatMulNtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Reshape:output:0Ttransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1ConcatV2Otransformer_block_1/multi_head_attention_1/dense_10/Tensordot/GatherV2:output:0Ntransformer_block_1/multi_head_attention_1/dense_10/Tensordot/Const_2:output:0Ttransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/multi_head_attention_1/dense_10/TensordotReshapeNtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/MatMul:product:0Otransformer_block_1/multi_head_attention_1/dense_10/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_1_multi_head_attention_1_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_1/multi_head_attention_1/dense_10/BiasAddBiasAddFtransformer_block_1/multi_head_attention_1/dense_10/Tensordot:output:0Rtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_1/multi_head_attention_1/dense_10/ReluReluDtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_1_multi_head_attention_1_dense_11_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_1/multi_head_attention_1/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_1/multi_head_attention_1/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ShapeShape&token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2GatherV2Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/free:output:0Ttransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1GatherV2Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/axes:output:0Vtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ProdProdOtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2:output:0Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Prod_1ProdQtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2_1:output:0Ntransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concatConcatV2Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/free:output:0Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/axes:output:0Rtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_11/Tensordot/stackPackKtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Prod:output:0Mtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/transpose	Transpose&token_and_position_embedding_1/add:z:0Mtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReshapeReshapeKtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/transpose:y:0Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/MatMulMatMulNtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Reshape:output:0Ttransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1ConcatV2Otransformer_block_1/multi_head_attention_1/dense_11/Tensordot/GatherV2:output:0Ntransformer_block_1/multi_head_attention_1/dense_11/Tensordot/Const_2:output:0Ttransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/multi_head_attention_1/dense_11/TensordotReshapeNtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/MatMul:product:0Otransformer_block_1/multi_head_attention_1/dense_11/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_1_multi_head_attention_1_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_1/multi_head_attention_1/dense_11/BiasAddBiasAddFtransformer_block_1/multi_head_attention_1/dense_11/Tensordot:output:0Rtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_1/multi_head_attention_1/dense_11/ReluReluDtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_1_multi_head_attention_1_dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_1/multi_head_attention_1/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_1/multi_head_attention_1/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ShapeShape&token_and_position_embedding_1/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2GatherV2Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/free:output:0Ttransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1GatherV2Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/axes:output:0Vtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ProdProdOtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2:output:0Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Prod_1ProdQtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2_1:output:0Ntransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concatConcatV2Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/free:output:0Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/axes:output:0Rtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_12/Tensordot/stackPackKtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Prod:output:0Mtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/transpose	Transpose&token_and_position_embedding_1/add:z:0Mtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReshapeReshapeKtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/transpose:y:0Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/MatMulMatMulNtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Reshape:output:0Ttransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1ConcatV2Otransformer_block_1/multi_head_attention_1/dense_12/Tensordot/GatherV2:output:0Ntransformer_block_1/multi_head_attention_1/dense_12/Tensordot/Const_2:output:0Ttransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/multi_head_attention_1/dense_12/TensordotReshapeNtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/MatMul:product:0Otransformer_block_1/multi_head_attention_1/dense_12/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_1_multi_head_attention_1_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_1/multi_head_attention_1/dense_12/BiasAddBiasAddFtransformer_block_1/multi_head_attention_1/dense_12/Tensordot:output:0Rtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_1/multi_head_attention_1/dense_12/ReluReluDtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
:transformer_block_1/multi_head_attention_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????|
:transformer_block_1/multi_head_attention_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :|
:transformer_block_1/multi_head_attention_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
8transformer_block_1/multi_head_attention_1/Reshape/shapePackAtransformer_block_1/multi_head_attention_1/strided_slice:output:0Ctransformer_block_1/multi_head_attention_1/Reshape/shape/1:output:0Ctransformer_block_1/multi_head_attention_1/Reshape/shape/2:output:0Ctransformer_block_1/multi_head_attention_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
2transformer_block_1/multi_head_attention_1/ReshapeReshapeFtransformer_block_1/multi_head_attention_1/dense_10/Relu:activations:0Atransformer_block_1/multi_head_attention_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
9transformer_block_1/multi_head_attention_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
4transformer_block_1/multi_head_attention_1/transpose	Transpose;transformer_block_1/multi_head_attention_1/Reshape:output:0Btransformer_block_1/multi_head_attention_1/transpose/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
<transformer_block_1/multi_head_attention_1/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????~
<transformer_block_1/multi_head_attention_1/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<transformer_block_1/multi_head_attention_1/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
:transformer_block_1/multi_head_attention_1/Reshape_1/shapePackAtransformer_block_1/multi_head_attention_1/strided_slice:output:0Etransformer_block_1/multi_head_attention_1/Reshape_1/shape/1:output:0Etransformer_block_1/multi_head_attention_1/Reshape_1/shape/2:output:0Etransformer_block_1/multi_head_attention_1/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_1/multi_head_attention_1/Reshape_1ReshapeFtransformer_block_1/multi_head_attention_1/dense_11/Relu:activations:0Ctransformer_block_1/multi_head_attention_1/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
;transformer_block_1/multi_head_attention_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_1/multi_head_attention_1/transpose_1	Transpose=transformer_block_1/multi_head_attention_1/Reshape_1:output:0Dtransformer_block_1/multi_head_attention_1/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
<transformer_block_1/multi_head_attention_1/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????~
<transformer_block_1/multi_head_attention_1/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<transformer_block_1/multi_head_attention_1/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
:transformer_block_1/multi_head_attention_1/Reshape_2/shapePackAtransformer_block_1/multi_head_attention_1/strided_slice:output:0Etransformer_block_1/multi_head_attention_1/Reshape_2/shape/1:output:0Etransformer_block_1/multi_head_attention_1/Reshape_2/shape/2:output:0Etransformer_block_1/multi_head_attention_1/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_1/multi_head_attention_1/Reshape_2ReshapeFtransformer_block_1/multi_head_attention_1/dense_12/Relu:activations:0Ctransformer_block_1/multi_head_attention_1/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"???????????????????
;transformer_block_1/multi_head_attention_1/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_1/multi_head_attention_1/transpose_2	Transpose=transformer_block_1/multi_head_attention_1/Reshape_2:output:0Dtransformer_block_1/multi_head_attention_1/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
1transformer_block_1/multi_head_attention_1/MatMulBatchMatMulV28transformer_block_1/multi_head_attention_1/transpose:y:0:transformer_block_1/multi_head_attention_1/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(?
2transformer_block_1/multi_head_attention_1/Shape_1Shape:transformer_block_1/multi_head_attention_1/transpose_1:y:0*
T0*
_output_shapes
:?
@transformer_block_1/multi_head_attention_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Btransformer_block_1/multi_head_attention_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_1/multi_head_attention_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:transformer_block_1/multi_head_attention_1/strided_slice_1StridedSlice;transformer_block_1/multi_head_attention_1/Shape_1:output:0Itransformer_block_1/multi_head_attention_1/strided_slice_1/stack:output:0Ktransformer_block_1/multi_head_attention_1/strided_slice_1/stack_1:output:0Ktransformer_block_1/multi_head_attention_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_1/multi_head_attention_1/CastCastCtransformer_block_1/multi_head_attention_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
/transformer_block_1/multi_head_attention_1/SqrtSqrt3transformer_block_1/multi_head_attention_1/Cast:y:0*
T0*
_output_shapes
: ?
2transformer_block_1/multi_head_attention_1/truedivRealDiv:transformer_block_1/multi_head_attention_1/MatMul:output:03transformer_block_1/multi_head_attention_1/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
2transformer_block_1/multi_head_attention_1/SoftmaxSoftmax6transformer_block_1/multi_head_attention_1/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
3transformer_block_1/multi_head_attention_1/MatMul_1BatchMatMulV2<transformer_block_1/multi_head_attention_1/Softmax:softmax:0:transformer_block_1/multi_head_attention_1/transpose_2:y:0*
T0*8
_output_shapes&
$:"???????????????????
;transformer_block_1/multi_head_attention_1/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_1/multi_head_attention_1/transpose_3	Transpose<transformer_block_1/multi_head_attention_1/MatMul_1:output:0Dtransformer_block_1/multi_head_attention_1/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"???????????????????
<transformer_block_1/multi_head_attention_1/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
<transformer_block_1/multi_head_attention_1/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
:transformer_block_1/multi_head_attention_1/Reshape_3/shapePackAtransformer_block_1/multi_head_attention_1/strided_slice:output:0Etransformer_block_1/multi_head_attention_1/Reshape_3/shape/1:output:0Etransformer_block_1/multi_head_attention_1/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_1/multi_head_attention_1/Reshape_3Reshape:transformer_block_1/multi_head_attention_1/transpose_3:y:0Ctransformer_block_1/multi_head_attention_1/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_1_multi_head_attention_1_dense_13_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_1/multi_head_attention_1/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_1/multi_head_attention_1/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ShapeShape=transformer_block_1/multi_head_attention_1/Reshape_3:output:0*
T0*
_output_shapes
:?
Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2GatherV2Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/free:output:0Ttransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1GatherV2Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Shape:output:0Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/axes:output:0Vtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ProdProdOtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2:output:0Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Prod_1ProdQtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2_1:output:0Ntransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concatConcatV2Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/free:output:0Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/axes:output:0Rtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_1/multi_head_attention_1/dense_13/Tensordot/stackPackKtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Prod:output:0Mtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/transpose	Transpose=transformer_block_1/multi_head_attention_1/Reshape_3:output:0Mtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
Etransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReshapeReshapeKtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/transpose:y:0Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/MatMulMatMulNtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Reshape:output:0Ttransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1ConcatV2Otransformer_block_1/multi_head_attention_1/dense_13/Tensordot/GatherV2:output:0Ntransformer_block_1/multi_head_attention_1/dense_13/Tensordot/Const_2:output:0Ttransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/multi_head_attention_1/dense_13/TensordotReshapeNtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/MatMul:product:0Otransformer_block_1/multi_head_attention_1/dense_13/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
Jtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_1_multi_head_attention_1_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_1/multi_head_attention_1/dense_13/BiasAddBiasAddFtransformer_block_1/multi_head_attention_1/dense_13/Tensordot:output:0Rtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
8transformer_block_1/multi_head_attention_1/dense_13/ReluReluDtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd:output:0*
T0*5
_output_shapes#
!:????????????????????
'transformer_block_1/dropout_10/IdentityIdentityFtransformer_block_1/multi_head_attention_1/dense_13/Relu:activations:0*
T0*5
_output_shapes#
!:????????????????????
transformer_block_1/addAddV2&token_and_position_embedding_1/add:z:00transformer_block_1/dropout_10/Identity:output:0*
T0*-
_output_shapes
:???????????z
/transformer_block_1/layer_normalization_2/ShapeShapetransformer_block_1/add:z:0*
T0*
_output_shapes
:?
=transformer_block_1/layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?transformer_block_1/layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?transformer_block_1/layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block_1/layer_normalization_2/strided_sliceStridedSlice8transformer_block_1/layer_normalization_2/Shape:output:0Ftransformer_block_1/layer_normalization_2/strided_slice/stack:output:0Htransformer_block_1/layer_normalization_2/strided_slice/stack_1:output:0Htransformer_block_1/layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/transformer_block_1/layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
-transformer_block_1/layer_normalization_2/mulMul8transformer_block_1/layer_normalization_2/mul/x:output:0@transformer_block_1/layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_1/layer_normalization_2/strided_slice_1StridedSlice8transformer_block_1/layer_normalization_2/Shape:output:0Htransformer_block_1/layer_normalization_2/strided_slice_1/stack:output:0Jtransformer_block_1/layer_normalization_2/strided_slice_1/stack_1:output:0Jtransformer_block_1/layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_1/layer_normalization_2/mul_1Mul1transformer_block_1/layer_normalization_2/mul:z:0Btransformer_block_1/layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_1/layer_normalization_2/strided_slice_2StridedSlice8transformer_block_1/layer_normalization_2/Shape:output:0Htransformer_block_1/layer_normalization_2/strided_slice_2/stack:output:0Jtransformer_block_1/layer_normalization_2/strided_slice_2/stack_1:output:0Jtransformer_block_1/layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1transformer_block_1/layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
/transformer_block_1/layer_normalization_2/mul_2Mul:transformer_block_1/layer_normalization_2/mul_2/x:output:0Btransformer_block_1/layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: {
9transformer_block_1/layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :{
9transformer_block_1/layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
7transformer_block_1/layer_normalization_2/Reshape/shapePackBtransformer_block_1/layer_normalization_2/Reshape/shape/0:output:03transformer_block_1/layer_normalization_2/mul_1:z:03transformer_block_1/layer_normalization_2/mul_2:z:0Btransformer_block_1/layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
1transformer_block_1/layer_normalization_2/ReshapeReshapetransformer_block_1/add:z:0@transformer_block_1/layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
5transformer_block_1/layer_normalization_2/ones/packedPack3transformer_block_1/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:y
4transformer_block_1/layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
.transformer_block_1/layer_normalization_2/onesFill>transformer_block_1/layer_normalization_2/ones/packed:output:0=transformer_block_1/layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:??????????
6transformer_block_1/layer_normalization_2/zeros/packedPack3transformer_block_1/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:z
5transformer_block_1/layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
/transformer_block_1/layer_normalization_2/zerosFill?transformer_block_1/layer_normalization_2/zeros/packed:output:0>transformer_block_1/layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????r
/transformer_block_1/layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB t
1transformer_block_1/layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
:transformer_block_1/layer_normalization_2/FusedBatchNormV3FusedBatchNormV3:transformer_block_1/layer_normalization_2/Reshape:output:07transformer_block_1/layer_normalization_2/ones:output:08transformer_block_1/layer_normalization_2/zeros:output:08transformer_block_1/layer_normalization_2/Const:output:0:transformer_block_1/layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
3transformer_block_1/layer_normalization_2/Reshape_1Reshape>transformer_block_1/layer_normalization_2/FusedBatchNormV3:y:08transformer_block_1/layer_normalization_2/Shape:output:0*
T0*-
_output_shapes
:????????????
>transformer_block_1/layer_normalization_2/mul_3/ReadVariableOpReadVariableOpGtransformer_block_1_layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/transformer_block_1/layer_normalization_2/mul_3Mul<transformer_block_1/layer_normalization_2/Reshape_1:output:0Ftransformer_block_1/layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
<transformer_block_1/layer_normalization_2/add/ReadVariableOpReadVariableOpEtransformer_block_1_layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-transformer_block_1/layer_normalization_2/addAddV23transformer_block_1/layer_normalization_2/mul_3:z:0Dtransformer_block_1/layer_normalization_2/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
Btransformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_1_sequential_1_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_1/sequential_1/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_1/sequential_1/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_1/sequential_1/dense_14/Tensordot/ShapeShape1transformer_block_1/layer_normalization_2/add:z:0*
T0*
_output_shapes
:?
Atransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2GatherV2Btransformer_block_1/sequential_1/dense_14/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_14/Tensordot/free:output:0Jtransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1GatherV2Btransformer_block_1/sequential_1/dense_14/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_14/Tensordot/axes:output:0Ltransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_1/sequential_1/dense_14/Tensordot/ProdProdEtransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2:output:0Btransformer_block_1/sequential_1/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_1/sequential_1/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_1/sequential_1/dense_14/Tensordot/Prod_1ProdGtransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2_1:output:0Dtransformer_block_1/sequential_1/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/sequential_1/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_1/sequential_1/dense_14/Tensordot/concatConcatV2Atransformer_block_1/sequential_1/dense_14/Tensordot/free:output:0Atransformer_block_1/sequential_1/dense_14/Tensordot/axes:output:0Htransformer_block_1/sequential_1/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_14/Tensordot/stackPackAtransformer_block_1/sequential_1/dense_14/Tensordot/Prod:output:0Ctransformer_block_1/sequential_1/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/sequential_1/dense_14/Tensordot/transpose	Transpose1transformer_block_1/layer_normalization_2/add:z:0Ctransformer_block_1/sequential_1/dense_14/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_1/sequential_1/dense_14/Tensordot/ReshapeReshapeAtransformer_block_1/sequential_1/dense_14/Tensordot/transpose:y:0Btransformer_block_1/sequential_1/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_1/sequential_1/dense_14/Tensordot/MatMulMatMulDtransformer_block_1/sequential_1/dense_14/Tensordot/Reshape:output:0Jtransformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_1/sequential_1/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_1/sequential_1/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_14/Tensordot/concat_1ConcatV2Etransformer_block_1/sequential_1/dense_14/Tensordot/GatherV2:output:0Dtransformer_block_1/sequential_1/dense_14/Tensordot/Const_2:output:0Jtransformer_block_1/sequential_1/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_1/sequential_1/dense_14/TensordotReshapeDtransformer_block_1/sequential_1/dense_14/Tensordot/MatMul:product:0Etransformer_block_1/sequential_1/dense_14/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_1_sequential_1_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_1/sequential_1/dense_14/BiasAddBiasAdd<transformer_block_1/sequential_1/dense_14/Tensordot:output:0Htransformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_1/sequential_1/dense_14/ReluRelu:transformer_block_1/sequential_1/dense_14/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
3transformer_block_1/sequential_1/dropout_7/IdentityIdentity<transformer_block_1/sequential_1/dense_14/Relu:activations:0*
T0*-
_output_shapes
:????????????
Btransformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_1_sequential_1_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_1/sequential_1/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_1/sequential_1/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_1/sequential_1/dense_15/Tensordot/ShapeShape<transformer_block_1/sequential_1/dropout_7/Identity:output:0*
T0*
_output_shapes
:?
Atransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2GatherV2Btransformer_block_1/sequential_1/dense_15/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_15/Tensordot/free:output:0Jtransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1GatherV2Btransformer_block_1/sequential_1/dense_15/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_15/Tensordot/axes:output:0Ltransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_1/sequential_1/dense_15/Tensordot/ProdProdEtransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2:output:0Btransformer_block_1/sequential_1/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_1/sequential_1/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_1/sequential_1/dense_15/Tensordot/Prod_1ProdGtransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2_1:output:0Dtransformer_block_1/sequential_1/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/sequential_1/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_1/sequential_1/dense_15/Tensordot/concatConcatV2Atransformer_block_1/sequential_1/dense_15/Tensordot/free:output:0Atransformer_block_1/sequential_1/dense_15/Tensordot/axes:output:0Htransformer_block_1/sequential_1/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_15/Tensordot/stackPackAtransformer_block_1/sequential_1/dense_15/Tensordot/Prod:output:0Ctransformer_block_1/sequential_1/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/sequential_1/dense_15/Tensordot/transpose	Transpose<transformer_block_1/sequential_1/dropout_7/Identity:output:0Ctransformer_block_1/sequential_1/dense_15/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_1/sequential_1/dense_15/Tensordot/ReshapeReshapeAtransformer_block_1/sequential_1/dense_15/Tensordot/transpose:y:0Btransformer_block_1/sequential_1/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_1/sequential_1/dense_15/Tensordot/MatMulMatMulDtransformer_block_1/sequential_1/dense_15/Tensordot/Reshape:output:0Jtransformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_1/sequential_1/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_1/sequential_1/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_15/Tensordot/concat_1ConcatV2Etransformer_block_1/sequential_1/dense_15/Tensordot/GatherV2:output:0Dtransformer_block_1/sequential_1/dense_15/Tensordot/Const_2:output:0Jtransformer_block_1/sequential_1/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_1/sequential_1/dense_15/TensordotReshapeDtransformer_block_1/sequential_1/dense_15/Tensordot/MatMul:product:0Etransformer_block_1/sequential_1/dense_15/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_1_sequential_1_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_1/sequential_1/dense_15/BiasAddBiasAdd<transformer_block_1/sequential_1/dense_15/Tensordot:output:0Htransformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_1/sequential_1/dense_15/ReluRelu:transformer_block_1/sequential_1/dense_15/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
3transformer_block_1/sequential_1/dropout_8/IdentityIdentity<transformer_block_1/sequential_1/dense_15/Relu:activations:0*
T0*-
_output_shapes
:????????????
Btransformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_1_sequential_1_dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_1/sequential_1/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_1/sequential_1/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_1/sequential_1/dense_16/Tensordot/ShapeShape<transformer_block_1/sequential_1/dropout_8/Identity:output:0*
T0*
_output_shapes
:?
Atransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2GatherV2Btransformer_block_1/sequential_1/dense_16/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_16/Tensordot/free:output:0Jtransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1GatherV2Btransformer_block_1/sequential_1/dense_16/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_16/Tensordot/axes:output:0Ltransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_1/sequential_1/dense_16/Tensordot/ProdProdEtransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2:output:0Btransformer_block_1/sequential_1/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_1/sequential_1/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_1/sequential_1/dense_16/Tensordot/Prod_1ProdGtransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2_1:output:0Dtransformer_block_1/sequential_1/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/sequential_1/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_1/sequential_1/dense_16/Tensordot/concatConcatV2Atransformer_block_1/sequential_1/dense_16/Tensordot/free:output:0Atransformer_block_1/sequential_1/dense_16/Tensordot/axes:output:0Htransformer_block_1/sequential_1/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_16/Tensordot/stackPackAtransformer_block_1/sequential_1/dense_16/Tensordot/Prod:output:0Ctransformer_block_1/sequential_1/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/sequential_1/dense_16/Tensordot/transpose	Transpose<transformer_block_1/sequential_1/dropout_8/Identity:output:0Ctransformer_block_1/sequential_1/dense_16/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_1/sequential_1/dense_16/Tensordot/ReshapeReshapeAtransformer_block_1/sequential_1/dense_16/Tensordot/transpose:y:0Btransformer_block_1/sequential_1/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_1/sequential_1/dense_16/Tensordot/MatMulMatMulDtransformer_block_1/sequential_1/dense_16/Tensordot/Reshape:output:0Jtransformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_1/sequential_1/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_1/sequential_1/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_16/Tensordot/concat_1ConcatV2Etransformer_block_1/sequential_1/dense_16/Tensordot/GatherV2:output:0Dtransformer_block_1/sequential_1/dense_16/Tensordot/Const_2:output:0Jtransformer_block_1/sequential_1/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_1/sequential_1/dense_16/TensordotReshapeDtransformer_block_1/sequential_1/dense_16/Tensordot/MatMul:product:0Etransformer_block_1/sequential_1/dense_16/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_1_sequential_1_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_1/sequential_1/dense_16/BiasAddBiasAdd<transformer_block_1/sequential_1/dense_16/Tensordot:output:0Htransformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_1/sequential_1/dense_16/ReluRelu:transformer_block_1/sequential_1/dense_16/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
3transformer_block_1/sequential_1/dropout_9/IdentityIdentity<transformer_block_1/sequential_1/dense_16/Relu:activations:0*
T0*-
_output_shapes
:????????????
Btransformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_1_sequential_1_dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_1/sequential_1/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_1/sequential_1/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_1/sequential_1/dense_17/Tensordot/ShapeShape<transformer_block_1/sequential_1/dropout_9/Identity:output:0*
T0*
_output_shapes
:?
Atransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2GatherV2Btransformer_block_1/sequential_1/dense_17/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_17/Tensordot/free:output:0Jtransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1GatherV2Btransformer_block_1/sequential_1/dense_17/Tensordot/Shape:output:0Atransformer_block_1/sequential_1/dense_17/Tensordot/axes:output:0Ltransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_1/sequential_1/dense_17/Tensordot/ProdProdEtransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2:output:0Btransformer_block_1/sequential_1/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_1/sequential_1/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_1/sequential_1/dense_17/Tensordot/Prod_1ProdGtransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2_1:output:0Dtransformer_block_1/sequential_1/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/sequential_1/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_1/sequential_1/dense_17/Tensordot/concatConcatV2Atransformer_block_1/sequential_1/dense_17/Tensordot/free:output:0Atransformer_block_1/sequential_1/dense_17/Tensordot/axes:output:0Htransformer_block_1/sequential_1/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_1/sequential_1/dense_17/Tensordot/stackPackAtransformer_block_1/sequential_1/dense_17/Tensordot/Prod:output:0Ctransformer_block_1/sequential_1/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_1/sequential_1/dense_17/Tensordot/transpose	Transpose<transformer_block_1/sequential_1/dropout_9/Identity:output:0Ctransformer_block_1/sequential_1/dense_17/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_1/sequential_1/dense_17/Tensordot/ReshapeReshapeAtransformer_block_1/sequential_1/dense_17/Tensordot/transpose:y:0Btransformer_block_1/sequential_1/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_1/sequential_1/dense_17/Tensordot/MatMulMatMulDtransformer_block_1/sequential_1/dense_17/Tensordot/Reshape:output:0Jtransformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_1/sequential_1/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_1/sequential_1/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_1/sequential_1/dense_17/Tensordot/concat_1ConcatV2Etransformer_block_1/sequential_1/dense_17/Tensordot/GatherV2:output:0Dtransformer_block_1/sequential_1/dense_17/Tensordot/Const_2:output:0Jtransformer_block_1/sequential_1/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_1/sequential_1/dense_17/TensordotReshapeDtransformer_block_1/sequential_1/dense_17/Tensordot/MatMul:product:0Etransformer_block_1/sequential_1/dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_1_sequential_1_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_1/sequential_1/dense_17/BiasAddBiasAdd<transformer_block_1/sequential_1/dense_17/Tensordot:output:0Htransformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
'transformer_block_1/dropout_11/IdentityIdentity:transformer_block_1/sequential_1/dense_17/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
transformer_block_1/add_1AddV21transformer_block_1/layer_normalization_2/add:z:00transformer_block_1/dropout_11/Identity:output:0*
T0*-
_output_shapes
:???????????|
/transformer_block_1/layer_normalization_3/ShapeShapetransformer_block_1/add_1:z:0*
T0*
_output_shapes
:?
=transformer_block_1/layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?transformer_block_1/layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?transformer_block_1/layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block_1/layer_normalization_3/strided_sliceStridedSlice8transformer_block_1/layer_normalization_3/Shape:output:0Ftransformer_block_1/layer_normalization_3/strided_slice/stack:output:0Htransformer_block_1/layer_normalization_3/strided_slice/stack_1:output:0Htransformer_block_1/layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/transformer_block_1/layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
-transformer_block_1/layer_normalization_3/mulMul8transformer_block_1/layer_normalization_3/mul/x:output:0@transformer_block_1/layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_1/layer_normalization_3/strided_slice_1StridedSlice8transformer_block_1/layer_normalization_3/Shape:output:0Htransformer_block_1/layer_normalization_3/strided_slice_1/stack:output:0Jtransformer_block_1/layer_normalization_3/strided_slice_1/stack_1:output:0Jtransformer_block_1/layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_1/layer_normalization_3/mul_1Mul1transformer_block_1/layer_normalization_3/mul:z:0Btransformer_block_1/layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_1/layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_1/layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_1/layer_normalization_3/strided_slice_2StridedSlice8transformer_block_1/layer_normalization_3/Shape:output:0Htransformer_block_1/layer_normalization_3/strided_slice_2/stack:output:0Jtransformer_block_1/layer_normalization_3/strided_slice_2/stack_1:output:0Jtransformer_block_1/layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1transformer_block_1/layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
/transformer_block_1/layer_normalization_3/mul_2Mul:transformer_block_1/layer_normalization_3/mul_2/x:output:0Btransformer_block_1/layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: {
9transformer_block_1/layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :{
9transformer_block_1/layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
7transformer_block_1/layer_normalization_3/Reshape/shapePackBtransformer_block_1/layer_normalization_3/Reshape/shape/0:output:03transformer_block_1/layer_normalization_3/mul_1:z:03transformer_block_1/layer_normalization_3/mul_2:z:0Btransformer_block_1/layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
1transformer_block_1/layer_normalization_3/ReshapeReshapetransformer_block_1/add_1:z:0@transformer_block_1/layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
5transformer_block_1/layer_normalization_3/ones/packedPack3transformer_block_1/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:y
4transformer_block_1/layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
.transformer_block_1/layer_normalization_3/onesFill>transformer_block_1/layer_normalization_3/ones/packed:output:0=transformer_block_1/layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:??????????
6transformer_block_1/layer_normalization_3/zeros/packedPack3transformer_block_1/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:z
5transformer_block_1/layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
/transformer_block_1/layer_normalization_3/zerosFill?transformer_block_1/layer_normalization_3/zeros/packed:output:0>transformer_block_1/layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????r
/transformer_block_1/layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB t
1transformer_block_1/layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
:transformer_block_1/layer_normalization_3/FusedBatchNormV3FusedBatchNormV3:transformer_block_1/layer_normalization_3/Reshape:output:07transformer_block_1/layer_normalization_3/ones:output:08transformer_block_1/layer_normalization_3/zeros:output:08transformer_block_1/layer_normalization_3/Const:output:0:transformer_block_1/layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
3transformer_block_1/layer_normalization_3/Reshape_1Reshape>transformer_block_1/layer_normalization_3/FusedBatchNormV3:y:08transformer_block_1/layer_normalization_3/Shape:output:0*
T0*-
_output_shapes
:????????????
>transformer_block_1/layer_normalization_3/mul_3/ReadVariableOpReadVariableOpGtransformer_block_1_layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/transformer_block_1/layer_normalization_3/mul_3Mul<transformer_block_1/layer_normalization_3/Reshape_1:output:0Ftransformer_block_1/layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
<transformer_block_1/layer_normalization_3/add/ReadVariableOpReadVariableOpEtransformer_block_1_layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-transformer_block_1/layer_normalization_3/addAddV23transformer_block_1/layer_normalization_3/mul_3:z:0Dtransformer_block_1/layer_normalization_3/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????n
,global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d_1/MaxMax1transformer_block_1/layer_normalization_3/add:z:05global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*(
_output_shapes
:??????????w
dropout_12/IdentityIdentity#global_max_pooling1d_1/Max:output:0*
T0*(
_output_shapes
:???????????
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_19/MatMulMatMuldropout_12/Identity:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*(
_output_shapes
:??????????j
IdentityIdentitydense_19/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp<^token_and_position_embedding_1/embedding_2/embedding_lookup<^token_and_position_embedding_1/embedding_3/embedding_lookup=^transformer_block_1/layer_normalization_2/add/ReadVariableOp?^transformer_block_1/layer_normalization_2/mul_3/ReadVariableOp=^transformer_block_1/layer_normalization_3/add/ReadVariableOp?^transformer_block_1/layer_normalization_3/mul_3/ReadVariableOpK^transformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpM^transformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOpK^transformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpM^transformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOpK^transformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpM^transformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOpK^transformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpM^transformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOpA^transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOpC^transformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOpA^transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOpC^transformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOpA^transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOpC^transformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOpA^transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOpC^transformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2z
;token_and_position_embedding_1/embedding_2/embedding_lookup;token_and_position_embedding_1/embedding_2/embedding_lookup2z
;token_and_position_embedding_1/embedding_3/embedding_lookup;token_and_position_embedding_1/embedding_3/embedding_lookup2|
<transformer_block_1/layer_normalization_2/add/ReadVariableOp<transformer_block_1/layer_normalization_2/add/ReadVariableOp2?
>transformer_block_1/layer_normalization_2/mul_3/ReadVariableOp>transformer_block_1/layer_normalization_2/mul_3/ReadVariableOp2|
<transformer_block_1/layer_normalization_3/add/ReadVariableOp<transformer_block_1/layer_normalization_3/add/ReadVariableOp2?
>transformer_block_1/layer_normalization_3/mul_3/ReadVariableOp>transformer_block_1/layer_normalization_3/mul_3/ReadVariableOp2?
Jtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOpJtransformer_block_1/multi_head_attention_1/dense_10/BiasAdd/ReadVariableOp2?
Ltransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_10/Tensordot/ReadVariableOp2?
Jtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOpJtransformer_block_1/multi_head_attention_1/dense_11/BiasAdd/ReadVariableOp2?
Ltransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_11/Tensordot/ReadVariableOp2?
Jtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOpJtransformer_block_1/multi_head_attention_1/dense_12/BiasAdd/ReadVariableOp2?
Ltransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_12/Tensordot/ReadVariableOp2?
Jtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOpJtransformer_block_1/multi_head_attention_1/dense_13/BiasAdd/ReadVariableOp2?
Ltransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOpLtransformer_block_1/multi_head_attention_1/dense_13/Tensordot/ReadVariableOp2?
@transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOp@transformer_block_1/sequential_1/dense_14/BiasAdd/ReadVariableOp2?
Btransformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOpBtransformer_block_1/sequential_1/dense_14/Tensordot/ReadVariableOp2?
@transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOp@transformer_block_1/sequential_1/dense_15/BiasAdd/ReadVariableOp2?
Btransformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOpBtransformer_block_1/sequential_1/dense_15/Tensordot/ReadVariableOp2?
@transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOp@transformer_block_1/sequential_1/dense_16/BiasAdd/ReadVariableOp2?
Btransformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOpBtransformer_block_1/sequential_1/dense_16/Tensordot/ReadVariableOp2?
@transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOp@transformer_block_1/sequential_1/dense_17/BiasAdd/ReadVariableOp2?
Btransformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOpBtransformer_block_1/sequential_1/dense_17/Tensordot/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_100922

inputs#
dense_14_100898:
??
dense_14_100900:	?#
dense_15_100904:
??
dense_15_100906:	?#
dense_16_100910:
??
dense_16_100912:	?#
dense_17_100916:
??
dense_17_100918:	?
identity?? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCallinputsdense_14_100898dense_14_100900*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_100606?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_100859?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_15_100904dense_15_100906*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_100650?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_100826?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0dense_16_100910dense_16_100912*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_100694?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_100793?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0dense_17_100916dense_17_100918*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_100737~
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_7_layer_call_fn_104631

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_100617f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_104263

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_103402
x7
#embedding_3_embedding_lookup_103390:
??7
#embedding_2_embedding_lookup_103395:
??
identity??embedding_2/embedding_lookup?embedding_3/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :o
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes	
:??
embedding_3/embedding_lookupResourceGather#embedding_3_embedding_lookup_103390range:output:0*
Tindices0*6
_class,
*(loc:@embedding_3/embedding_lookup/103390* 
_output_shapes
:
??*
dtype0?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_3/embedding_lookup/103390* 
_output_shapes
:
???
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
???
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_103395x*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/103395*-
_output_shapes
:???????????*
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/103395*-
_output_shapes
:????????????
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????\
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp^embedding_2/embedding_lookup^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:K G
(
_output_shapes
:??????????

_user_specified_namex"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
input_21
serving_default_input_2:0??????????=
dense_191
StatefulPartitionedCall:0??????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
att
ffn
 
layernorm1
!
layernorm2
"dropout1
#dropout2"
_tf_keras_layer
?
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
?
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator"
_tf_keras_layer
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias"
_tf_keras_layer
?
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
722
823"
trackable_list_wrapper
?
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
722
823"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_32?
(__inference_model_1_layer_call_fn_101539
(__inference_model_1_layer_call_fn_102507
(__inference_model_1_layer_call_fn_102560
(__inference_model_1_layer_call_fn_102279?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zTtrace_0zUtrace_1zVtrace_2zWtrace_3
?
Xtrace_0
Ytrace_1
Ztrace_2
[trace_32?
C__inference_model_1_layer_call_and_return_conditional_losses_102944
C__inference_model_1_layer_call_and_return_conditional_losses_103370
C__inference_model_1_layer_call_and_return_conditional_losses_102336
C__inference_model_1_layer_call_and_return_conditional_losses_102393?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zXtrace_0zYtrace_1zZtrace_2z[trace_3
?B?
!__inference__wrapped_model_100568input_2"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
\iter

]beta_1

^beta_2
	_decay
`learning_rate7m?8m?9m?:m?;m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Nm?7v?8v?9v?:v?;v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?Nv?"
	optimizer
,
aserving_default"
signature_map
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
gtrace_02?
?__inference_token_and_position_embedding_1_layer_call_fn_103379?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zgtrace_0
?
htrace_02?
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_103402?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zhtrace_0
?
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
9
embeddings"
_tf_keras_layer
?
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
:
embeddings"
_tf_keras_layer
?
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11
G12
H13
I14
J15
K16
L17
M18
N19"
trackable_list_wrapper
?
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11
G12
H13
I14
J15
K16
L17
M18
N19"
trackable_list_wrapper
 "
trackable_list_wrapper
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
ztrace_0
{trace_12?
4__inference_transformer_block_1_layer_call_fn_103447
4__inference_transformer_block_1_layer_call_fn_103492?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zztrace_0z{trace_1
?
|trace_0
}trace_12?
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_103847
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_104237?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z|trace_0z}trace_1
?
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?query_dense
?	key_dense
?value_dense

?dense"
_tf_keras_layer
?
?layer_with_weights-0
?layer-0
?layer-1
?layer_with_weights-1
?layer-2
?layer-3
?layer_with_weights-2
?layer-4
?layer-5
?layer_with_weights-3
?layer-6
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	Kgamma
Lbeta"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	Mgamma
Nbeta"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
7__inference_global_max_pooling1d_1_layer_call_fn_104242?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_104248?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
+__inference_dropout_12_layer_call_fn_104253
+__inference_dropout_12_layer_call_fn_104258?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
F__inference_dropout_12_layer_call_and_return_conditional_losses_104263
F__inference_dropout_12_layer_call_and_return_conditional_losses_104275?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_19_layer_call_fn_104284?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_19_layer_call_and_return_conditional_losses_104295?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
#:!
??2dense_19/kernel
:?2dense_19/bias
I:G
??25token_and_position_embedding_1/embedding_2/embeddings
I:G
??25token_and_position_embedding_1/embedding_3/embeddings
N:L
??2:transformer_block_1/multi_head_attention_1/dense_10/kernel
G:E?28transformer_block_1/multi_head_attention_1/dense_10/bias
N:L
??2:transformer_block_1/multi_head_attention_1/dense_11/kernel
G:E?28transformer_block_1/multi_head_attention_1/dense_11/bias
N:L
??2:transformer_block_1/multi_head_attention_1/dense_12/kernel
G:E?28transformer_block_1/multi_head_attention_1/dense_12/bias
N:L
??2:transformer_block_1/multi_head_attention_1/dense_13/kernel
G:E?28transformer_block_1/multi_head_attention_1/dense_13/bias
#:!
??2dense_14/kernel
:?2dense_14/bias
#:!
??2dense_15/kernel
:?2dense_15/bias
#:!
??2dense_16/kernel
:?2dense_16/bias
#:!
??2dense_17/kernel
:?2dense_17/bias
>:<?2/transformer_block_1/layer_normalization_2/gamma
=:;?2.transformer_block_1/layer_normalization_2/beta
>:<?2/transformer_block_1/layer_normalization_3/gamma
=:;?2.transformer_block_1/layer_normalization_3/beta
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_model_1_layer_call_fn_101539input_2"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
(__inference_model_1_layer_call_fn_102507inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
(__inference_model_1_layer_call_fn_102560inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
(__inference_model_1_layer_call_fn_102279input_2"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_1_layer_call_and_return_conditional_losses_102944inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_1_layer_call_and_return_conditional_losses_103370inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_1_layer_call_and_return_conditional_losses_102336input_2"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_1_layer_call_and_return_conditional_losses_102393input_2"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
$__inference_signature_wrapper_102454input_2"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
?__inference_token_and_position_embedding_1_layer_call_fn_103379x"?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_103402x"?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
'
90"
trackable_list_wrapper
'
90"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
'
:0"
trackable_list_wrapper
'
:0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
J
0
1
 2
!3
"4
#5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
4__inference_transformer_block_1_layer_call_fn_103447inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
4__inference_transformer_block_1_layer_call_fn_103492inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_103847inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_104237inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
X
;0
<1
=2
>3
?4
@5
A6
B7"
trackable_list_wrapper
X
;0
<1
=2
>3
?4
@5
A6
B7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

;kernel
<bias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

=kernel
>bias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

?kernel
@bias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Akernel
Bbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Ckernel
Dbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Ekernel
Fbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Gkernel
Hbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Ikernel
Jbias"
_tf_keras_layer
X
C0
D1
E2
F3
G4
H5
I6
J7"
trackable_list_wrapper
X
C0
D1
E2
F3
G4
H5
I6
J7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
-__inference_sequential_1_layer_call_fn_100763
-__inference_sequential_1_layer_call_fn_104316
-__inference_sequential_1_layer_call_fn_104337
-__inference_sequential_1_layer_call_fn_100962?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
H__inference_sequential_1_layer_call_and_return_conditional_losses_104451
H__inference_sequential_1_layer_call_and_return_conditional_losses_104586
H__inference_sequential_1_layer_call_and_return_conditional_losses_100989
H__inference_sequential_1_layer_call_and_return_conditional_losses_101016?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
"
_generic_user_object
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
?B?
7__inference_global_max_pooling1d_1_layer_call_fn_104242inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_104248inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
+__inference_dropout_12_layer_call_fn_104253inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
+__inference_dropout_12_layer_call_fn_104258inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_dropout_12_layer_call_and_return_conditional_losses_104263inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_dropout_12_layer_call_and_return_conditional_losses_104275inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
)__inference_dense_19_layer_call_fn_104284inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_19_layer_call_and_return_conditional_losses_104295inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
v
?	variables
?	keras_api
?
thresholds
?true_positives
?false_negatives"
_tf_keras_metric
v
?	variables
?	keras_api
?
thresholds
?true_positives
?false_positives"
_tf_keras_metric
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
@
?0
?1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_14_layer_call_fn_104595?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_14_layer_call_and_return_conditional_losses_104626?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
*__inference_dropout_7_layer_call_fn_104631
*__inference_dropout_7_layer_call_fn_104636?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
E__inference_dropout_7_layer_call_and_return_conditional_losses_104641
E__inference_dropout_7_layer_call_and_return_conditional_losses_104653?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_15_layer_call_fn_104662?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_15_layer_call_and_return_conditional_losses_104693?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
*__inference_dropout_8_layer_call_fn_104698
*__inference_dropout_8_layer_call_fn_104703?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
E__inference_dropout_8_layer_call_and_return_conditional_losses_104708
E__inference_dropout_8_layer_call_and_return_conditional_losses_104720?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_16_layer_call_fn_104729?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_16_layer_call_and_return_conditional_losses_104760?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
*__inference_dropout_9_layer_call_fn_104765
*__inference_dropout_9_layer_call_fn_104770?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
E__inference_dropout_9_layer_call_and_return_conditional_losses_104775
E__inference_dropout_9_layer_call_and_return_conditional_losses_104787?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_17_layer_call_fn_104796?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_17_layer_call_and_return_conditional_losses_104826?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
X
?0
?1
?2
?3
?4
?5
?6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_sequential_1_layer_call_fn_100763dense_14_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_1_layer_call_fn_104316inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_1_layer_call_fn_104337inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_1_layer_call_fn_100962dense_14_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_1_layer_call_and_return_conditional_losses_104451inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_1_layer_call_and_return_conditional_losses_104586inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_1_layer_call_and_return_conditional_losses_100989dense_14_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_1_layer_call_and_return_conditional_losses_101016dense_14_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
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
?B?
)__inference_dense_14_layer_call_fn_104595inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_14_layer_call_and_return_conditional_losses_104626inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
*__inference_dropout_7_layer_call_fn_104631inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_dropout_7_layer_call_fn_104636inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_7_layer_call_and_return_conditional_losses_104641inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_7_layer_call_and_return_conditional_losses_104653inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
)__inference_dense_15_layer_call_fn_104662inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_15_layer_call_and_return_conditional_losses_104693inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
*__inference_dropout_8_layer_call_fn_104698inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_dropout_8_layer_call_fn_104703inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_8_layer_call_and_return_conditional_losses_104708inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_8_layer_call_and_return_conditional_losses_104720inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
)__inference_dense_16_layer_call_fn_104729inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_16_layer_call_and_return_conditional_losses_104760inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
*__inference_dropout_9_layer_call_fn_104765inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_dropout_9_layer_call_fn_104770inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_9_layer_call_and_return_conditional_losses_104775inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_9_layer_call_and_return_conditional_losses_104787inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
)__inference_dense_17_layer_call_fn_104796inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_17_layer_call_and_return_conditional_losses_104826inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
(:&
??2Adam/dense_19/kernel/m
!:?2Adam/dense_19/bias/m
N:L
??2<Adam/token_and_position_embedding_1/embedding_2/embeddings/m
N:L
??2<Adam/token_and_position_embedding_1/embedding_3/embeddings/m
S:Q
??2AAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/m
L:J?2?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/m
S:Q
??2AAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/m
L:J?2?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/m
S:Q
??2AAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/m
L:J?2?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/m
S:Q
??2AAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/m
L:J?2?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/m
(:&
??2Adam/dense_14/kernel/m
!:?2Adam/dense_14/bias/m
(:&
??2Adam/dense_15/kernel/m
!:?2Adam/dense_15/bias/m
(:&
??2Adam/dense_16/kernel/m
!:?2Adam/dense_16/bias/m
(:&
??2Adam/dense_17/kernel/m
!:?2Adam/dense_17/bias/m
C:A?26Adam/transformer_block_1/layer_normalization_2/gamma/m
B:@?25Adam/transformer_block_1/layer_normalization_2/beta/m
C:A?26Adam/transformer_block_1/layer_normalization_3/gamma/m
B:@?25Adam/transformer_block_1/layer_normalization_3/beta/m
(:&
??2Adam/dense_19/kernel/v
!:?2Adam/dense_19/bias/v
N:L
??2<Adam/token_and_position_embedding_1/embedding_2/embeddings/v
N:L
??2<Adam/token_and_position_embedding_1/embedding_3/embeddings/v
S:Q
??2AAdam/transformer_block_1/multi_head_attention_1/dense_10/kernel/v
L:J?2?Adam/transformer_block_1/multi_head_attention_1/dense_10/bias/v
S:Q
??2AAdam/transformer_block_1/multi_head_attention_1/dense_11/kernel/v
L:J?2?Adam/transformer_block_1/multi_head_attention_1/dense_11/bias/v
S:Q
??2AAdam/transformer_block_1/multi_head_attention_1/dense_12/kernel/v
L:J?2?Adam/transformer_block_1/multi_head_attention_1/dense_12/bias/v
S:Q
??2AAdam/transformer_block_1/multi_head_attention_1/dense_13/kernel/v
L:J?2?Adam/transformer_block_1/multi_head_attention_1/dense_13/bias/v
(:&
??2Adam/dense_14/kernel/v
!:?2Adam/dense_14/bias/v
(:&
??2Adam/dense_15/kernel/v
!:?2Adam/dense_15/bias/v
(:&
??2Adam/dense_16/kernel/v
!:?2Adam/dense_16/bias/v
(:&
??2Adam/dense_17/kernel/v
!:?2Adam/dense_17/bias/v
C:A?26Adam/transformer_block_1/layer_normalization_2/gamma/v
B:@?25Adam/transformer_block_1/layer_normalization_2/beta/v
C:A?26Adam/transformer_block_1/layer_normalization_3/gamma/v
B:@?25Adam/transformer_block_1/layer_normalization_3/beta/v?
!__inference__wrapped_model_100568?:9;<=>?@ABKLCDEFGHIJMN781?.
'?$
"?
input_2??????????
? "4?1
/
dense_19#? 
dense_19???????????
D__inference_dense_14_layer_call_and_return_conditional_losses_104626hCD5?2
+?(
&?#
inputs???????????
? "+?(
!?
0???????????
? ?
)__inference_dense_14_layer_call_fn_104595[CD5?2
+?(
&?#
inputs???????????
? "?????????????
D__inference_dense_15_layer_call_and_return_conditional_losses_104693hEF5?2
+?(
&?#
inputs???????????
? "+?(
!?
0???????????
? ?
)__inference_dense_15_layer_call_fn_104662[EF5?2
+?(
&?#
inputs???????????
? "?????????????
D__inference_dense_16_layer_call_and_return_conditional_losses_104760hGH5?2
+?(
&?#
inputs???????????
? "+?(
!?
0???????????
? ?
)__inference_dense_16_layer_call_fn_104729[GH5?2
+?(
&?#
inputs???????????
? "?????????????
D__inference_dense_17_layer_call_and_return_conditional_losses_104826hIJ5?2
+?(
&?#
inputs???????????
? "+?(
!?
0???????????
? ?
)__inference_dense_17_layer_call_fn_104796[IJ5?2
+?(
&?#
inputs???????????
? "?????????????
D__inference_dense_19_layer_call_and_return_conditional_losses_104295^780?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_19_layer_call_fn_104284Q780?-
&?#
!?
inputs??????????
? "????????????
F__inference_dropout_12_layer_call_and_return_conditional_losses_104263^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_12_layer_call_and_return_conditional_losses_104275^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_12_layer_call_fn_104253Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_12_layer_call_fn_104258Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_dropout_7_layer_call_and_return_conditional_losses_104641h9?6
/?,
&?#
inputs???????????
p 
? "+?(
!?
0???????????
? ?
E__inference_dropout_7_layer_call_and_return_conditional_losses_104653h9?6
/?,
&?#
inputs???????????
p
? "+?(
!?
0???????????
? ?
*__inference_dropout_7_layer_call_fn_104631[9?6
/?,
&?#
inputs???????????
p 
? "?????????????
*__inference_dropout_7_layer_call_fn_104636[9?6
/?,
&?#
inputs???????????
p
? "?????????????
E__inference_dropout_8_layer_call_and_return_conditional_losses_104708h9?6
/?,
&?#
inputs???????????
p 
? "+?(
!?
0???????????
? ?
E__inference_dropout_8_layer_call_and_return_conditional_losses_104720h9?6
/?,
&?#
inputs???????????
p
? "+?(
!?
0???????????
? ?
*__inference_dropout_8_layer_call_fn_104698[9?6
/?,
&?#
inputs???????????
p 
? "?????????????
*__inference_dropout_8_layer_call_fn_104703[9?6
/?,
&?#
inputs???????????
p
? "?????????????
E__inference_dropout_9_layer_call_and_return_conditional_losses_104775h9?6
/?,
&?#
inputs???????????
p 
? "+?(
!?
0???????????
? ?
E__inference_dropout_9_layer_call_and_return_conditional_losses_104787h9?6
/?,
&?#
inputs???????????
p
? "+?(
!?
0???????????
? ?
*__inference_dropout_9_layer_call_fn_104765[9?6
/?,
&?#
inputs???????????
p 
? "?????????????
*__inference_dropout_9_layer_call_fn_104770[9?6
/?,
&?#
inputs???????????
p
? "?????????????
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_104248wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+
$?!
0??????????????????
? ?
7__inference_global_max_pooling1d_1_layer_call_fn_104242jE?B
;?8
6?3
inputs'???????????????????????????
? "!????????????????????
C__inference_model_1_layer_call_and_return_conditional_losses_102336}:9;<=>?@ABKLCDEFGHIJMN789?6
/?,
"?
input_2??????????
p 

 
? "&?#
?
0??????????
? ?
C__inference_model_1_layer_call_and_return_conditional_losses_102393}:9;<=>?@ABKLCDEFGHIJMN789?6
/?,
"?
input_2??????????
p

 
? "&?#
?
0??????????
? ?
C__inference_model_1_layer_call_and_return_conditional_losses_102944|:9;<=>?@ABKLCDEFGHIJMN788?5
.?+
!?
inputs??????????
p 

 
? "&?#
?
0??????????
? ?
C__inference_model_1_layer_call_and_return_conditional_losses_103370|:9;<=>?@ABKLCDEFGHIJMN788?5
.?+
!?
inputs??????????
p

 
? "&?#
?
0??????????
? ?
(__inference_model_1_layer_call_fn_101539p:9;<=>?@ABKLCDEFGHIJMN789?6
/?,
"?
input_2??????????
p 

 
? "????????????
(__inference_model_1_layer_call_fn_102279p:9;<=>?@ABKLCDEFGHIJMN789?6
/?,
"?
input_2??????????
p

 
? "????????????
(__inference_model_1_layer_call_fn_102507o:9;<=>?@ABKLCDEFGHIJMN788?5
.?+
!?
inputs??????????
p 

 
? "????????????
(__inference_model_1_layer_call_fn_102560o:9;<=>?@ABKLCDEFGHIJMN788?5
.?+
!?
inputs??????????
p

 
? "????????????
H__inference_sequential_1_layer_call_and_return_conditional_losses_100989~CDEFGHIJE?B
;?8
.?+
dense_14_input???????????
p 

 
? "+?(
!?
0???????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_101016~CDEFGHIJE?B
;?8
.?+
dense_14_input???????????
p

 
? "+?(
!?
0???????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_104451vCDEFGHIJ=?:
3?0
&?#
inputs???????????
p 

 
? "+?(
!?
0???????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_104586vCDEFGHIJ=?:
3?0
&?#
inputs???????????
p

 
? "+?(
!?
0???????????
? ?
-__inference_sequential_1_layer_call_fn_100763qCDEFGHIJE?B
;?8
.?+
dense_14_input???????????
p 

 
? "?????????????
-__inference_sequential_1_layer_call_fn_100962qCDEFGHIJE?B
;?8
.?+
dense_14_input???????????
p

 
? "?????????????
-__inference_sequential_1_layer_call_fn_104316iCDEFGHIJ=?:
3?0
&?#
inputs???????????
p 

 
? "?????????????
-__inference_sequential_1_layer_call_fn_104337iCDEFGHIJ=?:
3?0
&?#
inputs???????????
p

 
? "?????????????
$__inference_signature_wrapper_102454?:9;<=>?@ABKLCDEFGHIJMN78<?9
? 
2?/
-
input_2"?
input_2??????????"4?1
/
dense_19#? 
dense_19???????????
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_103402^:9+?(
!?
?
x??????????
? "+?(
!?
0???????????
? ?
?__inference_token_and_position_embedding_1_layer_call_fn_103379Q:9+?(
!?
?
x??????????
? "?????????????
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_103847~;<=>?@ABKLCDEFGHIJMN9?6
/?,
&?#
inputs???????????
p 
? "+?(
!?
0???????????
? ?
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_104237~;<=>?@ABKLCDEFGHIJMN9?6
/?,
&?#
inputs???????????
p
? "+?(
!?
0???????????
? ?
4__inference_transformer_block_1_layer_call_fn_103447q;<=>?@ABKLCDEFGHIJMN9?6
/?,
&?#
inputs???????????
p 
? "?????????????
4__inference_transformer_block_1_layer_call_fn_103492q;<=>?@ABKLCDEFGHIJMN9?6
/?,
&?#
inputs???????????
p
? "????????????