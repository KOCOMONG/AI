??7
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
 ?"serve*2.9.02v2.9.0-rc2-42-g8a20d54a3c18??3
?
5Adam/transformer_block_2/layer_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_block_2/layer_normalization_5/beta/v
?
IAdam/transformer_block_2/layer_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_2/layer_normalization_5/beta/v*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_2/layer_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_2/layer_normalization_5/gamma/v
?
JAdam/transformer_block_2/layer_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_2/layer_normalization_5/gamma/v*
_output_shapes	
:?*
dtype0
?
5Adam/transformer_block_2/layer_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_block_2/layer_normalization_4/beta/v
?
IAdam/transformer_block_2/layer_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_2/layer_normalization_4/beta/v*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_2/layer_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_2/layer_normalization_4/gamma/v
?
JAdam/transformer_block_2/layer_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_2/layer_normalization_4/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_27/bias/v
z
(Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_27/kernel/v
?
*Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_26/bias/v
z
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_26/kernel/v
?
*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_25/bias/v
z
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_25/kernel/v
?
*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_24/bias/v
z
(Adam/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_24/kernel/v
?
*Adam/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/v* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/v
?
SAdam/transformer_block_2/multi_head_attention_2/dense_23/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/v*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/v
?
UAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/v* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/v
?
SAdam/transformer_block_2/multi_head_attention_2/dense_22/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/v*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/v
?
UAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/v* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/v
?
SAdam/transformer_block_2/multi_head_attention_2/dense_21/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/v*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/v
?
UAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/v* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/v
?
SAdam/transformer_block_2/multi_head_attention_2/dense_20/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/v*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/v
?
UAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/v* 
_output_shapes
:
??*
dtype0
?
<Adam/token_and_position_embedding_2/embedding_5/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*M
shared_name><Adam/token_and_position_embedding_2/embedding_5/embeddings/v
?
PAdam/token_and_position_embedding_2/embedding_5/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_5/embeddings/v* 
_output_shapes
:
??*
dtype0
?
<Adam/token_and_position_embedding_2/embedding_4/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*M
shared_name><Adam/token_and_position_embedding_2/embedding_4/embeddings/v
?
PAdam/token_and_position_embedding_2/embedding_4/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_4/embeddings/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_29/bias/v
z
(Adam/dense_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_29/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_29/kernel/v
?
*Adam/dense_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_29/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_28/bias/v
z
(Adam/dense_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_28/kernel/v
?
*Adam/dense_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/v* 
_output_shapes
:
??*
dtype0
?
5Adam/transformer_block_2/layer_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_block_2/layer_normalization_5/beta/m
?
IAdam/transformer_block_2/layer_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_2/layer_normalization_5/beta/m*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_2/layer_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_2/layer_normalization_5/gamma/m
?
JAdam/transformer_block_2/layer_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_2/layer_normalization_5/gamma/m*
_output_shapes	
:?*
dtype0
?
5Adam/transformer_block_2/layer_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_block_2/layer_normalization_4/beta/m
?
IAdam/transformer_block_2/layer_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_2/layer_normalization_4/beta/m*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_2/layer_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_2/layer_normalization_4/gamma/m
?
JAdam/transformer_block_2/layer_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_2/layer_normalization_4/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_27/bias/m
z
(Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_27/kernel/m
?
*Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_26/bias/m
z
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_26/kernel/m
?
*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_25/bias/m
z
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_25/kernel/m
?
*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_24/bias/m
z
(Adam/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_24/kernel/m
?
*Adam/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/m* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/m
?
SAdam/transformer_block_2/multi_head_attention_2/dense_23/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/m*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/m
?
UAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/m* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/m
?
SAdam/transformer_block_2/multi_head_attention_2/dense_22/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/m*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/m
?
UAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/m* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/m
?
SAdam/transformer_block_2/multi_head_attention_2/dense_21/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/m*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/m
?
UAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/m* 
_output_shapes
:
??*
dtype0
?
?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/m
?
SAdam/transformer_block_2/multi_head_attention_2/dense_20/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/m*
_output_shapes	
:?*
dtype0
?
AAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/m
?
UAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/m* 
_output_shapes
:
??*
dtype0
?
<Adam/token_and_position_embedding_2/embedding_5/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*M
shared_name><Adam/token_and_position_embedding_2/embedding_5/embeddings/m
?
PAdam/token_and_position_embedding_2/embedding_5/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_5/embeddings/m* 
_output_shapes
:
??*
dtype0
?
<Adam/token_and_position_embedding_2/embedding_4/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*M
shared_name><Adam/token_and_position_embedding_2/embedding_4/embeddings/m
?
PAdam/token_and_position_embedding_2/embedding_4/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_4/embeddings/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_29/bias/m
z
(Adam/dense_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_29/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_29/kernel/m
?
*Adam/dense_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_29/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_28/bias/m
z
(Adam/dense_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_28/kernel/m
?
*Adam/dense_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/m* 
_output_shapes
:
??*
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
.transformer_block_2/layer_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.transformer_block_2/layer_normalization_5/beta
?
Btransformer_block_2/layer_normalization_5/beta/Read/ReadVariableOpReadVariableOp.transformer_block_2/layer_normalization_5/beta*
_output_shapes	
:?*
dtype0
?
/transformer_block_2/layer_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/transformer_block_2/layer_normalization_5/gamma
?
Ctransformer_block_2/layer_normalization_5/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_2/layer_normalization_5/gamma*
_output_shapes	
:?*
dtype0
?
.transformer_block_2/layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.transformer_block_2/layer_normalization_4/beta
?
Btransformer_block_2/layer_normalization_4/beta/Read/ReadVariableOpReadVariableOp.transformer_block_2/layer_normalization_4/beta*
_output_shapes	
:?*
dtype0
?
/transformer_block_2/layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/transformer_block_2/layer_normalization_4/gamma
?
Ctransformer_block_2/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_2/layer_normalization_4/gamma*
_output_shapes	
:?*
dtype0
s
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_27/bias
l
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes	
:?*
dtype0
|
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_27/kernel
u
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel* 
_output_shapes
:
??*
dtype0
s
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_26/bias
l
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes	
:?*
dtype0
|
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_26/kernel
u
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel* 
_output_shapes
:
??*
dtype0
s
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_25/bias
l
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes	
:?*
dtype0
|
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_25/kernel
u
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel* 
_output_shapes
:
??*
dtype0
s
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_24/bias
l
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes	
:?*
dtype0
|
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_24/kernel
u
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel* 
_output_shapes
:
??*
dtype0
?
8transformer_block_2/multi_head_attention_2/dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8transformer_block_2/multi_head_attention_2/dense_23/bias
?
Ltransformer_block_2/multi_head_attention_2/dense_23/bias/Read/ReadVariableOpReadVariableOp8transformer_block_2/multi_head_attention_2/dense_23/bias*
_output_shapes	
:?*
dtype0
?
:transformer_block_2/multi_head_attention_2/dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*K
shared_name<:transformer_block_2/multi_head_attention_2/dense_23/kernel
?
Ntransformer_block_2/multi_head_attention_2/dense_23/kernel/Read/ReadVariableOpReadVariableOp:transformer_block_2/multi_head_attention_2/dense_23/kernel* 
_output_shapes
:
??*
dtype0
?
8transformer_block_2/multi_head_attention_2/dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8transformer_block_2/multi_head_attention_2/dense_22/bias
?
Ltransformer_block_2/multi_head_attention_2/dense_22/bias/Read/ReadVariableOpReadVariableOp8transformer_block_2/multi_head_attention_2/dense_22/bias*
_output_shapes	
:?*
dtype0
?
:transformer_block_2/multi_head_attention_2/dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*K
shared_name<:transformer_block_2/multi_head_attention_2/dense_22/kernel
?
Ntransformer_block_2/multi_head_attention_2/dense_22/kernel/Read/ReadVariableOpReadVariableOp:transformer_block_2/multi_head_attention_2/dense_22/kernel* 
_output_shapes
:
??*
dtype0
?
8transformer_block_2/multi_head_attention_2/dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8transformer_block_2/multi_head_attention_2/dense_21/bias
?
Ltransformer_block_2/multi_head_attention_2/dense_21/bias/Read/ReadVariableOpReadVariableOp8transformer_block_2/multi_head_attention_2/dense_21/bias*
_output_shapes	
:?*
dtype0
?
:transformer_block_2/multi_head_attention_2/dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*K
shared_name<:transformer_block_2/multi_head_attention_2/dense_21/kernel
?
Ntransformer_block_2/multi_head_attention_2/dense_21/kernel/Read/ReadVariableOpReadVariableOp:transformer_block_2/multi_head_attention_2/dense_21/kernel* 
_output_shapes
:
??*
dtype0
?
8transformer_block_2/multi_head_attention_2/dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8transformer_block_2/multi_head_attention_2/dense_20/bias
?
Ltransformer_block_2/multi_head_attention_2/dense_20/bias/Read/ReadVariableOpReadVariableOp8transformer_block_2/multi_head_attention_2/dense_20/bias*
_output_shapes	
:?*
dtype0
?
:transformer_block_2/multi_head_attention_2/dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*K
shared_name<:transformer_block_2/multi_head_attention_2/dense_20/kernel
?
Ntransformer_block_2/multi_head_attention_2/dense_20/kernel/Read/ReadVariableOpReadVariableOp:transformer_block_2/multi_head_attention_2/dense_20/kernel* 
_output_shapes
:
??*
dtype0
?
5token_and_position_embedding_2/embedding_5/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*F
shared_name75token_and_position_embedding_2/embedding_5/embeddings
?
Itoken_and_position_embedding_2/embedding_5/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_2/embedding_5/embeddings* 
_output_shapes
:
??*
dtype0
?
5token_and_position_embedding_2/embedding_4/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*F
shared_name75token_and_position_embedding_2/embedding_4/embeddings
?
Itoken_and_position_embedding_2/embedding_4/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_2/embedding_4/embeddings* 
_output_shapes
:
??*
dtype0
s
dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_29/bias
l
!dense_29/bias/Read/ReadVariableOpReadVariableOpdense_29/bias*
_output_shapes	
:?*
dtype0
|
dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_29/kernel
u
#dense_29/kernel/Read/ReadVariableOpReadVariableOpdense_29/kernel* 
_output_shapes
:
??*
dtype0
s
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_28/bias
l
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes	
:?*
dtype0
|
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_28/kernel
u
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel* 
_output_shapes
:
??*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 att
!ffn
"
layernorm1
#
layernorm2
$dropout1
%dropout2*
?
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses* 
?
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2_random_generator* 
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias*
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator* 
?
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias*
?
J0
K1
L2
M3
N4
O5
P6
Q7
R8
S9
T10
U11
V12
W13
X14
Y15
Z16
[17
\18
]19
^20
_21
922
:23
H24
I25*
?
J0
K1
L2
M3
N4
O5
P6
Q7
R8
S9
T10
U11
V12
W13
X14
Y15
Z16
[17
\18
]19
^20
_21
922
:23
H24
I25*
* 
?
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
etrace_0
ftrace_1
gtrace_2
htrace_3* 
6
itrace_0
jtrace_1
ktrace_2
ltrace_3* 
* 
?
miter

nbeta_1

obeta_2
	pdecay
qlearning_rate9m?:m?Hm?Im?Jm?Km?Lm?Mm?Nm?Om?Pm?Qm?Rm?Sm?Tm?Um?Vm?Wm?Xm?Ym?Zm?[m?\m?]m?^m?_m?9v?:v?Hv?Iv?Jv?Kv?Lv?Mv?Nv?Ov?Pv?Qv?Rv?Sv?Tv?Uv?Vv?Wv?Xv?Yv?Zv?[v?\v?]v?^v?_v?*

rserving_default* 

J0
K1*

J0
K1*
* 
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

xtrace_0* 

ytrace_0* 
?
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
J
embeddings*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
K
embeddings*
?
L0
M1
N2
O3
P4
Q5
R6
S7
T8
U9
V10
W11
X12
Y13
Z14
[15
\16
]17
^18
_19*
?
L0
M1
N2
O3
P4
Q5
R6
S7
T8
U9
V10
W11
X12
Y13
Z14
[15
\16
]17
^18
_19*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
?
?	variables
?trainable_variables
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
	\gamma
]beta*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	^gamma
_beta*
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
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 
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
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

90
:1*

90
:1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_28/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_28/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

H0
I1*

H0
I1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_29/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_29/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_2/embedding_4/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_2/embedding_5/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block_2/multi_head_attention_2/dense_20/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block_2/multi_head_attention_2/dense_20/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block_2/multi_head_attention_2/dense_21/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block_2/multi_head_attention_2/dense_21/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block_2/multi_head_attention_2/dense_22/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block_2/multi_head_attention_2/dense_22/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block_2/multi_head_attention_2/dense_23/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block_2/multi_head_attention_2/dense_23/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_24/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_24/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_25/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_25/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_26/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_26/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_27/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_27/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_block_2/layer_normalization_4/gamma'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.transformer_block_2/layer_normalization_4/beta'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_block_2/layer_normalization_5/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.transformer_block_2/layer_normalization_5/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*
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
0
1*
* 
* 
* 
* 
* 

J0*

J0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 

K0*

K0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
.
 0
!1
"2
#3
$4
%5*
* 
* 
* 
* 
* 
* 
* 
<
L0
M1
N2
O3
P4
Q5
R6
S7*
<
L0
M1
N2
O3
P4
Q5
R6
S7*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
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
?__call__
+?&call_and_return_all_conditional_losses

Lkernel
Mbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Nkernel
Obias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Pkernel
Qbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Rkernel
Sbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Tkernel
Ubias*
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

Vkernel
Wbias*
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

Xkernel
Ybias*
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

Zkernel
[bias*
<
T0
U1
V2
W3
X4
Y5
Z6
[7*
<
T0
U1
V2
W3
X4
Y5
Z6
[7*
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
\0
]1*

\0
]1*
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
^0
_1*

^0
_1*
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
L0
M1*

L0
M1*
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
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 

N0
O1*

N0
O1*
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
* 
* 

P0
Q1*

P0
Q1*
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
'?"call_and_return_conditional_losses*
* 
* 

R0
S1*

R0
S1*
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
* 
* 

T0
U1*

T0
U1*
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
V0
W1*

V0
W1*
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
X0
Y1*

X0
Y1*
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
Z0
[1*

Z0
[1*
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
VARIABLE_VALUEAdam/dense_28/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_28/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_29/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_29/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_4/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_5/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_24/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_24/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_25/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_25/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_26/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_26/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_27/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_27/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_block_2/layer_normalization_4/gamma/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_block_2/layer_normalization_4/beta/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_block_2/layer_normalization_5/gamma/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_block_2/layer_normalization_5/beta/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_28/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_28/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_29/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_29/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_4/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_5/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_24/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_24/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_25/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_25/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_26/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_26/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_27/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_27/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_block_2/layer_normalization_4/gamma/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_block_2/layer_normalization_4/beta/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_block_2/layer_normalization_5/gamma/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_block_2/layer_normalization_5/beta/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
serving_default_input_3Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_35token_and_position_embedding_2/embedding_5/embeddings5token_and_position_embedding_2/embedding_4/embeddings:transformer_block_2/multi_head_attention_2/dense_20/kernel8transformer_block_2/multi_head_attention_2/dense_20/bias:transformer_block_2/multi_head_attention_2/dense_21/kernel8transformer_block_2/multi_head_attention_2/dense_21/bias:transformer_block_2/multi_head_attention_2/dense_22/kernel8transformer_block_2/multi_head_attention_2/dense_22/bias:transformer_block_2/multi_head_attention_2/dense_23/kernel8transformer_block_2/multi_head_attention_2/dense_23/bias/transformer_block_2/layer_normalization_4/gamma.transformer_block_2/layer_normalization_4/betadense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/bias/transformer_block_2/layer_normalization_5/gamma.transformer_block_2/layer_normalization_5/betadense_28/kerneldense_28/biasdense_29/kerneldense_29/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_108098
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?+
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOp#dense_29/kernel/Read/ReadVariableOp!dense_29/bias/Read/ReadVariableOpItoken_and_position_embedding_2/embedding_4/embeddings/Read/ReadVariableOpItoken_and_position_embedding_2/embedding_5/embeddings/Read/ReadVariableOpNtransformer_block_2/multi_head_attention_2/dense_20/kernel/Read/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_20/bias/Read/ReadVariableOpNtransformer_block_2/multi_head_attention_2/dense_21/kernel/Read/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_21/bias/Read/ReadVariableOpNtransformer_block_2/multi_head_attention_2/dense_22/kernel/Read/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_22/bias/Read/ReadVariableOpNtransformer_block_2/multi_head_attention_2/dense_23/kernel/Read/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_23/bias/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOpCtransformer_block_2/layer_normalization_4/gamma/Read/ReadVariableOpBtransformer_block_2/layer_normalization_4/beta/Read/ReadVariableOpCtransformer_block_2/layer_normalization_5/gamma/Read/ReadVariableOpBtransformer_block_2/layer_normalization_5/beta/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp*Adam/dense_28/kernel/m/Read/ReadVariableOp(Adam/dense_28/bias/m/Read/ReadVariableOp*Adam/dense_29/kernel/m/Read/ReadVariableOp(Adam/dense_29/bias/m/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_4/embeddings/m/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_5/embeddings/m/Read/ReadVariableOpUAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/m/Read/ReadVariableOpSAdam/transformer_block_2/multi_head_attention_2/dense_20/bias/m/Read/ReadVariableOpUAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/m/Read/ReadVariableOpSAdam/transformer_block_2/multi_head_attention_2/dense_21/bias/m/Read/ReadVariableOpUAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/m/Read/ReadVariableOpSAdam/transformer_block_2/multi_head_attention_2/dense_22/bias/m/Read/ReadVariableOpUAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/m/Read/ReadVariableOpSAdam/transformer_block_2/multi_head_attention_2/dense_23/bias/m/Read/ReadVariableOp*Adam/dense_24/kernel/m/Read/ReadVariableOp(Adam/dense_24/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp*Adam/dense_27/kernel/m/Read/ReadVariableOp(Adam/dense_27/bias/m/Read/ReadVariableOpJAdam/transformer_block_2/layer_normalization_4/gamma/m/Read/ReadVariableOpIAdam/transformer_block_2/layer_normalization_4/beta/m/Read/ReadVariableOpJAdam/transformer_block_2/layer_normalization_5/gamma/m/Read/ReadVariableOpIAdam/transformer_block_2/layer_normalization_5/beta/m/Read/ReadVariableOp*Adam/dense_28/kernel/v/Read/ReadVariableOp(Adam/dense_28/bias/v/Read/ReadVariableOp*Adam/dense_29/kernel/v/Read/ReadVariableOp(Adam/dense_29/bias/v/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_4/embeddings/v/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_5/embeddings/v/Read/ReadVariableOpUAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/v/Read/ReadVariableOpSAdam/transformer_block_2/multi_head_attention_2/dense_20/bias/v/Read/ReadVariableOpUAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/v/Read/ReadVariableOpSAdam/transformer_block_2/multi_head_attention_2/dense_21/bias/v/Read/ReadVariableOpUAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/v/Read/ReadVariableOpSAdam/transformer_block_2/multi_head_attention_2/dense_22/bias/v/Read/ReadVariableOpUAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/v/Read/ReadVariableOpSAdam/transformer_block_2/multi_head_attention_2/dense_23/bias/v/Read/ReadVariableOp*Adam/dense_24/kernel/v/Read/ReadVariableOp(Adam/dense_24/bias/v/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp*Adam/dense_27/kernel/v/Read/ReadVariableOp(Adam/dense_27/bias/v/Read/ReadVariableOpJAdam/transformer_block_2/layer_normalization_4/gamma/v/Read/ReadVariableOpIAdam/transformer_block_2/layer_normalization_4/beta/v/Read/ReadVariableOpJAdam/transformer_block_2/layer_normalization_5/gamma/v/Read/ReadVariableOpIAdam/transformer_block_2/layer_normalization_5/beta/v/Read/ReadVariableOpConst*h
Tina
_2]	*
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
__inference__traced_save_110844
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_28/kerneldense_28/biasdense_29/kerneldense_29/bias5token_and_position_embedding_2/embedding_4/embeddings5token_and_position_embedding_2/embedding_5/embeddings:transformer_block_2/multi_head_attention_2/dense_20/kernel8transformer_block_2/multi_head_attention_2/dense_20/bias:transformer_block_2/multi_head_attention_2/dense_21/kernel8transformer_block_2/multi_head_attention_2/dense_21/bias:transformer_block_2/multi_head_attention_2/dense_22/kernel8transformer_block_2/multi_head_attention_2/dense_22/bias:transformer_block_2/multi_head_attention_2/dense_23/kernel8transformer_block_2/multi_head_attention_2/dense_23/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/bias/transformer_block_2/layer_normalization_4/gamma.transformer_block_2/layer_normalization_4/beta/transformer_block_2/layer_normalization_5/gamma.transformer_block_2/layer_normalization_5/beta	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcounttrue_positives_1false_negativestrue_positivesfalse_positivesAdam/dense_28/kernel/mAdam/dense_28/bias/mAdam/dense_29/kernel/mAdam/dense_29/bias/m<Adam/token_and_position_embedding_2/embedding_4/embeddings/m<Adam/token_and_position_embedding_2/embedding_5/embeddings/mAAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/m?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/mAAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/m?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/mAAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/m?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/mAAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/m?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/mAdam/dense_24/kernel/mAdam/dense_24/bias/mAdam/dense_25/kernel/mAdam/dense_25/bias/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/dense_27/kernel/mAdam/dense_27/bias/m6Adam/transformer_block_2/layer_normalization_4/gamma/m5Adam/transformer_block_2/layer_normalization_4/beta/m6Adam/transformer_block_2/layer_normalization_5/gamma/m5Adam/transformer_block_2/layer_normalization_5/beta/mAdam/dense_28/kernel/vAdam/dense_28/bias/vAdam/dense_29/kernel/vAdam/dense_29/bias/v<Adam/token_and_position_embedding_2/embedding_4/embeddings/v<Adam/token_and_position_embedding_2/embedding_5/embeddings/vAAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/v?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/vAAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/v?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/vAAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/v?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/vAAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/v?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/vAdam/dense_24/kernel/vAdam/dense_24/bias/vAdam/dense_25/kernel/vAdam/dense_25/bias/vAdam/dense_26/kernel/vAdam/dense_26/bias/vAdam/dense_27/kernel/vAdam/dense_27/bias/v6Adam/transformer_block_2/layer_normalization_4/gamma/v5Adam/transformer_block_2/layer_normalization_4/beta/v6Adam/transformer_block_2/layer_normalization_5/gamma/v5Adam/transformer_block_2/layer_normalization_5/beta/v*g
Tin`
^2\*
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
"__inference__traced_restore_111127??/
?

e
F__inference_dropout_19_layer_call_and_return_conditional_losses_107179

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
?
G
+__inference_dropout_16_layer_call_fn_110487

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
GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_106254f
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
??
? 
C__inference_model_2_layer_call_and_return_conditional_losses_109045

inputsV
Btoken_and_position_embedding_2_embedding_5_embedding_lookup_108615:
??V
Btoken_and_position_embedding_2_embedding_4_embedding_lookup_108620:
??i
Utransformer_block_2_multi_head_attention_2_dense_20_tensordot_readvariableop_resource:
??b
Stransformer_block_2_multi_head_attention_2_dense_20_biasadd_readvariableop_resource:	?i
Utransformer_block_2_multi_head_attention_2_dense_21_tensordot_readvariableop_resource:
??b
Stransformer_block_2_multi_head_attention_2_dense_21_biasadd_readvariableop_resource:	?i
Utransformer_block_2_multi_head_attention_2_dense_22_tensordot_readvariableop_resource:
??b
Stransformer_block_2_multi_head_attention_2_dense_22_biasadd_readvariableop_resource:	?i
Utransformer_block_2_multi_head_attention_2_dense_23_tensordot_readvariableop_resource:
??b
Stransformer_block_2_multi_head_attention_2_dense_23_biasadd_readvariableop_resource:	?V
Gtransformer_block_2_layer_normalization_4_mul_3_readvariableop_resource:	?T
Etransformer_block_2_layer_normalization_4_add_readvariableop_resource:	?_
Ktransformer_block_2_sequential_2_dense_24_tensordot_readvariableop_resource:
??X
Itransformer_block_2_sequential_2_dense_24_biasadd_readvariableop_resource:	?_
Ktransformer_block_2_sequential_2_dense_25_tensordot_readvariableop_resource:
??X
Itransformer_block_2_sequential_2_dense_25_biasadd_readvariableop_resource:	?_
Ktransformer_block_2_sequential_2_dense_26_tensordot_readvariableop_resource:
??X
Itransformer_block_2_sequential_2_dense_26_biasadd_readvariableop_resource:	?_
Ktransformer_block_2_sequential_2_dense_27_tensordot_readvariableop_resource:
??X
Itransformer_block_2_sequential_2_dense_27_biasadd_readvariableop_resource:	?V
Gtransformer_block_2_layer_normalization_5_mul_3_readvariableop_resource:	?T
Etransformer_block_2_layer_normalization_5_add_readvariableop_resource:	?;
'dense_28_matmul_readvariableop_resource:
??7
(dense_28_biasadd_readvariableop_resource:	?;
'dense_29_matmul_readvariableop_resource:
??7
(dense_29_biasadd_readvariableop_resource:	?
identity??dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?dense_29/MatMul/ReadVariableOp?;token_and_position_embedding_2/embedding_4/embedding_lookup?;token_and_position_embedding_2/embedding_5/embedding_lookup?<transformer_block_2/layer_normalization_4/add/ReadVariableOp?>transformer_block_2/layer_normalization_4/mul_3/ReadVariableOp?<transformer_block_2/layer_normalization_5/add/ReadVariableOp?>transformer_block_2/layer_normalization_5/mul_3/ReadVariableOp?Jtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp?Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOp?Jtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp?Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOp?Jtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp?Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOp?Jtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp?Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOp?@transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOp?Btransformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOp?@transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOp?Btransformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOp?@transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOp?Btransformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOp?@transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOp?Btransformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOpZ
$token_and_position_embedding_2/ShapeShapeinputs*
T0*
_output_shapes
:?
2token_and_position_embedding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????~
4token_and_position_embedding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,token_and_position_embedding_2/strided_sliceStridedSlice-token_and_position_embedding_2/Shape:output:0;token_and_position_embedding_2/strided_slice/stack:output:0=token_and_position_embedding_2/strided_slice/stack_1:output:0=token_and_position_embedding_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
$token_and_position_embedding_2/rangeRange3token_and_position_embedding_2/range/start:output:05token_and_position_embedding_2/strided_slice:output:03token_and_position_embedding_2/range/delta:output:0*
_output_shapes	
:??
;token_and_position_embedding_2/embedding_5/embedding_lookupResourceGatherBtoken_and_position_embedding_2_embedding_5_embedding_lookup_108615-token_and_position_embedding_2/range:output:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/108615* 
_output_shapes
:
??*
dtype0?
Dtoken_and_position_embedding_2/embedding_5/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_5/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/108615* 
_output_shapes
:
???
Ftoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
???
;token_and_position_embedding_2/embedding_4/embedding_lookupResourceGatherBtoken_and_position_embedding_2_embedding_4_embedding_lookup_108620inputs*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/108620*-
_output_shapes
:???????????*
dtype0?
Dtoken_and_position_embedding_2/embedding_4/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_4/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/108620*-
_output_shapes
:????????????
Ftoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
"token_and_position_embedding_2/addAddV2Otoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:????????????
0transformer_block_2/multi_head_attention_2/ShapeShape&token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
>transformer_block_2/multi_head_attention_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@transformer_block_2/multi_head_attention_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@transformer_block_2/multi_head_attention_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_2/multi_head_attention_2/strided_sliceStridedSlice9transformer_block_2/multi_head_attention_2/Shape:output:0Gtransformer_block_2/multi_head_attention_2/strided_slice/stack:output:0Itransformer_block_2/multi_head_attention_2/strided_slice/stack_1:output:0Itransformer_block_2/multi_head_attention_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_2_multi_head_attention_2_dense_20_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_2/multi_head_attention_2/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_2/multi_head_attention_2/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ShapeShape&token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2GatherV2Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/free:output:0Ttransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1GatherV2Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/axes:output:0Vtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ProdProdOtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2:output:0Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Prod_1ProdQtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1:output:0Ntransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concatConcatV2Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/free:output:0Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/axes:output:0Rtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_20/Tensordot/stackPackKtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Prod:output:0Mtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/transpose	Transpose&token_and_position_embedding_2/add:z:0Mtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReshapeReshapeKtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/transpose:y:0Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/MatMulMatMulNtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Reshape:output:0Ttransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1ConcatV2Otransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2:output:0Ntransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_2:output:0Ttransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/multi_head_attention_2/dense_20/TensordotReshapeNtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/MatMul:product:0Otransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_2_multi_head_attention_2_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_2/multi_head_attention_2/dense_20/BiasAddBiasAddFtransformer_block_2/multi_head_attention_2/dense_20/Tensordot:output:0Rtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_2/multi_head_attention_2/dense_20/ReluReluDtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_2_multi_head_attention_2_dense_21_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_2/multi_head_attention_2/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_2/multi_head_attention_2/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ShapeShape&token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2GatherV2Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/free:output:0Ttransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1GatherV2Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/axes:output:0Vtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ProdProdOtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2:output:0Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Prod_1ProdQtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1:output:0Ntransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concatConcatV2Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/free:output:0Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/axes:output:0Rtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_21/Tensordot/stackPackKtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Prod:output:0Mtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/transpose	Transpose&token_and_position_embedding_2/add:z:0Mtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReshapeReshapeKtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/transpose:y:0Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/MatMulMatMulNtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Reshape:output:0Ttransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1ConcatV2Otransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2:output:0Ntransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_2:output:0Ttransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/multi_head_attention_2/dense_21/TensordotReshapeNtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/MatMul:product:0Otransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_2_multi_head_attention_2_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_2/multi_head_attention_2/dense_21/BiasAddBiasAddFtransformer_block_2/multi_head_attention_2/dense_21/Tensordot:output:0Rtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_2/multi_head_attention_2/dense_21/ReluReluDtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_2_multi_head_attention_2_dense_22_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_2/multi_head_attention_2/dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_2/multi_head_attention_2/dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ShapeShape&token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2GatherV2Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/free:output:0Ttransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1GatherV2Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/axes:output:0Vtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ProdProdOtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2:output:0Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Prod_1ProdQtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1:output:0Ntransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concatConcatV2Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/free:output:0Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/axes:output:0Rtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_22/Tensordot/stackPackKtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Prod:output:0Mtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/transpose	Transpose&token_and_position_embedding_2/add:z:0Mtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReshapeReshapeKtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/transpose:y:0Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/MatMulMatMulNtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Reshape:output:0Ttransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1ConcatV2Otransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2:output:0Ntransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_2:output:0Ttransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/multi_head_attention_2/dense_22/TensordotReshapeNtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/MatMul:product:0Otransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_2_multi_head_attention_2_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_2/multi_head_attention_2/dense_22/BiasAddBiasAddFtransformer_block_2/multi_head_attention_2/dense_22/Tensordot:output:0Rtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_2/multi_head_attention_2/dense_22/ReluReluDtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
:transformer_block_2/multi_head_attention_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????|
:transformer_block_2/multi_head_attention_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :|
:transformer_block_2/multi_head_attention_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
8transformer_block_2/multi_head_attention_2/Reshape/shapePackAtransformer_block_2/multi_head_attention_2/strided_slice:output:0Ctransformer_block_2/multi_head_attention_2/Reshape/shape/1:output:0Ctransformer_block_2/multi_head_attention_2/Reshape/shape/2:output:0Ctransformer_block_2/multi_head_attention_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
2transformer_block_2/multi_head_attention_2/ReshapeReshapeFtransformer_block_2/multi_head_attention_2/dense_20/Relu:activations:0Atransformer_block_2/multi_head_attention_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
9transformer_block_2/multi_head_attention_2/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
4transformer_block_2/multi_head_attention_2/transpose	Transpose;transformer_block_2/multi_head_attention_2/Reshape:output:0Btransformer_block_2/multi_head_attention_2/transpose/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
<transformer_block_2/multi_head_attention_2/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????~
<transformer_block_2/multi_head_attention_2/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<transformer_block_2/multi_head_attention_2/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/multi_head_attention_2/Reshape_1/shapePackAtransformer_block_2/multi_head_attention_2/strided_slice:output:0Etransformer_block_2/multi_head_attention_2/Reshape_1/shape/1:output:0Etransformer_block_2/multi_head_attention_2/Reshape_1/shape/2:output:0Etransformer_block_2/multi_head_attention_2/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_2/multi_head_attention_2/Reshape_1ReshapeFtransformer_block_2/multi_head_attention_2/dense_21/Relu:activations:0Ctransformer_block_2/multi_head_attention_2/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
;transformer_block_2/multi_head_attention_2/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_2/multi_head_attention_2/transpose_1	Transpose=transformer_block_2/multi_head_attention_2/Reshape_1:output:0Dtransformer_block_2/multi_head_attention_2/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
<transformer_block_2/multi_head_attention_2/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????~
<transformer_block_2/multi_head_attention_2/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<transformer_block_2/multi_head_attention_2/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/multi_head_attention_2/Reshape_2/shapePackAtransformer_block_2/multi_head_attention_2/strided_slice:output:0Etransformer_block_2/multi_head_attention_2/Reshape_2/shape/1:output:0Etransformer_block_2/multi_head_attention_2/Reshape_2/shape/2:output:0Etransformer_block_2/multi_head_attention_2/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_2/multi_head_attention_2/Reshape_2ReshapeFtransformer_block_2/multi_head_attention_2/dense_22/Relu:activations:0Ctransformer_block_2/multi_head_attention_2/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
;transformer_block_2/multi_head_attention_2/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_2/multi_head_attention_2/transpose_2	Transpose=transformer_block_2/multi_head_attention_2/Reshape_2:output:0Dtransformer_block_2/multi_head_attention_2/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
1transformer_block_2/multi_head_attention_2/MatMulBatchMatMulV28transformer_block_2/multi_head_attention_2/transpose:y:0:transformer_block_2/multi_head_attention_2/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(?
2transformer_block_2/multi_head_attention_2/Shape_1Shape:transformer_block_2/multi_head_attention_2/transpose_1:y:0*
T0*
_output_shapes
:?
@transformer_block_2/multi_head_attention_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Btransformer_block_2/multi_head_attention_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_2/multi_head_attention_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:transformer_block_2/multi_head_attention_2/strided_slice_1StridedSlice;transformer_block_2/multi_head_attention_2/Shape_1:output:0Itransformer_block_2/multi_head_attention_2/strided_slice_1/stack:output:0Ktransformer_block_2/multi_head_attention_2/strided_slice_1/stack_1:output:0Ktransformer_block_2/multi_head_attention_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_2/multi_head_attention_2/CastCastCtransformer_block_2/multi_head_attention_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
/transformer_block_2/multi_head_attention_2/SqrtSqrt3transformer_block_2/multi_head_attention_2/Cast:y:0*
T0*
_output_shapes
: ?
2transformer_block_2/multi_head_attention_2/truedivRealDiv:transformer_block_2/multi_head_attention_2/MatMul:output:03transformer_block_2/multi_head_attention_2/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
2transformer_block_2/multi_head_attention_2/SoftmaxSoftmax6transformer_block_2/multi_head_attention_2/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
3transformer_block_2/multi_head_attention_2/MatMul_1BatchMatMulV2<transformer_block_2/multi_head_attention_2/Softmax:softmax:0:transformer_block_2/multi_head_attention_2/transpose_2:y:0*
T0*8
_output_shapes&
$:"?????????????????? ?
;transformer_block_2/multi_head_attention_2/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_2/multi_head_attention_2/transpose_3	Transpose<transformer_block_2/multi_head_attention_2/MatMul_1:output:0Dtransformer_block_2/multi_head_attention_2/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
<transformer_block_2/multi_head_attention_2/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
<transformer_block_2/multi_head_attention_2/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
:transformer_block_2/multi_head_attention_2/Reshape_3/shapePackAtransformer_block_2/multi_head_attention_2/strided_slice:output:0Etransformer_block_2/multi_head_attention_2/Reshape_3/shape/1:output:0Etransformer_block_2/multi_head_attention_2/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_2/multi_head_attention_2/Reshape_3Reshape:transformer_block_2/multi_head_attention_2/transpose_3:y:0Ctransformer_block_2/multi_head_attention_2/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_2_multi_head_attention_2_dense_23_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_2/multi_head_attention_2/dense_23/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_2/multi_head_attention_2/dense_23/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ShapeShape=transformer_block_2/multi_head_attention_2/Reshape_3:output:0*
T0*
_output_shapes
:?
Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2GatherV2Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/free:output:0Ttransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1GatherV2Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/axes:output:0Vtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ProdProdOtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2:output:0Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Prod_1ProdQtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1:output:0Ntransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concatConcatV2Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/free:output:0Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/axes:output:0Rtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_23/Tensordot/stackPackKtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Prod:output:0Mtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/transpose	Transpose=transformer_block_2/multi_head_attention_2/Reshape_3:output:0Mtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
Etransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReshapeReshapeKtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/transpose:y:0Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/MatMulMatMulNtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Reshape:output:0Ttransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1ConcatV2Otransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2:output:0Ntransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_2:output:0Ttransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/multi_head_attention_2/dense_23/TensordotReshapeNtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/MatMul:product:0Otransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
Jtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_2_multi_head_attention_2_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_2/multi_head_attention_2/dense_23/BiasAddBiasAddFtransformer_block_2/multi_head_attention_2/dense_23/Tensordot:output:0Rtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
8transformer_block_2/multi_head_attention_2/dense_23/ReluReluDtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????q
,transformer_block_2/dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
*transformer_block_2/dropout_17/dropout/MulMulFtransformer_block_2/multi_head_attention_2/dense_23/Relu:activations:05transformer_block_2/dropout_17/dropout/Const:output:0*
T0*5
_output_shapes#
!:????????????????????
,transformer_block_2/dropout_17/dropout/ShapeShapeFtransformer_block_2/multi_head_attention_2/dense_23/Relu:activations:0*
T0*
_output_shapes
:?
Ctransformer_block_2/dropout_17/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_2/dropout_17/dropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype0*
seed2????z
5transformer_block_2/dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
3transformer_block_2/dropout_17/dropout/GreaterEqualGreaterEqualLtransformer_block_2/dropout_17/dropout/random_uniform/RandomUniform:output:0>transformer_block_2/dropout_17/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:????????????????????
+transformer_block_2/dropout_17/dropout/CastCast7transformer_block_2/dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:????????????????????
,transformer_block_2/dropout_17/dropout/Mul_1Mul.transformer_block_2/dropout_17/dropout/Mul:z:0/transformer_block_2/dropout_17/dropout/Cast:y:0*
T0*5
_output_shapes#
!:????????????????????
transformer_block_2/addAddV2&token_and_position_embedding_2/add:z:00transformer_block_2/dropout_17/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????z
/transformer_block_2/layer_normalization_4/ShapeShapetransformer_block_2/add:z:0*
T0*
_output_shapes
:?
=transformer_block_2/layer_normalization_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?transformer_block_2/layer_normalization_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?transformer_block_2/layer_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block_2/layer_normalization_4/strided_sliceStridedSlice8transformer_block_2/layer_normalization_4/Shape:output:0Ftransformer_block_2/layer_normalization_4/strided_slice/stack:output:0Htransformer_block_2/layer_normalization_4/strided_slice/stack_1:output:0Htransformer_block_2/layer_normalization_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/transformer_block_2/layer_normalization_4/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
-transformer_block_2/layer_normalization_4/mulMul8transformer_block_2/layer_normalization_4/mul/x:output:0@transformer_block_2/layer_normalization_4/strided_slice:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/layer_normalization_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_2/layer_normalization_4/strided_slice_1StridedSlice8transformer_block_2/layer_normalization_4/Shape:output:0Htransformer_block_2/layer_normalization_4/strided_slice_1/stack:output:0Jtransformer_block_2/layer_normalization_4/strided_slice_1/stack_1:output:0Jtransformer_block_2/layer_normalization_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_2/layer_normalization_4/mul_1Mul1transformer_block_2/layer_normalization_4/mul:z:0Btransformer_block_2/layer_normalization_4/strided_slice_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/layer_normalization_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_2/layer_normalization_4/strided_slice_2StridedSlice8transformer_block_2/layer_normalization_4/Shape:output:0Htransformer_block_2/layer_normalization_4/strided_slice_2/stack:output:0Jtransformer_block_2/layer_normalization_4/strided_slice_2/stack_1:output:0Jtransformer_block_2/layer_normalization_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1transformer_block_2/layer_normalization_4/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
/transformer_block_2/layer_normalization_4/mul_2Mul:transformer_block_2/layer_normalization_4/mul_2/x:output:0Btransformer_block_2/layer_normalization_4/strided_slice_2:output:0*
T0*
_output_shapes
: {
9transformer_block_2/layer_normalization_4/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :{
9transformer_block_2/layer_normalization_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
7transformer_block_2/layer_normalization_4/Reshape/shapePackBtransformer_block_2/layer_normalization_4/Reshape/shape/0:output:03transformer_block_2/layer_normalization_4/mul_1:z:03transformer_block_2/layer_normalization_4/mul_2:z:0Btransformer_block_2/layer_normalization_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
1transformer_block_2/layer_normalization_4/ReshapeReshapetransformer_block_2/add:z:0@transformer_block_2/layer_normalization_4/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
5transformer_block_2/layer_normalization_4/ones/packedPack3transformer_block_2/layer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:y
4transformer_block_2/layer_normalization_4/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
.transformer_block_2/layer_normalization_4/onesFill>transformer_block_2/layer_normalization_4/ones/packed:output:0=transformer_block_2/layer_normalization_4/ones/Const:output:0*
T0*#
_output_shapes
:??????????
6transformer_block_2/layer_normalization_4/zeros/packedPack3transformer_block_2/layer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:z
5transformer_block_2/layer_normalization_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
/transformer_block_2/layer_normalization_4/zerosFill?transformer_block_2/layer_normalization_4/zeros/packed:output:0>transformer_block_2/layer_normalization_4/zeros/Const:output:0*
T0*#
_output_shapes
:?????????r
/transformer_block_2/layer_normalization_4/ConstConst*
_output_shapes
: *
dtype0*
valueB t
1transformer_block_2/layer_normalization_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
:transformer_block_2/layer_normalization_4/FusedBatchNormV3FusedBatchNormV3:transformer_block_2/layer_normalization_4/Reshape:output:07transformer_block_2/layer_normalization_4/ones:output:08transformer_block_2/layer_normalization_4/zeros:output:08transformer_block_2/layer_normalization_4/Const:output:0:transformer_block_2/layer_normalization_4/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
3transformer_block_2/layer_normalization_4/Reshape_1Reshape>transformer_block_2/layer_normalization_4/FusedBatchNormV3:y:08transformer_block_2/layer_normalization_4/Shape:output:0*
T0*-
_output_shapes
:????????????
>transformer_block_2/layer_normalization_4/mul_3/ReadVariableOpReadVariableOpGtransformer_block_2_layer_normalization_4_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/transformer_block_2/layer_normalization_4/mul_3Mul<transformer_block_2/layer_normalization_4/Reshape_1:output:0Ftransformer_block_2/layer_normalization_4/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
<transformer_block_2/layer_normalization_4/add/ReadVariableOpReadVariableOpEtransformer_block_2_layer_normalization_4_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-transformer_block_2/layer_normalization_4/addAddV23transformer_block_2/layer_normalization_4/mul_3:z:0Dtransformer_block_2/layer_normalization_4/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
Btransformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_2_sequential_2_dense_24_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_2/sequential_2/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_2/sequential_2/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_2/sequential_2/dense_24/Tensordot/ShapeShape1transformer_block_2/layer_normalization_4/add:z:0*
T0*
_output_shapes
:?
Atransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2GatherV2Btransformer_block_2/sequential_2/dense_24/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_24/Tensordot/free:output:0Jtransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1GatherV2Btransformer_block_2/sequential_2/dense_24/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_24/Tensordot/axes:output:0Ltransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_2/sequential_2/dense_24/Tensordot/ProdProdEtransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2:output:0Btransformer_block_2/sequential_2/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_2/sequential_2/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_2/sequential_2/dense_24/Tensordot/Prod_1ProdGtransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1:output:0Dtransformer_block_2/sequential_2/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/sequential_2/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/sequential_2/dense_24/Tensordot/concatConcatV2Atransformer_block_2/sequential_2/dense_24/Tensordot/free:output:0Atransformer_block_2/sequential_2/dense_24/Tensordot/axes:output:0Htransformer_block_2/sequential_2/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_24/Tensordot/stackPackAtransformer_block_2/sequential_2/dense_24/Tensordot/Prod:output:0Ctransformer_block_2/sequential_2/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/sequential_2/dense_24/Tensordot/transpose	Transpose1transformer_block_2/layer_normalization_4/add:z:0Ctransformer_block_2/sequential_2/dense_24/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_2/sequential_2/dense_24/Tensordot/ReshapeReshapeAtransformer_block_2/sequential_2/dense_24/Tensordot/transpose:y:0Btransformer_block_2/sequential_2/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_2/sequential_2/dense_24/Tensordot/MatMulMatMulDtransformer_block_2/sequential_2/dense_24/Tensordot/Reshape:output:0Jtransformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_2/sequential_2/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_2/sequential_2/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_24/Tensordot/concat_1ConcatV2Etransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2:output:0Dtransformer_block_2/sequential_2/dense_24/Tensordot/Const_2:output:0Jtransformer_block_2/sequential_2/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_2/sequential_2/dense_24/TensordotReshapeDtransformer_block_2/sequential_2/dense_24/Tensordot/MatMul:product:0Etransformer_block_2/sequential_2/dense_24/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_2_sequential_2_dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_2/sequential_2/dense_24/BiasAddBiasAdd<transformer_block_2/sequential_2/dense_24/Tensordot:output:0Htransformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_2/sequential_2/dense_24/ReluRelu:transformer_block_2/sequential_2/dense_24/BiasAdd:output:0*
T0*-
_output_shapes
:???????????~
9transformer_block_2/sequential_2/dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
7transformer_block_2/sequential_2/dropout_14/dropout/MulMul<transformer_block_2/sequential_2/dense_24/Relu:activations:0Btransformer_block_2/sequential_2/dropout_14/dropout/Const:output:0*
T0*-
_output_shapes
:????????????
9transformer_block_2/sequential_2/dropout_14/dropout/ShapeShape<transformer_block_2/sequential_2/dense_24/Relu:activations:0*
T0*
_output_shapes
:?
Ptransformer_block_2/sequential_2/dropout_14/dropout/random_uniform/RandomUniformRandomUniformBtransformer_block_2/sequential_2/dropout_14/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2?
Btransformer_block_2/sequential_2/dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
@transformer_block_2/sequential_2/dropout_14/dropout/GreaterEqualGreaterEqualYtransformer_block_2/sequential_2/dropout_14/dropout/random_uniform/RandomUniform:output:0Ktransformer_block_2/sequential_2/dropout_14/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
8transformer_block_2/sequential_2/dropout_14/dropout/CastCastDtransformer_block_2/sequential_2/dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
9transformer_block_2/sequential_2/dropout_14/dropout/Mul_1Mul;transformer_block_2/sequential_2/dropout_14/dropout/Mul:z:0<transformer_block_2/sequential_2/dropout_14/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
Btransformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_2_sequential_2_dense_25_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_2/sequential_2/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_2/sequential_2/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_2/sequential_2/dense_25/Tensordot/ShapeShape=transformer_block_2/sequential_2/dropout_14/dropout/Mul_1:z:0*
T0*
_output_shapes
:?
Atransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2GatherV2Btransformer_block_2/sequential_2/dense_25/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_25/Tensordot/free:output:0Jtransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1GatherV2Btransformer_block_2/sequential_2/dense_25/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_25/Tensordot/axes:output:0Ltransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_2/sequential_2/dense_25/Tensordot/ProdProdEtransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2:output:0Btransformer_block_2/sequential_2/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_2/sequential_2/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_2/sequential_2/dense_25/Tensordot/Prod_1ProdGtransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1:output:0Dtransformer_block_2/sequential_2/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/sequential_2/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/sequential_2/dense_25/Tensordot/concatConcatV2Atransformer_block_2/sequential_2/dense_25/Tensordot/free:output:0Atransformer_block_2/sequential_2/dense_25/Tensordot/axes:output:0Htransformer_block_2/sequential_2/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_25/Tensordot/stackPackAtransformer_block_2/sequential_2/dense_25/Tensordot/Prod:output:0Ctransformer_block_2/sequential_2/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/sequential_2/dense_25/Tensordot/transpose	Transpose=transformer_block_2/sequential_2/dropout_14/dropout/Mul_1:z:0Ctransformer_block_2/sequential_2/dense_25/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_2/sequential_2/dense_25/Tensordot/ReshapeReshapeAtransformer_block_2/sequential_2/dense_25/Tensordot/transpose:y:0Btransformer_block_2/sequential_2/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_2/sequential_2/dense_25/Tensordot/MatMulMatMulDtransformer_block_2/sequential_2/dense_25/Tensordot/Reshape:output:0Jtransformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_2/sequential_2/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_2/sequential_2/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_25/Tensordot/concat_1ConcatV2Etransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2:output:0Dtransformer_block_2/sequential_2/dense_25/Tensordot/Const_2:output:0Jtransformer_block_2/sequential_2/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_2/sequential_2/dense_25/TensordotReshapeDtransformer_block_2/sequential_2/dense_25/Tensordot/MatMul:product:0Etransformer_block_2/sequential_2/dense_25/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_2_sequential_2_dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_2/sequential_2/dense_25/BiasAddBiasAdd<transformer_block_2/sequential_2/dense_25/Tensordot:output:0Htransformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_2/sequential_2/dense_25/ReluRelu:transformer_block_2/sequential_2/dense_25/BiasAdd:output:0*
T0*-
_output_shapes
:???????????~
9transformer_block_2/sequential_2/dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
7transformer_block_2/sequential_2/dropout_15/dropout/MulMul<transformer_block_2/sequential_2/dense_25/Relu:activations:0Btransformer_block_2/sequential_2/dropout_15/dropout/Const:output:0*
T0*-
_output_shapes
:????????????
9transformer_block_2/sequential_2/dropout_15/dropout/ShapeShape<transformer_block_2/sequential_2/dense_25/Relu:activations:0*
T0*
_output_shapes
:?
Ptransformer_block_2/sequential_2/dropout_15/dropout/random_uniform/RandomUniformRandomUniformBtransformer_block_2/sequential_2/dropout_15/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2?
Btransformer_block_2/sequential_2/dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
@transformer_block_2/sequential_2/dropout_15/dropout/GreaterEqualGreaterEqualYtransformer_block_2/sequential_2/dropout_15/dropout/random_uniform/RandomUniform:output:0Ktransformer_block_2/sequential_2/dropout_15/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
8transformer_block_2/sequential_2/dropout_15/dropout/CastCastDtransformer_block_2/sequential_2/dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
9transformer_block_2/sequential_2/dropout_15/dropout/Mul_1Mul;transformer_block_2/sequential_2/dropout_15/dropout/Mul:z:0<transformer_block_2/sequential_2/dropout_15/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
Btransformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_2_sequential_2_dense_26_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_2/sequential_2/dense_26/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_2/sequential_2/dense_26/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_2/sequential_2/dense_26/Tensordot/ShapeShape=transformer_block_2/sequential_2/dropout_15/dropout/Mul_1:z:0*
T0*
_output_shapes
:?
Atransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2GatherV2Btransformer_block_2/sequential_2/dense_26/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_26/Tensordot/free:output:0Jtransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1GatherV2Btransformer_block_2/sequential_2/dense_26/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_26/Tensordot/axes:output:0Ltransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_26/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_2/sequential_2/dense_26/Tensordot/ProdProdEtransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2:output:0Btransformer_block_2/sequential_2/dense_26/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_2/sequential_2/dense_26/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_2/sequential_2/dense_26/Tensordot/Prod_1ProdGtransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1:output:0Dtransformer_block_2/sequential_2/dense_26/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/sequential_2/dense_26/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/sequential_2/dense_26/Tensordot/concatConcatV2Atransformer_block_2/sequential_2/dense_26/Tensordot/free:output:0Atransformer_block_2/sequential_2/dense_26/Tensordot/axes:output:0Htransformer_block_2/sequential_2/dense_26/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_26/Tensordot/stackPackAtransformer_block_2/sequential_2/dense_26/Tensordot/Prod:output:0Ctransformer_block_2/sequential_2/dense_26/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/sequential_2/dense_26/Tensordot/transpose	Transpose=transformer_block_2/sequential_2/dropout_15/dropout/Mul_1:z:0Ctransformer_block_2/sequential_2/dense_26/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_2/sequential_2/dense_26/Tensordot/ReshapeReshapeAtransformer_block_2/sequential_2/dense_26/Tensordot/transpose:y:0Btransformer_block_2/sequential_2/dense_26/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_2/sequential_2/dense_26/Tensordot/MatMulMatMulDtransformer_block_2/sequential_2/dense_26/Tensordot/Reshape:output:0Jtransformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_2/sequential_2/dense_26/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_2/sequential_2/dense_26/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_26/Tensordot/concat_1ConcatV2Etransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2:output:0Dtransformer_block_2/sequential_2/dense_26/Tensordot/Const_2:output:0Jtransformer_block_2/sequential_2/dense_26/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_2/sequential_2/dense_26/TensordotReshapeDtransformer_block_2/sequential_2/dense_26/Tensordot/MatMul:product:0Etransformer_block_2/sequential_2/dense_26/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_2_sequential_2_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_2/sequential_2/dense_26/BiasAddBiasAdd<transformer_block_2/sequential_2/dense_26/Tensordot:output:0Htransformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_2/sequential_2/dense_26/ReluRelu:transformer_block_2/sequential_2/dense_26/BiasAdd:output:0*
T0*-
_output_shapes
:???????????~
9transformer_block_2/sequential_2/dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
7transformer_block_2/sequential_2/dropout_16/dropout/MulMul<transformer_block_2/sequential_2/dense_26/Relu:activations:0Btransformer_block_2/sequential_2/dropout_16/dropout/Const:output:0*
T0*-
_output_shapes
:????????????
9transformer_block_2/sequential_2/dropout_16/dropout/ShapeShape<transformer_block_2/sequential_2/dense_26/Relu:activations:0*
T0*
_output_shapes
:?
Ptransformer_block_2/sequential_2/dropout_16/dropout/random_uniform/RandomUniformRandomUniformBtransformer_block_2/sequential_2/dropout_16/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2?
Btransformer_block_2/sequential_2/dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
@transformer_block_2/sequential_2/dropout_16/dropout/GreaterEqualGreaterEqualYtransformer_block_2/sequential_2/dropout_16/dropout/random_uniform/RandomUniform:output:0Ktransformer_block_2/sequential_2/dropout_16/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
8transformer_block_2/sequential_2/dropout_16/dropout/CastCastDtransformer_block_2/sequential_2/dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
9transformer_block_2/sequential_2/dropout_16/dropout/Mul_1Mul;transformer_block_2/sequential_2/dropout_16/dropout/Mul:z:0<transformer_block_2/sequential_2/dropout_16/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
Btransformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_2_sequential_2_dense_27_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_2/sequential_2/dense_27/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_2/sequential_2/dense_27/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_2/sequential_2/dense_27/Tensordot/ShapeShape=transformer_block_2/sequential_2/dropout_16/dropout/Mul_1:z:0*
T0*
_output_shapes
:?
Atransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2GatherV2Btransformer_block_2/sequential_2/dense_27/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_27/Tensordot/free:output:0Jtransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1GatherV2Btransformer_block_2/sequential_2/dense_27/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_27/Tensordot/axes:output:0Ltransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_27/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_2/sequential_2/dense_27/Tensordot/ProdProdEtransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2:output:0Btransformer_block_2/sequential_2/dense_27/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_2/sequential_2/dense_27/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_2/sequential_2/dense_27/Tensordot/Prod_1ProdGtransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1:output:0Dtransformer_block_2/sequential_2/dense_27/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/sequential_2/dense_27/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/sequential_2/dense_27/Tensordot/concatConcatV2Atransformer_block_2/sequential_2/dense_27/Tensordot/free:output:0Atransformer_block_2/sequential_2/dense_27/Tensordot/axes:output:0Htransformer_block_2/sequential_2/dense_27/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_27/Tensordot/stackPackAtransformer_block_2/sequential_2/dense_27/Tensordot/Prod:output:0Ctransformer_block_2/sequential_2/dense_27/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/sequential_2/dense_27/Tensordot/transpose	Transpose=transformer_block_2/sequential_2/dropout_16/dropout/Mul_1:z:0Ctransformer_block_2/sequential_2/dense_27/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_2/sequential_2/dense_27/Tensordot/ReshapeReshapeAtransformer_block_2/sequential_2/dense_27/Tensordot/transpose:y:0Btransformer_block_2/sequential_2/dense_27/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_2/sequential_2/dense_27/Tensordot/MatMulMatMulDtransformer_block_2/sequential_2/dense_27/Tensordot/Reshape:output:0Jtransformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_2/sequential_2/dense_27/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_2/sequential_2/dense_27/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_27/Tensordot/concat_1ConcatV2Etransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2:output:0Dtransformer_block_2/sequential_2/dense_27/Tensordot/Const_2:output:0Jtransformer_block_2/sequential_2/dense_27/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_2/sequential_2/dense_27/TensordotReshapeDtransformer_block_2/sequential_2/dense_27/Tensordot/MatMul:product:0Etransformer_block_2/sequential_2/dense_27/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_2_sequential_2_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_2/sequential_2/dense_27/BiasAddBiasAdd<transformer_block_2/sequential_2/dense_27/Tensordot:output:0Htransformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????q
,transformer_block_2/dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
*transformer_block_2/dropout_18/dropout/MulMul:transformer_block_2/sequential_2/dense_27/BiasAdd:output:05transformer_block_2/dropout_18/dropout/Const:output:0*
T0*-
_output_shapes
:????????????
,transformer_block_2/dropout_18/dropout/ShapeShape:transformer_block_2/sequential_2/dense_27/BiasAdd:output:0*
T0*
_output_shapes
:?
Ctransformer_block_2/dropout_18/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_2/dropout_18/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2z
5transformer_block_2/dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
3transformer_block_2/dropout_18/dropout/GreaterEqualGreaterEqualLtransformer_block_2/dropout_18/dropout/random_uniform/RandomUniform:output:0>transformer_block_2/dropout_18/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
+transformer_block_2/dropout_18/dropout/CastCast7transformer_block_2/dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
,transformer_block_2/dropout_18/dropout/Mul_1Mul.transformer_block_2/dropout_18/dropout/Mul:z:0/transformer_block_2/dropout_18/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
transformer_block_2/add_1AddV21transformer_block_2/layer_normalization_4/add:z:00transformer_block_2/dropout_18/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????|
/transformer_block_2/layer_normalization_5/ShapeShapetransformer_block_2/add_1:z:0*
T0*
_output_shapes
:?
=transformer_block_2/layer_normalization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?transformer_block_2/layer_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?transformer_block_2/layer_normalization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block_2/layer_normalization_5/strided_sliceStridedSlice8transformer_block_2/layer_normalization_5/Shape:output:0Ftransformer_block_2/layer_normalization_5/strided_slice/stack:output:0Htransformer_block_2/layer_normalization_5/strided_slice/stack_1:output:0Htransformer_block_2/layer_normalization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/transformer_block_2/layer_normalization_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
-transformer_block_2/layer_normalization_5/mulMul8transformer_block_2/layer_normalization_5/mul/x:output:0@transformer_block_2/layer_normalization_5/strided_slice:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/layer_normalization_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_2/layer_normalization_5/strided_slice_1StridedSlice8transformer_block_2/layer_normalization_5/Shape:output:0Htransformer_block_2/layer_normalization_5/strided_slice_1/stack:output:0Jtransformer_block_2/layer_normalization_5/strided_slice_1/stack_1:output:0Jtransformer_block_2/layer_normalization_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_2/layer_normalization_5/mul_1Mul1transformer_block_2/layer_normalization_5/mul:z:0Btransformer_block_2/layer_normalization_5/strided_slice_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/layer_normalization_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_2/layer_normalization_5/strided_slice_2StridedSlice8transformer_block_2/layer_normalization_5/Shape:output:0Htransformer_block_2/layer_normalization_5/strided_slice_2/stack:output:0Jtransformer_block_2/layer_normalization_5/strided_slice_2/stack_1:output:0Jtransformer_block_2/layer_normalization_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1transformer_block_2/layer_normalization_5/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
/transformer_block_2/layer_normalization_5/mul_2Mul:transformer_block_2/layer_normalization_5/mul_2/x:output:0Btransformer_block_2/layer_normalization_5/strided_slice_2:output:0*
T0*
_output_shapes
: {
9transformer_block_2/layer_normalization_5/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :{
9transformer_block_2/layer_normalization_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
7transformer_block_2/layer_normalization_5/Reshape/shapePackBtransformer_block_2/layer_normalization_5/Reshape/shape/0:output:03transformer_block_2/layer_normalization_5/mul_1:z:03transformer_block_2/layer_normalization_5/mul_2:z:0Btransformer_block_2/layer_normalization_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
1transformer_block_2/layer_normalization_5/ReshapeReshapetransformer_block_2/add_1:z:0@transformer_block_2/layer_normalization_5/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
5transformer_block_2/layer_normalization_5/ones/packedPack3transformer_block_2/layer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:y
4transformer_block_2/layer_normalization_5/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
.transformer_block_2/layer_normalization_5/onesFill>transformer_block_2/layer_normalization_5/ones/packed:output:0=transformer_block_2/layer_normalization_5/ones/Const:output:0*
T0*#
_output_shapes
:??????????
6transformer_block_2/layer_normalization_5/zeros/packedPack3transformer_block_2/layer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:z
5transformer_block_2/layer_normalization_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
/transformer_block_2/layer_normalization_5/zerosFill?transformer_block_2/layer_normalization_5/zeros/packed:output:0>transformer_block_2/layer_normalization_5/zeros/Const:output:0*
T0*#
_output_shapes
:?????????r
/transformer_block_2/layer_normalization_5/ConstConst*
_output_shapes
: *
dtype0*
valueB t
1transformer_block_2/layer_normalization_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
:transformer_block_2/layer_normalization_5/FusedBatchNormV3FusedBatchNormV3:transformer_block_2/layer_normalization_5/Reshape:output:07transformer_block_2/layer_normalization_5/ones:output:08transformer_block_2/layer_normalization_5/zeros:output:08transformer_block_2/layer_normalization_5/Const:output:0:transformer_block_2/layer_normalization_5/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
3transformer_block_2/layer_normalization_5/Reshape_1Reshape>transformer_block_2/layer_normalization_5/FusedBatchNormV3:y:08transformer_block_2/layer_normalization_5/Shape:output:0*
T0*-
_output_shapes
:????????????
>transformer_block_2/layer_normalization_5/mul_3/ReadVariableOpReadVariableOpGtransformer_block_2_layer_normalization_5_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/transformer_block_2/layer_normalization_5/mul_3Mul<transformer_block_2/layer_normalization_5/Reshape_1:output:0Ftransformer_block_2/layer_normalization_5/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
<transformer_block_2/layer_normalization_5/add/ReadVariableOpReadVariableOpEtransformer_block_2_layer_normalization_5_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-transformer_block_2/layer_normalization_5/addAddV23transformer_block_2/layer_normalization_5/mul_3:z:0Dtransformer_block_2/layer_normalization_5/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????n
,global_max_pooling1d_2/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d_2/MaxMax1transformer_block_2/layer_normalization_5/add:z:05global_max_pooling1d_2/Max/reduction_indices:output:0*
T0*(
_output_shapes
:??????????]
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_19/dropout/MulMul#global_max_pooling1d_2/Max:output:0!dropout_19/dropout/Const:output:0*
T0*(
_output_shapes
:??????????k
dropout_19/dropout/ShapeShape#global_max_pooling1d_2/Max:output:0*
T0*
_output_shapes
:?
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed2f
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_19/dropout/CastCast#dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_19/dropout/Mul_1Muldropout_19/dropout/Mul:z:0dropout_19/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_28/MatMulMatMuldropout_19/dropout/Mul_1:z:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*(
_output_shapes
:??????????]
dropout_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_20/dropout/MulMuldense_28/Relu:activations:0!dropout_20/dropout/Const:output:0*
T0*(
_output_shapes
:??????????c
dropout_20/dropout/ShapeShapedense_28/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_20/dropout/random_uniform/RandomUniformRandomUniform!dropout_20/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed2f
!dropout_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout_20/dropout/GreaterEqualGreaterEqual8dropout_20/dropout/random_uniform/RandomUniform:output:0*dropout_20/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_20/dropout/CastCast#dropout_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_20/dropout/Mul_1Muldropout_20/dropout/Mul:z:0dropout_20/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_29/MatMulMatMuldropout_20/dropout/Mul_1:z:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
dense_29/SoftmaxSoftmaxdense_29/BiasAdd:output:0*
T0*(
_output_shapes
:??????????j
IdentityIdentitydense_29/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp<^token_and_position_embedding_2/embedding_4/embedding_lookup<^token_and_position_embedding_2/embedding_5/embedding_lookup=^transformer_block_2/layer_normalization_4/add/ReadVariableOp?^transformer_block_2/layer_normalization_4/mul_3/ReadVariableOp=^transformer_block_2/layer_normalization_5/add/ReadVariableOp?^transformer_block_2/layer_normalization_5/mul_3/ReadVariableOpK^transformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpM^transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOpK^transformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpM^transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOpK^transformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpM^transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOpK^transformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpM^transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOpA^transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOpC^transformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOpA^transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOpC^transformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOpA^transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOpC^transformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOpA^transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOpC^transformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2z
;token_and_position_embedding_2/embedding_4/embedding_lookup;token_and_position_embedding_2/embedding_4/embedding_lookup2z
;token_and_position_embedding_2/embedding_5/embedding_lookup;token_and_position_embedding_2/embedding_5/embedding_lookup2|
<transformer_block_2/layer_normalization_4/add/ReadVariableOp<transformer_block_2/layer_normalization_4/add/ReadVariableOp2?
>transformer_block_2/layer_normalization_4/mul_3/ReadVariableOp>transformer_block_2/layer_normalization_4/mul_3/ReadVariableOp2|
<transformer_block_2/layer_normalization_5/add/ReadVariableOp<transformer_block_2/layer_normalization_5/add/ReadVariableOp2?
>transformer_block_2/layer_normalization_5/mul_3/ReadVariableOp>transformer_block_2/layer_normalization_5/mul_3/ReadVariableOp2?
Jtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpJtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp2?
Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOp2?
Jtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpJtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp2?
Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOp2?
Jtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpJtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp2?
Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOp2?
Jtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpJtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp2?
Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOp2?
@transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOp@transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOp2?
Btransformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOpBtransformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOp2?
@transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOp@transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOp2?
Btransformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOpBtransformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOp2?
@transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOp@transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOp2?
Btransformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOpBtransformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOp2?
@transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOp@transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOp2?
Btransformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOpBtransformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?$
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_106471

inputs#
dense_24_106447:
??
dense_24_106449:	?#
dense_25_106453:
??
dense_25_106455:	?#
dense_26_106459:
??
dense_26_106461:	?#
dense_27_106465:
??
dense_27_106467:	?
identity?? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall? dense_27/StatefulPartitionedCall?"dropout_14/StatefulPartitionedCall?"dropout_15/StatefulPartitionedCall?"dropout_16/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCallinputsdense_24_106447dense_24_106449*
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
D__inference_dense_24_layer_call_and_return_conditional_losses_106155?
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_106408?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0dense_25_106453dense_25_106455*
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
D__inference_dense_25_layer_call_and_return_conditional_losses_106199?
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_106375?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0dense_26_106459dense_26_106461*
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
D__inference_dense_26_layer_call_and_return_conditional_losses_106243?
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0#^dropout_15/StatefulPartitionedCall*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_106342?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0dense_27_106465dense_27_106467*
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
D__inference_dense_27_layer_call_and_return_conditional_losses_106286~
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_19_layer_call_fn_109928

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
F__inference_dropout_19_layer_call_and_return_conditional_losses_107017a
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

e
F__inference_dropout_14_layer_call_and_return_conditional_losses_106408

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
??
?#
!__inference__wrapped_model_106117
input_3^
Jmodel_2_token_and_position_embedding_2_embedding_5_embedding_lookup_105736:
??^
Jmodel_2_token_and_position_embedding_2_embedding_4_embedding_lookup_105741:
??q
]model_2_transformer_block_2_multi_head_attention_2_dense_20_tensordot_readvariableop_resource:
??j
[model_2_transformer_block_2_multi_head_attention_2_dense_20_biasadd_readvariableop_resource:	?q
]model_2_transformer_block_2_multi_head_attention_2_dense_21_tensordot_readvariableop_resource:
??j
[model_2_transformer_block_2_multi_head_attention_2_dense_21_biasadd_readvariableop_resource:	?q
]model_2_transformer_block_2_multi_head_attention_2_dense_22_tensordot_readvariableop_resource:
??j
[model_2_transformer_block_2_multi_head_attention_2_dense_22_biasadd_readvariableop_resource:	?q
]model_2_transformer_block_2_multi_head_attention_2_dense_23_tensordot_readvariableop_resource:
??j
[model_2_transformer_block_2_multi_head_attention_2_dense_23_biasadd_readvariableop_resource:	?^
Omodel_2_transformer_block_2_layer_normalization_4_mul_3_readvariableop_resource:	?\
Mmodel_2_transformer_block_2_layer_normalization_4_add_readvariableop_resource:	?g
Smodel_2_transformer_block_2_sequential_2_dense_24_tensordot_readvariableop_resource:
??`
Qmodel_2_transformer_block_2_sequential_2_dense_24_biasadd_readvariableop_resource:	?g
Smodel_2_transformer_block_2_sequential_2_dense_25_tensordot_readvariableop_resource:
??`
Qmodel_2_transformer_block_2_sequential_2_dense_25_biasadd_readvariableop_resource:	?g
Smodel_2_transformer_block_2_sequential_2_dense_26_tensordot_readvariableop_resource:
??`
Qmodel_2_transformer_block_2_sequential_2_dense_26_biasadd_readvariableop_resource:	?g
Smodel_2_transformer_block_2_sequential_2_dense_27_tensordot_readvariableop_resource:
??`
Qmodel_2_transformer_block_2_sequential_2_dense_27_biasadd_readvariableop_resource:	?^
Omodel_2_transformer_block_2_layer_normalization_5_mul_3_readvariableop_resource:	?\
Mmodel_2_transformer_block_2_layer_normalization_5_add_readvariableop_resource:	?C
/model_2_dense_28_matmul_readvariableop_resource:
???
0model_2_dense_28_biasadd_readvariableop_resource:	?C
/model_2_dense_29_matmul_readvariableop_resource:
???
0model_2_dense_29_biasadd_readvariableop_resource:	?
identity??'model_2/dense_28/BiasAdd/ReadVariableOp?&model_2/dense_28/MatMul/ReadVariableOp?'model_2/dense_29/BiasAdd/ReadVariableOp?&model_2/dense_29/MatMul/ReadVariableOp?Cmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup?Cmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup?Dmodel_2/transformer_block_2/layer_normalization_4/add/ReadVariableOp?Fmodel_2/transformer_block_2/layer_normalization_4/mul_3/ReadVariableOp?Dmodel_2/transformer_block_2/layer_normalization_5/add/ReadVariableOp?Fmodel_2/transformer_block_2/layer_normalization_5/mul_3/ReadVariableOp?Rmodel_2/transformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp?Tmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOp?Rmodel_2/transformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp?Tmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOp?Rmodel_2/transformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp?Tmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOp?Rmodel_2/transformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp?Tmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOp?Hmodel_2/transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOp?Jmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOp?Hmodel_2/transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOp?Jmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOp?Hmodel_2/transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOp?Jmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOp?Hmodel_2/transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOp?Jmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOpc
,model_2/token_and_position_embedding_2/ShapeShapeinput_3*
T0*
_output_shapes
:?
:model_2/token_and_position_embedding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
<model_2/token_and_position_embedding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
<model_2/token_and_position_embedding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4model_2/token_and_position_embedding_2/strided_sliceStridedSlice5model_2/token_and_position_embedding_2/Shape:output:0Cmodel_2/token_and_position_embedding_2/strided_slice/stack:output:0Emodel_2/token_and_position_embedding_2/strided_slice/stack_1:output:0Emodel_2/token_and_position_embedding_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2model_2/token_and_position_embedding_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2model_2/token_and_position_embedding_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
,model_2/token_and_position_embedding_2/rangeRange;model_2/token_and_position_embedding_2/range/start:output:0=model_2/token_and_position_embedding_2/strided_slice:output:0;model_2/token_and_position_embedding_2/range/delta:output:0*
_output_shapes	
:??
Cmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookupResourceGatherJmodel_2_token_and_position_embedding_2_embedding_5_embedding_lookup_1057365model_2/token_and_position_embedding_2/range:output:0*
Tindices0*]
_classS
QOloc:@model_2/token_and_position_embedding_2/embedding_5/embedding_lookup/105736* 
_output_shapes
:
??*
dtype0?
Lmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/IdentityIdentityLmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup:output:0*
T0*]
_classS
QOloc:@model_2/token_and_position_embedding_2/embedding_5/embedding_lookup/105736* 
_output_shapes
:
???
Nmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1IdentityUmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
???
Cmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookupResourceGatherJmodel_2_token_and_position_embedding_2_embedding_4_embedding_lookup_105741input_3*
Tindices0*]
_classS
QOloc:@model_2/token_and_position_embedding_2/embedding_4/embedding_lookup/105741*-
_output_shapes
:???????????*
dtype0?
Lmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/IdentityIdentityLmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup:output:0*
T0*]
_classS
QOloc:@model_2/token_and_position_embedding_2/embedding_4/embedding_lookup/105741*-
_output_shapes
:????????????
Nmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1IdentityUmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
*model_2/token_and_position_embedding_2/addAddV2Wmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1:output:0Wmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:????????????
8model_2/transformer_block_2/multi_head_attention_2/ShapeShape.model_2/token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
Fmodel_2/transformer_block_2/multi_head_attention_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Hmodel_2/transformer_block_2/multi_head_attention_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Hmodel_2/transformer_block_2/multi_head_attention_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
@model_2/transformer_block_2/multi_head_attention_2/strided_sliceStridedSliceAmodel_2/transformer_block_2/multi_head_attention_2/Shape:output:0Omodel_2/transformer_block_2/multi_head_attention_2/strided_slice/stack:output:0Qmodel_2/transformer_block_2/multi_head_attention_2/strided_slice/stack_1:output:0Qmodel_2/transformer_block_2/multi_head_attention_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Tmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOpReadVariableOp]model_2_transformer_block_2_multi_head_attention_2_dense_20_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ShapeShape.model_2/token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
Smodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2GatherV2Tmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/Shape:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/free:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Umodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Pmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1GatherV2Tmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/Shape:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/axes:output:0^model_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ProdProdWmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2:output:0Tmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/Prod_1ProdYmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1:output:0Vmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Qmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/concatConcatV2Smodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/free:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/axes:output:0Zmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/stackPackSmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/Prod:output:0Umodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Omodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/transpose	Transpose.model_2/token_and_position_embedding_2/add:z:0Umodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReshapeReshapeSmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/transpose:y:0Tmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/MatMulMatMulVmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/Reshape:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Smodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1ConcatV2Wmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2:output:0Vmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_2:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Emodel_2/transformer_block_2/multi_head_attention_2/dense_20/TensordotReshapeVmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/MatMul:product:0Wmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Rmodel_2/transformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpReadVariableOp[model_2_transformer_block_2_multi_head_attention_2_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Cmodel_2/transformer_block_2/multi_head_attention_2/dense_20/BiasAddBiasAddNmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot:output:0Zmodel_2/transformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
@model_2/transformer_block_2/multi_head_attention_2/dense_20/ReluReluLmodel_2/transformer_block_2/multi_head_attention_2/dense_20/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Tmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOpReadVariableOp]model_2_transformer_block_2_multi_head_attention_2_dense_21_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ShapeShape.model_2/token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
Smodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2GatherV2Tmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/Shape:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/free:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Umodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Pmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1GatherV2Tmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/Shape:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/axes:output:0^model_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ProdProdWmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2:output:0Tmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/Prod_1ProdYmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1:output:0Vmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Qmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/concatConcatV2Smodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/free:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/axes:output:0Zmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/stackPackSmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/Prod:output:0Umodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Omodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/transpose	Transpose.model_2/token_and_position_embedding_2/add:z:0Umodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReshapeReshapeSmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/transpose:y:0Tmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/MatMulMatMulVmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/Reshape:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Smodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1ConcatV2Wmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2:output:0Vmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_2:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Emodel_2/transformer_block_2/multi_head_attention_2/dense_21/TensordotReshapeVmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/MatMul:product:0Wmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Rmodel_2/transformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpReadVariableOp[model_2_transformer_block_2_multi_head_attention_2_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Cmodel_2/transformer_block_2/multi_head_attention_2/dense_21/BiasAddBiasAddNmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot:output:0Zmodel_2/transformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
@model_2/transformer_block_2/multi_head_attention_2/dense_21/ReluReluLmodel_2/transformer_block_2/multi_head_attention_2/dense_21/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Tmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOpReadVariableOp]model_2_transformer_block_2_multi_head_attention_2_dense_22_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ShapeShape.model_2/token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
Smodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2GatherV2Tmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/Shape:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/free:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Umodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Pmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1GatherV2Tmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/Shape:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/axes:output:0^model_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ProdProdWmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2:output:0Tmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/Prod_1ProdYmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1:output:0Vmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Qmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/concatConcatV2Smodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/free:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/axes:output:0Zmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/stackPackSmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/Prod:output:0Umodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Omodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/transpose	Transpose.model_2/token_and_position_embedding_2/add:z:0Umodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReshapeReshapeSmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/transpose:y:0Tmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/MatMulMatMulVmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/Reshape:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Smodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1ConcatV2Wmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2:output:0Vmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_2:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Emodel_2/transformer_block_2/multi_head_attention_2/dense_22/TensordotReshapeVmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/MatMul:product:0Wmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Rmodel_2/transformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpReadVariableOp[model_2_transformer_block_2_multi_head_attention_2_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Cmodel_2/transformer_block_2/multi_head_attention_2/dense_22/BiasAddBiasAddNmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot:output:0Zmodel_2/transformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
@model_2/transformer_block_2/multi_head_attention_2/dense_22/ReluReluLmodel_2/transformer_block_2/multi_head_attention_2/dense_22/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Bmodel_2/transformer_block_2/multi_head_attention_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
??????????
Bmodel_2/transformer_block_2/multi_head_attention_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Bmodel_2/transformer_block_2/multi_head_attention_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
@model_2/transformer_block_2/multi_head_attention_2/Reshape/shapePackImodel_2/transformer_block_2/multi_head_attention_2/strided_slice:output:0Kmodel_2/transformer_block_2/multi_head_attention_2/Reshape/shape/1:output:0Kmodel_2/transformer_block_2/multi_head_attention_2/Reshape/shape/2:output:0Kmodel_2/transformer_block_2/multi_head_attention_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
:model_2/transformer_block_2/multi_head_attention_2/ReshapeReshapeNmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Relu:activations:0Imodel_2/transformer_block_2/multi_head_attention_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
Amodel_2/transformer_block_2/multi_head_attention_2/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
<model_2/transformer_block_2/multi_head_attention_2/transpose	TransposeCmodel_2/transformer_block_2/multi_head_attention_2/Reshape:output:0Jmodel_2/transformer_block_2/multi_head_attention_2/transpose/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
Dmodel_2/transformer_block_2/multi_head_attention_2/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
??????????
Dmodel_2/transformer_block_2/multi_head_attention_2/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Dmodel_2/transformer_block_2/multi_head_attention_2/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
Bmodel_2/transformer_block_2/multi_head_attention_2/Reshape_1/shapePackImodel_2/transformer_block_2/multi_head_attention_2/strided_slice:output:0Mmodel_2/transformer_block_2/multi_head_attention_2/Reshape_1/shape/1:output:0Mmodel_2/transformer_block_2/multi_head_attention_2/Reshape_1/shape/2:output:0Mmodel_2/transformer_block_2/multi_head_attention_2/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
<model_2/transformer_block_2/multi_head_attention_2/Reshape_1ReshapeNmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Relu:activations:0Kmodel_2/transformer_block_2/multi_head_attention_2/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
Cmodel_2/transformer_block_2/multi_head_attention_2/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
>model_2/transformer_block_2/multi_head_attention_2/transpose_1	TransposeEmodel_2/transformer_block_2/multi_head_attention_2/Reshape_1:output:0Lmodel_2/transformer_block_2/multi_head_attention_2/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
Dmodel_2/transformer_block_2/multi_head_attention_2/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
??????????
Dmodel_2/transformer_block_2/multi_head_attention_2/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Dmodel_2/transformer_block_2/multi_head_attention_2/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
Bmodel_2/transformer_block_2/multi_head_attention_2/Reshape_2/shapePackImodel_2/transformer_block_2/multi_head_attention_2/strided_slice:output:0Mmodel_2/transformer_block_2/multi_head_attention_2/Reshape_2/shape/1:output:0Mmodel_2/transformer_block_2/multi_head_attention_2/Reshape_2/shape/2:output:0Mmodel_2/transformer_block_2/multi_head_attention_2/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
<model_2/transformer_block_2/multi_head_attention_2/Reshape_2ReshapeNmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Relu:activations:0Kmodel_2/transformer_block_2/multi_head_attention_2/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
Cmodel_2/transformer_block_2/multi_head_attention_2/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
>model_2/transformer_block_2/multi_head_attention_2/transpose_2	TransposeEmodel_2/transformer_block_2/multi_head_attention_2/Reshape_2:output:0Lmodel_2/transformer_block_2/multi_head_attention_2/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
9model_2/transformer_block_2/multi_head_attention_2/MatMulBatchMatMulV2@model_2/transformer_block_2/multi_head_attention_2/transpose:y:0Bmodel_2/transformer_block_2/multi_head_attention_2/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(?
:model_2/transformer_block_2/multi_head_attention_2/Shape_1ShapeBmodel_2/transformer_block_2/multi_head_attention_2/transpose_1:y:0*
T0*
_output_shapes
:?
Hmodel_2/transformer_block_2/multi_head_attention_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Jmodel_2/transformer_block_2/multi_head_attention_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Jmodel_2/transformer_block_2/multi_head_attention_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Bmodel_2/transformer_block_2/multi_head_attention_2/strided_slice_1StridedSliceCmodel_2/transformer_block_2/multi_head_attention_2/Shape_1:output:0Qmodel_2/transformer_block_2/multi_head_attention_2/strided_slice_1/stack:output:0Smodel_2/transformer_block_2/multi_head_attention_2/strided_slice_1/stack_1:output:0Smodel_2/transformer_block_2/multi_head_attention_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7model_2/transformer_block_2/multi_head_attention_2/CastCastKmodel_2/transformer_block_2/multi_head_attention_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
7model_2/transformer_block_2/multi_head_attention_2/SqrtSqrt;model_2/transformer_block_2/multi_head_attention_2/Cast:y:0*
T0*
_output_shapes
: ?
:model_2/transformer_block_2/multi_head_attention_2/truedivRealDivBmodel_2/transformer_block_2/multi_head_attention_2/MatMul:output:0;model_2/transformer_block_2/multi_head_attention_2/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
:model_2/transformer_block_2/multi_head_attention_2/SoftmaxSoftmax>model_2/transformer_block_2/multi_head_attention_2/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
;model_2/transformer_block_2/multi_head_attention_2/MatMul_1BatchMatMulV2Dmodel_2/transformer_block_2/multi_head_attention_2/Softmax:softmax:0Bmodel_2/transformer_block_2/multi_head_attention_2/transpose_2:y:0*
T0*8
_output_shapes&
$:"?????????????????? ?
Cmodel_2/transformer_block_2/multi_head_attention_2/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
>model_2/transformer_block_2/multi_head_attention_2/transpose_3	TransposeDmodel_2/transformer_block_2/multi_head_attention_2/MatMul_1:output:0Lmodel_2/transformer_block_2/multi_head_attention_2/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
Dmodel_2/transformer_block_2/multi_head_attention_2/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
??????????
Dmodel_2/transformer_block_2/multi_head_attention_2/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
Bmodel_2/transformer_block_2/multi_head_attention_2/Reshape_3/shapePackImodel_2/transformer_block_2/multi_head_attention_2/strided_slice:output:0Mmodel_2/transformer_block_2/multi_head_attention_2/Reshape_3/shape/1:output:0Mmodel_2/transformer_block_2/multi_head_attention_2/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
<model_2/transformer_block_2/multi_head_attention_2/Reshape_3ReshapeBmodel_2/transformer_block_2/multi_head_attention_2/transpose_3:y:0Kmodel_2/transformer_block_2/multi_head_attention_2/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
Tmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOpReadVariableOp]model_2_transformer_block_2_multi_head_attention_2_dense_23_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ShapeShapeEmodel_2/transformer_block_2/multi_head_attention_2/Reshape_3:output:0*
T0*
_output_shapes
:?
Smodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2GatherV2Tmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/Shape:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/free:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Umodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Pmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1GatherV2Tmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/Shape:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/axes:output:0^model_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Jmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ProdProdWmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2:output:0Tmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/Prod_1ProdYmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1:output:0Vmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Qmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/concatConcatV2Smodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/free:output:0Smodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/axes:output:0Zmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Kmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/stackPackSmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/Prod:output:0Umodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Omodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/transpose	TransposeEmodel_2/transformer_block_2/multi_head_attention_2/Reshape_3:output:0Umodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReshapeReshapeSmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/transpose:y:0Tmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Lmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/MatMulMatMulVmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/Reshape:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Smodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1ConcatV2Wmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2:output:0Vmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_2:output:0\model_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Emodel_2/transformer_block_2/multi_head_attention_2/dense_23/TensordotReshapeVmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/MatMul:product:0Wmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
Rmodel_2/transformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpReadVariableOp[model_2_transformer_block_2_multi_head_attention_2_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Cmodel_2/transformer_block_2/multi_head_attention_2/dense_23/BiasAddBiasAddNmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot:output:0Zmodel_2/transformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
@model_2/transformer_block_2/multi_head_attention_2/dense_23/ReluReluLmodel_2/transformer_block_2/multi_head_attention_2/dense_23/BiasAdd:output:0*
T0*5
_output_shapes#
!:????????????????????
/model_2/transformer_block_2/dropout_17/IdentityIdentityNmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Relu:activations:0*
T0*5
_output_shapes#
!:????????????????????
model_2/transformer_block_2/addAddV2.model_2/token_and_position_embedding_2/add:z:08model_2/transformer_block_2/dropout_17/Identity:output:0*
T0*-
_output_shapes
:????????????
7model_2/transformer_block_2/layer_normalization_4/ShapeShape#model_2/transformer_block_2/add:z:0*
T0*
_output_shapes
:?
Emodel_2/transformer_block_2/layer_normalization_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Gmodel_2/transformer_block_2/layer_normalization_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Gmodel_2/transformer_block_2/layer_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
?model_2/transformer_block_2/layer_normalization_4/strided_sliceStridedSlice@model_2/transformer_block_2/layer_normalization_4/Shape:output:0Nmodel_2/transformer_block_2/layer_normalization_4/strided_slice/stack:output:0Pmodel_2/transformer_block_2/layer_normalization_4/strided_slice/stack_1:output:0Pmodel_2/transformer_block_2/layer_normalization_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
7model_2/transformer_block_2/layer_normalization_4/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
5model_2/transformer_block_2/layer_normalization_4/mulMul@model_2/transformer_block_2/layer_normalization_4/mul/x:output:0Hmodel_2/transformer_block_2/layer_normalization_4/strided_slice:output:0*
T0*
_output_shapes
: ?
Gmodel_2/transformer_block_2/layer_normalization_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Imodel_2/transformer_block_2/layer_normalization_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Imodel_2/transformer_block_2/layer_normalization_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Amodel_2/transformer_block_2/layer_normalization_4/strided_slice_1StridedSlice@model_2/transformer_block_2/layer_normalization_4/Shape:output:0Pmodel_2/transformer_block_2/layer_normalization_4/strided_slice_1/stack:output:0Rmodel_2/transformer_block_2/layer_normalization_4/strided_slice_1/stack_1:output:0Rmodel_2/transformer_block_2/layer_normalization_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7model_2/transformer_block_2/layer_normalization_4/mul_1Mul9model_2/transformer_block_2/layer_normalization_4/mul:z:0Jmodel_2/transformer_block_2/layer_normalization_4/strided_slice_1:output:0*
T0*
_output_shapes
: ?
Gmodel_2/transformer_block_2/layer_normalization_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Imodel_2/transformer_block_2/layer_normalization_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Imodel_2/transformer_block_2/layer_normalization_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Amodel_2/transformer_block_2/layer_normalization_4/strided_slice_2StridedSlice@model_2/transformer_block_2/layer_normalization_4/Shape:output:0Pmodel_2/transformer_block_2/layer_normalization_4/strided_slice_2/stack:output:0Rmodel_2/transformer_block_2/layer_normalization_4/strided_slice_2/stack_1:output:0Rmodel_2/transformer_block_2/layer_normalization_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9model_2/transformer_block_2/layer_normalization_4/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
7model_2/transformer_block_2/layer_normalization_4/mul_2MulBmodel_2/transformer_block_2/layer_normalization_4/mul_2/x:output:0Jmodel_2/transformer_block_2/layer_normalization_4/strided_slice_2:output:0*
T0*
_output_shapes
: ?
Amodel_2/transformer_block_2/layer_normalization_4/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :?
Amodel_2/transformer_block_2/layer_normalization_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
?model_2/transformer_block_2/layer_normalization_4/Reshape/shapePackJmodel_2/transformer_block_2/layer_normalization_4/Reshape/shape/0:output:0;model_2/transformer_block_2/layer_normalization_4/mul_1:z:0;model_2/transformer_block_2/layer_normalization_4/mul_2:z:0Jmodel_2/transformer_block_2/layer_normalization_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
9model_2/transformer_block_2/layer_normalization_4/ReshapeReshape#model_2/transformer_block_2/add:z:0Hmodel_2/transformer_block_2/layer_normalization_4/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
=model_2/transformer_block_2/layer_normalization_4/ones/packedPack;model_2/transformer_block_2/layer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:?
<model_2/transformer_block_2/layer_normalization_4/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
6model_2/transformer_block_2/layer_normalization_4/onesFillFmodel_2/transformer_block_2/layer_normalization_4/ones/packed:output:0Emodel_2/transformer_block_2/layer_normalization_4/ones/Const:output:0*
T0*#
_output_shapes
:??????????
>model_2/transformer_block_2/layer_normalization_4/zeros/packedPack;model_2/transformer_block_2/layer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:?
=model_2/transformer_block_2/layer_normalization_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
7model_2/transformer_block_2/layer_normalization_4/zerosFillGmodel_2/transformer_block_2/layer_normalization_4/zeros/packed:output:0Fmodel_2/transformer_block_2/layer_normalization_4/zeros/Const:output:0*
T0*#
_output_shapes
:?????????z
7model_2/transformer_block_2/layer_normalization_4/ConstConst*
_output_shapes
: *
dtype0*
valueB |
9model_2/transformer_block_2/layer_normalization_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
Bmodel_2/transformer_block_2/layer_normalization_4/FusedBatchNormV3FusedBatchNormV3Bmodel_2/transformer_block_2/layer_normalization_4/Reshape:output:0?model_2/transformer_block_2/layer_normalization_4/ones:output:0@model_2/transformer_block_2/layer_normalization_4/zeros:output:0@model_2/transformer_block_2/layer_normalization_4/Const:output:0Bmodel_2/transformer_block_2/layer_normalization_4/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
;model_2/transformer_block_2/layer_normalization_4/Reshape_1ReshapeFmodel_2/transformer_block_2/layer_normalization_4/FusedBatchNormV3:y:0@model_2/transformer_block_2/layer_normalization_4/Shape:output:0*
T0*-
_output_shapes
:????????????
Fmodel_2/transformer_block_2/layer_normalization_4/mul_3/ReadVariableOpReadVariableOpOmodel_2_transformer_block_2_layer_normalization_4_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7model_2/transformer_block_2/layer_normalization_4/mul_3MulDmodel_2/transformer_block_2/layer_normalization_4/Reshape_1:output:0Nmodel_2/transformer_block_2/layer_normalization_4/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
Dmodel_2/transformer_block_2/layer_normalization_4/add/ReadVariableOpReadVariableOpMmodel_2_transformer_block_2_layer_normalization_4_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5model_2/transformer_block_2/layer_normalization_4/addAddV2;model_2/transformer_block_2/layer_normalization_4/mul_3:z:0Lmodel_2/transformer_block_2/layer_normalization_4/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
Jmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOpReadVariableOpSmodel_2_transformer_block_2_sequential_2_dense_24_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
@model_2/transformer_block_2/sequential_2/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
@model_2/transformer_block_2/sequential_2/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Amodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/ShapeShape9model_2/transformer_block_2/layer_normalization_4/add:z:0*
T0*
_output_shapes
:?
Imodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2GatherV2Jmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/Shape:output:0Imodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/free:output:0Rmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Fmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1GatherV2Jmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/Shape:output:0Imodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/axes:output:0Tmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Amodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@model_2/transformer_block_2/sequential_2/dense_24/Tensordot/ProdProdMmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2:output:0Jmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Cmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Bmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/Prod_1ProdOmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1:output:0Lmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Gmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Bmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/concatConcatV2Imodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/free:output:0Imodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/axes:output:0Pmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Amodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/stackPackImodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/Prod:output:0Kmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Emodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/transpose	Transpose9model_2/transformer_block_2/layer_normalization_4/add:z:0Kmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Cmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/ReshapeReshapeImodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/transpose:y:0Jmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Bmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/MatMulMatMulLmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/Reshape:output:0Rmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Cmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Imodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/concat_1ConcatV2Mmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2:output:0Lmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/Const_2:output:0Rmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
;model_2/transformer_block_2/sequential_2/dense_24/TensordotReshapeLmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/MatMul:product:0Mmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Hmodel_2/transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOpReadVariableOpQmodel_2_transformer_block_2_sequential_2_dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9model_2/transformer_block_2/sequential_2/dense_24/BiasAddBiasAddDmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot:output:0Pmodel_2/transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
6model_2/transformer_block_2/sequential_2/dense_24/ReluReluBmodel_2/transformer_block_2/sequential_2/dense_24/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
<model_2/transformer_block_2/sequential_2/dropout_14/IdentityIdentityDmodel_2/transformer_block_2/sequential_2/dense_24/Relu:activations:0*
T0*-
_output_shapes
:????????????
Jmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOpReadVariableOpSmodel_2_transformer_block_2_sequential_2_dense_25_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
@model_2/transformer_block_2/sequential_2/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
@model_2/transformer_block_2/sequential_2/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Amodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/ShapeShapeEmodel_2/transformer_block_2/sequential_2/dropout_14/Identity:output:0*
T0*
_output_shapes
:?
Imodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2GatherV2Jmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/Shape:output:0Imodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/free:output:0Rmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Fmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1GatherV2Jmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/Shape:output:0Imodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/axes:output:0Tmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Amodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@model_2/transformer_block_2/sequential_2/dense_25/Tensordot/ProdProdMmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2:output:0Jmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Cmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Bmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/Prod_1ProdOmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1:output:0Lmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Gmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Bmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/concatConcatV2Imodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/free:output:0Imodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/axes:output:0Pmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Amodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/stackPackImodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/Prod:output:0Kmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Emodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/transpose	TransposeEmodel_2/transformer_block_2/sequential_2/dropout_14/Identity:output:0Kmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Cmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/ReshapeReshapeImodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/transpose:y:0Jmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Bmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/MatMulMatMulLmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/Reshape:output:0Rmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Cmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Imodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/concat_1ConcatV2Mmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2:output:0Lmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/Const_2:output:0Rmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
;model_2/transformer_block_2/sequential_2/dense_25/TensordotReshapeLmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/MatMul:product:0Mmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Hmodel_2/transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOpReadVariableOpQmodel_2_transformer_block_2_sequential_2_dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9model_2/transformer_block_2/sequential_2/dense_25/BiasAddBiasAddDmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot:output:0Pmodel_2/transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
6model_2/transformer_block_2/sequential_2/dense_25/ReluReluBmodel_2/transformer_block_2/sequential_2/dense_25/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
<model_2/transformer_block_2/sequential_2/dropout_15/IdentityIdentityDmodel_2/transformer_block_2/sequential_2/dense_25/Relu:activations:0*
T0*-
_output_shapes
:????????????
Jmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOpReadVariableOpSmodel_2_transformer_block_2_sequential_2_dense_26_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
@model_2/transformer_block_2/sequential_2/dense_26/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
@model_2/transformer_block_2/sequential_2/dense_26/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Amodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/ShapeShapeEmodel_2/transformer_block_2/sequential_2/dropout_15/Identity:output:0*
T0*
_output_shapes
:?
Imodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2GatherV2Jmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/Shape:output:0Imodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/free:output:0Rmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Fmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1GatherV2Jmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/Shape:output:0Imodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/axes:output:0Tmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Amodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@model_2/transformer_block_2/sequential_2/dense_26/Tensordot/ProdProdMmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2:output:0Jmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Cmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Bmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/Prod_1ProdOmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1:output:0Lmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Gmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Bmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/concatConcatV2Imodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/free:output:0Imodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/axes:output:0Pmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Amodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/stackPackImodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/Prod:output:0Kmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Emodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/transpose	TransposeEmodel_2/transformer_block_2/sequential_2/dropout_15/Identity:output:0Kmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Cmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/ReshapeReshapeImodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/transpose:y:0Jmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Bmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/MatMulMatMulLmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/Reshape:output:0Rmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Cmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Imodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/concat_1ConcatV2Mmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2:output:0Lmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/Const_2:output:0Rmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
;model_2/transformer_block_2/sequential_2/dense_26/TensordotReshapeLmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/MatMul:product:0Mmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Hmodel_2/transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOpReadVariableOpQmodel_2_transformer_block_2_sequential_2_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9model_2/transformer_block_2/sequential_2/dense_26/BiasAddBiasAddDmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot:output:0Pmodel_2/transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
6model_2/transformer_block_2/sequential_2/dense_26/ReluReluBmodel_2/transformer_block_2/sequential_2/dense_26/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
<model_2/transformer_block_2/sequential_2/dropout_16/IdentityIdentityDmodel_2/transformer_block_2/sequential_2/dense_26/Relu:activations:0*
T0*-
_output_shapes
:????????????
Jmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOpReadVariableOpSmodel_2_transformer_block_2_sequential_2_dense_27_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
@model_2/transformer_block_2/sequential_2/dense_27/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
@model_2/transformer_block_2/sequential_2/dense_27/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Amodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/ShapeShapeEmodel_2/transformer_block_2/sequential_2/dropout_16/Identity:output:0*
T0*
_output_shapes
:?
Imodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2GatherV2Jmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/Shape:output:0Imodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/free:output:0Rmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Kmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Fmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1GatherV2Jmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/Shape:output:0Imodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/axes:output:0Tmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Amodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
@model_2/transformer_block_2/sequential_2/dense_27/Tensordot/ProdProdMmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2:output:0Jmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Cmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Bmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/Prod_1ProdOmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1:output:0Lmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Gmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Bmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/concatConcatV2Imodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/free:output:0Imodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/axes:output:0Pmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Amodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/stackPackImodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/Prod:output:0Kmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Emodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/transpose	TransposeEmodel_2/transformer_block_2/sequential_2/dropout_16/Identity:output:0Kmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Cmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/ReshapeReshapeImodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/transpose:y:0Jmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Bmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/MatMulMatMulLmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/Reshape:output:0Rmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Cmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Imodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/concat_1ConcatV2Mmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2:output:0Lmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/Const_2:output:0Rmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
;model_2/transformer_block_2/sequential_2/dense_27/TensordotReshapeLmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/MatMul:product:0Mmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Hmodel_2/transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOpReadVariableOpQmodel_2_transformer_block_2_sequential_2_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9model_2/transformer_block_2/sequential_2/dense_27/BiasAddBiasAddDmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot:output:0Pmodel_2/transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
/model_2/transformer_block_2/dropout_18/IdentityIdentityBmodel_2/transformer_block_2/sequential_2/dense_27/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
!model_2/transformer_block_2/add_1AddV29model_2/transformer_block_2/layer_normalization_4/add:z:08model_2/transformer_block_2/dropout_18/Identity:output:0*
T0*-
_output_shapes
:????????????
7model_2/transformer_block_2/layer_normalization_5/ShapeShape%model_2/transformer_block_2/add_1:z:0*
T0*
_output_shapes
:?
Emodel_2/transformer_block_2/layer_normalization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Gmodel_2/transformer_block_2/layer_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Gmodel_2/transformer_block_2/layer_normalization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
?model_2/transformer_block_2/layer_normalization_5/strided_sliceStridedSlice@model_2/transformer_block_2/layer_normalization_5/Shape:output:0Nmodel_2/transformer_block_2/layer_normalization_5/strided_slice/stack:output:0Pmodel_2/transformer_block_2/layer_normalization_5/strided_slice/stack_1:output:0Pmodel_2/transformer_block_2/layer_normalization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
7model_2/transformer_block_2/layer_normalization_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
5model_2/transformer_block_2/layer_normalization_5/mulMul@model_2/transformer_block_2/layer_normalization_5/mul/x:output:0Hmodel_2/transformer_block_2/layer_normalization_5/strided_slice:output:0*
T0*
_output_shapes
: ?
Gmodel_2/transformer_block_2/layer_normalization_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Imodel_2/transformer_block_2/layer_normalization_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Imodel_2/transformer_block_2/layer_normalization_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Amodel_2/transformer_block_2/layer_normalization_5/strided_slice_1StridedSlice@model_2/transformer_block_2/layer_normalization_5/Shape:output:0Pmodel_2/transformer_block_2/layer_normalization_5/strided_slice_1/stack:output:0Rmodel_2/transformer_block_2/layer_normalization_5/strided_slice_1/stack_1:output:0Rmodel_2/transformer_block_2/layer_normalization_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7model_2/transformer_block_2/layer_normalization_5/mul_1Mul9model_2/transformer_block_2/layer_normalization_5/mul:z:0Jmodel_2/transformer_block_2/layer_normalization_5/strided_slice_1:output:0*
T0*
_output_shapes
: ?
Gmodel_2/transformer_block_2/layer_normalization_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Imodel_2/transformer_block_2/layer_normalization_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Imodel_2/transformer_block_2/layer_normalization_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Amodel_2/transformer_block_2/layer_normalization_5/strided_slice_2StridedSlice@model_2/transformer_block_2/layer_normalization_5/Shape:output:0Pmodel_2/transformer_block_2/layer_normalization_5/strided_slice_2/stack:output:0Rmodel_2/transformer_block_2/layer_normalization_5/strided_slice_2/stack_1:output:0Rmodel_2/transformer_block_2/layer_normalization_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9model_2/transformer_block_2/layer_normalization_5/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
7model_2/transformer_block_2/layer_normalization_5/mul_2MulBmodel_2/transformer_block_2/layer_normalization_5/mul_2/x:output:0Jmodel_2/transformer_block_2/layer_normalization_5/strided_slice_2:output:0*
T0*
_output_shapes
: ?
Amodel_2/transformer_block_2/layer_normalization_5/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :?
Amodel_2/transformer_block_2/layer_normalization_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
?model_2/transformer_block_2/layer_normalization_5/Reshape/shapePackJmodel_2/transformer_block_2/layer_normalization_5/Reshape/shape/0:output:0;model_2/transformer_block_2/layer_normalization_5/mul_1:z:0;model_2/transformer_block_2/layer_normalization_5/mul_2:z:0Jmodel_2/transformer_block_2/layer_normalization_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
9model_2/transformer_block_2/layer_normalization_5/ReshapeReshape%model_2/transformer_block_2/add_1:z:0Hmodel_2/transformer_block_2/layer_normalization_5/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
=model_2/transformer_block_2/layer_normalization_5/ones/packedPack;model_2/transformer_block_2/layer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:?
<model_2/transformer_block_2/layer_normalization_5/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
6model_2/transformer_block_2/layer_normalization_5/onesFillFmodel_2/transformer_block_2/layer_normalization_5/ones/packed:output:0Emodel_2/transformer_block_2/layer_normalization_5/ones/Const:output:0*
T0*#
_output_shapes
:??????????
>model_2/transformer_block_2/layer_normalization_5/zeros/packedPack;model_2/transformer_block_2/layer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:?
=model_2/transformer_block_2/layer_normalization_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
7model_2/transformer_block_2/layer_normalization_5/zerosFillGmodel_2/transformer_block_2/layer_normalization_5/zeros/packed:output:0Fmodel_2/transformer_block_2/layer_normalization_5/zeros/Const:output:0*
T0*#
_output_shapes
:?????????z
7model_2/transformer_block_2/layer_normalization_5/ConstConst*
_output_shapes
: *
dtype0*
valueB |
9model_2/transformer_block_2/layer_normalization_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
Bmodel_2/transformer_block_2/layer_normalization_5/FusedBatchNormV3FusedBatchNormV3Bmodel_2/transformer_block_2/layer_normalization_5/Reshape:output:0?model_2/transformer_block_2/layer_normalization_5/ones:output:0@model_2/transformer_block_2/layer_normalization_5/zeros:output:0@model_2/transformer_block_2/layer_normalization_5/Const:output:0Bmodel_2/transformer_block_2/layer_normalization_5/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
;model_2/transformer_block_2/layer_normalization_5/Reshape_1ReshapeFmodel_2/transformer_block_2/layer_normalization_5/FusedBatchNormV3:y:0@model_2/transformer_block_2/layer_normalization_5/Shape:output:0*
T0*-
_output_shapes
:????????????
Fmodel_2/transformer_block_2/layer_normalization_5/mul_3/ReadVariableOpReadVariableOpOmodel_2_transformer_block_2_layer_normalization_5_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7model_2/transformer_block_2/layer_normalization_5/mul_3MulDmodel_2/transformer_block_2/layer_normalization_5/Reshape_1:output:0Nmodel_2/transformer_block_2/layer_normalization_5/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
Dmodel_2/transformer_block_2/layer_normalization_5/add/ReadVariableOpReadVariableOpMmodel_2_transformer_block_2_layer_normalization_5_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5model_2/transformer_block_2/layer_normalization_5/addAddV2;model_2/transformer_block_2/layer_normalization_5/mul_3:z:0Lmodel_2/transformer_block_2/layer_normalization_5/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????v
4model_2/global_max_pooling1d_2/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
"model_2/global_max_pooling1d_2/MaxMax9model_2/transformer_block_2/layer_normalization_5/add:z:0=model_2/global_max_pooling1d_2/Max/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
model_2/dropout_19/IdentityIdentity+model_2/global_max_pooling1d_2/Max:output:0*
T0*(
_output_shapes
:???????????
&model_2/dense_28/MatMul/ReadVariableOpReadVariableOp/model_2_dense_28_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
model_2/dense_28/MatMulMatMul$model_2/dropout_19/Identity:output:0.model_2/dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'model_2/dense_28/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/dense_28/BiasAddBiasAdd!model_2/dense_28/MatMul:product:0/model_2/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
model_2/dense_28/ReluRelu!model_2/dense_28/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
model_2/dropout_20/IdentityIdentity#model_2/dense_28/Relu:activations:0*
T0*(
_output_shapes
:???????????
&model_2/dense_29/MatMul/ReadVariableOpReadVariableOp/model_2_dense_29_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
model_2/dense_29/MatMulMatMul$model_2/dropout_20/Identity:output:0.model_2/dense_29/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'model_2/dense_29/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/dense_29/BiasAddBiasAdd!model_2/dense_29/MatMul:product:0/model_2/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
model_2/dense_29/SoftmaxSoftmax!model_2/dense_29/BiasAdd:output:0*
T0*(
_output_shapes
:??????????r
IdentityIdentity"model_2/dense_29/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp(^model_2/dense_28/BiasAdd/ReadVariableOp'^model_2/dense_28/MatMul/ReadVariableOp(^model_2/dense_29/BiasAdd/ReadVariableOp'^model_2/dense_29/MatMul/ReadVariableOpD^model_2/token_and_position_embedding_2/embedding_4/embedding_lookupD^model_2/token_and_position_embedding_2/embedding_5/embedding_lookupE^model_2/transformer_block_2/layer_normalization_4/add/ReadVariableOpG^model_2/transformer_block_2/layer_normalization_4/mul_3/ReadVariableOpE^model_2/transformer_block_2/layer_normalization_5/add/ReadVariableOpG^model_2/transformer_block_2/layer_normalization_5/mul_3/ReadVariableOpS^model_2/transformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpU^model_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOpS^model_2/transformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpU^model_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOpS^model_2/transformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpU^model_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOpS^model_2/transformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpU^model_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOpI^model_2/transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOpK^model_2/transformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOpI^model_2/transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOpK^model_2/transformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOpI^model_2/transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOpK^model_2/transformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOpI^model_2/transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOpK^model_2/transformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'model_2/dense_28/BiasAdd/ReadVariableOp'model_2/dense_28/BiasAdd/ReadVariableOp2P
&model_2/dense_28/MatMul/ReadVariableOp&model_2/dense_28/MatMul/ReadVariableOp2R
'model_2/dense_29/BiasAdd/ReadVariableOp'model_2/dense_29/BiasAdd/ReadVariableOp2P
&model_2/dense_29/MatMul/ReadVariableOp&model_2/dense_29/MatMul/ReadVariableOp2?
Cmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookupCmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup2?
Cmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookupCmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup2?
Dmodel_2/transformer_block_2/layer_normalization_4/add/ReadVariableOpDmodel_2/transformer_block_2/layer_normalization_4/add/ReadVariableOp2?
Fmodel_2/transformer_block_2/layer_normalization_4/mul_3/ReadVariableOpFmodel_2/transformer_block_2/layer_normalization_4/mul_3/ReadVariableOp2?
Dmodel_2/transformer_block_2/layer_normalization_5/add/ReadVariableOpDmodel_2/transformer_block_2/layer_normalization_5/add/ReadVariableOp2?
Fmodel_2/transformer_block_2/layer_normalization_5/mul_3/ReadVariableOpFmodel_2/transformer_block_2/layer_normalization_5/mul_3/ReadVariableOp2?
Rmodel_2/transformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpRmodel_2/transformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp2?
Tmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOpTmodel_2/transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOp2?
Rmodel_2/transformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpRmodel_2/transformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp2?
Tmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOpTmodel_2/transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOp2?
Rmodel_2/transformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpRmodel_2/transformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp2?
Tmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOpTmodel_2/transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOp2?
Rmodel_2/transformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpRmodel_2/transformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp2?
Tmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOpTmodel_2/transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOp2?
Hmodel_2/transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOpHmodel_2/transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOp2?
Jmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOpJmodel_2/transformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOp2?
Hmodel_2/transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOpHmodel_2/transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOp2?
Jmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOpJmodel_2/transformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOp2?
Hmodel_2/transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOpHmodel_2/transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOp2?
Jmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOpJmodel_2/transformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOp2?
Hmodel_2/transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOpHmodel_2/transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOp2?
Jmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOpJmodel_2/transformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOp:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
̖
? 
C__inference_model_2_layer_call_and_return_conditional_losses_108604

inputsV
Btoken_and_position_embedding_2_embedding_5_embedding_lookup_108223:
??V
Btoken_and_position_embedding_2_embedding_4_embedding_lookup_108228:
??i
Utransformer_block_2_multi_head_attention_2_dense_20_tensordot_readvariableop_resource:
??b
Stransformer_block_2_multi_head_attention_2_dense_20_biasadd_readvariableop_resource:	?i
Utransformer_block_2_multi_head_attention_2_dense_21_tensordot_readvariableop_resource:
??b
Stransformer_block_2_multi_head_attention_2_dense_21_biasadd_readvariableop_resource:	?i
Utransformer_block_2_multi_head_attention_2_dense_22_tensordot_readvariableop_resource:
??b
Stransformer_block_2_multi_head_attention_2_dense_22_biasadd_readvariableop_resource:	?i
Utransformer_block_2_multi_head_attention_2_dense_23_tensordot_readvariableop_resource:
??b
Stransformer_block_2_multi_head_attention_2_dense_23_biasadd_readvariableop_resource:	?V
Gtransformer_block_2_layer_normalization_4_mul_3_readvariableop_resource:	?T
Etransformer_block_2_layer_normalization_4_add_readvariableop_resource:	?_
Ktransformer_block_2_sequential_2_dense_24_tensordot_readvariableop_resource:
??X
Itransformer_block_2_sequential_2_dense_24_biasadd_readvariableop_resource:	?_
Ktransformer_block_2_sequential_2_dense_25_tensordot_readvariableop_resource:
??X
Itransformer_block_2_sequential_2_dense_25_biasadd_readvariableop_resource:	?_
Ktransformer_block_2_sequential_2_dense_26_tensordot_readvariableop_resource:
??X
Itransformer_block_2_sequential_2_dense_26_biasadd_readvariableop_resource:	?_
Ktransformer_block_2_sequential_2_dense_27_tensordot_readvariableop_resource:
??X
Itransformer_block_2_sequential_2_dense_27_biasadd_readvariableop_resource:	?V
Gtransformer_block_2_layer_normalization_5_mul_3_readvariableop_resource:	?T
Etransformer_block_2_layer_normalization_5_add_readvariableop_resource:	?;
'dense_28_matmul_readvariableop_resource:
??7
(dense_28_biasadd_readvariableop_resource:	?;
'dense_29_matmul_readvariableop_resource:
??7
(dense_29_biasadd_readvariableop_resource:	?
identity??dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?dense_29/MatMul/ReadVariableOp?;token_and_position_embedding_2/embedding_4/embedding_lookup?;token_and_position_embedding_2/embedding_5/embedding_lookup?<transformer_block_2/layer_normalization_4/add/ReadVariableOp?>transformer_block_2/layer_normalization_4/mul_3/ReadVariableOp?<transformer_block_2/layer_normalization_5/add/ReadVariableOp?>transformer_block_2/layer_normalization_5/mul_3/ReadVariableOp?Jtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp?Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOp?Jtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp?Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOp?Jtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp?Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOp?Jtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp?Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOp?@transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOp?Btransformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOp?@transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOp?Btransformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOp?@transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOp?Btransformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOp?@transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOp?Btransformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOpZ
$token_and_position_embedding_2/ShapeShapeinputs*
T0*
_output_shapes
:?
2token_and_position_embedding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????~
4token_and_position_embedding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,token_and_position_embedding_2/strided_sliceStridedSlice-token_and_position_embedding_2/Shape:output:0;token_and_position_embedding_2/strided_slice/stack:output:0=token_and_position_embedding_2/strided_slice/stack_1:output:0=token_and_position_embedding_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
$token_and_position_embedding_2/rangeRange3token_and_position_embedding_2/range/start:output:05token_and_position_embedding_2/strided_slice:output:03token_and_position_embedding_2/range/delta:output:0*
_output_shapes	
:??
;token_and_position_embedding_2/embedding_5/embedding_lookupResourceGatherBtoken_and_position_embedding_2_embedding_5_embedding_lookup_108223-token_and_position_embedding_2/range:output:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/108223* 
_output_shapes
:
??*
dtype0?
Dtoken_and_position_embedding_2/embedding_5/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_5/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/108223* 
_output_shapes
:
???
Ftoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
???
;token_and_position_embedding_2/embedding_4/embedding_lookupResourceGatherBtoken_and_position_embedding_2_embedding_4_embedding_lookup_108228inputs*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/108228*-
_output_shapes
:???????????*
dtype0?
Dtoken_and_position_embedding_2/embedding_4/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_4/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/108228*-
_output_shapes
:????????????
Ftoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
"token_and_position_embedding_2/addAddV2Otoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:????????????
0transformer_block_2/multi_head_attention_2/ShapeShape&token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
>transformer_block_2/multi_head_attention_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@transformer_block_2/multi_head_attention_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@transformer_block_2/multi_head_attention_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_2/multi_head_attention_2/strided_sliceStridedSlice9transformer_block_2/multi_head_attention_2/Shape:output:0Gtransformer_block_2/multi_head_attention_2/strided_slice/stack:output:0Itransformer_block_2/multi_head_attention_2/strided_slice/stack_1:output:0Itransformer_block_2/multi_head_attention_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_2_multi_head_attention_2_dense_20_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_2/multi_head_attention_2/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_2/multi_head_attention_2/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ShapeShape&token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2GatherV2Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/free:output:0Ttransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1GatherV2Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/axes:output:0Vtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ProdProdOtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2:output:0Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Prod_1ProdQtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2_1:output:0Ntransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concatConcatV2Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/free:output:0Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/axes:output:0Rtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_20/Tensordot/stackPackKtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Prod:output:0Mtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/transpose	Transpose&token_and_position_embedding_2/add:z:0Mtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReshapeReshapeKtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/transpose:y:0Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/MatMulMatMulNtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Reshape:output:0Ttransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1ConcatV2Otransformer_block_2/multi_head_attention_2/dense_20/Tensordot/GatherV2:output:0Ntransformer_block_2/multi_head_attention_2/dense_20/Tensordot/Const_2:output:0Ttransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/multi_head_attention_2/dense_20/TensordotReshapeNtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/MatMul:product:0Otransformer_block_2/multi_head_attention_2/dense_20/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_2_multi_head_attention_2_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_2/multi_head_attention_2/dense_20/BiasAddBiasAddFtransformer_block_2/multi_head_attention_2/dense_20/Tensordot:output:0Rtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_2/multi_head_attention_2/dense_20/ReluReluDtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_2_multi_head_attention_2_dense_21_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_2/multi_head_attention_2/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_2/multi_head_attention_2/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ShapeShape&token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2GatherV2Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/free:output:0Ttransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1GatherV2Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/axes:output:0Vtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ProdProdOtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2:output:0Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Prod_1ProdQtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2_1:output:0Ntransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concatConcatV2Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/free:output:0Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/axes:output:0Rtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_21/Tensordot/stackPackKtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Prod:output:0Mtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/transpose	Transpose&token_and_position_embedding_2/add:z:0Mtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReshapeReshapeKtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/transpose:y:0Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/MatMulMatMulNtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Reshape:output:0Ttransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1ConcatV2Otransformer_block_2/multi_head_attention_2/dense_21/Tensordot/GatherV2:output:0Ntransformer_block_2/multi_head_attention_2/dense_21/Tensordot/Const_2:output:0Ttransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/multi_head_attention_2/dense_21/TensordotReshapeNtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/MatMul:product:0Otransformer_block_2/multi_head_attention_2/dense_21/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_2_multi_head_attention_2_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_2/multi_head_attention_2/dense_21/BiasAddBiasAddFtransformer_block_2/multi_head_attention_2/dense_21/Tensordot:output:0Rtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_2/multi_head_attention_2/dense_21/ReluReluDtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_2_multi_head_attention_2_dense_22_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_2/multi_head_attention_2/dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_2/multi_head_attention_2/dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ShapeShape&token_and_position_embedding_2/add:z:0*
T0*
_output_shapes
:?
Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2GatherV2Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/free:output:0Ttransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1GatherV2Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/axes:output:0Vtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ProdProdOtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2:output:0Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Prod_1ProdQtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2_1:output:0Ntransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concatConcatV2Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/free:output:0Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/axes:output:0Rtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_22/Tensordot/stackPackKtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Prod:output:0Mtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/transpose	Transpose&token_and_position_embedding_2/add:z:0Mtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
Etransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReshapeReshapeKtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/transpose:y:0Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/MatMulMatMulNtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Reshape:output:0Ttransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1ConcatV2Otransformer_block_2/multi_head_attention_2/dense_22/Tensordot/GatherV2:output:0Ntransformer_block_2/multi_head_attention_2/dense_22/Tensordot/Const_2:output:0Ttransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/multi_head_attention_2/dense_22/TensordotReshapeNtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/MatMul:product:0Otransformer_block_2/multi_head_attention_2/dense_22/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
Jtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_2_multi_head_attention_2_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_2/multi_head_attention_2/dense_22/BiasAddBiasAddFtransformer_block_2/multi_head_attention_2/dense_22/Tensordot:output:0Rtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
8transformer_block_2/multi_head_attention_2/dense_22/ReluReluDtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
:transformer_block_2/multi_head_attention_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????|
:transformer_block_2/multi_head_attention_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :|
:transformer_block_2/multi_head_attention_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
8transformer_block_2/multi_head_attention_2/Reshape/shapePackAtransformer_block_2/multi_head_attention_2/strided_slice:output:0Ctransformer_block_2/multi_head_attention_2/Reshape/shape/1:output:0Ctransformer_block_2/multi_head_attention_2/Reshape/shape/2:output:0Ctransformer_block_2/multi_head_attention_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
2transformer_block_2/multi_head_attention_2/ReshapeReshapeFtransformer_block_2/multi_head_attention_2/dense_20/Relu:activations:0Atransformer_block_2/multi_head_attention_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
9transformer_block_2/multi_head_attention_2/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
4transformer_block_2/multi_head_attention_2/transpose	Transpose;transformer_block_2/multi_head_attention_2/Reshape:output:0Btransformer_block_2/multi_head_attention_2/transpose/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
<transformer_block_2/multi_head_attention_2/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????~
<transformer_block_2/multi_head_attention_2/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<transformer_block_2/multi_head_attention_2/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/multi_head_attention_2/Reshape_1/shapePackAtransformer_block_2/multi_head_attention_2/strided_slice:output:0Etransformer_block_2/multi_head_attention_2/Reshape_1/shape/1:output:0Etransformer_block_2/multi_head_attention_2/Reshape_1/shape/2:output:0Etransformer_block_2/multi_head_attention_2/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_2/multi_head_attention_2/Reshape_1ReshapeFtransformer_block_2/multi_head_attention_2/dense_21/Relu:activations:0Ctransformer_block_2/multi_head_attention_2/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
;transformer_block_2/multi_head_attention_2/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_2/multi_head_attention_2/transpose_1	Transpose=transformer_block_2/multi_head_attention_2/Reshape_1:output:0Dtransformer_block_2/multi_head_attention_2/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
<transformer_block_2/multi_head_attention_2/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????~
<transformer_block_2/multi_head_attention_2/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<transformer_block_2/multi_head_attention_2/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/multi_head_attention_2/Reshape_2/shapePackAtransformer_block_2/multi_head_attention_2/strided_slice:output:0Etransformer_block_2/multi_head_attention_2/Reshape_2/shape/1:output:0Etransformer_block_2/multi_head_attention_2/Reshape_2/shape/2:output:0Etransformer_block_2/multi_head_attention_2/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_2/multi_head_attention_2/Reshape_2ReshapeFtransformer_block_2/multi_head_attention_2/dense_22/Relu:activations:0Ctransformer_block_2/multi_head_attention_2/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
;transformer_block_2/multi_head_attention_2/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_2/multi_head_attention_2/transpose_2	Transpose=transformer_block_2/multi_head_attention_2/Reshape_2:output:0Dtransformer_block_2/multi_head_attention_2/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
1transformer_block_2/multi_head_attention_2/MatMulBatchMatMulV28transformer_block_2/multi_head_attention_2/transpose:y:0:transformer_block_2/multi_head_attention_2/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(?
2transformer_block_2/multi_head_attention_2/Shape_1Shape:transformer_block_2/multi_head_attention_2/transpose_1:y:0*
T0*
_output_shapes
:?
@transformer_block_2/multi_head_attention_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Btransformer_block_2/multi_head_attention_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_2/multi_head_attention_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:transformer_block_2/multi_head_attention_2/strided_slice_1StridedSlice;transformer_block_2/multi_head_attention_2/Shape_1:output:0Itransformer_block_2/multi_head_attention_2/strided_slice_1/stack:output:0Ktransformer_block_2/multi_head_attention_2/strided_slice_1/stack_1:output:0Ktransformer_block_2/multi_head_attention_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_2/multi_head_attention_2/CastCastCtransformer_block_2/multi_head_attention_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
/transformer_block_2/multi_head_attention_2/SqrtSqrt3transformer_block_2/multi_head_attention_2/Cast:y:0*
T0*
_output_shapes
: ?
2transformer_block_2/multi_head_attention_2/truedivRealDiv:transformer_block_2/multi_head_attention_2/MatMul:output:03transformer_block_2/multi_head_attention_2/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
2transformer_block_2/multi_head_attention_2/SoftmaxSoftmax6transformer_block_2/multi_head_attention_2/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
3transformer_block_2/multi_head_attention_2/MatMul_1BatchMatMulV2<transformer_block_2/multi_head_attention_2/Softmax:softmax:0:transformer_block_2/multi_head_attention_2/transpose_2:y:0*
T0*8
_output_shapes&
$:"?????????????????? ?
;transformer_block_2/multi_head_attention_2/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
6transformer_block_2/multi_head_attention_2/transpose_3	Transpose<transformer_block_2/multi_head_attention_2/MatMul_1:output:0Dtransformer_block_2/multi_head_attention_2/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
<transformer_block_2/multi_head_attention_2/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
<transformer_block_2/multi_head_attention_2/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
:transformer_block_2/multi_head_attention_2/Reshape_3/shapePackAtransformer_block_2/multi_head_attention_2/strided_slice:output:0Etransformer_block_2/multi_head_attention_2/Reshape_3/shape/1:output:0Etransformer_block_2/multi_head_attention_2/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
4transformer_block_2/multi_head_attention_2/Reshape_3Reshape:transformer_block_2/multi_head_attention_2/transpose_3:y:0Ctransformer_block_2/multi_head_attention_2/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_2_multi_head_attention_2_dense_23_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Btransformer_block_2/multi_head_attention_2/dense_23/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
Btransformer_block_2/multi_head_attention_2/dense_23/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
Ctransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ShapeShape=transformer_block_2/multi_head_attention_2/Reshape_3:output:0*
T0*
_output_shapes
:?
Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2GatherV2Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/free:output:0Ttransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Mtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Htransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1GatherV2Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Shape:output:0Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/axes:output:0Vtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Btransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ProdProdOtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2:output:0Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
Etransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Prod_1ProdQtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2_1:output:0Ntransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Itransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concatConcatV2Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/free:output:0Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/axes:output:0Rtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ctransformer_block_2/multi_head_attention_2/dense_23/Tensordot/stackPackKtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Prod:output:0Mtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Gtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/transpose	Transpose=transformer_block_2/multi_head_attention_2/Reshape_3:output:0Mtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
Etransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReshapeReshapeKtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/transpose:y:0Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/MatMulMatMulNtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Reshape:output:0Ttransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Etransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Ktransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ftransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1ConcatV2Otransformer_block_2/multi_head_attention_2/dense_23/Tensordot/GatherV2:output:0Ntransformer_block_2/multi_head_attention_2/dense_23/Tensordot/Const_2:output:0Ttransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/multi_head_attention_2/dense_23/TensordotReshapeNtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/MatMul:product:0Otransformer_block_2/multi_head_attention_2/dense_23/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
Jtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_2_multi_head_attention_2_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;transformer_block_2/multi_head_attention_2/dense_23/BiasAddBiasAddFtransformer_block_2/multi_head_attention_2/dense_23/Tensordot:output:0Rtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
8transformer_block_2/multi_head_attention_2/dense_23/ReluReluDtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd:output:0*
T0*5
_output_shapes#
!:????????????????????
'transformer_block_2/dropout_17/IdentityIdentityFtransformer_block_2/multi_head_attention_2/dense_23/Relu:activations:0*
T0*5
_output_shapes#
!:????????????????????
transformer_block_2/addAddV2&token_and_position_embedding_2/add:z:00transformer_block_2/dropout_17/Identity:output:0*
T0*-
_output_shapes
:???????????z
/transformer_block_2/layer_normalization_4/ShapeShapetransformer_block_2/add:z:0*
T0*
_output_shapes
:?
=transformer_block_2/layer_normalization_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?transformer_block_2/layer_normalization_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?transformer_block_2/layer_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block_2/layer_normalization_4/strided_sliceStridedSlice8transformer_block_2/layer_normalization_4/Shape:output:0Ftransformer_block_2/layer_normalization_4/strided_slice/stack:output:0Htransformer_block_2/layer_normalization_4/strided_slice/stack_1:output:0Htransformer_block_2/layer_normalization_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/transformer_block_2/layer_normalization_4/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
-transformer_block_2/layer_normalization_4/mulMul8transformer_block_2/layer_normalization_4/mul/x:output:0@transformer_block_2/layer_normalization_4/strided_slice:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/layer_normalization_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_2/layer_normalization_4/strided_slice_1StridedSlice8transformer_block_2/layer_normalization_4/Shape:output:0Htransformer_block_2/layer_normalization_4/strided_slice_1/stack:output:0Jtransformer_block_2/layer_normalization_4/strided_slice_1/stack_1:output:0Jtransformer_block_2/layer_normalization_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_2/layer_normalization_4/mul_1Mul1transformer_block_2/layer_normalization_4/mul:z:0Btransformer_block_2/layer_normalization_4/strided_slice_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/layer_normalization_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_2/layer_normalization_4/strided_slice_2StridedSlice8transformer_block_2/layer_normalization_4/Shape:output:0Htransformer_block_2/layer_normalization_4/strided_slice_2/stack:output:0Jtransformer_block_2/layer_normalization_4/strided_slice_2/stack_1:output:0Jtransformer_block_2/layer_normalization_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1transformer_block_2/layer_normalization_4/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
/transformer_block_2/layer_normalization_4/mul_2Mul:transformer_block_2/layer_normalization_4/mul_2/x:output:0Btransformer_block_2/layer_normalization_4/strided_slice_2:output:0*
T0*
_output_shapes
: {
9transformer_block_2/layer_normalization_4/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :{
9transformer_block_2/layer_normalization_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
7transformer_block_2/layer_normalization_4/Reshape/shapePackBtransformer_block_2/layer_normalization_4/Reshape/shape/0:output:03transformer_block_2/layer_normalization_4/mul_1:z:03transformer_block_2/layer_normalization_4/mul_2:z:0Btransformer_block_2/layer_normalization_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
1transformer_block_2/layer_normalization_4/ReshapeReshapetransformer_block_2/add:z:0@transformer_block_2/layer_normalization_4/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
5transformer_block_2/layer_normalization_4/ones/packedPack3transformer_block_2/layer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:y
4transformer_block_2/layer_normalization_4/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
.transformer_block_2/layer_normalization_4/onesFill>transformer_block_2/layer_normalization_4/ones/packed:output:0=transformer_block_2/layer_normalization_4/ones/Const:output:0*
T0*#
_output_shapes
:??????????
6transformer_block_2/layer_normalization_4/zeros/packedPack3transformer_block_2/layer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:z
5transformer_block_2/layer_normalization_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
/transformer_block_2/layer_normalization_4/zerosFill?transformer_block_2/layer_normalization_4/zeros/packed:output:0>transformer_block_2/layer_normalization_4/zeros/Const:output:0*
T0*#
_output_shapes
:?????????r
/transformer_block_2/layer_normalization_4/ConstConst*
_output_shapes
: *
dtype0*
valueB t
1transformer_block_2/layer_normalization_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
:transformer_block_2/layer_normalization_4/FusedBatchNormV3FusedBatchNormV3:transformer_block_2/layer_normalization_4/Reshape:output:07transformer_block_2/layer_normalization_4/ones:output:08transformer_block_2/layer_normalization_4/zeros:output:08transformer_block_2/layer_normalization_4/Const:output:0:transformer_block_2/layer_normalization_4/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
3transformer_block_2/layer_normalization_4/Reshape_1Reshape>transformer_block_2/layer_normalization_4/FusedBatchNormV3:y:08transformer_block_2/layer_normalization_4/Shape:output:0*
T0*-
_output_shapes
:????????????
>transformer_block_2/layer_normalization_4/mul_3/ReadVariableOpReadVariableOpGtransformer_block_2_layer_normalization_4_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/transformer_block_2/layer_normalization_4/mul_3Mul<transformer_block_2/layer_normalization_4/Reshape_1:output:0Ftransformer_block_2/layer_normalization_4/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
<transformer_block_2/layer_normalization_4/add/ReadVariableOpReadVariableOpEtransformer_block_2_layer_normalization_4_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-transformer_block_2/layer_normalization_4/addAddV23transformer_block_2/layer_normalization_4/mul_3:z:0Dtransformer_block_2/layer_normalization_4/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
Btransformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_2_sequential_2_dense_24_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_2/sequential_2/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_2/sequential_2/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_2/sequential_2/dense_24/Tensordot/ShapeShape1transformer_block_2/layer_normalization_4/add:z:0*
T0*
_output_shapes
:?
Atransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2GatherV2Btransformer_block_2/sequential_2/dense_24/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_24/Tensordot/free:output:0Jtransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1GatherV2Btransformer_block_2/sequential_2/dense_24/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_24/Tensordot/axes:output:0Ltransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_2/sequential_2/dense_24/Tensordot/ProdProdEtransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2:output:0Btransformer_block_2/sequential_2/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_2/sequential_2/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_2/sequential_2/dense_24/Tensordot/Prod_1ProdGtransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2_1:output:0Dtransformer_block_2/sequential_2/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/sequential_2/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/sequential_2/dense_24/Tensordot/concatConcatV2Atransformer_block_2/sequential_2/dense_24/Tensordot/free:output:0Atransformer_block_2/sequential_2/dense_24/Tensordot/axes:output:0Htransformer_block_2/sequential_2/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_24/Tensordot/stackPackAtransformer_block_2/sequential_2/dense_24/Tensordot/Prod:output:0Ctransformer_block_2/sequential_2/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/sequential_2/dense_24/Tensordot/transpose	Transpose1transformer_block_2/layer_normalization_4/add:z:0Ctransformer_block_2/sequential_2/dense_24/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_2/sequential_2/dense_24/Tensordot/ReshapeReshapeAtransformer_block_2/sequential_2/dense_24/Tensordot/transpose:y:0Btransformer_block_2/sequential_2/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_2/sequential_2/dense_24/Tensordot/MatMulMatMulDtransformer_block_2/sequential_2/dense_24/Tensordot/Reshape:output:0Jtransformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_2/sequential_2/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_2/sequential_2/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_24/Tensordot/concat_1ConcatV2Etransformer_block_2/sequential_2/dense_24/Tensordot/GatherV2:output:0Dtransformer_block_2/sequential_2/dense_24/Tensordot/Const_2:output:0Jtransformer_block_2/sequential_2/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_2/sequential_2/dense_24/TensordotReshapeDtransformer_block_2/sequential_2/dense_24/Tensordot/MatMul:product:0Etransformer_block_2/sequential_2/dense_24/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_2_sequential_2_dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_2/sequential_2/dense_24/BiasAddBiasAdd<transformer_block_2/sequential_2/dense_24/Tensordot:output:0Htransformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_2/sequential_2/dense_24/ReluRelu:transformer_block_2/sequential_2/dense_24/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
4transformer_block_2/sequential_2/dropout_14/IdentityIdentity<transformer_block_2/sequential_2/dense_24/Relu:activations:0*
T0*-
_output_shapes
:????????????
Btransformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_2_sequential_2_dense_25_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_2/sequential_2/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_2/sequential_2/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_2/sequential_2/dense_25/Tensordot/ShapeShape=transformer_block_2/sequential_2/dropout_14/Identity:output:0*
T0*
_output_shapes
:?
Atransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2GatherV2Btransformer_block_2/sequential_2/dense_25/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_25/Tensordot/free:output:0Jtransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1GatherV2Btransformer_block_2/sequential_2/dense_25/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_25/Tensordot/axes:output:0Ltransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_2/sequential_2/dense_25/Tensordot/ProdProdEtransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2:output:0Btransformer_block_2/sequential_2/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_2/sequential_2/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_2/sequential_2/dense_25/Tensordot/Prod_1ProdGtransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2_1:output:0Dtransformer_block_2/sequential_2/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/sequential_2/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/sequential_2/dense_25/Tensordot/concatConcatV2Atransformer_block_2/sequential_2/dense_25/Tensordot/free:output:0Atransformer_block_2/sequential_2/dense_25/Tensordot/axes:output:0Htransformer_block_2/sequential_2/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_25/Tensordot/stackPackAtransformer_block_2/sequential_2/dense_25/Tensordot/Prod:output:0Ctransformer_block_2/sequential_2/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/sequential_2/dense_25/Tensordot/transpose	Transpose=transformer_block_2/sequential_2/dropout_14/Identity:output:0Ctransformer_block_2/sequential_2/dense_25/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_2/sequential_2/dense_25/Tensordot/ReshapeReshapeAtransformer_block_2/sequential_2/dense_25/Tensordot/transpose:y:0Btransformer_block_2/sequential_2/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_2/sequential_2/dense_25/Tensordot/MatMulMatMulDtransformer_block_2/sequential_2/dense_25/Tensordot/Reshape:output:0Jtransformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_2/sequential_2/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_2/sequential_2/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_25/Tensordot/concat_1ConcatV2Etransformer_block_2/sequential_2/dense_25/Tensordot/GatherV2:output:0Dtransformer_block_2/sequential_2/dense_25/Tensordot/Const_2:output:0Jtransformer_block_2/sequential_2/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_2/sequential_2/dense_25/TensordotReshapeDtransformer_block_2/sequential_2/dense_25/Tensordot/MatMul:product:0Etransformer_block_2/sequential_2/dense_25/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_2_sequential_2_dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_2/sequential_2/dense_25/BiasAddBiasAdd<transformer_block_2/sequential_2/dense_25/Tensordot:output:0Htransformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_2/sequential_2/dense_25/ReluRelu:transformer_block_2/sequential_2/dense_25/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
4transformer_block_2/sequential_2/dropout_15/IdentityIdentity<transformer_block_2/sequential_2/dense_25/Relu:activations:0*
T0*-
_output_shapes
:????????????
Btransformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_2_sequential_2_dense_26_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_2/sequential_2/dense_26/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_2/sequential_2/dense_26/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_2/sequential_2/dense_26/Tensordot/ShapeShape=transformer_block_2/sequential_2/dropout_15/Identity:output:0*
T0*
_output_shapes
:?
Atransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2GatherV2Btransformer_block_2/sequential_2/dense_26/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_26/Tensordot/free:output:0Jtransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1GatherV2Btransformer_block_2/sequential_2/dense_26/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_26/Tensordot/axes:output:0Ltransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_26/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_2/sequential_2/dense_26/Tensordot/ProdProdEtransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2:output:0Btransformer_block_2/sequential_2/dense_26/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_2/sequential_2/dense_26/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_2/sequential_2/dense_26/Tensordot/Prod_1ProdGtransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2_1:output:0Dtransformer_block_2/sequential_2/dense_26/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/sequential_2/dense_26/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/sequential_2/dense_26/Tensordot/concatConcatV2Atransformer_block_2/sequential_2/dense_26/Tensordot/free:output:0Atransformer_block_2/sequential_2/dense_26/Tensordot/axes:output:0Htransformer_block_2/sequential_2/dense_26/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_26/Tensordot/stackPackAtransformer_block_2/sequential_2/dense_26/Tensordot/Prod:output:0Ctransformer_block_2/sequential_2/dense_26/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/sequential_2/dense_26/Tensordot/transpose	Transpose=transformer_block_2/sequential_2/dropout_15/Identity:output:0Ctransformer_block_2/sequential_2/dense_26/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_2/sequential_2/dense_26/Tensordot/ReshapeReshapeAtransformer_block_2/sequential_2/dense_26/Tensordot/transpose:y:0Btransformer_block_2/sequential_2/dense_26/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_2/sequential_2/dense_26/Tensordot/MatMulMatMulDtransformer_block_2/sequential_2/dense_26/Tensordot/Reshape:output:0Jtransformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_2/sequential_2/dense_26/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_2/sequential_2/dense_26/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_26/Tensordot/concat_1ConcatV2Etransformer_block_2/sequential_2/dense_26/Tensordot/GatherV2:output:0Dtransformer_block_2/sequential_2/dense_26/Tensordot/Const_2:output:0Jtransformer_block_2/sequential_2/dense_26/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_2/sequential_2/dense_26/TensordotReshapeDtransformer_block_2/sequential_2/dense_26/Tensordot/MatMul:product:0Etransformer_block_2/sequential_2/dense_26/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_2_sequential_2_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_2/sequential_2/dense_26/BiasAddBiasAdd<transformer_block_2/sequential_2/dense_26/Tensordot:output:0Htransformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.transformer_block_2/sequential_2/dense_26/ReluRelu:transformer_block_2/sequential_2/dense_26/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
4transformer_block_2/sequential_2/dropout_16/IdentityIdentity<transformer_block_2/sequential_2/dense_26/Relu:activations:0*
T0*-
_output_shapes
:????????????
Btransformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_2_sequential_2_dense_27_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8transformer_block_2/sequential_2/dense_27/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block_2/sequential_2/dense_27/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
9transformer_block_2/sequential_2/dense_27/Tensordot/ShapeShape=transformer_block_2/sequential_2/dropout_16/Identity:output:0*
T0*
_output_shapes
:?
Atransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2GatherV2Btransformer_block_2/sequential_2/dense_27/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_27/Tensordot/free:output:0Jtransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Ctransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>transformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1GatherV2Btransformer_block_2/sequential_2/dense_27/Tensordot/Shape:output:0Atransformer_block_2/sequential_2/dense_27/Tensordot/axes:output:0Ltransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_27/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
8transformer_block_2/sequential_2/dense_27/Tensordot/ProdProdEtransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2:output:0Btransformer_block_2/sequential_2/dense_27/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
;transformer_block_2/sequential_2/dense_27/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
:transformer_block_2/sequential_2/dense_27/Tensordot/Prod_1ProdGtransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2_1:output:0Dtransformer_block_2/sequential_2/dense_27/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/sequential_2/dense_27/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:transformer_block_2/sequential_2/dense_27/Tensordot/concatConcatV2Atransformer_block_2/sequential_2/dense_27/Tensordot/free:output:0Atransformer_block_2/sequential_2/dense_27/Tensordot/axes:output:0Htransformer_block_2/sequential_2/dense_27/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
9transformer_block_2/sequential_2/dense_27/Tensordot/stackPackAtransformer_block_2/sequential_2/dense_27/Tensordot/Prod:output:0Ctransformer_block_2/sequential_2/dense_27/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
=transformer_block_2/sequential_2/dense_27/Tensordot/transpose	Transpose=transformer_block_2/sequential_2/dropout_16/Identity:output:0Ctransformer_block_2/sequential_2/dense_27/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
;transformer_block_2/sequential_2/dense_27/Tensordot/ReshapeReshapeAtransformer_block_2/sequential_2/dense_27/Tensordot/transpose:y:0Btransformer_block_2/sequential_2/dense_27/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
:transformer_block_2/sequential_2/dense_27/Tensordot/MatMulMatMulDtransformer_block_2/sequential_2/dense_27/Tensordot/Reshape:output:0Jtransformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;transformer_block_2/sequential_2/dense_27/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Atransformer_block_2/sequential_2/dense_27/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<transformer_block_2/sequential_2/dense_27/Tensordot/concat_1ConcatV2Etransformer_block_2/sequential_2/dense_27/Tensordot/GatherV2:output:0Dtransformer_block_2/sequential_2/dense_27/Tensordot/Const_2:output:0Jtransformer_block_2/sequential_2/dense_27/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
3transformer_block_2/sequential_2/dense_27/TensordotReshapeDtransformer_block_2/sequential_2/dense_27/Tensordot/MatMul:product:0Etransformer_block_2/sequential_2/dense_27/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
@transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_2_sequential_2_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1transformer_block_2/sequential_2/dense_27/BiasAddBiasAdd<transformer_block_2/sequential_2/dense_27/Tensordot:output:0Htransformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
'transformer_block_2/dropout_18/IdentityIdentity:transformer_block_2/sequential_2/dense_27/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
transformer_block_2/add_1AddV21transformer_block_2/layer_normalization_4/add:z:00transformer_block_2/dropout_18/Identity:output:0*
T0*-
_output_shapes
:???????????|
/transformer_block_2/layer_normalization_5/ShapeShapetransformer_block_2/add_1:z:0*
T0*
_output_shapes
:?
=transformer_block_2/layer_normalization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?transformer_block_2/layer_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?transformer_block_2/layer_normalization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block_2/layer_normalization_5/strided_sliceStridedSlice8transformer_block_2/layer_normalization_5/Shape:output:0Ftransformer_block_2/layer_normalization_5/strided_slice/stack:output:0Htransformer_block_2/layer_normalization_5/strided_slice/stack_1:output:0Htransformer_block_2/layer_normalization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/transformer_block_2/layer_normalization_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
-transformer_block_2/layer_normalization_5/mulMul8transformer_block_2/layer_normalization_5/mul/x:output:0@transformer_block_2/layer_normalization_5/strided_slice:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/layer_normalization_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_2/layer_normalization_5/strided_slice_1StridedSlice8transformer_block_2/layer_normalization_5/Shape:output:0Htransformer_block_2/layer_normalization_5/strided_slice_1/stack:output:0Jtransformer_block_2/layer_normalization_5/strided_slice_1/stack_1:output:0Jtransformer_block_2/layer_normalization_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
/transformer_block_2/layer_normalization_5/mul_1Mul1transformer_block_2/layer_normalization_5/mul:z:0Btransformer_block_2/layer_normalization_5/strided_slice_1:output:0*
T0*
_output_shapes
: ?
?transformer_block_2/layer_normalization_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Atransformer_block_2/layer_normalization_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9transformer_block_2/layer_normalization_5/strided_slice_2StridedSlice8transformer_block_2/layer_normalization_5/Shape:output:0Htransformer_block_2/layer_normalization_5/strided_slice_2/stack:output:0Jtransformer_block_2/layer_normalization_5/strided_slice_2/stack_1:output:0Jtransformer_block_2/layer_normalization_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1transformer_block_2/layer_normalization_5/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
/transformer_block_2/layer_normalization_5/mul_2Mul:transformer_block_2/layer_normalization_5/mul_2/x:output:0Btransformer_block_2/layer_normalization_5/strided_slice_2:output:0*
T0*
_output_shapes
: {
9transformer_block_2/layer_normalization_5/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :{
9transformer_block_2/layer_normalization_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
7transformer_block_2/layer_normalization_5/Reshape/shapePackBtransformer_block_2/layer_normalization_5/Reshape/shape/0:output:03transformer_block_2/layer_normalization_5/mul_1:z:03transformer_block_2/layer_normalization_5/mul_2:z:0Btransformer_block_2/layer_normalization_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
1transformer_block_2/layer_normalization_5/ReshapeReshapetransformer_block_2/add_1:z:0@transformer_block_2/layer_normalization_5/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
5transformer_block_2/layer_normalization_5/ones/packedPack3transformer_block_2/layer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:y
4transformer_block_2/layer_normalization_5/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
.transformer_block_2/layer_normalization_5/onesFill>transformer_block_2/layer_normalization_5/ones/packed:output:0=transformer_block_2/layer_normalization_5/ones/Const:output:0*
T0*#
_output_shapes
:??????????
6transformer_block_2/layer_normalization_5/zeros/packedPack3transformer_block_2/layer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:z
5transformer_block_2/layer_normalization_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
/transformer_block_2/layer_normalization_5/zerosFill?transformer_block_2/layer_normalization_5/zeros/packed:output:0>transformer_block_2/layer_normalization_5/zeros/Const:output:0*
T0*#
_output_shapes
:?????????r
/transformer_block_2/layer_normalization_5/ConstConst*
_output_shapes
: *
dtype0*
valueB t
1transformer_block_2/layer_normalization_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
:transformer_block_2/layer_normalization_5/FusedBatchNormV3FusedBatchNormV3:transformer_block_2/layer_normalization_5/Reshape:output:07transformer_block_2/layer_normalization_5/ones:output:08transformer_block_2/layer_normalization_5/zeros:output:08transformer_block_2/layer_normalization_5/Const:output:0:transformer_block_2/layer_normalization_5/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
3transformer_block_2/layer_normalization_5/Reshape_1Reshape>transformer_block_2/layer_normalization_5/FusedBatchNormV3:y:08transformer_block_2/layer_normalization_5/Shape:output:0*
T0*-
_output_shapes
:????????????
>transformer_block_2/layer_normalization_5/mul_3/ReadVariableOpReadVariableOpGtransformer_block_2_layer_normalization_5_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/transformer_block_2/layer_normalization_5/mul_3Mul<transformer_block_2/layer_normalization_5/Reshape_1:output:0Ftransformer_block_2/layer_normalization_5/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
<transformer_block_2/layer_normalization_5/add/ReadVariableOpReadVariableOpEtransformer_block_2_layer_normalization_5_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-transformer_block_2/layer_normalization_5/addAddV23transformer_block_2/layer_normalization_5/mul_3:z:0Dtransformer_block_2/layer_normalization_5/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????n
,global_max_pooling1d_2/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d_2/MaxMax1transformer_block_2/layer_normalization_5/add:z:05global_max_pooling1d_2/Max/reduction_indices:output:0*
T0*(
_output_shapes
:??????????w
dropout_19/IdentityIdentity#global_max_pooling1d_2/Max:output:0*
T0*(
_output_shapes
:???????????
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_28/MatMulMatMuldropout_19/Identity:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*(
_output_shapes
:??????????o
dropout_20/IdentityIdentitydense_28/Relu:activations:0*
T0*(
_output_shapes
:???????????
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_29/MatMulMatMuldropout_20/Identity:output:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
dense_29/SoftmaxSoftmaxdense_29/BiasAdd:output:0*
T0*(
_output_shapes
:??????????j
IdentityIdentitydense_29/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp<^token_and_position_embedding_2/embedding_4/embedding_lookup<^token_and_position_embedding_2/embedding_5/embedding_lookup=^transformer_block_2/layer_normalization_4/add/ReadVariableOp?^transformer_block_2/layer_normalization_4/mul_3/ReadVariableOp=^transformer_block_2/layer_normalization_5/add/ReadVariableOp?^transformer_block_2/layer_normalization_5/mul_3/ReadVariableOpK^transformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpM^transformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOpK^transformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpM^transformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOpK^transformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpM^transformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOpK^transformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpM^transformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOpA^transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOpC^transformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOpA^transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOpC^transformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOpA^transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOpC^transformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOpA^transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOpC^transformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2z
;token_and_position_embedding_2/embedding_4/embedding_lookup;token_and_position_embedding_2/embedding_4/embedding_lookup2z
;token_and_position_embedding_2/embedding_5/embedding_lookup;token_and_position_embedding_2/embedding_5/embedding_lookup2|
<transformer_block_2/layer_normalization_4/add/ReadVariableOp<transformer_block_2/layer_normalization_4/add/ReadVariableOp2?
>transformer_block_2/layer_normalization_4/mul_3/ReadVariableOp>transformer_block_2/layer_normalization_4/mul_3/ReadVariableOp2|
<transformer_block_2/layer_normalization_5/add/ReadVariableOp<transformer_block_2/layer_normalization_5/add/ReadVariableOp2?
>transformer_block_2/layer_normalization_5/mul_3/ReadVariableOp>transformer_block_2/layer_normalization_5/mul_3/ReadVariableOp2?
Jtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpJtransformer_block_2/multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp2?
Ltransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_20/Tensordot/ReadVariableOp2?
Jtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpJtransformer_block_2/multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp2?
Ltransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_21/Tensordot/ReadVariableOp2?
Jtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpJtransformer_block_2/multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp2?
Ltransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_22/Tensordot/ReadVariableOp2?
Jtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpJtransformer_block_2/multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp2?
Ltransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOpLtransformer_block_2/multi_head_attention_2/dense_23/Tensordot/ReadVariableOp2?
@transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOp@transformer_block_2/sequential_2/dense_24/BiasAdd/ReadVariableOp2?
Btransformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOpBtransformer_block_2/sequential_2/dense_24/Tensordot/ReadVariableOp2?
@transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOp@transformer_block_2/sequential_2/dense_25/BiasAdd/ReadVariableOp2?
Btransformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOpBtransformer_block_2/sequential_2/dense_25/Tensordot/ReadVariableOp2?
@transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOp@transformer_block_2/sequential_2/dense_26/BiasAdd/ReadVariableOp2?
Btransformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOpBtransformer_block_2/sequential_2/dense_26/Tensordot/ReadVariableOp2?
@transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOp@transformer_block_2/sequential_2/dense_27/BiasAdd/ReadVariableOp2?
Btransformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOpBtransformer_block_2/sequential_2/dense_27/Tensordot/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
4__inference_transformer_block_2_layer_call_fn_109167

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
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_107620u
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
?
?
)__inference_dense_25_layer_call_fn_110384

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
D__inference_dense_25_layer_call_and_return_conditional_losses_106199u
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
F__inference_dropout_19_layer_call_and_return_conditional_losses_109938

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
?	
?
-__inference_sequential_2_layer_call_fn_110038

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
H__inference_sequential_2_layer_call_and_return_conditional_losses_106293u
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

?
-__inference_sequential_2_layer_call_fn_106511
dense_24_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_106471u
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
_user_specified_namedense_24_input
?
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_106538
dense_24_input#
dense_24_106514:
??
dense_24_106516:	?#
dense_25_106520:
??
dense_25_106522:	?#
dense_26_106526:
??
dense_26_106528:	?#
dense_27_106532:
??
dense_27_106534:	?
identity?? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall? dense_27/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCalldense_24_inputdense_24_106514dense_24_106516*
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
D__inference_dense_24_layer_call_and_return_conditional_losses_106155?
dropout_14/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_106166?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_25_106520dense_25_106522*
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
D__inference_dense_25_layer_call_and_return_conditional_losses_106199?
dropout_15/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_106210?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_26_106526dense_26_106528*
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
D__inference_dense_26_layer_call_and_return_conditional_losses_106243?
dropout_16/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_106254?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0dense_27_106532dense_27_106534*
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
D__inference_dense_27_layer_call_and_return_conditional_losses_106286~
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:] Y
-
_output_shapes
:???????????
(
_user_specified_namedense_24_input
?
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_109985

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_model_2_layer_call_fn_108212

inputs
unknown:
??
	unknown_0:
??
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
??

unknown_22:	?

unknown_23:
??

unknown_24:	?
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
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_107795p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_27_layer_call_fn_110518

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
D__inference_dense_27_layer_call_and_return_conditional_losses_106286u
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
?
?
)__inference_dense_29_layer_call_fn_110006

inputs
unknown:
??
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
D__inference_dense_29_layer_call_and_return_conditional_losses_107054p
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
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_15_layer_call_and_return_conditional_losses_106210

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
D__inference_dense_25_layer_call_and_return_conditional_losses_110415

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

?
D__inference_dense_29_layer_call_and_return_conditional_losses_110017

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_model_2_layer_call_fn_107116
input_3
unknown:
??
	unknown_0:
??
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
??

unknown_22:	?

unknown_23:
??

unknown_24:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_107061p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?
?
(__inference_model_2_layer_call_fn_107907
input_3
unknown:
??
	unknown_0:
??
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
??

unknown_22:	?

unknown_23:
??

unknown_24:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_107795p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?

?
D__inference_dense_29_layer_call_and_return_conditional_losses_107054

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_14_layer_call_and_return_conditional_losses_106166

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
D__inference_dense_24_layer_call_and_return_conditional_losses_110348

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
?
d
F__inference_dropout_14_layer_call_and_return_conditional_losses_110363

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
)__inference_dense_24_layer_call_fn_110317

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
D__inference_dense_24_layer_call_and_return_conditional_losses_106155u
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
F__inference_dropout_15_layer_call_and_return_conditional_losses_110430

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
?
?
4__inference_transformer_block_2_layer_call_fn_109122

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
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_106969u
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
??
?
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_106969

inputsU
Amulti_head_attention_2_dense_20_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_20_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_21_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_21_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_22_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_22_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_23_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_23_biasadd_readvariableop_resource:	?B
3layer_normalization_4_mul_3_readvariableop_resource:	?@
1layer_normalization_4_add_readvariableop_resource:	?K
7sequential_2_dense_24_tensordot_readvariableop_resource:
??D
5sequential_2_dense_24_biasadd_readvariableop_resource:	?K
7sequential_2_dense_25_tensordot_readvariableop_resource:
??D
5sequential_2_dense_25_biasadd_readvariableop_resource:	?K
7sequential_2_dense_26_tensordot_readvariableop_resource:
??D
5sequential_2_dense_26_biasadd_readvariableop_resource:	?K
7sequential_2_dense_27_tensordot_readvariableop_resource:
??D
5sequential_2_dense_27_biasadd_readvariableop_resource:	?B
3layer_normalization_5_mul_3_readvariableop_resource:	?@
1layer_normalization_5_add_readvariableop_resource:	?
identity??(layer_normalization_4/add/ReadVariableOp?*layer_normalization_4/mul_3/ReadVariableOp?(layer_normalization_5/add/ReadVariableOp?*layer_normalization_5/mul_3/ReadVariableOp?6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp?,sequential_2/dense_24/BiasAdd/ReadVariableOp?.sequential_2/dense_24/Tensordot/ReadVariableOp?,sequential_2/dense_25/BiasAdd/ReadVariableOp?.sequential_2/dense_25/Tensordot/ReadVariableOp?,sequential_2/dense_26/BiasAdd/ReadVariableOp?.sequential_2/dense_26/Tensordot/ReadVariableOp?,sequential_2/dense_27/BiasAdd/ReadVariableOp?.sequential_2/dense_27/Tensordot/ReadVariableOpR
multi_head_attention_2/ShapeShapeinputs*
T0*
_output_shapes
:t
*multi_head_attention_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,multi_head_attention_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,multi_head_attention_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$multi_head_attention_2/strided_sliceStridedSlice%multi_head_attention_2/Shape:output:03multi_head_attention_2/strided_slice/stack:output:05multi_head_attention_2/strided_slice/stack_1:output:05multi_head_attention_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
8multi_head_attention_2/dense_20/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_20_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_20/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_20/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_20/Tensordot/Shape:output:07multi_head_attention_2/dense_20/Tensordot/free:output:0@multi_head_attention_2/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_20/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_20/Tensordot/Shape:output:07multi_head_attention_2/dense_20/Tensordot/axes:output:0Bmulti_head_attention_2/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_20/Tensordot/ProdProd;multi_head_attention_2/dense_20/Tensordot/GatherV2:output:08multi_head_attention_2/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_20/Tensordot/Prod_1Prod=multi_head_attention_2/dense_20/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_20/Tensordot/concatConcatV27multi_head_attention_2/dense_20/Tensordot/free:output:07multi_head_attention_2/dense_20/Tensordot/axes:output:0>multi_head_attention_2/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_20/Tensordot/stackPack7multi_head_attention_2/dense_20/Tensordot/Prod:output:09multi_head_attention_2/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_20/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_20/Tensordot/ReshapeReshape7multi_head_attention_2/dense_20/Tensordot/transpose:y:08multi_head_attention_2/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_20/Tensordot/MatMulMatMul:multi_head_attention_2/dense_20/Tensordot/Reshape:output:0@multi_head_attention_2/dense_20/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_20/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_20/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_20/Tensordot/Const_2:output:0@multi_head_attention_2/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_20/TensordotReshape:multi_head_attention_2/dense_20/Tensordot/MatMul:product:0;multi_head_attention_2/dense_20/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_20/BiasAddBiasAdd2multi_head_attention_2/dense_20/Tensordot:output:0>multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_20/ReluRelu0multi_head_attention_2/dense_20/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_2/dense_21/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_21_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_21/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_21/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_21/Tensordot/Shape:output:07multi_head_attention_2/dense_21/Tensordot/free:output:0@multi_head_attention_2/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_21/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_21/Tensordot/Shape:output:07multi_head_attention_2/dense_21/Tensordot/axes:output:0Bmulti_head_attention_2/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_21/Tensordot/ProdProd;multi_head_attention_2/dense_21/Tensordot/GatherV2:output:08multi_head_attention_2/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_21/Tensordot/Prod_1Prod=multi_head_attention_2/dense_21/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_21/Tensordot/concatConcatV27multi_head_attention_2/dense_21/Tensordot/free:output:07multi_head_attention_2/dense_21/Tensordot/axes:output:0>multi_head_attention_2/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_21/Tensordot/stackPack7multi_head_attention_2/dense_21/Tensordot/Prod:output:09multi_head_attention_2/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_21/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_21/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_21/Tensordot/ReshapeReshape7multi_head_attention_2/dense_21/Tensordot/transpose:y:08multi_head_attention_2/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_21/Tensordot/MatMulMatMul:multi_head_attention_2/dense_21/Tensordot/Reshape:output:0@multi_head_attention_2/dense_21/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_21/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_21/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_21/Tensordot/Const_2:output:0@multi_head_attention_2/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_21/TensordotReshape:multi_head_attention_2/dense_21/Tensordot/MatMul:product:0;multi_head_attention_2/dense_21/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_21/BiasAddBiasAdd2multi_head_attention_2/dense_21/Tensordot:output:0>multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_21/ReluRelu0multi_head_attention_2/dense_21/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_2/dense_22/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_22_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_22/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_22/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_22/Tensordot/Shape:output:07multi_head_attention_2/dense_22/Tensordot/free:output:0@multi_head_attention_2/dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_22/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_22/Tensordot/Shape:output:07multi_head_attention_2/dense_22/Tensordot/axes:output:0Bmulti_head_attention_2/dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_22/Tensordot/ProdProd;multi_head_attention_2/dense_22/Tensordot/GatherV2:output:08multi_head_attention_2/dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_22/Tensordot/Prod_1Prod=multi_head_attention_2/dense_22/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_22/Tensordot/concatConcatV27multi_head_attention_2/dense_22/Tensordot/free:output:07multi_head_attention_2/dense_22/Tensordot/axes:output:0>multi_head_attention_2/dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_22/Tensordot/stackPack7multi_head_attention_2/dense_22/Tensordot/Prod:output:09multi_head_attention_2/dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_22/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_22/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_22/Tensordot/ReshapeReshape7multi_head_attention_2/dense_22/Tensordot/transpose:y:08multi_head_attention_2/dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_22/Tensordot/MatMulMatMul:multi_head_attention_2/dense_22/Tensordot/Reshape:output:0@multi_head_attention_2/dense_22/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_22/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_22/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_22/Tensordot/Const_2:output:0@multi_head_attention_2/dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_22/TensordotReshape:multi_head_attention_2/dense_22/Tensordot/MatMul:product:0;multi_head_attention_2/dense_22/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_22/BiasAddBiasAdd2multi_head_attention_2/dense_22/Tensordot:output:0>multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_22/ReluRelu0multi_head_attention_2/dense_22/BiasAdd:output:0*
T0*-
_output_shapes
:???????????q
&multi_head_attention_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????h
&multi_head_attention_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&multi_head_attention_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
$multi_head_attention_2/Reshape/shapePack-multi_head_attention_2/strided_slice:output:0/multi_head_attention_2/Reshape/shape/1:output:0/multi_head_attention_2/Reshape/shape/2:output:0/multi_head_attention_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
multi_head_attention_2/ReshapeReshape2multi_head_attention_2/dense_20/Relu:activations:0-multi_head_attention_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ~
%multi_head_attention_2/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 multi_head_attention_2/transpose	Transpose'multi_head_attention_2/Reshape:output:0.multi_head_attention_2/transpose/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_2/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_2/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
&multi_head_attention_2/Reshape_1/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_1/shape/1:output:01multi_head_attention_2/Reshape_1/shape/2:output:01multi_head_attention_2/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_1Reshape2multi_head_attention_2/dense_21/Relu:activations:0/multi_head_attention_2/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_1	Transpose)multi_head_attention_2/Reshape_1:output:00multi_head_attention_2/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_2/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_2/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
&multi_head_attention_2/Reshape_2/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_2/shape/1:output:01multi_head_attention_2/Reshape_2/shape/2:output:01multi_head_attention_2/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_2Reshape2multi_head_attention_2/dense_22/Relu:activations:0/multi_head_attention_2/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_2	Transpose)multi_head_attention_2/Reshape_2:output:00multi_head_attention_2/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
multi_head_attention_2/MatMulBatchMatMulV2$multi_head_attention_2/transpose:y:0&multi_head_attention_2/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(t
multi_head_attention_2/Shape_1Shape&multi_head_attention_2/transpose_1:y:0*
T0*
_output_shapes
:
,multi_head_attention_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.multi_head_attention_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.multi_head_attention_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&multi_head_attention_2/strided_slice_1StridedSlice'multi_head_attention_2/Shape_1:output:05multi_head_attention_2/strided_slice_1/stack:output:07multi_head_attention_2/strided_slice_1/stack_1:output:07multi_head_attention_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
multi_head_attention_2/CastCast/multi_head_attention_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: e
multi_head_attention_2/SqrtSqrtmulti_head_attention_2/Cast:y:0*
T0*
_output_shapes
: ?
multi_head_attention_2/truedivRealDiv&multi_head_attention_2/MatMul:output:0multi_head_attention_2/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_2/SoftmaxSoftmax"multi_head_attention_2/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_2/MatMul_1BatchMatMulV2(multi_head_attention_2/Softmax:softmax:0&multi_head_attention_2/transpose_2:y:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_3	Transpose(multi_head_attention_2/MatMul_1:output:00multi_head_attention_2/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????k
(multi_head_attention_2/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
&multi_head_attention_2/Reshape_3/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_3/shape/1:output:01multi_head_attention_2/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_3Reshape&multi_head_attention_2/transpose_3:y:0/multi_head_attention_2/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
8multi_head_attention_2/dense_23/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_23_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_23/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_23/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
/multi_head_attention_2/dense_23/Tensordot/ShapeShape)multi_head_attention_2/Reshape_3:output:0*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_23/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_23/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_23/Tensordot/Shape:output:07multi_head_attention_2/dense_23/Tensordot/free:output:0@multi_head_attention_2/dense_23/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_23/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_23/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_23/Tensordot/Shape:output:07multi_head_attention_2/dense_23/Tensordot/axes:output:0Bmulti_head_attention_2/dense_23/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_23/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_23/Tensordot/ProdProd;multi_head_attention_2/dense_23/Tensordot/GatherV2:output:08multi_head_attention_2/dense_23/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_23/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_23/Tensordot/Prod_1Prod=multi_head_attention_2/dense_23/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_23/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_23/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_23/Tensordot/concatConcatV27multi_head_attention_2/dense_23/Tensordot/free:output:07multi_head_attention_2/dense_23/Tensordot/axes:output:0>multi_head_attention_2/dense_23/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_23/Tensordot/stackPack7multi_head_attention_2/dense_23/Tensordot/Prod:output:09multi_head_attention_2/dense_23/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_23/Tensordot/transpose	Transpose)multi_head_attention_2/Reshape_3:output:09multi_head_attention_2/dense_23/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
1multi_head_attention_2/dense_23/Tensordot/ReshapeReshape7multi_head_attention_2/dense_23/Tensordot/transpose:y:08multi_head_attention_2/dense_23/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_23/Tensordot/MatMulMatMul:multi_head_attention_2/dense_23/Tensordot/Reshape:output:0@multi_head_attention_2/dense_23/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_23/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_23/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_23/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_23/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_23/Tensordot/Const_2:output:0@multi_head_attention_2/dense_23/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_23/TensordotReshape:multi_head_attention_2/dense_23/Tensordot/MatMul:product:0;multi_head_attention_2/dense_23/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_23/BiasAddBiasAdd2multi_head_attention_2/dense_23/Tensordot:output:0>multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
$multi_head_attention_2/dense_23/ReluRelu0multi_head_attention_2/dense_23/BiasAdd:output:0*
T0*5
_output_shapes#
!:????????????????????
dropout_17/IdentityIdentity2multi_head_attention_2/dense_23/Relu:activations:0*
T0*5
_output_shapes#
!:???????????????????j
addAddV2inputsdropout_17/Identity:output:0*
T0*-
_output_shapes
:???????????R
layer_normalization_4/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_4/strided_sliceStridedSlice$layer_normalization_4/Shape:output:02layer_normalization_4/strided_slice/stack:output:04layer_normalization_4/strided_slice/stack_1:output:04layer_normalization_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_4/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_4/mulMul$layer_normalization_4/mul/x:output:0,layer_normalization_4/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_4/strided_slice_1StridedSlice$layer_normalization_4/Shape:output:04layer_normalization_4/strided_slice_1/stack:output:06layer_normalization_4/strided_slice_1/stack_1:output:06layer_normalization_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_4/mul_1Mullayer_normalization_4/mul:z:0.layer_normalization_4/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_4/strided_slice_2StridedSlice$layer_normalization_4/Shape:output:04layer_normalization_4/strided_slice_2/stack:output:06layer_normalization_4/strided_slice_2/stack_1:output:06layer_normalization_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_4/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_4/mul_2Mul&layer_normalization_4/mul_2/x:output:0.layer_normalization_4/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_4/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_4/Reshape/shapePack.layer_normalization_4/Reshape/shape/0:output:0layer_normalization_4/mul_1:z:0layer_normalization_4/mul_2:z:0.layer_normalization_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_4/ReshapeReshapeadd:z:0,layer_normalization_4/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_4/ones/packedPacklayer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_4/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_4/onesFill*layer_normalization_4/ones/packed:output:0)layer_normalization_4/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_4/zeros/packedPacklayer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_4/zerosFill+layer_normalization_4/zeros/packed:output:0*layer_normalization_4/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_4/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_4/FusedBatchNormV3FusedBatchNormV3&layer_normalization_4/Reshape:output:0#layer_normalization_4/ones:output:0$layer_normalization_4/zeros:output:0$layer_normalization_4/Const:output:0&layer_normalization_4/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_4/Reshape_1Reshape*layer_normalization_4/FusedBatchNormV3:y:0$layer_normalization_4/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_4/mul_3/ReadVariableOpReadVariableOp3layer_normalization_4_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_4/mul_3Mul(layer_normalization_4/Reshape_1:output:02layer_normalization_4/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_4/add/ReadVariableOpReadVariableOp1layer_normalization_4_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_4/addAddV2layer_normalization_4/mul_3:z:00layer_normalization_4/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_24/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_24_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
%sequential_2/dense_24/Tensordot/ShapeShapelayer_normalization_4/add:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_24/Tensordot/GatherV2GatherV2.sequential_2/dense_24/Tensordot/Shape:output:0-sequential_2/dense_24/Tensordot/free:output:06sequential_2/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_24/Tensordot/GatherV2_1GatherV2.sequential_2/dense_24/Tensordot/Shape:output:0-sequential_2/dense_24/Tensordot/axes:output:08sequential_2/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_24/Tensordot/ProdProd1sequential_2/dense_24/Tensordot/GatherV2:output:0.sequential_2/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_24/Tensordot/Prod_1Prod3sequential_2/dense_24/Tensordot/GatherV2_1:output:00sequential_2/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_24/Tensordot/concatConcatV2-sequential_2/dense_24/Tensordot/free:output:0-sequential_2/dense_24/Tensordot/axes:output:04sequential_2/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_24/Tensordot/stackPack-sequential_2/dense_24/Tensordot/Prod:output:0/sequential_2/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_24/Tensordot/transpose	Transposelayer_normalization_4/add:z:0/sequential_2/dense_24/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_24/Tensordot/ReshapeReshape-sequential_2/dense_24/Tensordot/transpose:y:0.sequential_2/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_24/Tensordot/MatMulMatMul0sequential_2/dense_24/Tensordot/Reshape:output:06sequential_2/dense_24/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_24/Tensordot/concat_1ConcatV21sequential_2/dense_24/Tensordot/GatherV2:output:00sequential_2/dense_24/Tensordot/Const_2:output:06sequential_2/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_24/TensordotReshape0sequential_2/dense_24/Tensordot/MatMul:product:01sequential_2/dense_24/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_24/BiasAddBiasAdd(sequential_2/dense_24/Tensordot:output:04sequential_2/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_24/ReluRelu&sequential_2/dense_24/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
 sequential_2/dropout_14/IdentityIdentity(sequential_2/dense_24/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_25/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_25_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_25/Tensordot/ShapeShape)sequential_2/dropout_14/Identity:output:0*
T0*
_output_shapes
:o
-sequential_2/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_25/Tensordot/GatherV2GatherV2.sequential_2/dense_25/Tensordot/Shape:output:0-sequential_2/dense_25/Tensordot/free:output:06sequential_2/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_25/Tensordot/GatherV2_1GatherV2.sequential_2/dense_25/Tensordot/Shape:output:0-sequential_2/dense_25/Tensordot/axes:output:08sequential_2/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_25/Tensordot/ProdProd1sequential_2/dense_25/Tensordot/GatherV2:output:0.sequential_2/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_25/Tensordot/Prod_1Prod3sequential_2/dense_25/Tensordot/GatherV2_1:output:00sequential_2/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_25/Tensordot/concatConcatV2-sequential_2/dense_25/Tensordot/free:output:0-sequential_2/dense_25/Tensordot/axes:output:04sequential_2/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_25/Tensordot/stackPack-sequential_2/dense_25/Tensordot/Prod:output:0/sequential_2/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_25/Tensordot/transpose	Transpose)sequential_2/dropout_14/Identity:output:0/sequential_2/dense_25/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_25/Tensordot/ReshapeReshape-sequential_2/dense_25/Tensordot/transpose:y:0.sequential_2/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_25/Tensordot/MatMulMatMul0sequential_2/dense_25/Tensordot/Reshape:output:06sequential_2/dense_25/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_25/Tensordot/concat_1ConcatV21sequential_2/dense_25/Tensordot/GatherV2:output:00sequential_2/dense_25/Tensordot/Const_2:output:06sequential_2/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_25/TensordotReshape0sequential_2/dense_25/Tensordot/MatMul:product:01sequential_2/dense_25/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_25/BiasAddBiasAdd(sequential_2/dense_25/Tensordot:output:04sequential_2/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_25/ReluRelu&sequential_2/dense_25/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
 sequential_2/dropout_15/IdentityIdentity(sequential_2/dense_25/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_26/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_26_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_26/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_26/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_26/Tensordot/ShapeShape)sequential_2/dropout_15/Identity:output:0*
T0*
_output_shapes
:o
-sequential_2/dense_26/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_26/Tensordot/GatherV2GatherV2.sequential_2/dense_26/Tensordot/Shape:output:0-sequential_2/dense_26/Tensordot/free:output:06sequential_2/dense_26/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_26/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_26/Tensordot/GatherV2_1GatherV2.sequential_2/dense_26/Tensordot/Shape:output:0-sequential_2/dense_26/Tensordot/axes:output:08sequential_2/dense_26/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_26/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_26/Tensordot/ProdProd1sequential_2/dense_26/Tensordot/GatherV2:output:0.sequential_2/dense_26/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_26/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_26/Tensordot/Prod_1Prod3sequential_2/dense_26/Tensordot/GatherV2_1:output:00sequential_2/dense_26/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_26/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_26/Tensordot/concatConcatV2-sequential_2/dense_26/Tensordot/free:output:0-sequential_2/dense_26/Tensordot/axes:output:04sequential_2/dense_26/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_26/Tensordot/stackPack-sequential_2/dense_26/Tensordot/Prod:output:0/sequential_2/dense_26/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_26/Tensordot/transpose	Transpose)sequential_2/dropout_15/Identity:output:0/sequential_2/dense_26/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_26/Tensordot/ReshapeReshape-sequential_2/dense_26/Tensordot/transpose:y:0.sequential_2/dense_26/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_26/Tensordot/MatMulMatMul0sequential_2/dense_26/Tensordot/Reshape:output:06sequential_2/dense_26/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_26/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_26/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_26/Tensordot/concat_1ConcatV21sequential_2/dense_26/Tensordot/GatherV2:output:00sequential_2/dense_26/Tensordot/Const_2:output:06sequential_2/dense_26/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_26/TensordotReshape0sequential_2/dense_26/Tensordot/MatMul:product:01sequential_2/dense_26/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_26/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_26/BiasAddBiasAdd(sequential_2/dense_26/Tensordot:output:04sequential_2/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_26/ReluRelu&sequential_2/dense_26/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
 sequential_2/dropout_16/IdentityIdentity(sequential_2/dense_26/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_27/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_27_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_27/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_27/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_27/Tensordot/ShapeShape)sequential_2/dropout_16/Identity:output:0*
T0*
_output_shapes
:o
-sequential_2/dense_27/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_27/Tensordot/GatherV2GatherV2.sequential_2/dense_27/Tensordot/Shape:output:0-sequential_2/dense_27/Tensordot/free:output:06sequential_2/dense_27/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_27/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_27/Tensordot/GatherV2_1GatherV2.sequential_2/dense_27/Tensordot/Shape:output:0-sequential_2/dense_27/Tensordot/axes:output:08sequential_2/dense_27/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_27/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_27/Tensordot/ProdProd1sequential_2/dense_27/Tensordot/GatherV2:output:0.sequential_2/dense_27/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_27/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_27/Tensordot/Prod_1Prod3sequential_2/dense_27/Tensordot/GatherV2_1:output:00sequential_2/dense_27/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_27/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_27/Tensordot/concatConcatV2-sequential_2/dense_27/Tensordot/free:output:0-sequential_2/dense_27/Tensordot/axes:output:04sequential_2/dense_27/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_27/Tensordot/stackPack-sequential_2/dense_27/Tensordot/Prod:output:0/sequential_2/dense_27/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_27/Tensordot/transpose	Transpose)sequential_2/dropout_16/Identity:output:0/sequential_2/dense_27/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_27/Tensordot/ReshapeReshape-sequential_2/dense_27/Tensordot/transpose:y:0.sequential_2/dense_27/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_27/Tensordot/MatMulMatMul0sequential_2/dense_27/Tensordot/Reshape:output:06sequential_2/dense_27/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_27/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_27/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_27/Tensordot/concat_1ConcatV21sequential_2/dense_27/Tensordot/GatherV2:output:00sequential_2/dense_27/Tensordot/Const_2:output:06sequential_2/dense_27/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_27/TensordotReshape0sequential_2/dense_27/Tensordot/MatMul:product:01sequential_2/dense_27/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_27/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_27/BiasAddBiasAdd(sequential_2/dense_27/Tensordot:output:04sequential_2/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????
dropout_18/IdentityIdentity&sequential_2/dense_27/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
add_1AddV2layer_normalization_4/add:z:0dropout_18/Identity:output:0*
T0*-
_output_shapes
:???????????T
layer_normalization_5/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_5/strided_sliceStridedSlice$layer_normalization_5/Shape:output:02layer_normalization_5/strided_slice/stack:output:04layer_normalization_5/strided_slice/stack_1:output:04layer_normalization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_5/mulMul$layer_normalization_5/mul/x:output:0,layer_normalization_5/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_5/strided_slice_1StridedSlice$layer_normalization_5/Shape:output:04layer_normalization_5/strided_slice_1/stack:output:06layer_normalization_5/strided_slice_1/stack_1:output:06layer_normalization_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_5/mul_1Mullayer_normalization_5/mul:z:0.layer_normalization_5/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_5/strided_slice_2StridedSlice$layer_normalization_5/Shape:output:04layer_normalization_5/strided_slice_2/stack:output:06layer_normalization_5/strided_slice_2/stack_1:output:06layer_normalization_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_5/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_5/mul_2Mul&layer_normalization_5/mul_2/x:output:0.layer_normalization_5/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_5/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_5/Reshape/shapePack.layer_normalization_5/Reshape/shape/0:output:0layer_normalization_5/mul_1:z:0layer_normalization_5/mul_2:z:0.layer_normalization_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_5/ReshapeReshape	add_1:z:0,layer_normalization_5/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_5/ones/packedPacklayer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_5/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_5/onesFill*layer_normalization_5/ones/packed:output:0)layer_normalization_5/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_5/zeros/packedPacklayer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_5/zerosFill+layer_normalization_5/zeros/packed:output:0*layer_normalization_5/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_5/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_5/FusedBatchNormV3FusedBatchNormV3&layer_normalization_5/Reshape:output:0#layer_normalization_5/ones:output:0$layer_normalization_5/zeros:output:0$layer_normalization_5/Const:output:0&layer_normalization_5/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_5/Reshape_1Reshape*layer_normalization_5/FusedBatchNormV3:y:0$layer_normalization_5/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_5/mul_3/ReadVariableOpReadVariableOp3layer_normalization_5_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_5/mul_3Mul(layer_normalization_5/Reshape_1:output:02layer_normalization_5/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_5/add/ReadVariableOpReadVariableOp1layer_normalization_5_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_5/addAddV2layer_normalization_5/mul_3:z:00layer_normalization_5/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
IdentityIdentitylayer_normalization_5/add:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp)^layer_normalization_4/add/ReadVariableOp+^layer_normalization_4/mul_3/ReadVariableOp)^layer_normalization_5/add/ReadVariableOp+^layer_normalization_5/mul_3/ReadVariableOp7^multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_20/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_21/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_22/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_23/Tensordot/ReadVariableOp-^sequential_2/dense_24/BiasAdd/ReadVariableOp/^sequential_2/dense_24/Tensordot/ReadVariableOp-^sequential_2/dense_25/BiasAdd/ReadVariableOp/^sequential_2/dense_25/Tensordot/ReadVariableOp-^sequential_2/dense_26/BiasAdd/ReadVariableOp/^sequential_2/dense_26/Tensordot/ReadVariableOp-^sequential_2/dense_27/BiasAdd/ReadVariableOp/^sequential_2/dense_27/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : : : 2T
(layer_normalization_4/add/ReadVariableOp(layer_normalization_4/add/ReadVariableOp2X
*layer_normalization_4/mul_3/ReadVariableOp*layer_normalization_4/mul_3/ReadVariableOp2T
(layer_normalization_5/add/ReadVariableOp(layer_normalization_5/add/ReadVariableOp2X
*layer_normalization_5/mul_3/ReadVariableOp*layer_normalization_5/mul_3/ReadVariableOp2p
6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp2\
,sequential_2/dense_24/BiasAdd/ReadVariableOp,sequential_2/dense_24/BiasAdd/ReadVariableOp2`
.sequential_2/dense_24/Tensordot/ReadVariableOp.sequential_2/dense_24/Tensordot/ReadVariableOp2\
,sequential_2/dense_25/BiasAdd/ReadVariableOp,sequential_2/dense_25/BiasAdd/ReadVariableOp2`
.sequential_2/dense_25/Tensordot/ReadVariableOp.sequential_2/dense_25/Tensordot/ReadVariableOp2\
,sequential_2/dense_26/BiasAdd/ReadVariableOp,sequential_2/dense_26/BiasAdd/ReadVariableOp2`
.sequential_2/dense_26/Tensordot/ReadVariableOp.sequential_2/dense_26/Tensordot/ReadVariableOp2\
,sequential_2/dense_27/BiasAdd/ReadVariableOp,sequential_2/dense_27/BiasAdd/ReadVariableOp2`
.sequential_2/dense_27/Tensordot/ReadVariableOp.sequential_2/dense_27/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_106293

inputs#
dense_24_106156:
??
dense_24_106158:	?#
dense_25_106200:
??
dense_25_106202:	?#
dense_26_106244:
??
dense_26_106246:	?#
dense_27_106287:
??
dense_27_106289:	?
identity?? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall? dense_27/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCallinputsdense_24_106156dense_24_106158*
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
D__inference_dense_24_layer_call_and_return_conditional_losses_106155?
dropout_14/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_106166?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_25_106200dense_25_106202*
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
D__inference_dense_25_layer_call_and_return_conditional_losses_106199?
dropout_15/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_106210?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_26_106244dense_26_106246*
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
D__inference_dense_26_layer_call_and_return_conditional_losses_106243?
dropout_16/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_106254?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0dense_27_106287dense_27_106289*
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
D__inference_dense_27_layer_call_and_return_conditional_losses_106286~
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
-__inference_sequential_2_layer_call_fn_106312
dense_24_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_106293u
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
_user_specified_namedense_24_input
?
G
+__inference_dropout_15_layer_call_fn_110420

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
GPU 2J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_106210f
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
F__inference_dropout_16_layer_call_and_return_conditional_losses_106254

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
-__inference_sequential_2_layer_call_fn_110059

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
H__inference_sequential_2_layer_call_and_return_conditional_losses_106471u
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
?$
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_106565
dense_24_input#
dense_24_106541:
??
dense_24_106543:	?#
dense_25_106547:
??
dense_25_106549:	?#
dense_26_106553:
??
dense_26_106555:	?#
dense_27_106559:
??
dense_27_106561:	?
identity?? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall? dense_27/StatefulPartitionedCall?"dropout_14/StatefulPartitionedCall?"dropout_15/StatefulPartitionedCall?"dropout_16/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCalldense_24_inputdense_24_106541dense_24_106543*
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
D__inference_dense_24_layer_call_and_return_conditional_losses_106155?
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_106408?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0dense_25_106547dense_25_106549*
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
D__inference_dense_25_layer_call_and_return_conditional_losses_106199?
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_106375?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0dense_26_106553dense_26_106555*
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
D__inference_dense_26_layer_call_and_return_conditional_losses_106243?
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0#^dropout_15/StatefulPartitionedCall*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_106342?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0dense_27_106559dense_27_106561*
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
D__inference_dense_27_layer_call_and_return_conditional_losses_106286~
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall:] Y
-
_output_shapes
:???????????
(
_user_specified_namedense_24_input
?

e
F__inference_dropout_15_layer_call_and_return_conditional_losses_110442

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
Ս
?
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_109912

inputsU
Amulti_head_attention_2_dense_20_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_20_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_21_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_21_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_22_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_22_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_23_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_23_biasadd_readvariableop_resource:	?B
3layer_normalization_4_mul_3_readvariableop_resource:	?@
1layer_normalization_4_add_readvariableop_resource:	?K
7sequential_2_dense_24_tensordot_readvariableop_resource:
??D
5sequential_2_dense_24_biasadd_readvariableop_resource:	?K
7sequential_2_dense_25_tensordot_readvariableop_resource:
??D
5sequential_2_dense_25_biasadd_readvariableop_resource:	?K
7sequential_2_dense_26_tensordot_readvariableop_resource:
??D
5sequential_2_dense_26_biasadd_readvariableop_resource:	?K
7sequential_2_dense_27_tensordot_readvariableop_resource:
??D
5sequential_2_dense_27_biasadd_readvariableop_resource:	?B
3layer_normalization_5_mul_3_readvariableop_resource:	?@
1layer_normalization_5_add_readvariableop_resource:	?
identity??(layer_normalization_4/add/ReadVariableOp?*layer_normalization_4/mul_3/ReadVariableOp?(layer_normalization_5/add/ReadVariableOp?*layer_normalization_5/mul_3/ReadVariableOp?6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp?,sequential_2/dense_24/BiasAdd/ReadVariableOp?.sequential_2/dense_24/Tensordot/ReadVariableOp?,sequential_2/dense_25/BiasAdd/ReadVariableOp?.sequential_2/dense_25/Tensordot/ReadVariableOp?,sequential_2/dense_26/BiasAdd/ReadVariableOp?.sequential_2/dense_26/Tensordot/ReadVariableOp?,sequential_2/dense_27/BiasAdd/ReadVariableOp?.sequential_2/dense_27/Tensordot/ReadVariableOpR
multi_head_attention_2/ShapeShapeinputs*
T0*
_output_shapes
:t
*multi_head_attention_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,multi_head_attention_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,multi_head_attention_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$multi_head_attention_2/strided_sliceStridedSlice%multi_head_attention_2/Shape:output:03multi_head_attention_2/strided_slice/stack:output:05multi_head_attention_2/strided_slice/stack_1:output:05multi_head_attention_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
8multi_head_attention_2/dense_20/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_20_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_20/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_20/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_20/Tensordot/Shape:output:07multi_head_attention_2/dense_20/Tensordot/free:output:0@multi_head_attention_2/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_20/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_20/Tensordot/Shape:output:07multi_head_attention_2/dense_20/Tensordot/axes:output:0Bmulti_head_attention_2/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_20/Tensordot/ProdProd;multi_head_attention_2/dense_20/Tensordot/GatherV2:output:08multi_head_attention_2/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_20/Tensordot/Prod_1Prod=multi_head_attention_2/dense_20/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_20/Tensordot/concatConcatV27multi_head_attention_2/dense_20/Tensordot/free:output:07multi_head_attention_2/dense_20/Tensordot/axes:output:0>multi_head_attention_2/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_20/Tensordot/stackPack7multi_head_attention_2/dense_20/Tensordot/Prod:output:09multi_head_attention_2/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_20/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_20/Tensordot/ReshapeReshape7multi_head_attention_2/dense_20/Tensordot/transpose:y:08multi_head_attention_2/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_20/Tensordot/MatMulMatMul:multi_head_attention_2/dense_20/Tensordot/Reshape:output:0@multi_head_attention_2/dense_20/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_20/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_20/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_20/Tensordot/Const_2:output:0@multi_head_attention_2/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_20/TensordotReshape:multi_head_attention_2/dense_20/Tensordot/MatMul:product:0;multi_head_attention_2/dense_20/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_20/BiasAddBiasAdd2multi_head_attention_2/dense_20/Tensordot:output:0>multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_20/ReluRelu0multi_head_attention_2/dense_20/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_2/dense_21/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_21_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_21/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_21/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_21/Tensordot/Shape:output:07multi_head_attention_2/dense_21/Tensordot/free:output:0@multi_head_attention_2/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_21/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_21/Tensordot/Shape:output:07multi_head_attention_2/dense_21/Tensordot/axes:output:0Bmulti_head_attention_2/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_21/Tensordot/ProdProd;multi_head_attention_2/dense_21/Tensordot/GatherV2:output:08multi_head_attention_2/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_21/Tensordot/Prod_1Prod=multi_head_attention_2/dense_21/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_21/Tensordot/concatConcatV27multi_head_attention_2/dense_21/Tensordot/free:output:07multi_head_attention_2/dense_21/Tensordot/axes:output:0>multi_head_attention_2/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_21/Tensordot/stackPack7multi_head_attention_2/dense_21/Tensordot/Prod:output:09multi_head_attention_2/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_21/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_21/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_21/Tensordot/ReshapeReshape7multi_head_attention_2/dense_21/Tensordot/transpose:y:08multi_head_attention_2/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_21/Tensordot/MatMulMatMul:multi_head_attention_2/dense_21/Tensordot/Reshape:output:0@multi_head_attention_2/dense_21/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_21/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_21/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_21/Tensordot/Const_2:output:0@multi_head_attention_2/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_21/TensordotReshape:multi_head_attention_2/dense_21/Tensordot/MatMul:product:0;multi_head_attention_2/dense_21/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_21/BiasAddBiasAdd2multi_head_attention_2/dense_21/Tensordot:output:0>multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_21/ReluRelu0multi_head_attention_2/dense_21/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_2/dense_22/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_22_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_22/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_22/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_22/Tensordot/Shape:output:07multi_head_attention_2/dense_22/Tensordot/free:output:0@multi_head_attention_2/dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_22/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_22/Tensordot/Shape:output:07multi_head_attention_2/dense_22/Tensordot/axes:output:0Bmulti_head_attention_2/dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_22/Tensordot/ProdProd;multi_head_attention_2/dense_22/Tensordot/GatherV2:output:08multi_head_attention_2/dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_22/Tensordot/Prod_1Prod=multi_head_attention_2/dense_22/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_22/Tensordot/concatConcatV27multi_head_attention_2/dense_22/Tensordot/free:output:07multi_head_attention_2/dense_22/Tensordot/axes:output:0>multi_head_attention_2/dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_22/Tensordot/stackPack7multi_head_attention_2/dense_22/Tensordot/Prod:output:09multi_head_attention_2/dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_22/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_22/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_22/Tensordot/ReshapeReshape7multi_head_attention_2/dense_22/Tensordot/transpose:y:08multi_head_attention_2/dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_22/Tensordot/MatMulMatMul:multi_head_attention_2/dense_22/Tensordot/Reshape:output:0@multi_head_attention_2/dense_22/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_22/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_22/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_22/Tensordot/Const_2:output:0@multi_head_attention_2/dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_22/TensordotReshape:multi_head_attention_2/dense_22/Tensordot/MatMul:product:0;multi_head_attention_2/dense_22/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_22/BiasAddBiasAdd2multi_head_attention_2/dense_22/Tensordot:output:0>multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_22/ReluRelu0multi_head_attention_2/dense_22/BiasAdd:output:0*
T0*-
_output_shapes
:???????????q
&multi_head_attention_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????h
&multi_head_attention_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&multi_head_attention_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
$multi_head_attention_2/Reshape/shapePack-multi_head_attention_2/strided_slice:output:0/multi_head_attention_2/Reshape/shape/1:output:0/multi_head_attention_2/Reshape/shape/2:output:0/multi_head_attention_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
multi_head_attention_2/ReshapeReshape2multi_head_attention_2/dense_20/Relu:activations:0-multi_head_attention_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ~
%multi_head_attention_2/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 multi_head_attention_2/transpose	Transpose'multi_head_attention_2/Reshape:output:0.multi_head_attention_2/transpose/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_2/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_2/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
&multi_head_attention_2/Reshape_1/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_1/shape/1:output:01multi_head_attention_2/Reshape_1/shape/2:output:01multi_head_attention_2/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_1Reshape2multi_head_attention_2/dense_21/Relu:activations:0/multi_head_attention_2/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_1	Transpose)multi_head_attention_2/Reshape_1:output:00multi_head_attention_2/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_2/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_2/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
&multi_head_attention_2/Reshape_2/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_2/shape/1:output:01multi_head_attention_2/Reshape_2/shape/2:output:01multi_head_attention_2/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_2Reshape2multi_head_attention_2/dense_22/Relu:activations:0/multi_head_attention_2/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_2	Transpose)multi_head_attention_2/Reshape_2:output:00multi_head_attention_2/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
multi_head_attention_2/MatMulBatchMatMulV2$multi_head_attention_2/transpose:y:0&multi_head_attention_2/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(t
multi_head_attention_2/Shape_1Shape&multi_head_attention_2/transpose_1:y:0*
T0*
_output_shapes
:
,multi_head_attention_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.multi_head_attention_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.multi_head_attention_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&multi_head_attention_2/strided_slice_1StridedSlice'multi_head_attention_2/Shape_1:output:05multi_head_attention_2/strided_slice_1/stack:output:07multi_head_attention_2/strided_slice_1/stack_1:output:07multi_head_attention_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
multi_head_attention_2/CastCast/multi_head_attention_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: e
multi_head_attention_2/SqrtSqrtmulti_head_attention_2/Cast:y:0*
T0*
_output_shapes
: ?
multi_head_attention_2/truedivRealDiv&multi_head_attention_2/MatMul:output:0multi_head_attention_2/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_2/SoftmaxSoftmax"multi_head_attention_2/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_2/MatMul_1BatchMatMulV2(multi_head_attention_2/Softmax:softmax:0&multi_head_attention_2/transpose_2:y:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_3	Transpose(multi_head_attention_2/MatMul_1:output:00multi_head_attention_2/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????k
(multi_head_attention_2/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
&multi_head_attention_2/Reshape_3/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_3/shape/1:output:01multi_head_attention_2/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_3Reshape&multi_head_attention_2/transpose_3:y:0/multi_head_attention_2/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
8multi_head_attention_2/dense_23/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_23_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_23/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_23/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
/multi_head_attention_2/dense_23/Tensordot/ShapeShape)multi_head_attention_2/Reshape_3:output:0*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_23/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_23/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_23/Tensordot/Shape:output:07multi_head_attention_2/dense_23/Tensordot/free:output:0@multi_head_attention_2/dense_23/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_23/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_23/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_23/Tensordot/Shape:output:07multi_head_attention_2/dense_23/Tensordot/axes:output:0Bmulti_head_attention_2/dense_23/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_23/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_23/Tensordot/ProdProd;multi_head_attention_2/dense_23/Tensordot/GatherV2:output:08multi_head_attention_2/dense_23/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_23/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_23/Tensordot/Prod_1Prod=multi_head_attention_2/dense_23/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_23/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_23/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_23/Tensordot/concatConcatV27multi_head_attention_2/dense_23/Tensordot/free:output:07multi_head_attention_2/dense_23/Tensordot/axes:output:0>multi_head_attention_2/dense_23/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_23/Tensordot/stackPack7multi_head_attention_2/dense_23/Tensordot/Prod:output:09multi_head_attention_2/dense_23/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_23/Tensordot/transpose	Transpose)multi_head_attention_2/Reshape_3:output:09multi_head_attention_2/dense_23/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
1multi_head_attention_2/dense_23/Tensordot/ReshapeReshape7multi_head_attention_2/dense_23/Tensordot/transpose:y:08multi_head_attention_2/dense_23/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_23/Tensordot/MatMulMatMul:multi_head_attention_2/dense_23/Tensordot/Reshape:output:0@multi_head_attention_2/dense_23/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_23/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_23/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_23/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_23/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_23/Tensordot/Const_2:output:0@multi_head_attention_2/dense_23/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_23/TensordotReshape:multi_head_attention_2/dense_23/Tensordot/MatMul:product:0;multi_head_attention_2/dense_23/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_23/BiasAddBiasAdd2multi_head_attention_2/dense_23/Tensordot:output:0>multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
$multi_head_attention_2/dense_23/ReluRelu0multi_head_attention_2/dense_23/BiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????]
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_17/dropout/MulMul2multi_head_attention_2/dense_23/Relu:activations:0!dropout_17/dropout/Const:output:0*
T0*5
_output_shapes#
!:???????????????????z
dropout_17/dropout/ShapeShape2multi_head_attention_2/dense_23/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype0*
seed2????f
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:????????????????????
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:????????????????????
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*5
_output_shapes#
!:???????????????????j
addAddV2inputsdropout_17/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????R
layer_normalization_4/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_4/strided_sliceStridedSlice$layer_normalization_4/Shape:output:02layer_normalization_4/strided_slice/stack:output:04layer_normalization_4/strided_slice/stack_1:output:04layer_normalization_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_4/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_4/mulMul$layer_normalization_4/mul/x:output:0,layer_normalization_4/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_4/strided_slice_1StridedSlice$layer_normalization_4/Shape:output:04layer_normalization_4/strided_slice_1/stack:output:06layer_normalization_4/strided_slice_1/stack_1:output:06layer_normalization_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_4/mul_1Mullayer_normalization_4/mul:z:0.layer_normalization_4/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_4/strided_slice_2StridedSlice$layer_normalization_4/Shape:output:04layer_normalization_4/strided_slice_2/stack:output:06layer_normalization_4/strided_slice_2/stack_1:output:06layer_normalization_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_4/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_4/mul_2Mul&layer_normalization_4/mul_2/x:output:0.layer_normalization_4/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_4/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_4/Reshape/shapePack.layer_normalization_4/Reshape/shape/0:output:0layer_normalization_4/mul_1:z:0layer_normalization_4/mul_2:z:0.layer_normalization_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_4/ReshapeReshapeadd:z:0,layer_normalization_4/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_4/ones/packedPacklayer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_4/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_4/onesFill*layer_normalization_4/ones/packed:output:0)layer_normalization_4/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_4/zeros/packedPacklayer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_4/zerosFill+layer_normalization_4/zeros/packed:output:0*layer_normalization_4/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_4/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_4/FusedBatchNormV3FusedBatchNormV3&layer_normalization_4/Reshape:output:0#layer_normalization_4/ones:output:0$layer_normalization_4/zeros:output:0$layer_normalization_4/Const:output:0&layer_normalization_4/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_4/Reshape_1Reshape*layer_normalization_4/FusedBatchNormV3:y:0$layer_normalization_4/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_4/mul_3/ReadVariableOpReadVariableOp3layer_normalization_4_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_4/mul_3Mul(layer_normalization_4/Reshape_1:output:02layer_normalization_4/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_4/add/ReadVariableOpReadVariableOp1layer_normalization_4_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_4/addAddV2layer_normalization_4/mul_3:z:00layer_normalization_4/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_24/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_24_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
%sequential_2/dense_24/Tensordot/ShapeShapelayer_normalization_4/add:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_24/Tensordot/GatherV2GatherV2.sequential_2/dense_24/Tensordot/Shape:output:0-sequential_2/dense_24/Tensordot/free:output:06sequential_2/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_24/Tensordot/GatherV2_1GatherV2.sequential_2/dense_24/Tensordot/Shape:output:0-sequential_2/dense_24/Tensordot/axes:output:08sequential_2/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_24/Tensordot/ProdProd1sequential_2/dense_24/Tensordot/GatherV2:output:0.sequential_2/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_24/Tensordot/Prod_1Prod3sequential_2/dense_24/Tensordot/GatherV2_1:output:00sequential_2/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_24/Tensordot/concatConcatV2-sequential_2/dense_24/Tensordot/free:output:0-sequential_2/dense_24/Tensordot/axes:output:04sequential_2/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_24/Tensordot/stackPack-sequential_2/dense_24/Tensordot/Prod:output:0/sequential_2/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_24/Tensordot/transpose	Transposelayer_normalization_4/add:z:0/sequential_2/dense_24/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_24/Tensordot/ReshapeReshape-sequential_2/dense_24/Tensordot/transpose:y:0.sequential_2/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_24/Tensordot/MatMulMatMul0sequential_2/dense_24/Tensordot/Reshape:output:06sequential_2/dense_24/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_24/Tensordot/concat_1ConcatV21sequential_2/dense_24/Tensordot/GatherV2:output:00sequential_2/dense_24/Tensordot/Const_2:output:06sequential_2/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_24/TensordotReshape0sequential_2/dense_24/Tensordot/MatMul:product:01sequential_2/dense_24/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_24/BiasAddBiasAdd(sequential_2/dense_24/Tensordot:output:04sequential_2/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_24/ReluRelu&sequential_2/dense_24/BiasAdd:output:0*
T0*-
_output_shapes
:???????????j
%sequential_2/dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
#sequential_2/dropout_14/dropout/MulMul(sequential_2/dense_24/Relu:activations:0.sequential_2/dropout_14/dropout/Const:output:0*
T0*-
_output_shapes
:???????????}
%sequential_2/dropout_14/dropout/ShapeShape(sequential_2/dense_24/Relu:activations:0*
T0*
_output_shapes
:?
<sequential_2/dropout_14/dropout/random_uniform/RandomUniformRandomUniform.sequential_2/dropout_14/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2s
.sequential_2/dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
,sequential_2/dropout_14/dropout/GreaterEqualGreaterEqualEsequential_2/dropout_14/dropout/random_uniform/RandomUniform:output:07sequential_2/dropout_14/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
$sequential_2/dropout_14/dropout/CastCast0sequential_2/dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
%sequential_2/dropout_14/dropout/Mul_1Mul'sequential_2/dropout_14/dropout/Mul:z:0(sequential_2/dropout_14/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_25/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_25_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_25/Tensordot/ShapeShape)sequential_2/dropout_14/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_25/Tensordot/GatherV2GatherV2.sequential_2/dense_25/Tensordot/Shape:output:0-sequential_2/dense_25/Tensordot/free:output:06sequential_2/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_25/Tensordot/GatherV2_1GatherV2.sequential_2/dense_25/Tensordot/Shape:output:0-sequential_2/dense_25/Tensordot/axes:output:08sequential_2/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_25/Tensordot/ProdProd1sequential_2/dense_25/Tensordot/GatherV2:output:0.sequential_2/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_25/Tensordot/Prod_1Prod3sequential_2/dense_25/Tensordot/GatherV2_1:output:00sequential_2/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_25/Tensordot/concatConcatV2-sequential_2/dense_25/Tensordot/free:output:0-sequential_2/dense_25/Tensordot/axes:output:04sequential_2/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_25/Tensordot/stackPack-sequential_2/dense_25/Tensordot/Prod:output:0/sequential_2/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_25/Tensordot/transpose	Transpose)sequential_2/dropout_14/dropout/Mul_1:z:0/sequential_2/dense_25/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_25/Tensordot/ReshapeReshape-sequential_2/dense_25/Tensordot/transpose:y:0.sequential_2/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_25/Tensordot/MatMulMatMul0sequential_2/dense_25/Tensordot/Reshape:output:06sequential_2/dense_25/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_25/Tensordot/concat_1ConcatV21sequential_2/dense_25/Tensordot/GatherV2:output:00sequential_2/dense_25/Tensordot/Const_2:output:06sequential_2/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_25/TensordotReshape0sequential_2/dense_25/Tensordot/MatMul:product:01sequential_2/dense_25/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_25/BiasAddBiasAdd(sequential_2/dense_25/Tensordot:output:04sequential_2/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_25/ReluRelu&sequential_2/dense_25/BiasAdd:output:0*
T0*-
_output_shapes
:???????????j
%sequential_2/dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
#sequential_2/dropout_15/dropout/MulMul(sequential_2/dense_25/Relu:activations:0.sequential_2/dropout_15/dropout/Const:output:0*
T0*-
_output_shapes
:???????????}
%sequential_2/dropout_15/dropout/ShapeShape(sequential_2/dense_25/Relu:activations:0*
T0*
_output_shapes
:?
<sequential_2/dropout_15/dropout/random_uniform/RandomUniformRandomUniform.sequential_2/dropout_15/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2s
.sequential_2/dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
,sequential_2/dropout_15/dropout/GreaterEqualGreaterEqualEsequential_2/dropout_15/dropout/random_uniform/RandomUniform:output:07sequential_2/dropout_15/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
$sequential_2/dropout_15/dropout/CastCast0sequential_2/dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
%sequential_2/dropout_15/dropout/Mul_1Mul'sequential_2/dropout_15/dropout/Mul:z:0(sequential_2/dropout_15/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_26/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_26_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_26/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_26/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_26/Tensordot/ShapeShape)sequential_2/dropout_15/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_26/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_26/Tensordot/GatherV2GatherV2.sequential_2/dense_26/Tensordot/Shape:output:0-sequential_2/dense_26/Tensordot/free:output:06sequential_2/dense_26/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_26/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_26/Tensordot/GatherV2_1GatherV2.sequential_2/dense_26/Tensordot/Shape:output:0-sequential_2/dense_26/Tensordot/axes:output:08sequential_2/dense_26/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_26/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_26/Tensordot/ProdProd1sequential_2/dense_26/Tensordot/GatherV2:output:0.sequential_2/dense_26/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_26/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_26/Tensordot/Prod_1Prod3sequential_2/dense_26/Tensordot/GatherV2_1:output:00sequential_2/dense_26/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_26/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_26/Tensordot/concatConcatV2-sequential_2/dense_26/Tensordot/free:output:0-sequential_2/dense_26/Tensordot/axes:output:04sequential_2/dense_26/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_26/Tensordot/stackPack-sequential_2/dense_26/Tensordot/Prod:output:0/sequential_2/dense_26/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_26/Tensordot/transpose	Transpose)sequential_2/dropout_15/dropout/Mul_1:z:0/sequential_2/dense_26/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_26/Tensordot/ReshapeReshape-sequential_2/dense_26/Tensordot/transpose:y:0.sequential_2/dense_26/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_26/Tensordot/MatMulMatMul0sequential_2/dense_26/Tensordot/Reshape:output:06sequential_2/dense_26/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_26/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_26/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_26/Tensordot/concat_1ConcatV21sequential_2/dense_26/Tensordot/GatherV2:output:00sequential_2/dense_26/Tensordot/Const_2:output:06sequential_2/dense_26/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_26/TensordotReshape0sequential_2/dense_26/Tensordot/MatMul:product:01sequential_2/dense_26/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_26/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_26/BiasAddBiasAdd(sequential_2/dense_26/Tensordot:output:04sequential_2/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_26/ReluRelu&sequential_2/dense_26/BiasAdd:output:0*
T0*-
_output_shapes
:???????????j
%sequential_2/dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
#sequential_2/dropout_16/dropout/MulMul(sequential_2/dense_26/Relu:activations:0.sequential_2/dropout_16/dropout/Const:output:0*
T0*-
_output_shapes
:???????????}
%sequential_2/dropout_16/dropout/ShapeShape(sequential_2/dense_26/Relu:activations:0*
T0*
_output_shapes
:?
<sequential_2/dropout_16/dropout/random_uniform/RandomUniformRandomUniform.sequential_2/dropout_16/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2s
.sequential_2/dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
,sequential_2/dropout_16/dropout/GreaterEqualGreaterEqualEsequential_2/dropout_16/dropout/random_uniform/RandomUniform:output:07sequential_2/dropout_16/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
$sequential_2/dropout_16/dropout/CastCast0sequential_2/dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
%sequential_2/dropout_16/dropout/Mul_1Mul'sequential_2/dropout_16/dropout/Mul:z:0(sequential_2/dropout_16/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_27/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_27_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_27/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_27/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_27/Tensordot/ShapeShape)sequential_2/dropout_16/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_27/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_27/Tensordot/GatherV2GatherV2.sequential_2/dense_27/Tensordot/Shape:output:0-sequential_2/dense_27/Tensordot/free:output:06sequential_2/dense_27/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_27/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_27/Tensordot/GatherV2_1GatherV2.sequential_2/dense_27/Tensordot/Shape:output:0-sequential_2/dense_27/Tensordot/axes:output:08sequential_2/dense_27/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_27/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_27/Tensordot/ProdProd1sequential_2/dense_27/Tensordot/GatherV2:output:0.sequential_2/dense_27/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_27/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_27/Tensordot/Prod_1Prod3sequential_2/dense_27/Tensordot/GatherV2_1:output:00sequential_2/dense_27/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_27/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_27/Tensordot/concatConcatV2-sequential_2/dense_27/Tensordot/free:output:0-sequential_2/dense_27/Tensordot/axes:output:04sequential_2/dense_27/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_27/Tensordot/stackPack-sequential_2/dense_27/Tensordot/Prod:output:0/sequential_2/dense_27/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_27/Tensordot/transpose	Transpose)sequential_2/dropout_16/dropout/Mul_1:z:0/sequential_2/dense_27/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_27/Tensordot/ReshapeReshape-sequential_2/dense_27/Tensordot/transpose:y:0.sequential_2/dense_27/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_27/Tensordot/MatMulMatMul0sequential_2/dense_27/Tensordot/Reshape:output:06sequential_2/dense_27/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_27/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_27/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_27/Tensordot/concat_1ConcatV21sequential_2/dense_27/Tensordot/GatherV2:output:00sequential_2/dense_27/Tensordot/Const_2:output:06sequential_2/dense_27/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_27/TensordotReshape0sequential_2/dense_27/Tensordot/MatMul:product:01sequential_2/dense_27/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_27/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_27/BiasAddBiasAdd(sequential_2/dense_27/Tensordot:output:04sequential_2/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????]
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_18/dropout/MulMul&sequential_2/dense_27/BiasAdd:output:0!dropout_18/dropout/Const:output:0*
T0*-
_output_shapes
:???????????n
dropout_18/dropout/ShapeShape&sequential_2/dense_27/BiasAdd:output:0*
T0*
_output_shapes
:?
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2f
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
dropout_18/dropout/CastCast#dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
dropout_18/dropout/Mul_1Muldropout_18/dropout/Mul:z:0dropout_18/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
add_1AddV2layer_normalization_4/add:z:0dropout_18/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????T
layer_normalization_5/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_5/strided_sliceStridedSlice$layer_normalization_5/Shape:output:02layer_normalization_5/strided_slice/stack:output:04layer_normalization_5/strided_slice/stack_1:output:04layer_normalization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_5/mulMul$layer_normalization_5/mul/x:output:0,layer_normalization_5/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_5/strided_slice_1StridedSlice$layer_normalization_5/Shape:output:04layer_normalization_5/strided_slice_1/stack:output:06layer_normalization_5/strided_slice_1/stack_1:output:06layer_normalization_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_5/mul_1Mullayer_normalization_5/mul:z:0.layer_normalization_5/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_5/strided_slice_2StridedSlice$layer_normalization_5/Shape:output:04layer_normalization_5/strided_slice_2/stack:output:06layer_normalization_5/strided_slice_2/stack_1:output:06layer_normalization_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_5/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_5/mul_2Mul&layer_normalization_5/mul_2/x:output:0.layer_normalization_5/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_5/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_5/Reshape/shapePack.layer_normalization_5/Reshape/shape/0:output:0layer_normalization_5/mul_1:z:0layer_normalization_5/mul_2:z:0.layer_normalization_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_5/ReshapeReshape	add_1:z:0,layer_normalization_5/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_5/ones/packedPacklayer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_5/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_5/onesFill*layer_normalization_5/ones/packed:output:0)layer_normalization_5/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_5/zeros/packedPacklayer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_5/zerosFill+layer_normalization_5/zeros/packed:output:0*layer_normalization_5/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_5/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_5/FusedBatchNormV3FusedBatchNormV3&layer_normalization_5/Reshape:output:0#layer_normalization_5/ones:output:0$layer_normalization_5/zeros:output:0$layer_normalization_5/Const:output:0&layer_normalization_5/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_5/Reshape_1Reshape*layer_normalization_5/FusedBatchNormV3:y:0$layer_normalization_5/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_5/mul_3/ReadVariableOpReadVariableOp3layer_normalization_5_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_5/mul_3Mul(layer_normalization_5/Reshape_1:output:02layer_normalization_5/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_5/add/ReadVariableOpReadVariableOp1layer_normalization_5_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_5/addAddV2layer_normalization_5/mul_3:z:00layer_normalization_5/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
IdentityIdentitylayer_normalization_5/add:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp)^layer_normalization_4/add/ReadVariableOp+^layer_normalization_4/mul_3/ReadVariableOp)^layer_normalization_5/add/ReadVariableOp+^layer_normalization_5/mul_3/ReadVariableOp7^multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_20/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_21/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_22/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_23/Tensordot/ReadVariableOp-^sequential_2/dense_24/BiasAdd/ReadVariableOp/^sequential_2/dense_24/Tensordot/ReadVariableOp-^sequential_2/dense_25/BiasAdd/ReadVariableOp/^sequential_2/dense_25/Tensordot/ReadVariableOp-^sequential_2/dense_26/BiasAdd/ReadVariableOp/^sequential_2/dense_26/Tensordot/ReadVariableOp-^sequential_2/dense_27/BiasAdd/ReadVariableOp/^sequential_2/dense_27/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : : : 2T
(layer_normalization_4/add/ReadVariableOp(layer_normalization_4/add/ReadVariableOp2X
*layer_normalization_4/mul_3/ReadVariableOp*layer_normalization_4/mul_3/ReadVariableOp2T
(layer_normalization_5/add/ReadVariableOp(layer_normalization_5/add/ReadVariableOp2X
*layer_normalization_5/mul_3/ReadVariableOp*layer_normalization_5/mul_3/ReadVariableOp2p
6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp2\
,sequential_2/dense_24/BiasAdd/ReadVariableOp,sequential_2/dense_24/BiasAdd/ReadVariableOp2`
.sequential_2/dense_24/Tensordot/ReadVariableOp.sequential_2/dense_24/Tensordot/ReadVariableOp2\
,sequential_2/dense_25/BiasAdd/ReadVariableOp,sequential_2/dense_25/BiasAdd/ReadVariableOp2`
.sequential_2/dense_25/Tensordot/ReadVariableOp.sequential_2/dense_25/Tensordot/ReadVariableOp2\
,sequential_2/dense_26/BiasAdd/ReadVariableOp,sequential_2/dense_26/BiasAdd/ReadVariableOp2`
.sequential_2/dense_26/Tensordot/ReadVariableOp.sequential_2/dense_26/Tensordot/ReadVariableOp2\
,sequential_2/dense_27/BiasAdd/ReadVariableOp,sequential_2/dense_27/BiasAdd/ReadVariableOp2`
.sequential_2/dense_27/Tensordot/ReadVariableOp.sequential_2/dense_27/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_16_layer_call_and_return_conditional_losses_110497

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
D__inference_dense_25_layer_call_and_return_conditional_losses_106199

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
?
D__inference_dense_24_layer_call_and_return_conditional_losses_106155

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
?
)__inference_dense_26_layer_call_fn_110451

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
D__inference_dense_26_layer_call_and_return_conditional_losses_106243u
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
??
?D
"__inference__traced_restore_111127
file_prefix4
 assignvariableop_dense_28_kernel:
??/
 assignvariableop_1_dense_28_bias:	?6
"assignvariableop_2_dense_29_kernel:
??/
 assignvariableop_3_dense_29_bias:	?\
Hassignvariableop_4_token_and_position_embedding_2_embedding_4_embeddings:
??\
Hassignvariableop_5_token_and_position_embedding_2_embedding_5_embeddings:
??a
Massignvariableop_6_transformer_block_2_multi_head_attention_2_dense_20_kernel:
??Z
Kassignvariableop_7_transformer_block_2_multi_head_attention_2_dense_20_bias:	?a
Massignvariableop_8_transformer_block_2_multi_head_attention_2_dense_21_kernel:
??Z
Kassignvariableop_9_transformer_block_2_multi_head_attention_2_dense_21_bias:	?b
Nassignvariableop_10_transformer_block_2_multi_head_attention_2_dense_22_kernel:
??[
Lassignvariableop_11_transformer_block_2_multi_head_attention_2_dense_22_bias:	?b
Nassignvariableop_12_transformer_block_2_multi_head_attention_2_dense_23_kernel:
??[
Lassignvariableop_13_transformer_block_2_multi_head_attention_2_dense_23_bias:	?7
#assignvariableop_14_dense_24_kernel:
??0
!assignvariableop_15_dense_24_bias:	?7
#assignvariableop_16_dense_25_kernel:
??0
!assignvariableop_17_dense_25_bias:	?7
#assignvariableop_18_dense_26_kernel:
??0
!assignvariableop_19_dense_26_bias:	?7
#assignvariableop_20_dense_27_kernel:
??0
!assignvariableop_21_dense_27_bias:	?R
Cassignvariableop_22_transformer_block_2_layer_normalization_4_gamma:	?Q
Bassignvariableop_23_transformer_block_2_layer_normalization_4_beta:	?R
Cassignvariableop_24_transformer_block_2_layer_normalization_5_gamma:	?Q
Bassignvariableop_25_transformer_block_2_layer_normalization_5_beta:	?'
assignvariableop_26_adam_iter:	 )
assignvariableop_27_adam_beta_1: )
assignvariableop_28_adam_beta_2: (
assignvariableop_29_adam_decay: 0
&assignvariableop_30_adam_learning_rate: %
assignvariableop_31_total_1: %
assignvariableop_32_count_1: #
assignvariableop_33_total: #
assignvariableop_34_count: 2
$assignvariableop_35_true_positives_1:1
#assignvariableop_36_false_negatives:0
"assignvariableop_37_true_positives:1
#assignvariableop_38_false_positives:>
*assignvariableop_39_adam_dense_28_kernel_m:
??7
(assignvariableop_40_adam_dense_28_bias_m:	?>
*assignvariableop_41_adam_dense_29_kernel_m:
??7
(assignvariableop_42_adam_dense_29_bias_m:	?d
Passignvariableop_43_adam_token_and_position_embedding_2_embedding_4_embeddings_m:
??d
Passignvariableop_44_adam_token_and_position_embedding_2_embedding_5_embeddings_m:
??i
Uassignvariableop_45_adam_transformer_block_2_multi_head_attention_2_dense_20_kernel_m:
??b
Sassignvariableop_46_adam_transformer_block_2_multi_head_attention_2_dense_20_bias_m:	?i
Uassignvariableop_47_adam_transformer_block_2_multi_head_attention_2_dense_21_kernel_m:
??b
Sassignvariableop_48_adam_transformer_block_2_multi_head_attention_2_dense_21_bias_m:	?i
Uassignvariableop_49_adam_transformer_block_2_multi_head_attention_2_dense_22_kernel_m:
??b
Sassignvariableop_50_adam_transformer_block_2_multi_head_attention_2_dense_22_bias_m:	?i
Uassignvariableop_51_adam_transformer_block_2_multi_head_attention_2_dense_23_kernel_m:
??b
Sassignvariableop_52_adam_transformer_block_2_multi_head_attention_2_dense_23_bias_m:	?>
*assignvariableop_53_adam_dense_24_kernel_m:
??7
(assignvariableop_54_adam_dense_24_bias_m:	?>
*assignvariableop_55_adam_dense_25_kernel_m:
??7
(assignvariableop_56_adam_dense_25_bias_m:	?>
*assignvariableop_57_adam_dense_26_kernel_m:
??7
(assignvariableop_58_adam_dense_26_bias_m:	?>
*assignvariableop_59_adam_dense_27_kernel_m:
??7
(assignvariableop_60_adam_dense_27_bias_m:	?Y
Jassignvariableop_61_adam_transformer_block_2_layer_normalization_4_gamma_m:	?X
Iassignvariableop_62_adam_transformer_block_2_layer_normalization_4_beta_m:	?Y
Jassignvariableop_63_adam_transformer_block_2_layer_normalization_5_gamma_m:	?X
Iassignvariableop_64_adam_transformer_block_2_layer_normalization_5_beta_m:	?>
*assignvariableop_65_adam_dense_28_kernel_v:
??7
(assignvariableop_66_adam_dense_28_bias_v:	?>
*assignvariableop_67_adam_dense_29_kernel_v:
??7
(assignvariableop_68_adam_dense_29_bias_v:	?d
Passignvariableop_69_adam_token_and_position_embedding_2_embedding_4_embeddings_v:
??d
Passignvariableop_70_adam_token_and_position_embedding_2_embedding_5_embeddings_v:
??i
Uassignvariableop_71_adam_transformer_block_2_multi_head_attention_2_dense_20_kernel_v:
??b
Sassignvariableop_72_adam_transformer_block_2_multi_head_attention_2_dense_20_bias_v:	?i
Uassignvariableop_73_adam_transformer_block_2_multi_head_attention_2_dense_21_kernel_v:
??b
Sassignvariableop_74_adam_transformer_block_2_multi_head_attention_2_dense_21_bias_v:	?i
Uassignvariableop_75_adam_transformer_block_2_multi_head_attention_2_dense_22_kernel_v:
??b
Sassignvariableop_76_adam_transformer_block_2_multi_head_attention_2_dense_22_bias_v:	?i
Uassignvariableop_77_adam_transformer_block_2_multi_head_attention_2_dense_23_kernel_v:
??b
Sassignvariableop_78_adam_transformer_block_2_multi_head_attention_2_dense_23_bias_v:	?>
*assignvariableop_79_adam_dense_24_kernel_v:
??7
(assignvariableop_80_adam_dense_24_bias_v:	?>
*assignvariableop_81_adam_dense_25_kernel_v:
??7
(assignvariableop_82_adam_dense_25_bias_v:	?>
*assignvariableop_83_adam_dense_26_kernel_v:
??7
(assignvariableop_84_adam_dense_26_bias_v:	?>
*assignvariableop_85_adam_dense_27_kernel_v:
??7
(assignvariableop_86_adam_dense_27_bias_v:	?Y
Jassignvariableop_87_adam_transformer_block_2_layer_normalization_4_gamma_v:	?X
Iassignvariableop_88_adam_transformer_block_2_layer_normalization_4_beta_v:	?Y
Jassignvariableop_89_adam_transformer_block_2_layer_normalization_5_gamma_v:	?X
Iassignvariableop_90_adam_transformer_block_2_layer_normalization_5_beta_v:	?
identity_92??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?,
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*?+
value?+B?+\B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*?
value?B?\B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*j
dtypes`
^2\	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_dense_28_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_28_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_29_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_29_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpHassignvariableop_4_token_and_position_embedding_2_embedding_4_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpHassignvariableop_5_token_and_position_embedding_2_embedding_5_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpMassignvariableop_6_transformer_block_2_multi_head_attention_2_dense_20_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpKassignvariableop_7_transformer_block_2_multi_head_attention_2_dense_20_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpMassignvariableop_8_transformer_block_2_multi_head_attention_2_dense_21_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpKassignvariableop_9_transformer_block_2_multi_head_attention_2_dense_21_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpNassignvariableop_10_transformer_block_2_multi_head_attention_2_dense_22_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpLassignvariableop_11_transformer_block_2_multi_head_attention_2_dense_22_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpNassignvariableop_12_transformer_block_2_multi_head_attention_2_dense_23_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpLassignvariableop_13_transformer_block_2_multi_head_attention_2_dense_23_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_24_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_24_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_25_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_25_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_26_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_26_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp#assignvariableop_20_dense_27_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp!assignvariableop_21_dense_27_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpCassignvariableop_22_transformer_block_2_layer_normalization_4_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpBassignvariableop_23_transformer_block_2_layer_normalization_4_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpCassignvariableop_24_transformer_block_2_layer_normalization_5_gammaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpBassignvariableop_25_transformer_block_2_layer_normalization_5_betaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_iterIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_beta_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_beta_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_decayIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_learning_rateIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_1Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp$assignvariableop_35_true_positives_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp#assignvariableop_36_false_negativesIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp"assignvariableop_37_true_positivesIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp#assignvariableop_38_false_positivesIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_28_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_28_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_29_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_29_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOpPassignvariableop_43_adam_token_and_position_embedding_2_embedding_4_embeddings_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOpPassignvariableop_44_adam_token_and_position_embedding_2_embedding_5_embeddings_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOpUassignvariableop_45_adam_transformer_block_2_multi_head_attention_2_dense_20_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOpSassignvariableop_46_adam_transformer_block_2_multi_head_attention_2_dense_20_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOpUassignvariableop_47_adam_transformer_block_2_multi_head_attention_2_dense_21_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOpSassignvariableop_48_adam_transformer_block_2_multi_head_attention_2_dense_21_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOpUassignvariableop_49_adam_transformer_block_2_multi_head_attention_2_dense_22_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOpSassignvariableop_50_adam_transformer_block_2_multi_head_attention_2_dense_22_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOpUassignvariableop_51_adam_transformer_block_2_multi_head_attention_2_dense_23_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOpSassignvariableop_52_adam_transformer_block_2_multi_head_attention_2_dense_23_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_24_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_24_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_25_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_25_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_26_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_26_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_27_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_27_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOpJassignvariableop_61_adam_transformer_block_2_layer_normalization_4_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOpIassignvariableop_62_adam_transformer_block_2_layer_normalization_4_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOpJassignvariableop_63_adam_transformer_block_2_layer_normalization_5_gamma_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOpIassignvariableop_64_adam_transformer_block_2_layer_normalization_5_beta_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_dense_28_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_dense_28_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_dense_29_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_dense_29_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOpPassignvariableop_69_adam_token_and_position_embedding_2_embedding_4_embeddings_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOpPassignvariableop_70_adam_token_and_position_embedding_2_embedding_5_embeddings_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOpUassignvariableop_71_adam_transformer_block_2_multi_head_attention_2_dense_20_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOpSassignvariableop_72_adam_transformer_block_2_multi_head_attention_2_dense_20_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOpUassignvariableop_73_adam_transformer_block_2_multi_head_attention_2_dense_21_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOpSassignvariableop_74_adam_transformer_block_2_multi_head_attention_2_dense_21_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOpUassignvariableop_75_adam_transformer_block_2_multi_head_attention_2_dense_22_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOpSassignvariableop_76_adam_transformer_block_2_multi_head_attention_2_dense_22_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOpUassignvariableop_77_adam_transformer_block_2_multi_head_attention_2_dense_23_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOpSassignvariableop_78_adam_transformer_block_2_multi_head_attention_2_dense_23_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOp*assignvariableop_79_adam_dense_24_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOp(assignvariableop_80_adam_dense_24_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOp*assignvariableop_81_adam_dense_25_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOp(assignvariableop_82_adam_dense_25_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_83AssignVariableOp*assignvariableop_83_adam_dense_26_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_84AssignVariableOp(assignvariableop_84_adam_dense_26_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_85AssignVariableOp*assignvariableop_85_adam_dense_27_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_86AssignVariableOp(assignvariableop_86_adam_dense_27_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_87AssignVariableOpJassignvariableop_87_adam_transformer_block_2_layer_normalization_4_gamma_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_88AssignVariableOpIassignvariableop_88_adam_transformer_block_2_layer_normalization_4_beta_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_89AssignVariableOpJassignvariableop_89_adam_transformer_block_2_layer_normalization_5_gamma_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_90AssignVariableOpIassignvariableop_90_adam_transformer_block_2_layer_normalization_5_beta_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_91Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_92IdentityIdentity_91:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90*"
_acd_function_control_output(*
_output_shapes
 "#
identity_92Identity_92:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_90:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
G
+__inference_dropout_20_layer_call_fn_109975

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_107041a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense_28_layer_call_and_return_conditional_losses_107030

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
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
?
G
+__inference_dropout_14_layer_call_fn_110353

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
GPU 2J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_106166f
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

e
F__inference_dropout_16_layer_call_and_return_conditional_losses_110509

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
D__inference_dense_26_layer_call_and_return_conditional_losses_110482

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
??
?1
__inference__traced_save_110844
file_prefix.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop.
*savev2_dense_29_kernel_read_readvariableop,
(savev2_dense_29_bias_read_readvariableopT
Psavev2_token_and_position_embedding_2_embedding_4_embeddings_read_readvariableopT
Psavev2_token_and_position_embedding_2_embedding_5_embeddings_read_readvariableopY
Usavev2_transformer_block_2_multi_head_attention_2_dense_20_kernel_read_readvariableopW
Ssavev2_transformer_block_2_multi_head_attention_2_dense_20_bias_read_readvariableopY
Usavev2_transformer_block_2_multi_head_attention_2_dense_21_kernel_read_readvariableopW
Ssavev2_transformer_block_2_multi_head_attention_2_dense_21_bias_read_readvariableopY
Usavev2_transformer_block_2_multi_head_attention_2_dense_22_kernel_read_readvariableopW
Ssavev2_transformer_block_2_multi_head_attention_2_dense_22_bias_read_readvariableopY
Usavev2_transformer_block_2_multi_head_attention_2_dense_23_kernel_read_readvariableopW
Ssavev2_transformer_block_2_multi_head_attention_2_dense_23_bias_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableopN
Jsavev2_transformer_block_2_layer_normalization_4_gamma_read_readvariableopM
Isavev2_transformer_block_2_layer_normalization_4_beta_read_readvariableopN
Jsavev2_transformer_block_2_layer_normalization_5_gamma_read_readvariableopM
Isavev2_transformer_block_2_layer_normalization_5_beta_read_readvariableop(
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
1savev2_adam_dense_28_kernel_m_read_readvariableop3
/savev2_adam_dense_28_bias_m_read_readvariableop5
1savev2_adam_dense_29_kernel_m_read_readvariableop3
/savev2_adam_dense_29_bias_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_m_read_readvariableop`
\savev2_adam_transformer_block_2_multi_head_attention_2_dense_20_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_2_multi_head_attention_2_dense_20_bias_m_read_readvariableop`
\savev2_adam_transformer_block_2_multi_head_attention_2_dense_21_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_2_multi_head_attention_2_dense_21_bias_m_read_readvariableop`
\savev2_adam_transformer_block_2_multi_head_attention_2_dense_22_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_2_multi_head_attention_2_dense_22_bias_m_read_readvariableop`
\savev2_adam_transformer_block_2_multi_head_attention_2_dense_23_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_2_multi_head_attention_2_dense_23_bias_m_read_readvariableop5
1savev2_adam_dense_24_kernel_m_read_readvariableop3
/savev2_adam_dense_24_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop5
1savev2_adam_dense_27_kernel_m_read_readvariableop3
/savev2_adam_dense_27_bias_m_read_readvariableopU
Qsavev2_adam_transformer_block_2_layer_normalization_4_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_2_layer_normalization_4_beta_m_read_readvariableopU
Qsavev2_adam_transformer_block_2_layer_normalization_5_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_2_layer_normalization_5_beta_m_read_readvariableop5
1savev2_adam_dense_28_kernel_v_read_readvariableop3
/savev2_adam_dense_28_bias_v_read_readvariableop5
1savev2_adam_dense_29_kernel_v_read_readvariableop3
/savev2_adam_dense_29_bias_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_v_read_readvariableop`
\savev2_adam_transformer_block_2_multi_head_attention_2_dense_20_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_2_multi_head_attention_2_dense_20_bias_v_read_readvariableop`
\savev2_adam_transformer_block_2_multi_head_attention_2_dense_21_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_2_multi_head_attention_2_dense_21_bias_v_read_readvariableop`
\savev2_adam_transformer_block_2_multi_head_attention_2_dense_22_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_2_multi_head_attention_2_dense_22_bias_v_read_readvariableop`
\savev2_adam_transformer_block_2_multi_head_attention_2_dense_23_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_2_multi_head_attention_2_dense_23_bias_v_read_readvariableop5
1savev2_adam_dense_24_kernel_v_read_readvariableop3
/savev2_adam_dense_24_bias_v_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop5
1savev2_adam_dense_27_kernel_v_read_readvariableop3
/savev2_adam_dense_27_bias_v_read_readvariableopU
Qsavev2_adam_transformer_block_2_layer_normalization_4_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_2_layer_normalization_4_beta_v_read_readvariableopU
Qsavev2_adam_transformer_block_2_layer_normalization_5_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_2_layer_normalization_5_beta_v_read_readvariableop
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
: ?+
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*?+
value?+B?+\B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*?
value?B?\B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?0
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop*savev2_dense_29_kernel_read_readvariableop(savev2_dense_29_bias_read_readvariableopPsavev2_token_and_position_embedding_2_embedding_4_embeddings_read_readvariableopPsavev2_token_and_position_embedding_2_embedding_5_embeddings_read_readvariableopUsavev2_transformer_block_2_multi_head_attention_2_dense_20_kernel_read_readvariableopSsavev2_transformer_block_2_multi_head_attention_2_dense_20_bias_read_readvariableopUsavev2_transformer_block_2_multi_head_attention_2_dense_21_kernel_read_readvariableopSsavev2_transformer_block_2_multi_head_attention_2_dense_21_bias_read_readvariableopUsavev2_transformer_block_2_multi_head_attention_2_dense_22_kernel_read_readvariableopSsavev2_transformer_block_2_multi_head_attention_2_dense_22_bias_read_readvariableopUsavev2_transformer_block_2_multi_head_attention_2_dense_23_kernel_read_readvariableopSsavev2_transformer_block_2_multi_head_attention_2_dense_23_bias_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableopJsavev2_transformer_block_2_layer_normalization_4_gamma_read_readvariableopIsavev2_transformer_block_2_layer_normalization_4_beta_read_readvariableopJsavev2_transformer_block_2_layer_normalization_5_gamma_read_readvariableopIsavev2_transformer_block_2_layer_normalization_5_beta_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop1savev2_adam_dense_28_kernel_m_read_readvariableop/savev2_adam_dense_28_bias_m_read_readvariableop1savev2_adam_dense_29_kernel_m_read_readvariableop/savev2_adam_dense_29_bias_m_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_m_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_m_read_readvariableop\savev2_adam_transformer_block_2_multi_head_attention_2_dense_20_kernel_m_read_readvariableopZsavev2_adam_transformer_block_2_multi_head_attention_2_dense_20_bias_m_read_readvariableop\savev2_adam_transformer_block_2_multi_head_attention_2_dense_21_kernel_m_read_readvariableopZsavev2_adam_transformer_block_2_multi_head_attention_2_dense_21_bias_m_read_readvariableop\savev2_adam_transformer_block_2_multi_head_attention_2_dense_22_kernel_m_read_readvariableopZsavev2_adam_transformer_block_2_multi_head_attention_2_dense_22_bias_m_read_readvariableop\savev2_adam_transformer_block_2_multi_head_attention_2_dense_23_kernel_m_read_readvariableopZsavev2_adam_transformer_block_2_multi_head_attention_2_dense_23_bias_m_read_readvariableop1savev2_adam_dense_24_kernel_m_read_readvariableop/savev2_adam_dense_24_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop1savev2_adam_dense_27_kernel_m_read_readvariableop/savev2_adam_dense_27_bias_m_read_readvariableopQsavev2_adam_transformer_block_2_layer_normalization_4_gamma_m_read_readvariableopPsavev2_adam_transformer_block_2_layer_normalization_4_beta_m_read_readvariableopQsavev2_adam_transformer_block_2_layer_normalization_5_gamma_m_read_readvariableopPsavev2_adam_transformer_block_2_layer_normalization_5_beta_m_read_readvariableop1savev2_adam_dense_28_kernel_v_read_readvariableop/savev2_adam_dense_28_bias_v_read_readvariableop1savev2_adam_dense_29_kernel_v_read_readvariableop/savev2_adam_dense_29_bias_v_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_v_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_v_read_readvariableop\savev2_adam_transformer_block_2_multi_head_attention_2_dense_20_kernel_v_read_readvariableopZsavev2_adam_transformer_block_2_multi_head_attention_2_dense_20_bias_v_read_readvariableop\savev2_adam_transformer_block_2_multi_head_attention_2_dense_21_kernel_v_read_readvariableopZsavev2_adam_transformer_block_2_multi_head_attention_2_dense_21_bias_v_read_readvariableop\savev2_adam_transformer_block_2_multi_head_attention_2_dense_22_kernel_v_read_readvariableopZsavev2_adam_transformer_block_2_multi_head_attention_2_dense_22_bias_v_read_readvariableop\savev2_adam_transformer_block_2_multi_head_attention_2_dense_23_kernel_v_read_readvariableopZsavev2_adam_transformer_block_2_multi_head_attention_2_dense_23_bias_v_read_readvariableop1savev2_adam_dense_24_kernel_v_read_readvariableop/savev2_adam_dense_24_bias_v_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop1savev2_adam_dense_27_kernel_v_read_readvariableop/savev2_adam_dense_27_bias_v_read_readvariableopQsavev2_adam_transformer_block_2_layer_normalization_4_gamma_v_read_readvariableopPsavev2_adam_transformer_block_2_layer_normalization_4_beta_v_read_readvariableopQsavev2_adam_transformer_block_2_layer_normalization_5_gamma_v_read_readvariableopPsavev2_adam_transformer_block_2_layer_normalization_5_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *j
dtypes`
^2\	?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:?:
??:?:
??:
??:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:?:?:?:?: : : : : : : : : :::::
??:?:
??:?:
??:
??:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:?:?:?:?:
??:?:
??:?:
??:
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
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:&"
 
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
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:
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
: :"

_output_shapes
: :#

_output_shapes
: : $

_output_shapes
:: %

_output_shapes
:: &

_output_shapes
:: '

_output_shapes
::&("
 
_output_shapes
:
??:!)

_output_shapes	
:?:&*"
 
_output_shapes
:
??:!+

_output_shapes	
:?:&,"
 
_output_shapes
:
??:&-"
 
_output_shapes
:
??:&."
 
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
:?:&:"
 
_output_shapes
:
??:!;

_output_shapes	
:?:&<"
 
_output_shapes
:
??:!=

_output_shapes	
:?:!>

_output_shapes	
:?:!?

_output_shapes	
:?:!@

_output_shapes	
:?:!A

_output_shapes	
:?:&B"
 
_output_shapes
:
??:!C

_output_shapes	
:?:&D"
 
_output_shapes
:
??:!E

_output_shapes	
:?:&F"
 
_output_shapes
:
??:&G"
 
_output_shapes
:
??:&H"
 
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
:?:&R"
 
_output_shapes
:
??:!S

_output_shapes	
:?:&T"
 
_output_shapes
:
??:!U

_output_shapes	
:?:&V"
 
_output_shapes
:
??:!W

_output_shapes	
:?:!X

_output_shapes	
:?:!Y

_output_shapes	
:?:!Z

_output_shapes	
:?:![

_output_shapes	
:?:\

_output_shapes
: 
?

e
F__inference_dropout_14_layer_call_and_return_conditional_losses_110375

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
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_107041

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
S
7__inference_global_max_pooling1d_2_layer_call_fn_109917

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
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_106575i
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

e
F__inference_dropout_20_layer_call_and_return_conditional_losses_109997

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
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
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
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_15_layer_call_fn_110425

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
GPU 2J 8? *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_106375u
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

e
F__inference_dropout_20_layer_call_and_return_conditional_losses_107146

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
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
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
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?-
?
C__inference_model_2_layer_call_and_return_conditional_losses_107970
input_39
%token_and_position_embedding_2_107910:
??9
%token_and_position_embedding_2_107912:
??.
transformer_block_2_107915:
??)
transformer_block_2_107917:	?.
transformer_block_2_107919:
??)
transformer_block_2_107921:	?.
transformer_block_2_107923:
??)
transformer_block_2_107925:	?.
transformer_block_2_107927:
??)
transformer_block_2_107929:	?)
transformer_block_2_107931:	?)
transformer_block_2_107933:	?.
transformer_block_2_107935:
??)
transformer_block_2_107937:	?.
transformer_block_2_107939:
??)
transformer_block_2_107941:	?.
transformer_block_2_107943:
??)
transformer_block_2_107945:	?.
transformer_block_2_107947:
??)
transformer_block_2_107949:	?)
transformer_block_2_107951:	?)
transformer_block_2_107953:	?#
dense_28_107958:
??
dense_28_107960:	?#
dense_29_107964:
??
dense_29_107966:	?
identity?? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?6token_and_position_embedding_2/StatefulPartitionedCall?+transformer_block_2/StatefulPartitionedCall?
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_3%token_and_position_embedding_2_107910%token_and_position_embedding_2_107912*
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
Z__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_106608?
+transformer_block_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_block_2_107915transformer_block_2_107917transformer_block_2_107919transformer_block_2_107921transformer_block_2_107923transformer_block_2_107925transformer_block_2_107927transformer_block_2_107929transformer_block_2_107931transformer_block_2_107933transformer_block_2_107935transformer_block_2_107937transformer_block_2_107939transformer_block_2_107941transformer_block_2_107943transformer_block_2_107945transformer_block_2_107947transformer_block_2_107949transformer_block_2_107951transformer_block_2_107953* 
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
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_106969?
&global_max_pooling1d_2/PartitionedCallPartitionedCall4transformer_block_2/StatefulPartitionedCall:output:0*
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
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_106575?
dropout_19/PartitionedCallPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0*
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
F__inference_dropout_19_layer_call_and_return_conditional_losses_107017?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_28_107958dense_28_107960*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_107030?
dropout_20/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_107041?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0dense_29_107964dense_29_107966*
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
D__inference_dense_29_layer_call_and_return_conditional_losses_107054y
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall,^transformer_block_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2Z
+transformer_block_2/StatefulPartitionedCall+transformer_block_2/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?
?
D__inference_dense_27_layer_call_and_return_conditional_losses_106286

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
?
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_110173

inputs>
*dense_24_tensordot_readvariableop_resource:
??7
(dense_24_biasadd_readvariableop_resource:	?>
*dense_25_tensordot_readvariableop_resource:
??7
(dense_25_biasadd_readvariableop_resource:	?>
*dense_26_tensordot_readvariableop_resource:
??7
(dense_26_biasadd_readvariableop_resource:	?>
*dense_27_tensordot_readvariableop_resource:
??7
(dense_27_biasadd_readvariableop_resource:	?
identity??dense_24/BiasAdd/ReadVariableOp?!dense_24/Tensordot/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?!dense_25/Tensordot/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?!dense_26/Tensordot/ReadVariableOp?dense_27/BiasAdd/ReadVariableOp?!dense_27/Tensordot/ReadVariableOp?
!dense_24/Tensordot/ReadVariableOpReadVariableOp*dense_24_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_24/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_24/Tensordot/GatherV2GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/free:output:0)dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_24/Tensordot/GatherV2_1GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/axes:output:0+dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_24/Tensordot/ProdProd$dense_24/Tensordot/GatherV2:output:0!dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_24/Tensordot/Prod_1Prod&dense_24/Tensordot/GatherV2_1:output:0#dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_24/Tensordot/concatConcatV2 dense_24/Tensordot/free:output:0 dense_24/Tensordot/axes:output:0'dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_24/Tensordot/stackPack dense_24/Tensordot/Prod:output:0"dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_24/Tensordot/transpose	Transposeinputs"dense_24/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_24/Tensordot/ReshapeReshape dense_24/Tensordot/transpose:y:0!dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_24/Tensordot/MatMulMatMul#dense_24/Tensordot/Reshape:output:0)dense_24/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_24/Tensordot/concat_1ConcatV2$dense_24/Tensordot/GatherV2:output:0#dense_24/Tensordot/Const_2:output:0)dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_24/TensordotReshape#dense_24/Tensordot/MatMul:product:0$dense_24/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_24/BiasAddBiasAdddense_24/Tensordot:output:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*-
_output_shapes
:???????????t
dropout_14/IdentityIdentitydense_24/Relu:activations:0*
T0*-
_output_shapes
:????????????
!dense_25/Tensordot/ReadVariableOpReadVariableOp*dense_25_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_25/Tensordot/ShapeShapedropout_14/Identity:output:0*
T0*
_output_shapes
:b
 dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_25/Tensordot/GatherV2GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/free:output:0)dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_25/Tensordot/GatherV2_1GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/axes:output:0+dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_25/Tensordot/ProdProd$dense_25/Tensordot/GatherV2:output:0!dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_25/Tensordot/Prod_1Prod&dense_25/Tensordot/GatherV2_1:output:0#dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_25/Tensordot/concatConcatV2 dense_25/Tensordot/free:output:0 dense_25/Tensordot/axes:output:0'dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_25/Tensordot/stackPack dense_25/Tensordot/Prod:output:0"dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_25/Tensordot/transpose	Transposedropout_14/Identity:output:0"dense_25/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_25/Tensordot/ReshapeReshape dense_25/Tensordot/transpose:y:0!dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_25/Tensordot/MatMulMatMul#dense_25/Tensordot/Reshape:output:0)dense_25/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_25/Tensordot/concat_1ConcatV2$dense_25/Tensordot/GatherV2:output:0#dense_25/Tensordot/Const_2:output:0)dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_25/TensordotReshape#dense_25/Tensordot/MatMul:product:0$dense_25/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_25/BiasAddBiasAdddense_25/Tensordot:output:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*-
_output_shapes
:???????????t
dropout_15/IdentityIdentitydense_25/Relu:activations:0*
T0*-
_output_shapes
:????????????
!dense_26/Tensordot/ReadVariableOpReadVariableOp*dense_26_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_26/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_26/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_26/Tensordot/ShapeShapedropout_15/Identity:output:0*
T0*
_output_shapes
:b
 dense_26/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_26/Tensordot/GatherV2GatherV2!dense_26/Tensordot/Shape:output:0 dense_26/Tensordot/free:output:0)dense_26/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_26/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_26/Tensordot/GatherV2_1GatherV2!dense_26/Tensordot/Shape:output:0 dense_26/Tensordot/axes:output:0+dense_26/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_26/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_26/Tensordot/ProdProd$dense_26/Tensordot/GatherV2:output:0!dense_26/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_26/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_26/Tensordot/Prod_1Prod&dense_26/Tensordot/GatherV2_1:output:0#dense_26/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_26/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_26/Tensordot/concatConcatV2 dense_26/Tensordot/free:output:0 dense_26/Tensordot/axes:output:0'dense_26/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_26/Tensordot/stackPack dense_26/Tensordot/Prod:output:0"dense_26/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_26/Tensordot/transpose	Transposedropout_15/Identity:output:0"dense_26/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_26/Tensordot/ReshapeReshape dense_26/Tensordot/transpose:y:0!dense_26/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_26/Tensordot/MatMulMatMul#dense_26/Tensordot/Reshape:output:0)dense_26/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_26/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_26/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_26/Tensordot/concat_1ConcatV2$dense_26/Tensordot/GatherV2:output:0#dense_26/Tensordot/Const_2:output:0)dense_26/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_26/TensordotReshape#dense_26/Tensordot/MatMul:product:0$dense_26/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_26/BiasAddBiasAdddense_26/Tensordot:output:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*-
_output_shapes
:???????????t
dropout_16/IdentityIdentitydense_26/Relu:activations:0*
T0*-
_output_shapes
:????????????
!dense_27/Tensordot/ReadVariableOpReadVariableOp*dense_27_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_27/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_27/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_27/Tensordot/ShapeShapedropout_16/Identity:output:0*
T0*
_output_shapes
:b
 dense_27/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_27/Tensordot/GatherV2GatherV2!dense_27/Tensordot/Shape:output:0 dense_27/Tensordot/free:output:0)dense_27/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_27/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_27/Tensordot/GatherV2_1GatherV2!dense_27/Tensordot/Shape:output:0 dense_27/Tensordot/axes:output:0+dense_27/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_27/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_27/Tensordot/ProdProd$dense_27/Tensordot/GatherV2:output:0!dense_27/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_27/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_27/Tensordot/Prod_1Prod&dense_27/Tensordot/GatherV2_1:output:0#dense_27/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_27/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_27/Tensordot/concatConcatV2 dense_27/Tensordot/free:output:0 dense_27/Tensordot/axes:output:0'dense_27/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_27/Tensordot/stackPack dense_27/Tensordot/Prod:output:0"dense_27/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_27/Tensordot/transpose	Transposedropout_16/Identity:output:0"dense_27/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_27/Tensordot/ReshapeReshape dense_27/Tensordot/transpose:y:0!dense_27/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_27/Tensordot/MatMulMatMul#dense_27/Tensordot/Reshape:output:0)dense_27/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_27/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_27/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_27/Tensordot/concat_1ConcatV2$dense_27/Tensordot/GatherV2:output:0#dense_27/Tensordot/Const_2:output:0)dense_27/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_27/TensordotReshape#dense_27/Tensordot/MatMul:product:0$dense_27/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_27/BiasAddBiasAdddense_27/Tensordot:output:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????n
IdentityIdentitydense_27/BiasAdd:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp ^dense_24/BiasAdd/ReadVariableOp"^dense_24/Tensordot/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp"^dense_25/Tensordot/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp"^dense_26/Tensordot/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp"^dense_27/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2F
!dense_24/Tensordot/ReadVariableOp!dense_24/Tensordot/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2F
!dense_25/Tensordot/ReadVariableOp!dense_25/Tensordot/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2F
!dense_26/Tensordot/ReadVariableOp!dense_26/Tensordot/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2F
!dense_27/Tensordot/ReadVariableOp!dense_27/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
n
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_106575

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
?
?
D__inference_dense_26_layer_call_and_return_conditional_losses_106243

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

?
D__inference_dense_28_layer_call_and_return_conditional_losses_109970

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
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
?

e
F__inference_dropout_15_layer_call_and_return_conditional_losses_106375

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

e
F__inference_dropout_16_layer_call_and_return_conditional_losses_106342

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
D__inference_dense_27_layer_call_and_return_conditional_losses_110548

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
?
d
+__inference_dropout_19_layer_call_fn_109933

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
F__inference_dropout_19_layer_call_and_return_conditional_losses_107179p
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
?
?
Z__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_106608
x7
#embedding_5_embedding_lookup_106596:
??7
#embedding_4_embedding_lookup_106601:
??
identity??embedding_4/embedding_lookup?embedding_5/embedding_lookup6
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
embedding_5/embedding_lookupResourceGather#embedding_5_embedding_lookup_106596range:output:0*
Tindices0*6
_class,
*(loc:@embedding_5/embedding_lookup/106596* 
_output_shapes
:
??*
dtype0?
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_5/embedding_lookup/106596* 
_output_shapes
:
???
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
???
embedding_4/embedding_lookupResourceGather#embedding_4_embedding_lookup_106601x*
Tindices0*6
_class,
*(loc:@embedding_4/embedding_lookup/106601*-
_output_shapes
:???????????*
dtype0?
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_4/embedding_lookup/106601*-
_output_shapes
:????????????
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
addAddV20embedding_4/embedding_lookup/Identity_1:output:00embedding_5/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????\
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp^embedding_4/embedding_lookup^embedding_5/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2<
embedding_5/embedding_lookupembedding_5/embedding_lookup:K G
(
_output_shapes
:??????????

_user_specified_namex
Ս
?
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_107620

inputsU
Amulti_head_attention_2_dense_20_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_20_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_21_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_21_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_22_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_22_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_23_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_23_biasadd_readvariableop_resource:	?B
3layer_normalization_4_mul_3_readvariableop_resource:	?@
1layer_normalization_4_add_readvariableop_resource:	?K
7sequential_2_dense_24_tensordot_readvariableop_resource:
??D
5sequential_2_dense_24_biasadd_readvariableop_resource:	?K
7sequential_2_dense_25_tensordot_readvariableop_resource:
??D
5sequential_2_dense_25_biasadd_readvariableop_resource:	?K
7sequential_2_dense_26_tensordot_readvariableop_resource:
??D
5sequential_2_dense_26_biasadd_readvariableop_resource:	?K
7sequential_2_dense_27_tensordot_readvariableop_resource:
??D
5sequential_2_dense_27_biasadd_readvariableop_resource:	?B
3layer_normalization_5_mul_3_readvariableop_resource:	?@
1layer_normalization_5_add_readvariableop_resource:	?
identity??(layer_normalization_4/add/ReadVariableOp?*layer_normalization_4/mul_3/ReadVariableOp?(layer_normalization_5/add/ReadVariableOp?*layer_normalization_5/mul_3/ReadVariableOp?6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp?,sequential_2/dense_24/BiasAdd/ReadVariableOp?.sequential_2/dense_24/Tensordot/ReadVariableOp?,sequential_2/dense_25/BiasAdd/ReadVariableOp?.sequential_2/dense_25/Tensordot/ReadVariableOp?,sequential_2/dense_26/BiasAdd/ReadVariableOp?.sequential_2/dense_26/Tensordot/ReadVariableOp?,sequential_2/dense_27/BiasAdd/ReadVariableOp?.sequential_2/dense_27/Tensordot/ReadVariableOpR
multi_head_attention_2/ShapeShapeinputs*
T0*
_output_shapes
:t
*multi_head_attention_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,multi_head_attention_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,multi_head_attention_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$multi_head_attention_2/strided_sliceStridedSlice%multi_head_attention_2/Shape:output:03multi_head_attention_2/strided_slice/stack:output:05multi_head_attention_2/strided_slice/stack_1:output:05multi_head_attention_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
8multi_head_attention_2/dense_20/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_20_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_20/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_20/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_20/Tensordot/Shape:output:07multi_head_attention_2/dense_20/Tensordot/free:output:0@multi_head_attention_2/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_20/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_20/Tensordot/Shape:output:07multi_head_attention_2/dense_20/Tensordot/axes:output:0Bmulti_head_attention_2/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_20/Tensordot/ProdProd;multi_head_attention_2/dense_20/Tensordot/GatherV2:output:08multi_head_attention_2/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_20/Tensordot/Prod_1Prod=multi_head_attention_2/dense_20/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_20/Tensordot/concatConcatV27multi_head_attention_2/dense_20/Tensordot/free:output:07multi_head_attention_2/dense_20/Tensordot/axes:output:0>multi_head_attention_2/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_20/Tensordot/stackPack7multi_head_attention_2/dense_20/Tensordot/Prod:output:09multi_head_attention_2/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_20/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_20/Tensordot/ReshapeReshape7multi_head_attention_2/dense_20/Tensordot/transpose:y:08multi_head_attention_2/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_20/Tensordot/MatMulMatMul:multi_head_attention_2/dense_20/Tensordot/Reshape:output:0@multi_head_attention_2/dense_20/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_20/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_20/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_20/Tensordot/Const_2:output:0@multi_head_attention_2/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_20/TensordotReshape:multi_head_attention_2/dense_20/Tensordot/MatMul:product:0;multi_head_attention_2/dense_20/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_20/BiasAddBiasAdd2multi_head_attention_2/dense_20/Tensordot:output:0>multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_20/ReluRelu0multi_head_attention_2/dense_20/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_2/dense_21/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_21_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_21/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_21/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_21/Tensordot/Shape:output:07multi_head_attention_2/dense_21/Tensordot/free:output:0@multi_head_attention_2/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_21/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_21/Tensordot/Shape:output:07multi_head_attention_2/dense_21/Tensordot/axes:output:0Bmulti_head_attention_2/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_21/Tensordot/ProdProd;multi_head_attention_2/dense_21/Tensordot/GatherV2:output:08multi_head_attention_2/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_21/Tensordot/Prod_1Prod=multi_head_attention_2/dense_21/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_21/Tensordot/concatConcatV27multi_head_attention_2/dense_21/Tensordot/free:output:07multi_head_attention_2/dense_21/Tensordot/axes:output:0>multi_head_attention_2/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_21/Tensordot/stackPack7multi_head_attention_2/dense_21/Tensordot/Prod:output:09multi_head_attention_2/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_21/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_21/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_21/Tensordot/ReshapeReshape7multi_head_attention_2/dense_21/Tensordot/transpose:y:08multi_head_attention_2/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_21/Tensordot/MatMulMatMul:multi_head_attention_2/dense_21/Tensordot/Reshape:output:0@multi_head_attention_2/dense_21/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_21/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_21/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_21/Tensordot/Const_2:output:0@multi_head_attention_2/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_21/TensordotReshape:multi_head_attention_2/dense_21/Tensordot/MatMul:product:0;multi_head_attention_2/dense_21/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_21/BiasAddBiasAdd2multi_head_attention_2/dense_21/Tensordot:output:0>multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_21/ReluRelu0multi_head_attention_2/dense_21/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_2/dense_22/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_22_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_22/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_22/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_22/Tensordot/Shape:output:07multi_head_attention_2/dense_22/Tensordot/free:output:0@multi_head_attention_2/dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_22/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_22/Tensordot/Shape:output:07multi_head_attention_2/dense_22/Tensordot/axes:output:0Bmulti_head_attention_2/dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_22/Tensordot/ProdProd;multi_head_attention_2/dense_22/Tensordot/GatherV2:output:08multi_head_attention_2/dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_22/Tensordot/Prod_1Prod=multi_head_attention_2/dense_22/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_22/Tensordot/concatConcatV27multi_head_attention_2/dense_22/Tensordot/free:output:07multi_head_attention_2/dense_22/Tensordot/axes:output:0>multi_head_attention_2/dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_22/Tensordot/stackPack7multi_head_attention_2/dense_22/Tensordot/Prod:output:09multi_head_attention_2/dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_22/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_22/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_22/Tensordot/ReshapeReshape7multi_head_attention_2/dense_22/Tensordot/transpose:y:08multi_head_attention_2/dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_22/Tensordot/MatMulMatMul:multi_head_attention_2/dense_22/Tensordot/Reshape:output:0@multi_head_attention_2/dense_22/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_22/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_22/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_22/Tensordot/Const_2:output:0@multi_head_attention_2/dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_22/TensordotReshape:multi_head_attention_2/dense_22/Tensordot/MatMul:product:0;multi_head_attention_2/dense_22/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_22/BiasAddBiasAdd2multi_head_attention_2/dense_22/Tensordot:output:0>multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_22/ReluRelu0multi_head_attention_2/dense_22/BiasAdd:output:0*
T0*-
_output_shapes
:???????????q
&multi_head_attention_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????h
&multi_head_attention_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&multi_head_attention_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
$multi_head_attention_2/Reshape/shapePack-multi_head_attention_2/strided_slice:output:0/multi_head_attention_2/Reshape/shape/1:output:0/multi_head_attention_2/Reshape/shape/2:output:0/multi_head_attention_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
multi_head_attention_2/ReshapeReshape2multi_head_attention_2/dense_20/Relu:activations:0-multi_head_attention_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ~
%multi_head_attention_2/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 multi_head_attention_2/transpose	Transpose'multi_head_attention_2/Reshape:output:0.multi_head_attention_2/transpose/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_2/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_2/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
&multi_head_attention_2/Reshape_1/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_1/shape/1:output:01multi_head_attention_2/Reshape_1/shape/2:output:01multi_head_attention_2/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_1Reshape2multi_head_attention_2/dense_21/Relu:activations:0/multi_head_attention_2/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_1	Transpose)multi_head_attention_2/Reshape_1:output:00multi_head_attention_2/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_2/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_2/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
&multi_head_attention_2/Reshape_2/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_2/shape/1:output:01multi_head_attention_2/Reshape_2/shape/2:output:01multi_head_attention_2/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_2Reshape2multi_head_attention_2/dense_22/Relu:activations:0/multi_head_attention_2/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_2	Transpose)multi_head_attention_2/Reshape_2:output:00multi_head_attention_2/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
multi_head_attention_2/MatMulBatchMatMulV2$multi_head_attention_2/transpose:y:0&multi_head_attention_2/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(t
multi_head_attention_2/Shape_1Shape&multi_head_attention_2/transpose_1:y:0*
T0*
_output_shapes
:
,multi_head_attention_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.multi_head_attention_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.multi_head_attention_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&multi_head_attention_2/strided_slice_1StridedSlice'multi_head_attention_2/Shape_1:output:05multi_head_attention_2/strided_slice_1/stack:output:07multi_head_attention_2/strided_slice_1/stack_1:output:07multi_head_attention_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
multi_head_attention_2/CastCast/multi_head_attention_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: e
multi_head_attention_2/SqrtSqrtmulti_head_attention_2/Cast:y:0*
T0*
_output_shapes
: ?
multi_head_attention_2/truedivRealDiv&multi_head_attention_2/MatMul:output:0multi_head_attention_2/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_2/SoftmaxSoftmax"multi_head_attention_2/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_2/MatMul_1BatchMatMulV2(multi_head_attention_2/Softmax:softmax:0&multi_head_attention_2/transpose_2:y:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_3	Transpose(multi_head_attention_2/MatMul_1:output:00multi_head_attention_2/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????k
(multi_head_attention_2/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
&multi_head_attention_2/Reshape_3/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_3/shape/1:output:01multi_head_attention_2/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_3Reshape&multi_head_attention_2/transpose_3:y:0/multi_head_attention_2/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
8multi_head_attention_2/dense_23/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_23_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_23/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_23/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
/multi_head_attention_2/dense_23/Tensordot/ShapeShape)multi_head_attention_2/Reshape_3:output:0*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_23/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_23/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_23/Tensordot/Shape:output:07multi_head_attention_2/dense_23/Tensordot/free:output:0@multi_head_attention_2/dense_23/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_23/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_23/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_23/Tensordot/Shape:output:07multi_head_attention_2/dense_23/Tensordot/axes:output:0Bmulti_head_attention_2/dense_23/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_23/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_23/Tensordot/ProdProd;multi_head_attention_2/dense_23/Tensordot/GatherV2:output:08multi_head_attention_2/dense_23/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_23/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_23/Tensordot/Prod_1Prod=multi_head_attention_2/dense_23/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_23/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_23/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_23/Tensordot/concatConcatV27multi_head_attention_2/dense_23/Tensordot/free:output:07multi_head_attention_2/dense_23/Tensordot/axes:output:0>multi_head_attention_2/dense_23/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_23/Tensordot/stackPack7multi_head_attention_2/dense_23/Tensordot/Prod:output:09multi_head_attention_2/dense_23/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_23/Tensordot/transpose	Transpose)multi_head_attention_2/Reshape_3:output:09multi_head_attention_2/dense_23/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
1multi_head_attention_2/dense_23/Tensordot/ReshapeReshape7multi_head_attention_2/dense_23/Tensordot/transpose:y:08multi_head_attention_2/dense_23/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_23/Tensordot/MatMulMatMul:multi_head_attention_2/dense_23/Tensordot/Reshape:output:0@multi_head_attention_2/dense_23/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_23/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_23/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_23/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_23/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_23/Tensordot/Const_2:output:0@multi_head_attention_2/dense_23/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_23/TensordotReshape:multi_head_attention_2/dense_23/Tensordot/MatMul:product:0;multi_head_attention_2/dense_23/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_23/BiasAddBiasAdd2multi_head_attention_2/dense_23/Tensordot:output:0>multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
$multi_head_attention_2/dense_23/ReluRelu0multi_head_attention_2/dense_23/BiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????]
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_17/dropout/MulMul2multi_head_attention_2/dense_23/Relu:activations:0!dropout_17/dropout/Const:output:0*
T0*5
_output_shapes#
!:???????????????????z
dropout_17/dropout/ShapeShape2multi_head_attention_2/dense_23/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype0*
seed2????f
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:????????????????????
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:????????????????????
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*5
_output_shapes#
!:???????????????????j
addAddV2inputsdropout_17/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????R
layer_normalization_4/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_4/strided_sliceStridedSlice$layer_normalization_4/Shape:output:02layer_normalization_4/strided_slice/stack:output:04layer_normalization_4/strided_slice/stack_1:output:04layer_normalization_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_4/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_4/mulMul$layer_normalization_4/mul/x:output:0,layer_normalization_4/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_4/strided_slice_1StridedSlice$layer_normalization_4/Shape:output:04layer_normalization_4/strided_slice_1/stack:output:06layer_normalization_4/strided_slice_1/stack_1:output:06layer_normalization_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_4/mul_1Mullayer_normalization_4/mul:z:0.layer_normalization_4/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_4/strided_slice_2StridedSlice$layer_normalization_4/Shape:output:04layer_normalization_4/strided_slice_2/stack:output:06layer_normalization_4/strided_slice_2/stack_1:output:06layer_normalization_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_4/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_4/mul_2Mul&layer_normalization_4/mul_2/x:output:0.layer_normalization_4/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_4/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_4/Reshape/shapePack.layer_normalization_4/Reshape/shape/0:output:0layer_normalization_4/mul_1:z:0layer_normalization_4/mul_2:z:0.layer_normalization_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_4/ReshapeReshapeadd:z:0,layer_normalization_4/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_4/ones/packedPacklayer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_4/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_4/onesFill*layer_normalization_4/ones/packed:output:0)layer_normalization_4/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_4/zeros/packedPacklayer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_4/zerosFill+layer_normalization_4/zeros/packed:output:0*layer_normalization_4/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_4/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_4/FusedBatchNormV3FusedBatchNormV3&layer_normalization_4/Reshape:output:0#layer_normalization_4/ones:output:0$layer_normalization_4/zeros:output:0$layer_normalization_4/Const:output:0&layer_normalization_4/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_4/Reshape_1Reshape*layer_normalization_4/FusedBatchNormV3:y:0$layer_normalization_4/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_4/mul_3/ReadVariableOpReadVariableOp3layer_normalization_4_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_4/mul_3Mul(layer_normalization_4/Reshape_1:output:02layer_normalization_4/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_4/add/ReadVariableOpReadVariableOp1layer_normalization_4_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_4/addAddV2layer_normalization_4/mul_3:z:00layer_normalization_4/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_24/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_24_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
%sequential_2/dense_24/Tensordot/ShapeShapelayer_normalization_4/add:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_24/Tensordot/GatherV2GatherV2.sequential_2/dense_24/Tensordot/Shape:output:0-sequential_2/dense_24/Tensordot/free:output:06sequential_2/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_24/Tensordot/GatherV2_1GatherV2.sequential_2/dense_24/Tensordot/Shape:output:0-sequential_2/dense_24/Tensordot/axes:output:08sequential_2/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_24/Tensordot/ProdProd1sequential_2/dense_24/Tensordot/GatherV2:output:0.sequential_2/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_24/Tensordot/Prod_1Prod3sequential_2/dense_24/Tensordot/GatherV2_1:output:00sequential_2/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_24/Tensordot/concatConcatV2-sequential_2/dense_24/Tensordot/free:output:0-sequential_2/dense_24/Tensordot/axes:output:04sequential_2/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_24/Tensordot/stackPack-sequential_2/dense_24/Tensordot/Prod:output:0/sequential_2/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_24/Tensordot/transpose	Transposelayer_normalization_4/add:z:0/sequential_2/dense_24/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_24/Tensordot/ReshapeReshape-sequential_2/dense_24/Tensordot/transpose:y:0.sequential_2/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_24/Tensordot/MatMulMatMul0sequential_2/dense_24/Tensordot/Reshape:output:06sequential_2/dense_24/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_24/Tensordot/concat_1ConcatV21sequential_2/dense_24/Tensordot/GatherV2:output:00sequential_2/dense_24/Tensordot/Const_2:output:06sequential_2/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_24/TensordotReshape0sequential_2/dense_24/Tensordot/MatMul:product:01sequential_2/dense_24/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_24/BiasAddBiasAdd(sequential_2/dense_24/Tensordot:output:04sequential_2/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_24/ReluRelu&sequential_2/dense_24/BiasAdd:output:0*
T0*-
_output_shapes
:???????????j
%sequential_2/dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
#sequential_2/dropout_14/dropout/MulMul(sequential_2/dense_24/Relu:activations:0.sequential_2/dropout_14/dropout/Const:output:0*
T0*-
_output_shapes
:???????????}
%sequential_2/dropout_14/dropout/ShapeShape(sequential_2/dense_24/Relu:activations:0*
T0*
_output_shapes
:?
<sequential_2/dropout_14/dropout/random_uniform/RandomUniformRandomUniform.sequential_2/dropout_14/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2s
.sequential_2/dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
,sequential_2/dropout_14/dropout/GreaterEqualGreaterEqualEsequential_2/dropout_14/dropout/random_uniform/RandomUniform:output:07sequential_2/dropout_14/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
$sequential_2/dropout_14/dropout/CastCast0sequential_2/dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
%sequential_2/dropout_14/dropout/Mul_1Mul'sequential_2/dropout_14/dropout/Mul:z:0(sequential_2/dropout_14/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_25/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_25_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_25/Tensordot/ShapeShape)sequential_2/dropout_14/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_25/Tensordot/GatherV2GatherV2.sequential_2/dense_25/Tensordot/Shape:output:0-sequential_2/dense_25/Tensordot/free:output:06sequential_2/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_25/Tensordot/GatherV2_1GatherV2.sequential_2/dense_25/Tensordot/Shape:output:0-sequential_2/dense_25/Tensordot/axes:output:08sequential_2/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_25/Tensordot/ProdProd1sequential_2/dense_25/Tensordot/GatherV2:output:0.sequential_2/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_25/Tensordot/Prod_1Prod3sequential_2/dense_25/Tensordot/GatherV2_1:output:00sequential_2/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_25/Tensordot/concatConcatV2-sequential_2/dense_25/Tensordot/free:output:0-sequential_2/dense_25/Tensordot/axes:output:04sequential_2/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_25/Tensordot/stackPack-sequential_2/dense_25/Tensordot/Prod:output:0/sequential_2/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_25/Tensordot/transpose	Transpose)sequential_2/dropout_14/dropout/Mul_1:z:0/sequential_2/dense_25/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_25/Tensordot/ReshapeReshape-sequential_2/dense_25/Tensordot/transpose:y:0.sequential_2/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_25/Tensordot/MatMulMatMul0sequential_2/dense_25/Tensordot/Reshape:output:06sequential_2/dense_25/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_25/Tensordot/concat_1ConcatV21sequential_2/dense_25/Tensordot/GatherV2:output:00sequential_2/dense_25/Tensordot/Const_2:output:06sequential_2/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_25/TensordotReshape0sequential_2/dense_25/Tensordot/MatMul:product:01sequential_2/dense_25/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_25/BiasAddBiasAdd(sequential_2/dense_25/Tensordot:output:04sequential_2/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_25/ReluRelu&sequential_2/dense_25/BiasAdd:output:0*
T0*-
_output_shapes
:???????????j
%sequential_2/dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
#sequential_2/dropout_15/dropout/MulMul(sequential_2/dense_25/Relu:activations:0.sequential_2/dropout_15/dropout/Const:output:0*
T0*-
_output_shapes
:???????????}
%sequential_2/dropout_15/dropout/ShapeShape(sequential_2/dense_25/Relu:activations:0*
T0*
_output_shapes
:?
<sequential_2/dropout_15/dropout/random_uniform/RandomUniformRandomUniform.sequential_2/dropout_15/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2s
.sequential_2/dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
,sequential_2/dropout_15/dropout/GreaterEqualGreaterEqualEsequential_2/dropout_15/dropout/random_uniform/RandomUniform:output:07sequential_2/dropout_15/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
$sequential_2/dropout_15/dropout/CastCast0sequential_2/dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
%sequential_2/dropout_15/dropout/Mul_1Mul'sequential_2/dropout_15/dropout/Mul:z:0(sequential_2/dropout_15/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_26/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_26_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_26/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_26/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_26/Tensordot/ShapeShape)sequential_2/dropout_15/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_26/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_26/Tensordot/GatherV2GatherV2.sequential_2/dense_26/Tensordot/Shape:output:0-sequential_2/dense_26/Tensordot/free:output:06sequential_2/dense_26/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_26/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_26/Tensordot/GatherV2_1GatherV2.sequential_2/dense_26/Tensordot/Shape:output:0-sequential_2/dense_26/Tensordot/axes:output:08sequential_2/dense_26/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_26/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_26/Tensordot/ProdProd1sequential_2/dense_26/Tensordot/GatherV2:output:0.sequential_2/dense_26/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_26/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_26/Tensordot/Prod_1Prod3sequential_2/dense_26/Tensordot/GatherV2_1:output:00sequential_2/dense_26/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_26/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_26/Tensordot/concatConcatV2-sequential_2/dense_26/Tensordot/free:output:0-sequential_2/dense_26/Tensordot/axes:output:04sequential_2/dense_26/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_26/Tensordot/stackPack-sequential_2/dense_26/Tensordot/Prod:output:0/sequential_2/dense_26/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_26/Tensordot/transpose	Transpose)sequential_2/dropout_15/dropout/Mul_1:z:0/sequential_2/dense_26/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_26/Tensordot/ReshapeReshape-sequential_2/dense_26/Tensordot/transpose:y:0.sequential_2/dense_26/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_26/Tensordot/MatMulMatMul0sequential_2/dense_26/Tensordot/Reshape:output:06sequential_2/dense_26/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_26/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_26/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_26/Tensordot/concat_1ConcatV21sequential_2/dense_26/Tensordot/GatherV2:output:00sequential_2/dense_26/Tensordot/Const_2:output:06sequential_2/dense_26/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_26/TensordotReshape0sequential_2/dense_26/Tensordot/MatMul:product:01sequential_2/dense_26/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_26/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_26/BiasAddBiasAdd(sequential_2/dense_26/Tensordot:output:04sequential_2/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_26/ReluRelu&sequential_2/dense_26/BiasAdd:output:0*
T0*-
_output_shapes
:???????????j
%sequential_2/dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
#sequential_2/dropout_16/dropout/MulMul(sequential_2/dense_26/Relu:activations:0.sequential_2/dropout_16/dropout/Const:output:0*
T0*-
_output_shapes
:???????????}
%sequential_2/dropout_16/dropout/ShapeShape(sequential_2/dense_26/Relu:activations:0*
T0*
_output_shapes
:?
<sequential_2/dropout_16/dropout/random_uniform/RandomUniformRandomUniform.sequential_2/dropout_16/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2s
.sequential_2/dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
,sequential_2/dropout_16/dropout/GreaterEqualGreaterEqualEsequential_2/dropout_16/dropout/random_uniform/RandomUniform:output:07sequential_2/dropout_16/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
$sequential_2/dropout_16/dropout/CastCast0sequential_2/dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
%sequential_2/dropout_16/dropout/Mul_1Mul'sequential_2/dropout_16/dropout/Mul:z:0(sequential_2/dropout_16/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_27/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_27_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_27/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_27/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_27/Tensordot/ShapeShape)sequential_2/dropout_16/dropout/Mul_1:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_27/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_27/Tensordot/GatherV2GatherV2.sequential_2/dense_27/Tensordot/Shape:output:0-sequential_2/dense_27/Tensordot/free:output:06sequential_2/dense_27/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_27/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_27/Tensordot/GatherV2_1GatherV2.sequential_2/dense_27/Tensordot/Shape:output:0-sequential_2/dense_27/Tensordot/axes:output:08sequential_2/dense_27/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_27/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_27/Tensordot/ProdProd1sequential_2/dense_27/Tensordot/GatherV2:output:0.sequential_2/dense_27/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_27/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_27/Tensordot/Prod_1Prod3sequential_2/dense_27/Tensordot/GatherV2_1:output:00sequential_2/dense_27/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_27/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_27/Tensordot/concatConcatV2-sequential_2/dense_27/Tensordot/free:output:0-sequential_2/dense_27/Tensordot/axes:output:04sequential_2/dense_27/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_27/Tensordot/stackPack-sequential_2/dense_27/Tensordot/Prod:output:0/sequential_2/dense_27/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_27/Tensordot/transpose	Transpose)sequential_2/dropout_16/dropout/Mul_1:z:0/sequential_2/dense_27/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_27/Tensordot/ReshapeReshape-sequential_2/dense_27/Tensordot/transpose:y:0.sequential_2/dense_27/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_27/Tensordot/MatMulMatMul0sequential_2/dense_27/Tensordot/Reshape:output:06sequential_2/dense_27/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_27/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_27/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_27/Tensordot/concat_1ConcatV21sequential_2/dense_27/Tensordot/GatherV2:output:00sequential_2/dense_27/Tensordot/Const_2:output:06sequential_2/dense_27/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_27/TensordotReshape0sequential_2/dense_27/Tensordot/MatMul:product:01sequential_2/dense_27/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_27/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_27/BiasAddBiasAdd(sequential_2/dense_27/Tensordot:output:04sequential_2/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????]
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_18/dropout/MulMul&sequential_2/dense_27/BiasAdd:output:0!dropout_18/dropout/Const:output:0*
T0*-
_output_shapes
:???????????n
dropout_18/dropout/ShapeShape&sequential_2/dense_27/BiasAdd:output:0*
T0*
_output_shapes
:?
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2f
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
dropout_18/dropout/CastCast#dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
dropout_18/dropout/Mul_1Muldropout_18/dropout/Mul:z:0dropout_18/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
add_1AddV2layer_normalization_4/add:z:0dropout_18/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????T
layer_normalization_5/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_5/strided_sliceStridedSlice$layer_normalization_5/Shape:output:02layer_normalization_5/strided_slice/stack:output:04layer_normalization_5/strided_slice/stack_1:output:04layer_normalization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_5/mulMul$layer_normalization_5/mul/x:output:0,layer_normalization_5/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_5/strided_slice_1StridedSlice$layer_normalization_5/Shape:output:04layer_normalization_5/strided_slice_1/stack:output:06layer_normalization_5/strided_slice_1/stack_1:output:06layer_normalization_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_5/mul_1Mullayer_normalization_5/mul:z:0.layer_normalization_5/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_5/strided_slice_2StridedSlice$layer_normalization_5/Shape:output:04layer_normalization_5/strided_slice_2/stack:output:06layer_normalization_5/strided_slice_2/stack_1:output:06layer_normalization_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_5/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_5/mul_2Mul&layer_normalization_5/mul_2/x:output:0.layer_normalization_5/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_5/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_5/Reshape/shapePack.layer_normalization_5/Reshape/shape/0:output:0layer_normalization_5/mul_1:z:0layer_normalization_5/mul_2:z:0.layer_normalization_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_5/ReshapeReshape	add_1:z:0,layer_normalization_5/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_5/ones/packedPacklayer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_5/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_5/onesFill*layer_normalization_5/ones/packed:output:0)layer_normalization_5/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_5/zeros/packedPacklayer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_5/zerosFill+layer_normalization_5/zeros/packed:output:0*layer_normalization_5/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_5/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_5/FusedBatchNormV3FusedBatchNormV3&layer_normalization_5/Reshape:output:0#layer_normalization_5/ones:output:0$layer_normalization_5/zeros:output:0$layer_normalization_5/Const:output:0&layer_normalization_5/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_5/Reshape_1Reshape*layer_normalization_5/FusedBatchNormV3:y:0$layer_normalization_5/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_5/mul_3/ReadVariableOpReadVariableOp3layer_normalization_5_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_5/mul_3Mul(layer_normalization_5/Reshape_1:output:02layer_normalization_5/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_5/add/ReadVariableOpReadVariableOp1layer_normalization_5_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_5/addAddV2layer_normalization_5/mul_3:z:00layer_normalization_5/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
IdentityIdentitylayer_normalization_5/add:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp)^layer_normalization_4/add/ReadVariableOp+^layer_normalization_4/mul_3/ReadVariableOp)^layer_normalization_5/add/ReadVariableOp+^layer_normalization_5/mul_3/ReadVariableOp7^multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_20/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_21/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_22/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_23/Tensordot/ReadVariableOp-^sequential_2/dense_24/BiasAdd/ReadVariableOp/^sequential_2/dense_24/Tensordot/ReadVariableOp-^sequential_2/dense_25/BiasAdd/ReadVariableOp/^sequential_2/dense_25/Tensordot/ReadVariableOp-^sequential_2/dense_26/BiasAdd/ReadVariableOp/^sequential_2/dense_26/Tensordot/ReadVariableOp-^sequential_2/dense_27/BiasAdd/ReadVariableOp/^sequential_2/dense_27/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : : : 2T
(layer_normalization_4/add/ReadVariableOp(layer_normalization_4/add/ReadVariableOp2X
*layer_normalization_4/mul_3/ReadVariableOp*layer_normalization_4/mul_3/ReadVariableOp2T
(layer_normalization_5/add/ReadVariableOp(layer_normalization_5/add/ReadVariableOp2X
*layer_normalization_5/mul_3/ReadVariableOp*layer_normalization_5/mul_3/ReadVariableOp2p
6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp2\
,sequential_2/dense_24/BiasAdd/ReadVariableOp,sequential_2/dense_24/BiasAdd/ReadVariableOp2`
.sequential_2/dense_24/Tensordot/ReadVariableOp.sequential_2/dense_24/Tensordot/ReadVariableOp2\
,sequential_2/dense_25/BiasAdd/ReadVariableOp,sequential_2/dense_25/BiasAdd/ReadVariableOp2`
.sequential_2/dense_25/Tensordot/ReadVariableOp.sequential_2/dense_25/Tensordot/ReadVariableOp2\
,sequential_2/dense_26/BiasAdd/ReadVariableOp,sequential_2/dense_26/BiasAdd/ReadVariableOp2`
.sequential_2/dense_26/Tensordot/ReadVariableOp.sequential_2/dense_26/Tensordot/ReadVariableOp2\
,sequential_2/dense_27/BiasAdd/ReadVariableOp,sequential_2/dense_27/BiasAdd/ReadVariableOp2`
.sequential_2/dense_27/Tensordot/ReadVariableOp.sequential_2/dense_27/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
(__inference_model_2_layer_call_fn_108155

inputs
unknown:
??
	unknown_0:
??
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
??

unknown_22:	?

unknown_23:
??

unknown_24:	?
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
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_107061p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
C__inference_model_2_layer_call_and_return_conditional_losses_108033
input_39
%token_and_position_embedding_2_107973:
??9
%token_and_position_embedding_2_107975:
??.
transformer_block_2_107978:
??)
transformer_block_2_107980:	?.
transformer_block_2_107982:
??)
transformer_block_2_107984:	?.
transformer_block_2_107986:
??)
transformer_block_2_107988:	?.
transformer_block_2_107990:
??)
transformer_block_2_107992:	?)
transformer_block_2_107994:	?)
transformer_block_2_107996:	?.
transformer_block_2_107998:
??)
transformer_block_2_108000:	?.
transformer_block_2_108002:
??)
transformer_block_2_108004:	?.
transformer_block_2_108006:
??)
transformer_block_2_108008:	?.
transformer_block_2_108010:
??)
transformer_block_2_108012:	?)
transformer_block_2_108014:	?)
transformer_block_2_108016:	?#
dense_28_108021:
??
dense_28_108023:	?#
dense_29_108027:
??
dense_29_108029:	?
identity?? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?"dropout_19/StatefulPartitionedCall?"dropout_20/StatefulPartitionedCall?6token_and_position_embedding_2/StatefulPartitionedCall?+transformer_block_2/StatefulPartitionedCall?
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_3%token_and_position_embedding_2_107973%token_and_position_embedding_2_107975*
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
Z__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_106608?
+transformer_block_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_block_2_107978transformer_block_2_107980transformer_block_2_107982transformer_block_2_107984transformer_block_2_107986transformer_block_2_107988transformer_block_2_107990transformer_block_2_107992transformer_block_2_107994transformer_block_2_107996transformer_block_2_107998transformer_block_2_108000transformer_block_2_108002transformer_block_2_108004transformer_block_2_108006transformer_block_2_108008transformer_block_2_108010transformer_block_2_108012transformer_block_2_108014transformer_block_2_108016* 
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
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_107620?
&global_max_pooling1d_2/PartitionedCallPartitionedCall4transformer_block_2/StatefulPartitionedCall:output:0*
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
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_106575?
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0*
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
F__inference_dropout_19_layer_call_and_return_conditional_losses_107179?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_28_108021dense_28_108023*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_107030?
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0#^dropout_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_107146?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0dense_29_108027dense_29_108029*
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
D__inference_dense_29_layer_call_and_return_conditional_losses_107054y
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall,^transformer_block_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2Z
+transformer_block_2/StatefulPartitionedCall+transformer_block_2/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?

e
F__inference_dropout_19_layer_call_and_return_conditional_losses_109950

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
?
)__inference_dense_28_layer_call_fn_109959

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_107030p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
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
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_110308

inputs>
*dense_24_tensordot_readvariableop_resource:
??7
(dense_24_biasadd_readvariableop_resource:	?>
*dense_25_tensordot_readvariableop_resource:
??7
(dense_25_biasadd_readvariableop_resource:	?>
*dense_26_tensordot_readvariableop_resource:
??7
(dense_26_biasadd_readvariableop_resource:	?>
*dense_27_tensordot_readvariableop_resource:
??7
(dense_27_biasadd_readvariableop_resource:	?
identity??dense_24/BiasAdd/ReadVariableOp?!dense_24/Tensordot/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?!dense_25/Tensordot/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?!dense_26/Tensordot/ReadVariableOp?dense_27/BiasAdd/ReadVariableOp?!dense_27/Tensordot/ReadVariableOp?
!dense_24/Tensordot/ReadVariableOpReadVariableOp*dense_24_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_24/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_24/Tensordot/GatherV2GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/free:output:0)dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_24/Tensordot/GatherV2_1GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/axes:output:0+dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_24/Tensordot/ProdProd$dense_24/Tensordot/GatherV2:output:0!dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_24/Tensordot/Prod_1Prod&dense_24/Tensordot/GatherV2_1:output:0#dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_24/Tensordot/concatConcatV2 dense_24/Tensordot/free:output:0 dense_24/Tensordot/axes:output:0'dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_24/Tensordot/stackPack dense_24/Tensordot/Prod:output:0"dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_24/Tensordot/transpose	Transposeinputs"dense_24/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_24/Tensordot/ReshapeReshape dense_24/Tensordot/transpose:y:0!dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_24/Tensordot/MatMulMatMul#dense_24/Tensordot/Reshape:output:0)dense_24/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_24/Tensordot/concat_1ConcatV2$dense_24/Tensordot/GatherV2:output:0#dense_24/Tensordot/Const_2:output:0)dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_24/TensordotReshape#dense_24/Tensordot/MatMul:product:0$dense_24/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_24/BiasAddBiasAdddense_24/Tensordot:output:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*-
_output_shapes
:???????????]
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_14/dropout/MulMuldense_24/Relu:activations:0!dropout_14/dropout/Const:output:0*
T0*-
_output_shapes
:???????????c
dropout_14/dropout/ShapeShapedense_24/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_14/dropout/random_uniform/RandomUniformRandomUniform!dropout_14/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2????f
!dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_14/dropout/GreaterEqualGreaterEqual8dropout_14/dropout/random_uniform/RandomUniform:output:0*dropout_14/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
dropout_14/dropout/CastCast#dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
dropout_14/dropout/Mul_1Muldropout_14/dropout/Mul:z:0dropout_14/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
!dense_25/Tensordot/ReadVariableOpReadVariableOp*dense_25_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_25/Tensordot/ShapeShapedropout_14/dropout/Mul_1:z:0*
T0*
_output_shapes
:b
 dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_25/Tensordot/GatherV2GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/free:output:0)dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_25/Tensordot/GatherV2_1GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/axes:output:0+dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_25/Tensordot/ProdProd$dense_25/Tensordot/GatherV2:output:0!dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_25/Tensordot/Prod_1Prod&dense_25/Tensordot/GatherV2_1:output:0#dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_25/Tensordot/concatConcatV2 dense_25/Tensordot/free:output:0 dense_25/Tensordot/axes:output:0'dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_25/Tensordot/stackPack dense_25/Tensordot/Prod:output:0"dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_25/Tensordot/transpose	Transposedropout_14/dropout/Mul_1:z:0"dense_25/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_25/Tensordot/ReshapeReshape dense_25/Tensordot/transpose:y:0!dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_25/Tensordot/MatMulMatMul#dense_25/Tensordot/Reshape:output:0)dense_25/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_25/Tensordot/concat_1ConcatV2$dense_25/Tensordot/GatherV2:output:0#dense_25/Tensordot/Const_2:output:0)dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_25/TensordotReshape#dense_25/Tensordot/MatMul:product:0$dense_25/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_25/BiasAddBiasAdddense_25/Tensordot:output:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*-
_output_shapes
:???????????]
dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_15/dropout/MulMuldense_25/Relu:activations:0!dropout_15/dropout/Const:output:0*
T0*-
_output_shapes
:???????????c
dropout_15/dropout/ShapeShapedense_25/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_15/dropout/random_uniform/RandomUniformRandomUniform!dropout_15/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2f
!dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_15/dropout/GreaterEqualGreaterEqual8dropout_15/dropout/random_uniform/RandomUniform:output:0*dropout_15/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
dropout_15/dropout/CastCast#dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
dropout_15/dropout/Mul_1Muldropout_15/dropout/Mul:z:0dropout_15/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
!dense_26/Tensordot/ReadVariableOpReadVariableOp*dense_26_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_26/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_26/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_26/Tensordot/ShapeShapedropout_15/dropout/Mul_1:z:0*
T0*
_output_shapes
:b
 dense_26/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_26/Tensordot/GatherV2GatherV2!dense_26/Tensordot/Shape:output:0 dense_26/Tensordot/free:output:0)dense_26/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_26/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_26/Tensordot/GatherV2_1GatherV2!dense_26/Tensordot/Shape:output:0 dense_26/Tensordot/axes:output:0+dense_26/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_26/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_26/Tensordot/ProdProd$dense_26/Tensordot/GatherV2:output:0!dense_26/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_26/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_26/Tensordot/Prod_1Prod&dense_26/Tensordot/GatherV2_1:output:0#dense_26/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_26/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_26/Tensordot/concatConcatV2 dense_26/Tensordot/free:output:0 dense_26/Tensordot/axes:output:0'dense_26/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_26/Tensordot/stackPack dense_26/Tensordot/Prod:output:0"dense_26/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_26/Tensordot/transpose	Transposedropout_15/dropout/Mul_1:z:0"dense_26/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_26/Tensordot/ReshapeReshape dense_26/Tensordot/transpose:y:0!dense_26/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_26/Tensordot/MatMulMatMul#dense_26/Tensordot/Reshape:output:0)dense_26/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_26/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_26/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_26/Tensordot/concat_1ConcatV2$dense_26/Tensordot/GatherV2:output:0#dense_26/Tensordot/Const_2:output:0)dense_26/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_26/TensordotReshape#dense_26/Tensordot/MatMul:product:0$dense_26/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_26/BiasAddBiasAdddense_26/Tensordot:output:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????h
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*-
_output_shapes
:???????????]
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_16/dropout/MulMuldense_26/Relu:activations:0!dropout_16/dropout/Const:output:0*
T0*-
_output_shapes
:???????????c
dropout_16/dropout/ShapeShapedense_26/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0*
seed2f
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*-
_output_shapes
:????????????
!dense_27/Tensordot/ReadVariableOpReadVariableOp*dense_27_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0a
dense_27/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_27/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_27/Tensordot/ShapeShapedropout_16/dropout/Mul_1:z:0*
T0*
_output_shapes
:b
 dense_27/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_27/Tensordot/GatherV2GatherV2!dense_27/Tensordot/Shape:output:0 dense_27/Tensordot/free:output:0)dense_27/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_27/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_27/Tensordot/GatherV2_1GatherV2!dense_27/Tensordot/Shape:output:0 dense_27/Tensordot/axes:output:0+dense_27/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_27/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_27/Tensordot/ProdProd$dense_27/Tensordot/GatherV2:output:0!dense_27/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_27/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_27/Tensordot/Prod_1Prod&dense_27/Tensordot/GatherV2_1:output:0#dense_27/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_27/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_27/Tensordot/concatConcatV2 dense_27/Tensordot/free:output:0 dense_27/Tensordot/axes:output:0'dense_27/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_27/Tensordot/stackPack dense_27/Tensordot/Prod:output:0"dense_27/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_27/Tensordot/transpose	Transposedropout_16/dropout/Mul_1:z:0"dense_27/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
dense_27/Tensordot/ReshapeReshape dense_27/Tensordot/transpose:y:0!dense_27/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_27/Tensordot/MatMulMatMul#dense_27/Tensordot/Reshape:output:0)dense_27/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_27/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?b
 dense_27/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_27/Tensordot/concat_1ConcatV2$dense_27/Tensordot/GatherV2:output:0#dense_27/Tensordot/Const_2:output:0)dense_27/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_27/TensordotReshape#dense_27/Tensordot/MatMul:product:0$dense_27/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_27/BiasAddBiasAdddense_27/Tensordot:output:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????n
IdentityIdentitydense_27/BiasAdd:output:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp ^dense_24/BiasAdd/ReadVariableOp"^dense_24/Tensordot/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp"^dense_25/Tensordot/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp"^dense_26/Tensordot/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp"^dense_27/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : 2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2F
!dense_24/Tensordot/ReadVariableOp!dense_24/Tensordot/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2F
!dense_25/Tensordot/ReadVariableOp!dense_25/Tensordot/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2F
!dense_26/Tensordot/ReadVariableOp!dense_26/Tensordot/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2F
!dense_27/Tensordot/ReadVariableOp!dense_27/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_16_layer_call_fn_110492

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
GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_106342u
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
?
d
F__inference_dropout_19_layer_call_and_return_conditional_losses_107017

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
?
d
+__inference_dropout_14_layer_call_fn_110358

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
GPU 2J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_106408u
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
?0
?
C__inference_model_2_layer_call_and_return_conditional_losses_107795

inputs9
%token_and_position_embedding_2_107735:
??9
%token_and_position_embedding_2_107737:
??.
transformer_block_2_107740:
??)
transformer_block_2_107742:	?.
transformer_block_2_107744:
??)
transformer_block_2_107746:	?.
transformer_block_2_107748:
??)
transformer_block_2_107750:	?.
transformer_block_2_107752:
??)
transformer_block_2_107754:	?)
transformer_block_2_107756:	?)
transformer_block_2_107758:	?.
transformer_block_2_107760:
??)
transformer_block_2_107762:	?.
transformer_block_2_107764:
??)
transformer_block_2_107766:	?.
transformer_block_2_107768:
??)
transformer_block_2_107770:	?.
transformer_block_2_107772:
??)
transformer_block_2_107774:	?)
transformer_block_2_107776:	?)
transformer_block_2_107778:	?#
dense_28_107783:
??
dense_28_107785:	?#
dense_29_107789:
??
dense_29_107791:	?
identity?? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?"dropout_19/StatefulPartitionedCall?"dropout_20/StatefulPartitionedCall?6token_and_position_embedding_2/StatefulPartitionedCall?+transformer_block_2/StatefulPartitionedCall?
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_2_107735%token_and_position_embedding_2_107737*
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
Z__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_106608?
+transformer_block_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_block_2_107740transformer_block_2_107742transformer_block_2_107744transformer_block_2_107746transformer_block_2_107748transformer_block_2_107750transformer_block_2_107752transformer_block_2_107754transformer_block_2_107756transformer_block_2_107758transformer_block_2_107760transformer_block_2_107762transformer_block_2_107764transformer_block_2_107766transformer_block_2_107768transformer_block_2_107770transformer_block_2_107772transformer_block_2_107774transformer_block_2_107776transformer_block_2_107778* 
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
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_107620?
&global_max_pooling1d_2/PartitionedCallPartitionedCall4transformer_block_2/StatefulPartitionedCall:output:0*
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
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_106575?
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0*
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
F__inference_dropout_19_layer_call_and_return_conditional_losses_107179?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_28_107783dense_28_107785*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_107030?
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0#^dropout_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_107146?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0dense_29_107789dense_29_107791*
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
D__inference_dense_29_layer_call_and_return_conditional_losses_107054y
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall,^transformer_block_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2Z
+transformer_block_2/StatefulPartitionedCall+transformer_block_2/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?-
?
C__inference_model_2_layer_call_and_return_conditional_losses_107061

inputs9
%token_and_position_embedding_2_106609:
??9
%token_and_position_embedding_2_106611:
??.
transformer_block_2_106970:
??)
transformer_block_2_106972:	?.
transformer_block_2_106974:
??)
transformer_block_2_106976:	?.
transformer_block_2_106978:
??)
transformer_block_2_106980:	?.
transformer_block_2_106982:
??)
transformer_block_2_106984:	?)
transformer_block_2_106986:	?)
transformer_block_2_106988:	?.
transformer_block_2_106990:
??)
transformer_block_2_106992:	?.
transformer_block_2_106994:
??)
transformer_block_2_106996:	?.
transformer_block_2_106998:
??)
transformer_block_2_107000:	?.
transformer_block_2_107002:
??)
transformer_block_2_107004:	?)
transformer_block_2_107006:	?)
transformer_block_2_107008:	?#
dense_28_107031:
??
dense_28_107033:	?#
dense_29_107055:
??
dense_29_107057:	?
identity?? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?6token_and_position_embedding_2/StatefulPartitionedCall?+transformer_block_2/StatefulPartitionedCall?
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_2_106609%token_and_position_embedding_2_106611*
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
Z__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_106608?
+transformer_block_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_block_2_106970transformer_block_2_106972transformer_block_2_106974transformer_block_2_106976transformer_block_2_106978transformer_block_2_106980transformer_block_2_106982transformer_block_2_106984transformer_block_2_106986transformer_block_2_106988transformer_block_2_106990transformer_block_2_106992transformer_block_2_106994transformer_block_2_106996transformer_block_2_106998transformer_block_2_107000transformer_block_2_107002transformer_block_2_107004transformer_block_2_107006transformer_block_2_107008* 
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
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_106969?
&global_max_pooling1d_2/PartitionedCallPartitionedCall4transformer_block_2/StatefulPartitionedCall:output:0*
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
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_106575?
dropout_19/PartitionedCallPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0*
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
F__inference_dropout_19_layer_call_and_return_conditional_losses_107017?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_28_107031dense_28_107033*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_107030?
dropout_20/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_107041?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0dense_29_107055dense_29_107057*
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
D__inference_dense_29_layer_call_and_return_conditional_losses_107054y
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall,^transformer_block_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2Z
+transformer_block_2/StatefulPartitionedCall+transformer_block_2/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_20_layer_call_fn_109980

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_107146p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
?__inference_token_and_position_embedding_2_layer_call_fn_109054
x
unknown:
??
	unknown_0:
??
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
Z__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_106608u
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
?
?
Z__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_109077
x7
#embedding_5_embedding_lookup_109065:
??7
#embedding_4_embedding_lookup_109070:
??
identity??embedding_4/embedding_lookup?embedding_5/embedding_lookup6
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
embedding_5/embedding_lookupResourceGather#embedding_5_embedding_lookup_109065range:output:0*
Tindices0*6
_class,
*(loc:@embedding_5/embedding_lookup/109065* 
_output_shapes
:
??*
dtype0?
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_5/embedding_lookup/109065* 
_output_shapes
:
???
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
???
embedding_4/embedding_lookupResourceGather#embedding_4_embedding_lookup_109070x*
Tindices0*6
_class,
*(loc:@embedding_4/embedding_lookup/109070*-
_output_shapes
:???????????*
dtype0?
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_4/embedding_lookup/109070*-
_output_shapes
:????????????
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
addAddV20embedding_4/embedding_lookup/Identity_1:output:00embedding_5/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????\
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp^embedding_4/embedding_lookup^embedding_5/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2<
embedding_5/embedding_lookupembedding_5/embedding_lookup:K G
(
_output_shapes
:??????????

_user_specified_namex
?
?
$__inference_signature_wrapper_108098
input_3
unknown:
??
	unknown_0:
??
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
??

unknown_22:	?

unknown_23:
??

unknown_24:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_106117p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?
n
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_109923

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
??
?
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_109522

inputsU
Amulti_head_attention_2_dense_20_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_20_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_21_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_21_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_22_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_22_biasadd_readvariableop_resource:	?U
Amulti_head_attention_2_dense_23_tensordot_readvariableop_resource:
??N
?multi_head_attention_2_dense_23_biasadd_readvariableop_resource:	?B
3layer_normalization_4_mul_3_readvariableop_resource:	?@
1layer_normalization_4_add_readvariableop_resource:	?K
7sequential_2_dense_24_tensordot_readvariableop_resource:
??D
5sequential_2_dense_24_biasadd_readvariableop_resource:	?K
7sequential_2_dense_25_tensordot_readvariableop_resource:
??D
5sequential_2_dense_25_biasadd_readvariableop_resource:	?K
7sequential_2_dense_26_tensordot_readvariableop_resource:
??D
5sequential_2_dense_26_biasadd_readvariableop_resource:	?K
7sequential_2_dense_27_tensordot_readvariableop_resource:
??D
5sequential_2_dense_27_biasadd_readvariableop_resource:	?B
3layer_normalization_5_mul_3_readvariableop_resource:	?@
1layer_normalization_5_add_readvariableop_resource:	?
identity??(layer_normalization_4/add/ReadVariableOp?*layer_normalization_4/mul_3/ReadVariableOp?(layer_normalization_5/add/ReadVariableOp?*layer_normalization_5/mul_3/ReadVariableOp?6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp?6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp?8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp?,sequential_2/dense_24/BiasAdd/ReadVariableOp?.sequential_2/dense_24/Tensordot/ReadVariableOp?,sequential_2/dense_25/BiasAdd/ReadVariableOp?.sequential_2/dense_25/Tensordot/ReadVariableOp?,sequential_2/dense_26/BiasAdd/ReadVariableOp?.sequential_2/dense_26/Tensordot/ReadVariableOp?,sequential_2/dense_27/BiasAdd/ReadVariableOp?.sequential_2/dense_27/Tensordot/ReadVariableOpR
multi_head_attention_2/ShapeShapeinputs*
T0*
_output_shapes
:t
*multi_head_attention_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,multi_head_attention_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,multi_head_attention_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$multi_head_attention_2/strided_sliceStridedSlice%multi_head_attention_2/Shape:output:03multi_head_attention_2/strided_slice/stack:output:05multi_head_attention_2/strided_slice/stack_1:output:05multi_head_attention_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
8multi_head_attention_2/dense_20/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_20_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_20/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_20/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_20/Tensordot/Shape:output:07multi_head_attention_2/dense_20/Tensordot/free:output:0@multi_head_attention_2/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_20/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_20/Tensordot/Shape:output:07multi_head_attention_2/dense_20/Tensordot/axes:output:0Bmulti_head_attention_2/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_20/Tensordot/ProdProd;multi_head_attention_2/dense_20/Tensordot/GatherV2:output:08multi_head_attention_2/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_20/Tensordot/Prod_1Prod=multi_head_attention_2/dense_20/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_20/Tensordot/concatConcatV27multi_head_attention_2/dense_20/Tensordot/free:output:07multi_head_attention_2/dense_20/Tensordot/axes:output:0>multi_head_attention_2/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_20/Tensordot/stackPack7multi_head_attention_2/dense_20/Tensordot/Prod:output:09multi_head_attention_2/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_20/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_20/Tensordot/ReshapeReshape7multi_head_attention_2/dense_20/Tensordot/transpose:y:08multi_head_attention_2/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_20/Tensordot/MatMulMatMul:multi_head_attention_2/dense_20/Tensordot/Reshape:output:0@multi_head_attention_2/dense_20/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_20/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_20/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_20/Tensordot/Const_2:output:0@multi_head_attention_2/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_20/TensordotReshape:multi_head_attention_2/dense_20/Tensordot/MatMul:product:0;multi_head_attention_2/dense_20/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_20/BiasAddBiasAdd2multi_head_attention_2/dense_20/Tensordot:output:0>multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_20/ReluRelu0multi_head_attention_2/dense_20/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_2/dense_21/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_21_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_21/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_21/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_21/Tensordot/Shape:output:07multi_head_attention_2/dense_21/Tensordot/free:output:0@multi_head_attention_2/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_21/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_21/Tensordot/Shape:output:07multi_head_attention_2/dense_21/Tensordot/axes:output:0Bmulti_head_attention_2/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_21/Tensordot/ProdProd;multi_head_attention_2/dense_21/Tensordot/GatherV2:output:08multi_head_attention_2/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_21/Tensordot/Prod_1Prod=multi_head_attention_2/dense_21/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_21/Tensordot/concatConcatV27multi_head_attention_2/dense_21/Tensordot/free:output:07multi_head_attention_2/dense_21/Tensordot/axes:output:0>multi_head_attention_2/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_21/Tensordot/stackPack7multi_head_attention_2/dense_21/Tensordot/Prod:output:09multi_head_attention_2/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_21/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_21/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_21/Tensordot/ReshapeReshape7multi_head_attention_2/dense_21/Tensordot/transpose:y:08multi_head_attention_2/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_21/Tensordot/MatMulMatMul:multi_head_attention_2/dense_21/Tensordot/Reshape:output:0@multi_head_attention_2/dense_21/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_21/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_21/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_21/Tensordot/Const_2:output:0@multi_head_attention_2/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_21/TensordotReshape:multi_head_attention_2/dense_21/Tensordot/MatMul:product:0;multi_head_attention_2/dense_21/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_21/BiasAddBiasAdd2multi_head_attention_2/dense_21/Tensordot:output:0>multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_21/ReluRelu0multi_head_attention_2/dense_21/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
8multi_head_attention_2/dense_22/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_22_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_attention_2/dense_22/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_22/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_22/Tensordot/Shape:output:07multi_head_attention_2/dense_22/Tensordot/free:output:0@multi_head_attention_2/dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_22/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_22/Tensordot/Shape:output:07multi_head_attention_2/dense_22/Tensordot/axes:output:0Bmulti_head_attention_2/dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_22/Tensordot/ProdProd;multi_head_attention_2/dense_22/Tensordot/GatherV2:output:08multi_head_attention_2/dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_22/Tensordot/Prod_1Prod=multi_head_attention_2/dense_22/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_22/Tensordot/concatConcatV27multi_head_attention_2/dense_22/Tensordot/free:output:07multi_head_attention_2/dense_22/Tensordot/axes:output:0>multi_head_attention_2/dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_22/Tensordot/stackPack7multi_head_attention_2/dense_22/Tensordot/Prod:output:09multi_head_attention_2/dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_22/Tensordot/transpose	Transposeinputs9multi_head_attention_2/dense_22/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
1multi_head_attention_2/dense_22/Tensordot/ReshapeReshape7multi_head_attention_2/dense_22/Tensordot/transpose:y:08multi_head_attention_2/dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_22/Tensordot/MatMulMatMul:multi_head_attention_2/dense_22/Tensordot/Reshape:output:0@multi_head_attention_2/dense_22/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_22/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_22/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_22/Tensordot/Const_2:output:0@multi_head_attention_2/dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_22/TensordotReshape:multi_head_attention_2/dense_22/Tensordot/MatMul:product:0;multi_head_attention_2/dense_22/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_22/BiasAddBiasAdd2multi_head_attention_2/dense_22/Tensordot:output:0>multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
$multi_head_attention_2/dense_22/ReluRelu0multi_head_attention_2/dense_22/BiasAdd:output:0*
T0*-
_output_shapes
:???????????q
&multi_head_attention_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????h
&multi_head_attention_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&multi_head_attention_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
$multi_head_attention_2/Reshape/shapePack-multi_head_attention_2/strided_slice:output:0/multi_head_attention_2/Reshape/shape/1:output:0/multi_head_attention_2/Reshape/shape/2:output:0/multi_head_attention_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
multi_head_attention_2/ReshapeReshape2multi_head_attention_2/dense_20/Relu:activations:0-multi_head_attention_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ~
%multi_head_attention_2/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 multi_head_attention_2/transpose	Transpose'multi_head_attention_2/Reshape:output:0.multi_head_attention_2/transpose/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_2/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_2/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
&multi_head_attention_2/Reshape_1/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_1/shape/1:output:01multi_head_attention_2/Reshape_1/shape/2:output:01multi_head_attention_2/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_1Reshape2multi_head_attention_2/dense_21/Relu:activations:0/multi_head_attention_2/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_1	Transpose)multi_head_attention_2/Reshape_1:output:00multi_head_attention_2/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(multi_head_attention_2/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(multi_head_attention_2/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
&multi_head_attention_2/Reshape_2/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_2/shape/1:output:01multi_head_attention_2/Reshape_2/shape/2:output:01multi_head_attention_2/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_2Reshape2multi_head_attention_2/dense_22/Relu:activations:0/multi_head_attention_2/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_2	Transpose)multi_head_attention_2/Reshape_2:output:00multi_head_attention_2/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
multi_head_attention_2/MatMulBatchMatMulV2$multi_head_attention_2/transpose:y:0&multi_head_attention_2/transpose_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????*
adj_y(t
multi_head_attention_2/Shape_1Shape&multi_head_attention_2/transpose_1:y:0*
T0*
_output_shapes
:
,multi_head_attention_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.multi_head_attention_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.multi_head_attention_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&multi_head_attention_2/strided_slice_1StridedSlice'multi_head_attention_2/Shape_1:output:05multi_head_attention_2/strided_slice_1/stack:output:07multi_head_attention_2/strided_slice_1/stack_1:output:07multi_head_attention_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
multi_head_attention_2/CastCast/multi_head_attention_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: e
multi_head_attention_2/SqrtSqrtmulti_head_attention_2/Cast:y:0*
T0*
_output_shapes
: ?
multi_head_attention_2/truedivRealDiv&multi_head_attention_2/MatMul:output:0multi_head_attention_2/Sqrt:y:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_2/SoftmaxSoftmax"multi_head_attention_2/truediv:z:0*
T0*A
_output_shapes/
-:+????????????????????????????
multi_head_attention_2/MatMul_1BatchMatMulV2(multi_head_attention_2/Softmax:softmax:0&multi_head_attention_2/transpose_2:y:0*
T0*8
_output_shapes&
$:"?????????????????? ?
'multi_head_attention_2/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"multi_head_attention_2/transpose_3	Transpose(multi_head_attention_2/MatMul_1:output:00multi_head_attention_2/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"?????????????????? s
(multi_head_attention_2/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????k
(multi_head_attention_2/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
&multi_head_attention_2/Reshape_3/shapePack-multi_head_attention_2/strided_slice:output:01multi_head_attention_2/Reshape_3/shape/1:output:01multi_head_attention_2/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:?
 multi_head_attention_2/Reshape_3Reshape&multi_head_attention_2/transpose_3:y:0/multi_head_attention_2/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:????????????????????
8multi_head_attention_2/dense_23/Tensordot/ReadVariableOpReadVariableOpAmulti_head_attention_2_dense_23_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.multi_head_attention_2/dense_23/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_attention_2/dense_23/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
/multi_head_attention_2/dense_23/Tensordot/ShapeShape)multi_head_attention_2/Reshape_3:output:0*
T0*
_output_shapes
:y
7multi_head_attention_2/dense_23/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_23/Tensordot/GatherV2GatherV28multi_head_attention_2/dense_23/Tensordot/Shape:output:07multi_head_attention_2/dense_23/Tensordot/free:output:0@multi_head_attention_2/dense_23/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_attention_2/dense_23/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4multi_head_attention_2/dense_23/Tensordot/GatherV2_1GatherV28multi_head_attention_2/dense_23/Tensordot/Shape:output:07multi_head_attention_2/dense_23/Tensordot/axes:output:0Bmulti_head_attention_2/dense_23/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_attention_2/dense_23/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.multi_head_attention_2/dense_23/Tensordot/ProdProd;multi_head_attention_2/dense_23/Tensordot/GatherV2:output:08multi_head_attention_2/dense_23/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_attention_2/dense_23/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0multi_head_attention_2/dense_23/Tensordot/Prod_1Prod=multi_head_attention_2/dense_23/Tensordot/GatherV2_1:output:0:multi_head_attention_2/dense_23/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_attention_2/dense_23/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0multi_head_attention_2/dense_23/Tensordot/concatConcatV27multi_head_attention_2/dense_23/Tensordot/free:output:07multi_head_attention_2/dense_23/Tensordot/axes:output:0>multi_head_attention_2/dense_23/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/multi_head_attention_2/dense_23/Tensordot/stackPack7multi_head_attention_2/dense_23/Tensordot/Prod:output:09multi_head_attention_2/dense_23/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3multi_head_attention_2/dense_23/Tensordot/transpose	Transpose)multi_head_attention_2/Reshape_3:output:09multi_head_attention_2/dense_23/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:????????????????????
1multi_head_attention_2/dense_23/Tensordot/ReshapeReshape7multi_head_attention_2/dense_23/Tensordot/transpose:y:08multi_head_attention_2/dense_23/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0multi_head_attention_2/dense_23/Tensordot/MatMulMatMul:multi_head_attention_2/dense_23/Tensordot/Reshape:output:0@multi_head_attention_2/dense_23/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1multi_head_attention_2/dense_23/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7multi_head_attention_2/dense_23/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2multi_head_attention_2/dense_23/Tensordot/concat_1ConcatV2;multi_head_attention_2/dense_23/Tensordot/GatherV2:output:0:multi_head_attention_2/dense_23/Tensordot/Const_2:output:0@multi_head_attention_2/dense_23/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)multi_head_attention_2/dense_23/TensordotReshape:multi_head_attention_2/dense_23/Tensordot/MatMul:product:0;multi_head_attention_2/dense_23/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:????????????????????
6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOpReadVariableOp?multi_head_attention_2_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'multi_head_attention_2/dense_23/BiasAddBiasAdd2multi_head_attention_2/dense_23/Tensordot:output:0>multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:????????????????????
$multi_head_attention_2/dense_23/ReluRelu0multi_head_attention_2/dense_23/BiasAdd:output:0*
T0*5
_output_shapes#
!:????????????????????
dropout_17/IdentityIdentity2multi_head_attention_2/dense_23/Relu:activations:0*
T0*5
_output_shapes#
!:???????????????????j
addAddV2inputsdropout_17/Identity:output:0*
T0*-
_output_shapes
:???????????R
layer_normalization_4/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_4/strided_sliceStridedSlice$layer_normalization_4/Shape:output:02layer_normalization_4/strided_slice/stack:output:04layer_normalization_4/strided_slice/stack_1:output:04layer_normalization_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_4/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_4/mulMul$layer_normalization_4/mul/x:output:0,layer_normalization_4/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_4/strided_slice_1StridedSlice$layer_normalization_4/Shape:output:04layer_normalization_4/strided_slice_1/stack:output:06layer_normalization_4/strided_slice_1/stack_1:output:06layer_normalization_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_4/mul_1Mullayer_normalization_4/mul:z:0.layer_normalization_4/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_4/strided_slice_2StridedSlice$layer_normalization_4/Shape:output:04layer_normalization_4/strided_slice_2/stack:output:06layer_normalization_4/strided_slice_2/stack_1:output:06layer_normalization_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_4/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_4/mul_2Mul&layer_normalization_4/mul_2/x:output:0.layer_normalization_4/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_4/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_4/Reshape/shapePack.layer_normalization_4/Reshape/shape/0:output:0layer_normalization_4/mul_1:z:0layer_normalization_4/mul_2:z:0.layer_normalization_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_4/ReshapeReshapeadd:z:0,layer_normalization_4/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_4/ones/packedPacklayer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_4/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_4/onesFill*layer_normalization_4/ones/packed:output:0)layer_normalization_4/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_4/zeros/packedPacklayer_normalization_4/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_4/zerosFill+layer_normalization_4/zeros/packed:output:0*layer_normalization_4/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_4/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_4/FusedBatchNormV3FusedBatchNormV3&layer_normalization_4/Reshape:output:0#layer_normalization_4/ones:output:0$layer_normalization_4/zeros:output:0$layer_normalization_4/Const:output:0&layer_normalization_4/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_4/Reshape_1Reshape*layer_normalization_4/FusedBatchNormV3:y:0$layer_normalization_4/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_4/mul_3/ReadVariableOpReadVariableOp3layer_normalization_4_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_4/mul_3Mul(layer_normalization_4/Reshape_1:output:02layer_normalization_4/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_4/add/ReadVariableOpReadVariableOp1layer_normalization_4_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_4/addAddV2layer_normalization_4/mul_3:z:00layer_normalization_4/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_24/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_24_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
%sequential_2/dense_24/Tensordot/ShapeShapelayer_normalization_4/add:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_24/Tensordot/GatherV2GatherV2.sequential_2/dense_24/Tensordot/Shape:output:0-sequential_2/dense_24/Tensordot/free:output:06sequential_2/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_24/Tensordot/GatherV2_1GatherV2.sequential_2/dense_24/Tensordot/Shape:output:0-sequential_2/dense_24/Tensordot/axes:output:08sequential_2/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_24/Tensordot/ProdProd1sequential_2/dense_24/Tensordot/GatherV2:output:0.sequential_2/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_24/Tensordot/Prod_1Prod3sequential_2/dense_24/Tensordot/GatherV2_1:output:00sequential_2/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_24/Tensordot/concatConcatV2-sequential_2/dense_24/Tensordot/free:output:0-sequential_2/dense_24/Tensordot/axes:output:04sequential_2/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_24/Tensordot/stackPack-sequential_2/dense_24/Tensordot/Prod:output:0/sequential_2/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_24/Tensordot/transpose	Transposelayer_normalization_4/add:z:0/sequential_2/dense_24/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_24/Tensordot/ReshapeReshape-sequential_2/dense_24/Tensordot/transpose:y:0.sequential_2/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_24/Tensordot/MatMulMatMul0sequential_2/dense_24/Tensordot/Reshape:output:06sequential_2/dense_24/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_24/Tensordot/concat_1ConcatV21sequential_2/dense_24/Tensordot/GatherV2:output:00sequential_2/dense_24/Tensordot/Const_2:output:06sequential_2/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_24/TensordotReshape0sequential_2/dense_24/Tensordot/MatMul:product:01sequential_2/dense_24/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_24/BiasAddBiasAdd(sequential_2/dense_24/Tensordot:output:04sequential_2/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_24/ReluRelu&sequential_2/dense_24/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
 sequential_2/dropout_14/IdentityIdentity(sequential_2/dense_24/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_25/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_25_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_25/Tensordot/ShapeShape)sequential_2/dropout_14/Identity:output:0*
T0*
_output_shapes
:o
-sequential_2/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_25/Tensordot/GatherV2GatherV2.sequential_2/dense_25/Tensordot/Shape:output:0-sequential_2/dense_25/Tensordot/free:output:06sequential_2/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_25/Tensordot/GatherV2_1GatherV2.sequential_2/dense_25/Tensordot/Shape:output:0-sequential_2/dense_25/Tensordot/axes:output:08sequential_2/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_25/Tensordot/ProdProd1sequential_2/dense_25/Tensordot/GatherV2:output:0.sequential_2/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_25/Tensordot/Prod_1Prod3sequential_2/dense_25/Tensordot/GatherV2_1:output:00sequential_2/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_25/Tensordot/concatConcatV2-sequential_2/dense_25/Tensordot/free:output:0-sequential_2/dense_25/Tensordot/axes:output:04sequential_2/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_25/Tensordot/stackPack-sequential_2/dense_25/Tensordot/Prod:output:0/sequential_2/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_25/Tensordot/transpose	Transpose)sequential_2/dropout_14/Identity:output:0/sequential_2/dense_25/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_25/Tensordot/ReshapeReshape-sequential_2/dense_25/Tensordot/transpose:y:0.sequential_2/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_25/Tensordot/MatMulMatMul0sequential_2/dense_25/Tensordot/Reshape:output:06sequential_2/dense_25/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_25/Tensordot/concat_1ConcatV21sequential_2/dense_25/Tensordot/GatherV2:output:00sequential_2/dense_25/Tensordot/Const_2:output:06sequential_2/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_25/TensordotReshape0sequential_2/dense_25/Tensordot/MatMul:product:01sequential_2/dense_25/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_25/BiasAddBiasAdd(sequential_2/dense_25/Tensordot:output:04sequential_2/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_25/ReluRelu&sequential_2/dense_25/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
 sequential_2/dropout_15/IdentityIdentity(sequential_2/dense_25/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_26/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_26_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_26/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_26/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_26/Tensordot/ShapeShape)sequential_2/dropout_15/Identity:output:0*
T0*
_output_shapes
:o
-sequential_2/dense_26/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_26/Tensordot/GatherV2GatherV2.sequential_2/dense_26/Tensordot/Shape:output:0-sequential_2/dense_26/Tensordot/free:output:06sequential_2/dense_26/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_26/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_26/Tensordot/GatherV2_1GatherV2.sequential_2/dense_26/Tensordot/Shape:output:0-sequential_2/dense_26/Tensordot/axes:output:08sequential_2/dense_26/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_26/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_26/Tensordot/ProdProd1sequential_2/dense_26/Tensordot/GatherV2:output:0.sequential_2/dense_26/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_26/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_26/Tensordot/Prod_1Prod3sequential_2/dense_26/Tensordot/GatherV2_1:output:00sequential_2/dense_26/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_26/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_26/Tensordot/concatConcatV2-sequential_2/dense_26/Tensordot/free:output:0-sequential_2/dense_26/Tensordot/axes:output:04sequential_2/dense_26/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_26/Tensordot/stackPack-sequential_2/dense_26/Tensordot/Prod:output:0/sequential_2/dense_26/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_26/Tensordot/transpose	Transpose)sequential_2/dropout_15/Identity:output:0/sequential_2/dense_26/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_26/Tensordot/ReshapeReshape-sequential_2/dense_26/Tensordot/transpose:y:0.sequential_2/dense_26/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_26/Tensordot/MatMulMatMul0sequential_2/dense_26/Tensordot/Reshape:output:06sequential_2/dense_26/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_26/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_26/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_26/Tensordot/concat_1ConcatV21sequential_2/dense_26/Tensordot/GatherV2:output:00sequential_2/dense_26/Tensordot/Const_2:output:06sequential_2/dense_26/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_26/TensordotReshape0sequential_2/dense_26/Tensordot/MatMul:product:01sequential_2/dense_26/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_26/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_26/BiasAddBiasAdd(sequential_2/dense_26/Tensordot:output:04sequential_2/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
sequential_2/dense_26/ReluRelu&sequential_2/dense_26/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
 sequential_2/dropout_16/IdentityIdentity(sequential_2/dense_26/Relu:activations:0*
T0*-
_output_shapes
:????????????
.sequential_2/dense_27/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_27_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
$sequential_2/dense_27/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_27/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_27/Tensordot/ShapeShape)sequential_2/dropout_16/Identity:output:0*
T0*
_output_shapes
:o
-sequential_2/dense_27/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_27/Tensordot/GatherV2GatherV2.sequential_2/dense_27/Tensordot/Shape:output:0-sequential_2/dense_27/Tensordot/free:output:06sequential_2/dense_27/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_27/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*sequential_2/dense_27/Tensordot/GatherV2_1GatherV2.sequential_2/dense_27/Tensordot/Shape:output:0-sequential_2/dense_27/Tensordot/axes:output:08sequential_2/dense_27/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_27/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
$sequential_2/dense_27/Tensordot/ProdProd1sequential_2/dense_27/Tensordot/GatherV2:output:0.sequential_2/dense_27/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_27/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
&sequential_2/dense_27/Tensordot/Prod_1Prod3sequential_2/dense_27/Tensordot/GatherV2_1:output:00sequential_2/dense_27/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_27/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/dense_27/Tensordot/concatConcatV2-sequential_2/dense_27/Tensordot/free:output:0-sequential_2/dense_27/Tensordot/axes:output:04sequential_2/dense_27/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
%sequential_2/dense_27/Tensordot/stackPack-sequential_2/dense_27/Tensordot/Prod:output:0/sequential_2/dense_27/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
)sequential_2/dense_27/Tensordot/transpose	Transpose)sequential_2/dropout_16/Identity:output:0/sequential_2/dense_27/Tensordot/concat:output:0*
T0*-
_output_shapes
:????????????
'sequential_2/dense_27/Tensordot/ReshapeReshape-sequential_2/dense_27/Tensordot/transpose:y:0.sequential_2/dense_27/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
&sequential_2/dense_27/Tensordot/MatMulMatMul0sequential_2/dense_27/Tensordot/Reshape:output:06sequential_2/dense_27/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
'sequential_2/dense_27/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?o
-sequential_2/dense_27/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_2/dense_27/Tensordot/concat_1ConcatV21sequential_2/dense_27/Tensordot/GatherV2:output:00sequential_2/dense_27/Tensordot/Const_2:output:06sequential_2/dense_27/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_27/TensordotReshape0sequential_2/dense_27/Tensordot/MatMul:product:01sequential_2/dense_27/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:????????????
,sequential_2/dense_27/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_27/BiasAddBiasAdd(sequential_2/dense_27/Tensordot:output:04sequential_2/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????
dropout_18/IdentityIdentity&sequential_2/dense_27/BiasAdd:output:0*
T0*-
_output_shapes
:????????????
add_1AddV2layer_normalization_4/add:z:0dropout_18/Identity:output:0*
T0*-
_output_shapes
:???????????T
layer_normalization_5/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_5/strided_sliceStridedSlice$layer_normalization_5/Shape:output:02layer_normalization_5/strided_slice/stack:output:04layer_normalization_5/strided_slice/stack_1:output:04layer_normalization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_5/mulMul$layer_normalization_5/mul/x:output:0,layer_normalization_5/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_5/strided_slice_1StridedSlice$layer_normalization_5/Shape:output:04layer_normalization_5/strided_slice_1/stack:output:06layer_normalization_5/strided_slice_1/stack_1:output:06layer_normalization_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_5/mul_1Mullayer_normalization_5/mul:z:0.layer_normalization_5/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_5/strided_slice_2StridedSlice$layer_normalization_5/Shape:output:04layer_normalization_5/strided_slice_2/stack:output:06layer_normalization_5/strided_slice_2/stack_1:output:06layer_normalization_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_5/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_5/mul_2Mul&layer_normalization_5/mul_2/x:output:0.layer_normalization_5/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_5/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_5/Reshape/shapePack.layer_normalization_5/Reshape/shape/0:output:0layer_normalization_5/mul_1:z:0layer_normalization_5/mul_2:z:0.layer_normalization_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_5/ReshapeReshape	add_1:z:0,layer_normalization_5/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_5/ones/packedPacklayer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_5/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_5/onesFill*layer_normalization_5/ones/packed:output:0)layer_normalization_5/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_5/zeros/packedPacklayer_normalization_5/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_5/zerosFill+layer_normalization_5/zeros/packed:output:0*layer_normalization_5/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_5/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_5/FusedBatchNormV3FusedBatchNormV3&layer_normalization_5/Reshape:output:0#layer_normalization_5/ones:output:0$layer_normalization_5/zeros:output:0$layer_normalization_5/Const:output:0&layer_normalization_5/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%???=?
layer_normalization_5/Reshape_1Reshape*layer_normalization_5/FusedBatchNormV3:y:0$layer_normalization_5/Shape:output:0*
T0*-
_output_shapes
:????????????
*layer_normalization_5/mul_3/ReadVariableOpReadVariableOp3layer_normalization_5_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_5/mul_3Mul(layer_normalization_5/Reshape_1:output:02layer_normalization_5/mul_3/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
(layer_normalization_5/add/ReadVariableOpReadVariableOp1layer_normalization_5_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_5/addAddV2layer_normalization_5/mul_3:z:00layer_normalization_5/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????r
IdentityIdentitylayer_normalization_5/add:z:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp)^layer_normalization_4/add/ReadVariableOp+^layer_normalization_4/mul_3/ReadVariableOp)^layer_normalization_5/add/ReadVariableOp+^layer_normalization_5/mul_3/ReadVariableOp7^multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_20/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_21/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_22/Tensordot/ReadVariableOp7^multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp9^multi_head_attention_2/dense_23/Tensordot/ReadVariableOp-^sequential_2/dense_24/BiasAdd/ReadVariableOp/^sequential_2/dense_24/Tensordot/ReadVariableOp-^sequential_2/dense_25/BiasAdd/ReadVariableOp/^sequential_2/dense_25/Tensordot/ReadVariableOp-^sequential_2/dense_26/BiasAdd/ReadVariableOp/^sequential_2/dense_26/Tensordot/ReadVariableOp-^sequential_2/dense_27/BiasAdd/ReadVariableOp/^sequential_2/dense_27/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : : : 2T
(layer_normalization_4/add/ReadVariableOp(layer_normalization_4/add/ReadVariableOp2X
*layer_normalization_4/mul_3/ReadVariableOp*layer_normalization_4/mul_3/ReadVariableOp2T
(layer_normalization_5/add/ReadVariableOp(layer_normalization_5/add/ReadVariableOp2X
*layer_normalization_5/mul_3/ReadVariableOp*layer_normalization_5/mul_3/ReadVariableOp2p
6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_20/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp8multi_head_attention_2/dense_20/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_21/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp8multi_head_attention_2/dense_21/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_22/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp8multi_head_attention_2/dense_22/Tensordot/ReadVariableOp2p
6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp6multi_head_attention_2/dense_23/BiasAdd/ReadVariableOp2t
8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp8multi_head_attention_2/dense_23/Tensordot/ReadVariableOp2\
,sequential_2/dense_24/BiasAdd/ReadVariableOp,sequential_2/dense_24/BiasAdd/ReadVariableOp2`
.sequential_2/dense_24/Tensordot/ReadVariableOp.sequential_2/dense_24/Tensordot/ReadVariableOp2\
,sequential_2/dense_25/BiasAdd/ReadVariableOp,sequential_2/dense_25/BiasAdd/ReadVariableOp2`
.sequential_2/dense_25/Tensordot/ReadVariableOp.sequential_2/dense_25/Tensordot/ReadVariableOp2\
,sequential_2/dense_26/BiasAdd/ReadVariableOp,sequential_2/dense_26/BiasAdd/ReadVariableOp2`
.sequential_2/dense_26/Tensordot/ReadVariableOp.sequential_2/dense_26/Tensordot/ReadVariableOp2\
,sequential_2/dense_27/BiasAdd/ReadVariableOp,sequential_2/dense_27/BiasAdd/ReadVariableOp2`
.sequential_2/dense_27/Tensordot/ReadVariableOp.sequential_2/dense_27/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
input_31
serving_default_input_3:0??????????=
dense_291
StatefulPartitionedCall:0??????????tensorflow/serving/predict:͚
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 att
!ffn
"
layernorm1
#
layernorm2
$dropout1
%dropout2"
_tf_keras_layer
?
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
?
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2_random_generator"
_tf_keras_layer
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias"
_tf_keras_layer
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator"
_tf_keras_layer
?
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias"
_tf_keras_layer
?
J0
K1
L2
M3
N4
O5
P6
Q7
R8
S9
T10
U11
V12
W13
X14
Y15
Z16
[17
\18
]19
^20
_21
922
:23
H24
I25"
trackable_list_wrapper
?
J0
K1
L2
M3
N4
O5
P6
Q7
R8
S9
T10
U11
V12
W13
X14
Y15
Z16
[17
\18
]19
^20
_21
922
:23
H24
I25"
trackable_list_wrapper
 "
trackable_list_wrapper
?
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
etrace_0
ftrace_1
gtrace_2
htrace_32?
(__inference_model_2_layer_call_fn_107116
(__inference_model_2_layer_call_fn_108155
(__inference_model_2_layer_call_fn_108212
(__inference_model_2_layer_call_fn_107907?
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
 zetrace_0zftrace_1zgtrace_2zhtrace_3
?
itrace_0
jtrace_1
ktrace_2
ltrace_32?
C__inference_model_2_layer_call_and_return_conditional_losses_108604
C__inference_model_2_layer_call_and_return_conditional_losses_109045
C__inference_model_2_layer_call_and_return_conditional_losses_107970
C__inference_model_2_layer_call_and_return_conditional_losses_108033?
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
 zitrace_0zjtrace_1zktrace_2zltrace_3
?B?
!__inference__wrapped_model_106117input_3"?
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
miter

nbeta_1

obeta_2
	pdecay
qlearning_rate9m?:m?Hm?Im?Jm?Km?Lm?Mm?Nm?Om?Pm?Qm?Rm?Sm?Tm?Um?Vm?Wm?Xm?Ym?Zm?[m?\m?]m?^m?_m?9v?:v?Hv?Iv?Jv?Kv?Lv?Mv?Nv?Ov?Pv?Qv?Rv?Sv?Tv?Uv?Vv?Wv?Xv?Yv?Zv?[v?\v?]v?^v?_v?"
	optimizer
,
rserving_default"
signature_map
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
xtrace_02?
?__inference_token_and_position_embedding_2_layer_call_fn_109054?
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
 zxtrace_0
?
ytrace_02?
Z__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_109077?
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
 zytrace_0
?
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
J
embeddings"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
K
embeddings"
_tf_keras_layer
?
L0
M1
N2
O3
P4
Q5
R6
S7
T8
U9
V10
W11
X12
Y13
Z14
[15
\16
]17
^18
_19"
trackable_list_wrapper
?
L0
M1
N2
O3
P4
Q5
R6
S7
T8
U9
V10
W11
X12
Y13
Z14
[15
\16
]17
^18
_19"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
4__inference_transformer_block_2_layer_call_fn_109122
4__inference_transformer_block_2_layer_call_fn_109167?
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
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_109522
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_109912?
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
 z?trace_0z?trace_1
?
?	variables
?trainable_variables
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
	\gamma
]beta"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	^gamma
_beta"
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
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
7__inference_global_max_pooling1d_2_layer_call_fn_109917?
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
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_109923?
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
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
+__inference_dropout_19_layer_call_fn_109928
+__inference_dropout_19_layer_call_fn_109933?
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
F__inference_dropout_19_layer_call_and_return_conditional_losses_109938
F__inference_dropout_19_layer_call_and_return_conditional_losses_109950?
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
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_28_layer_call_fn_109959?
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
D__inference_dense_28_layer_call_and_return_conditional_losses_109970?
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
??2dense_28/kernel
:?2dense_28/bias
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
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
+__inference_dropout_20_layer_call_fn_109975
+__inference_dropout_20_layer_call_fn_109980?
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
F__inference_dropout_20_layer_call_and_return_conditional_losses_109985
F__inference_dropout_20_layer_call_and_return_conditional_losses_109997?
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
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_29_layer_call_fn_110006?
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
D__inference_dense_29_layer_call_and_return_conditional_losses_110017?
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
??2dense_29/kernel
:?2dense_29/bias
I:G
??25token_and_position_embedding_2/embedding_4/embeddings
I:G
??25token_and_position_embedding_2/embedding_5/embeddings
N:L
??2:transformer_block_2/multi_head_attention_2/dense_20/kernel
G:E?28transformer_block_2/multi_head_attention_2/dense_20/bias
N:L
??2:transformer_block_2/multi_head_attention_2/dense_21/kernel
G:E?28transformer_block_2/multi_head_attention_2/dense_21/bias
N:L
??2:transformer_block_2/multi_head_attention_2/dense_22/kernel
G:E?28transformer_block_2/multi_head_attention_2/dense_22/bias
N:L
??2:transformer_block_2/multi_head_attention_2/dense_23/kernel
G:E?28transformer_block_2/multi_head_attention_2/dense_23/bias
#:!
??2dense_24/kernel
:?2dense_24/bias
#:!
??2dense_25/kernel
:?2dense_25/bias
#:!
??2dense_26/kernel
:?2dense_26/bias
#:!
??2dense_27/kernel
:?2dense_27/bias
>:<?2/transformer_block_2/layer_normalization_4/gamma
=:;?2.transformer_block_2/layer_normalization_4/beta
>:<?2/transformer_block_2/layer_normalization_5/gamma
=:;?2.transformer_block_2/layer_normalization_5/beta
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
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
(__inference_model_2_layer_call_fn_107116input_3"?
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
(__inference_model_2_layer_call_fn_108155inputs"?
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
(__inference_model_2_layer_call_fn_108212inputs"?
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
(__inference_model_2_layer_call_fn_107907input_3"?
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
C__inference_model_2_layer_call_and_return_conditional_losses_108604inputs"?
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
C__inference_model_2_layer_call_and_return_conditional_losses_109045inputs"?
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
C__inference_model_2_layer_call_and_return_conditional_losses_107970input_3"?
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
C__inference_model_2_layer_call_and_return_conditional_losses_108033input_3"?
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
$__inference_signature_wrapper_108098input_3"?
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
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
?__inference_token_and_position_embedding_2_layer_call_fn_109054x"?
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
Z__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_109077x"?
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
J0"
trackable_list_wrapper
'
J0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
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
K0"
trackable_list_wrapper
'
K0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
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
J
 0
!1
"2
#3
$4
%5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
4__inference_transformer_block_2_layer_call_fn_109122inputs"?
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
4__inference_transformer_block_2_layer_call_fn_109167inputs"?
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
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_109522inputs"?
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
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_109912inputs"?
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
L0
M1
N2
O3
P4
Q5
R6
S7"
trackable_list_wrapper
X
L0
M1
N2
O3
P4
Q5
R6
S7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
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
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Lkernel
Mbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Nkernel
Obias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Pkernel
Qbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Rkernel
Sbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Tkernel
Ubias"
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

Vkernel
Wbias"
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

Xkernel
Ybias"
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

Zkernel
[bias"
_tf_keras_layer
X
T0
U1
V2
W3
X4
Y5
Z6
[7"
trackable_list_wrapper
X
T0
U1
V2
W3
X4
Y5
Z6
[7"
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
-__inference_sequential_2_layer_call_fn_106312
-__inference_sequential_2_layer_call_fn_110038
-__inference_sequential_2_layer_call_fn_110059
-__inference_sequential_2_layer_call_fn_106511?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_110173
H__inference_sequential_2_layer_call_and_return_conditional_losses_110308
H__inference_sequential_2_layer_call_and_return_conditional_losses_106538
H__inference_sequential_2_layer_call_and_return_conditional_losses_106565?
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
\0
]1"
trackable_list_wrapper
.
\0
]1"
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
^0
_1"
trackable_list_wrapper
.
^0
_1"
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
7__inference_global_max_pooling1d_2_layer_call_fn_109917inputs"?
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
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_109923inputs"?
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
+__inference_dropout_19_layer_call_fn_109928inputs"?
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
+__inference_dropout_19_layer_call_fn_109933inputs"?
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
F__inference_dropout_19_layer_call_and_return_conditional_losses_109938inputs"?
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
F__inference_dropout_19_layer_call_and_return_conditional_losses_109950inputs"?
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
)__inference_dense_28_layer_call_fn_109959inputs"?
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
D__inference_dense_28_layer_call_and_return_conditional_losses_109970inputs"?
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
+__inference_dropout_20_layer_call_fn_109975inputs"?
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
+__inference_dropout_20_layer_call_fn_109980inputs"?
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
F__inference_dropout_20_layer_call_and_return_conditional_losses_109985inputs"?
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
F__inference_dropout_20_layer_call_and_return_conditional_losses_109997inputs"?
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
)__inference_dense_29_layer_call_fn_110006inputs"?
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
D__inference_dense_29_layer_call_and_return_conditional_losses_110017inputs"?
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
L0
M1"
trackable_list_wrapper
.
L0
M1"
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
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
N0
O1"
trackable_list_wrapper
.
N0
O1"
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
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
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
R0
S1"
trackable_list_wrapper
.
R0
S1"
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
T0
U1"
trackable_list_wrapper
.
T0
U1"
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
)__inference_dense_24_layer_call_fn_110317?
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
D__inference_dense_24_layer_call_and_return_conditional_losses_110348?
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
+__inference_dropout_14_layer_call_fn_110353
+__inference_dropout_14_layer_call_fn_110358?
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
F__inference_dropout_14_layer_call_and_return_conditional_losses_110363
F__inference_dropout_14_layer_call_and_return_conditional_losses_110375?
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
V0
W1"
trackable_list_wrapper
.
V0
W1"
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
)__inference_dense_25_layer_call_fn_110384?
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
D__inference_dense_25_layer_call_and_return_conditional_losses_110415?
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
+__inference_dropout_15_layer_call_fn_110420
+__inference_dropout_15_layer_call_fn_110425?
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
F__inference_dropout_15_layer_call_and_return_conditional_losses_110430
F__inference_dropout_15_layer_call_and_return_conditional_losses_110442?
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
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
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
)__inference_dense_26_layer_call_fn_110451?
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
D__inference_dense_26_layer_call_and_return_conditional_losses_110482?
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
+__inference_dropout_16_layer_call_fn_110487
+__inference_dropout_16_layer_call_fn_110492?
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
F__inference_dropout_16_layer_call_and_return_conditional_losses_110497
F__inference_dropout_16_layer_call_and_return_conditional_losses_110509?
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
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
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
)__inference_dense_27_layer_call_fn_110518?
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
D__inference_dense_27_layer_call_and_return_conditional_losses_110548?
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
-__inference_sequential_2_layer_call_fn_106312dense_24_input"?
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
-__inference_sequential_2_layer_call_fn_110038inputs"?
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
-__inference_sequential_2_layer_call_fn_110059inputs"?
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
-__inference_sequential_2_layer_call_fn_106511dense_24_input"?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_110173inputs"?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_110308inputs"?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_106538dense_24_input"?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_106565dense_24_input"?
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
)__inference_dense_24_layer_call_fn_110317inputs"?
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
D__inference_dense_24_layer_call_and_return_conditional_losses_110348inputs"?
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
+__inference_dropout_14_layer_call_fn_110353inputs"?
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
+__inference_dropout_14_layer_call_fn_110358inputs"?
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
F__inference_dropout_14_layer_call_and_return_conditional_losses_110363inputs"?
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
F__inference_dropout_14_layer_call_and_return_conditional_losses_110375inputs"?
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
)__inference_dense_25_layer_call_fn_110384inputs"?
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
D__inference_dense_25_layer_call_and_return_conditional_losses_110415inputs"?
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
+__inference_dropout_15_layer_call_fn_110420inputs"?
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
+__inference_dropout_15_layer_call_fn_110425inputs"?
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
F__inference_dropout_15_layer_call_and_return_conditional_losses_110430inputs"?
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
F__inference_dropout_15_layer_call_and_return_conditional_losses_110442inputs"?
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
)__inference_dense_26_layer_call_fn_110451inputs"?
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
D__inference_dense_26_layer_call_and_return_conditional_losses_110482inputs"?
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
+__inference_dropout_16_layer_call_fn_110487inputs"?
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
+__inference_dropout_16_layer_call_fn_110492inputs"?
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
F__inference_dropout_16_layer_call_and_return_conditional_losses_110497inputs"?
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
F__inference_dropout_16_layer_call_and_return_conditional_losses_110509inputs"?
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
)__inference_dense_27_layer_call_fn_110518inputs"?
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
D__inference_dense_27_layer_call_and_return_conditional_losses_110548inputs"?
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
??2Adam/dense_28/kernel/m
!:?2Adam/dense_28/bias/m
(:&
??2Adam/dense_29/kernel/m
!:?2Adam/dense_29/bias/m
N:L
??2<Adam/token_and_position_embedding_2/embedding_4/embeddings/m
N:L
??2<Adam/token_and_position_embedding_2/embedding_5/embeddings/m
S:Q
??2AAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/m
L:J?2?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/m
S:Q
??2AAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/m
L:J?2?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/m
S:Q
??2AAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/m
L:J?2?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/m
S:Q
??2AAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/m
L:J?2?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/m
(:&
??2Adam/dense_24/kernel/m
!:?2Adam/dense_24/bias/m
(:&
??2Adam/dense_25/kernel/m
!:?2Adam/dense_25/bias/m
(:&
??2Adam/dense_26/kernel/m
!:?2Adam/dense_26/bias/m
(:&
??2Adam/dense_27/kernel/m
!:?2Adam/dense_27/bias/m
C:A?26Adam/transformer_block_2/layer_normalization_4/gamma/m
B:@?25Adam/transformer_block_2/layer_normalization_4/beta/m
C:A?26Adam/transformer_block_2/layer_normalization_5/gamma/m
B:@?25Adam/transformer_block_2/layer_normalization_5/beta/m
(:&
??2Adam/dense_28/kernel/v
!:?2Adam/dense_28/bias/v
(:&
??2Adam/dense_29/kernel/v
!:?2Adam/dense_29/bias/v
N:L
??2<Adam/token_and_position_embedding_2/embedding_4/embeddings/v
N:L
??2<Adam/token_and_position_embedding_2/embedding_5/embeddings/v
S:Q
??2AAdam/transformer_block_2/multi_head_attention_2/dense_20/kernel/v
L:J?2?Adam/transformer_block_2/multi_head_attention_2/dense_20/bias/v
S:Q
??2AAdam/transformer_block_2/multi_head_attention_2/dense_21/kernel/v
L:J?2?Adam/transformer_block_2/multi_head_attention_2/dense_21/bias/v
S:Q
??2AAdam/transformer_block_2/multi_head_attention_2/dense_22/kernel/v
L:J?2?Adam/transformer_block_2/multi_head_attention_2/dense_22/bias/v
S:Q
??2AAdam/transformer_block_2/multi_head_attention_2/dense_23/kernel/v
L:J?2?Adam/transformer_block_2/multi_head_attention_2/dense_23/bias/v
(:&
??2Adam/dense_24/kernel/v
!:?2Adam/dense_24/bias/v
(:&
??2Adam/dense_25/kernel/v
!:?2Adam/dense_25/bias/v
(:&
??2Adam/dense_26/kernel/v
!:?2Adam/dense_26/bias/v
(:&
??2Adam/dense_27/kernel/v
!:?2Adam/dense_27/bias/v
C:A?26Adam/transformer_block_2/layer_normalization_4/gamma/v
B:@?25Adam/transformer_block_2/layer_normalization_4/beta/v
C:A?26Adam/transformer_block_2/layer_normalization_5/gamma/v
B:@?25Adam/transformer_block_2/layer_normalization_5/beta/v?
!__inference__wrapped_model_106117?KJLMNOPQRS\]TUVWXYZ[^_9:HI1?.
'?$
"?
input_3??????????
? "4?1
/
dense_29#? 
dense_29???????????
D__inference_dense_24_layer_call_and_return_conditional_losses_110348hTU5?2
+?(
&?#
inputs???????????
? "+?(
!?
0???????????
? ?
)__inference_dense_24_layer_call_fn_110317[TU5?2
+?(
&?#
inputs???????????
? "?????????????
D__inference_dense_25_layer_call_and_return_conditional_losses_110415hVW5?2
+?(
&?#
inputs???????????
? "+?(
!?
0???????????
? ?
)__inference_dense_25_layer_call_fn_110384[VW5?2
+?(
&?#
inputs???????????
? "?????????????
D__inference_dense_26_layer_call_and_return_conditional_losses_110482hXY5?2
+?(
&?#
inputs???????????
? "+?(
!?
0???????????
? ?
)__inference_dense_26_layer_call_fn_110451[XY5?2
+?(
&?#
inputs???????????
? "?????????????
D__inference_dense_27_layer_call_and_return_conditional_losses_110548hZ[5?2
+?(
&?#
inputs???????????
? "+?(
!?
0???????????
? ?
)__inference_dense_27_layer_call_fn_110518[Z[5?2
+?(
&?#
inputs???????????
? "?????????????
D__inference_dense_28_layer_call_and_return_conditional_losses_109970^9:0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_28_layer_call_fn_109959Q9:0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_29_layer_call_and_return_conditional_losses_110017^HI0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_29_layer_call_fn_110006QHI0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dropout_14_layer_call_and_return_conditional_losses_110363h9?6
/?,
&?#
inputs???????????
p 
? "+?(
!?
0???????????
? ?
F__inference_dropout_14_layer_call_and_return_conditional_losses_110375h9?6
/?,
&?#
inputs???????????
p
? "+?(
!?
0???????????
? ?
+__inference_dropout_14_layer_call_fn_110353[9?6
/?,
&?#
inputs???????????
p 
? "?????????????
+__inference_dropout_14_layer_call_fn_110358[9?6
/?,
&?#
inputs???????????
p
? "?????????????
F__inference_dropout_15_layer_call_and_return_conditional_losses_110430h9?6
/?,
&?#
inputs???????????
p 
? "+?(
!?
0???????????
? ?
F__inference_dropout_15_layer_call_and_return_conditional_losses_110442h9?6
/?,
&?#
inputs???????????
p
? "+?(
!?
0???????????
? ?
+__inference_dropout_15_layer_call_fn_110420[9?6
/?,
&?#
inputs???????????
p 
? "?????????????
+__inference_dropout_15_layer_call_fn_110425[9?6
/?,
&?#
inputs???????????
p
? "?????????????
F__inference_dropout_16_layer_call_and_return_conditional_losses_110497h9?6
/?,
&?#
inputs???????????
p 
? "+?(
!?
0???????????
? ?
F__inference_dropout_16_layer_call_and_return_conditional_losses_110509h9?6
/?,
&?#
inputs???????????
p
? "+?(
!?
0???????????
? ?
+__inference_dropout_16_layer_call_fn_110487[9?6
/?,
&?#
inputs???????????
p 
? "?????????????
+__inference_dropout_16_layer_call_fn_110492[9?6
/?,
&?#
inputs???????????
p
? "?????????????
F__inference_dropout_19_layer_call_and_return_conditional_losses_109938^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_19_layer_call_and_return_conditional_losses_109950^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_19_layer_call_fn_109928Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_19_layer_call_fn_109933Q4?1
*?'
!?
inputs??????????
p
? "????????????
F__inference_dropout_20_layer_call_and_return_conditional_losses_109985^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_20_layer_call_and_return_conditional_losses_109997^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_20_layer_call_fn_109975Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_20_layer_call_fn_109980Q4?1
*?'
!?
inputs??????????
p
? "????????????
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_109923wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+
$?!
0??????????????????
? ?
7__inference_global_max_pooling1d_2_layer_call_fn_109917jE?B
;?8
6?3
inputs'???????????????????????????
? "!????????????????????
C__inference_model_2_layer_call_and_return_conditional_losses_107970KJLMNOPQRS\]TUVWXYZ[^_9:HI9?6
/?,
"?
input_3??????????
p 

 
? "&?#
?
0??????????
? ?
C__inference_model_2_layer_call_and_return_conditional_losses_108033KJLMNOPQRS\]TUVWXYZ[^_9:HI9?6
/?,
"?
input_3??????????
p

 
? "&?#
?
0??????????
? ?
C__inference_model_2_layer_call_and_return_conditional_losses_108604~KJLMNOPQRS\]TUVWXYZ[^_9:HI8?5
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
C__inference_model_2_layer_call_and_return_conditional_losses_109045~KJLMNOPQRS\]TUVWXYZ[^_9:HI8?5
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
(__inference_model_2_layer_call_fn_107116rKJLMNOPQRS\]TUVWXYZ[^_9:HI9?6
/?,
"?
input_3??????????
p 

 
? "????????????
(__inference_model_2_layer_call_fn_107907rKJLMNOPQRS\]TUVWXYZ[^_9:HI9?6
/?,
"?
input_3??????????
p

 
? "????????????
(__inference_model_2_layer_call_fn_108155qKJLMNOPQRS\]TUVWXYZ[^_9:HI8?5
.?+
!?
inputs??????????
p 

 
? "????????????
(__inference_model_2_layer_call_fn_108212qKJLMNOPQRS\]TUVWXYZ[^_9:HI8?5
.?+
!?
inputs??????????
p

 
? "????????????
H__inference_sequential_2_layer_call_and_return_conditional_losses_106538~TUVWXYZ[E?B
;?8
.?+
dense_24_input???????????
p 

 
? "+?(
!?
0???????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_106565~TUVWXYZ[E?B
;?8
.?+
dense_24_input???????????
p

 
? "+?(
!?
0???????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_110173vTUVWXYZ[=?:
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_110308vTUVWXYZ[=?:
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
-__inference_sequential_2_layer_call_fn_106312qTUVWXYZ[E?B
;?8
.?+
dense_24_input???????????
p 

 
? "?????????????
-__inference_sequential_2_layer_call_fn_106511qTUVWXYZ[E?B
;?8
.?+
dense_24_input???????????
p

 
? "?????????????
-__inference_sequential_2_layer_call_fn_110038iTUVWXYZ[=?:
3?0
&?#
inputs???????????
p 

 
? "?????????????
-__inference_sequential_2_layer_call_fn_110059iTUVWXYZ[=?:
3?0
&?#
inputs???????????
p

 
? "?????????????
$__inference_signature_wrapper_108098?KJLMNOPQRS\]TUVWXYZ[^_9:HI<?9
? 
2?/
-
input_3"?
input_3??????????"4?1
/
dense_29#? 
dense_29???????????
Z__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_109077^KJ+?(
!?
?
x??????????
? "+?(
!?
0???????????
? ?
?__inference_token_and_position_embedding_2_layer_call_fn_109054QKJ+?(
!?
?
x??????????
? "?????????????
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_109522~LMNOPQRS\]TUVWXYZ[^_9?6
/?,
&?#
inputs???????????
p 
? "+?(
!?
0???????????
? ?
O__inference_transformer_block_2_layer_call_and_return_conditional_losses_109912~LMNOPQRS\]TUVWXYZ[^_9?6
/?,
&?#
inputs???????????
p
? "+?(
!?
0???????????
? ?
4__inference_transformer_block_2_layer_call_fn_109122qLMNOPQRS\]TUVWXYZ[^_9?6
/?,
&?#
inputs???????????
p 
? "?????????????
4__inference_transformer_block_2_layer_call_fn_109167qLMNOPQRS\]TUVWXYZ[^_9?6
/?,
&?#
inputs???????????
p
? "????????????