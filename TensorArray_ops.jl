# Reference: https://www.tensorflow.org/versions/r0.12/api_docs/python/tensor_array_ops/classes_containing_dynamically_sized_arrays_of_tensors_#TensorArray

type Scalar
type Tensor

type TensorArray
type TensorArrayhandle
type TensorArrayflow

type dtype

function readt(index::Tensor{Int32}, name=None)
function gathert(indices::Tensor{T}, name=None)
function packt(name=None)
function concatt(name=None)
function writet(index::Scalar{Int32}, value::Tensor{dtype}, name=None)
function scattert(indices::Tensor{Int32}, value::Tensor{dtype}, name=None)
function unpackt(value::Tensor{dtype}, name=None)
function splitt(value::Tensor{dtype}, lengths::Vector{Int32}, name=None)
function gradt(source, flow=None, name=None)
function initt(dtype, size::Scalar{Int32}, dynamic_size::Bool, clear_after_read::Bool, tensor_array_name::String,
              handle::TensorArrayhandle, flow::TensorArrayflow, infer_shape::Bool, name::String)
    (handle, tensor_array_name) ? throw(ValueError()) :
    TensorArrayhandle::Tensor ? : throw(TypeError())
function closet(name=None)
function sizet(TensorArray, name=None)
    size(TensorArray)
end
