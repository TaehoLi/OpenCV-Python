node {
  name: "Placeholder"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 784
        }
      }
    }
  }
}
node {
  name: "Placeholder_1"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 10
        }
      }
    }
  }
}
node {
  name: "random_normal/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal/mul"
  op: "Mul"
  input: "random_normal/RandomStandardNormal"
  input: "random_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal"
  op: "Add"
  input: "random_normal/mul"
  input: "random_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable/Assign"
  op: "Assign"
  input: "Variable"
  input: "random_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable/read"
  op: "Identity"
  input: "Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "random_normal_1/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "random_normal_1/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_1/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_1/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_1/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_1/mul"
  op: "Mul"
  input: "random_normal_1/RandomStandardNormal"
  input: "random_normal_1/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_1"
  op: "Add"
  input: "random_normal_1/mul"
  input: "random_normal_1/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_1"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_1/Assign"
  op: "Assign"
  input: "Variable_1"
  input: "random_normal_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_1/read"
  op: "Identity"
  input: "Variable_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
}
node {
  name: "MatMul"
  op: "MatMul"
  input: "Placeholder"
  input: "Variable/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add"
  op: "Add"
  input: "MatMul"
  input: "Variable_1/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid"
  op: "Sigmoid"
  input: "add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_2/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_2/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_2/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_2/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_2/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_2/mul"
  op: "Mul"
  input: "random_normal_2/RandomStandardNormal"
  input: "random_normal_2/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_2"
  op: "Add"
  input: "random_normal_2/mul"
  input: "random_normal_2/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_2"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_2/Assign"
  op: "Assign"
  input: "Variable_2"
  input: "random_normal_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_2/read"
  op: "Identity"
  input: "Variable_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
}
node {
  name: "random_normal_3/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "random_normal_3/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_3/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_3/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_3/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_3/mul"
  op: "Mul"
  input: "random_normal_3/RandomStandardNormal"
  input: "random_normal_3/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_3"
  op: "Add"
  input: "random_normal_3/mul"
  input: "random_normal_3/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_3"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_3/Assign"
  op: "Assign"
  input: "Variable_3"
  input: "random_normal_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_3/read"
  op: "Identity"
  input: "Variable_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
}
node {
  name: "MatMul_1"
  op: "MatMul"
  input: "Sigmoid"
  input: "Variable_2/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_1"
  op: "Add"
  input: "MatMul_1"
  input: "Variable_3/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_1"
  op: "Sigmoid"
  input: "add_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_2"
  op: "MatMul"
  input: "Sigmoid"
  input: "Variable_2/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_2"
  op: "Add"
  input: "MatMul_2"
  input: "Variable_3/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "softmax"
  op: "Softmax"
  input: "add_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Log"
  op: "Log"
  input: "softmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul"
  op: "Mul"
  input: "Placeholder_1"
  input: "Log"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sum"
  op: "Sum"
  input: "mul"
  input: "Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Neg"
  op: "Neg"
  input: "Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean"
  op: "Mean"
  input: "Neg"
  input: "Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients/Fill"
  op: "Fill"
  input: "gradients/Shape"
  input: "gradients/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/Mean_grad/Reshape"
  op: "Reshape"
  input: "gradients/Fill"
  input: "gradients/Mean_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Shape"
  op: "Shape"
  input: "Neg"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Tile"
  op: "Tile"
  input: "gradients/Mean_grad/Reshape"
  input: "gradients/Mean_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Shape_1"
  op: "Shape"
  input: "Neg"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Shape_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients/Mean_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients/Mean_grad/Prod"
  op: "Prod"
  input: "gradients/Mean_grad/Shape_1"
  input: "gradients/Mean_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Mean_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients/Mean_grad/Prod_1"
  op: "Prod"
  input: "gradients/Mean_grad/Shape_2"
  input: "gradients/Mean_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Mean_grad/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/Mean_grad/Maximum"
  op: "Maximum"
  input: "gradients/Mean_grad/Prod_1"
  input: "gradients/Mean_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/floordiv"
  op: "FloorDiv"
  input: "gradients/Mean_grad/Prod"
  input: "gradients/Mean_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Cast"
  op: "Cast"
  input: "gradients/Mean_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Mean_grad/truediv"
  op: "RealDiv"
  input: "gradients/Mean_grad/Tile"
  input: "gradients/Mean_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/Neg_grad/Neg"
  op: "Neg"
  input: "gradients/Mean_grad/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/Sum_grad/Shape"
  op: "Shape"
  input: "mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Sum_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/add"
  op: "Add"
  input: "Sum/reduction_indices"
  input: "gradients/Sum_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/mod"
  op: "FloorMod"
  input: "gradients/Sum_grad/add"
  input: "gradients/Sum_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/range"
  op: "Range"
  input: "gradients/Sum_grad/range/start"
  input: "gradients/Sum_grad/Size"
  input: "gradients/Sum_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/Fill"
  op: "Fill"
  input: "gradients/Sum_grad/Shape_1"
  input: "gradients/Sum_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Sum_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "gradients/Sum_grad/range"
  input: "gradients/Sum_grad/mod"
  input: "gradients/Sum_grad/Shape"
  input: "gradients/Sum_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/Maximum"
  op: "Maximum"
  input: "gradients/Sum_grad/DynamicStitch"
  input: "gradients/Sum_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/floordiv"
  op: "FloorDiv"
  input: "gradients/Sum_grad/Shape"
  input: "gradients/Sum_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients/Sum_grad/Reshape"
  op: "Reshape"
  input: "gradients/Neg_grad/Neg"
  input: "gradients/Sum_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Sum_grad/Tile"
  op: "Tile"
  input: "gradients/Sum_grad/Reshape"
  input: "gradients/Sum_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/mul_grad/Shape"
  op: "Shape"
  input: "Placeholder_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/mul_grad/Shape_1"
  op: "Shape"
  input: "Log"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/mul_grad/Shape"
  input: "gradients/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/mul_grad/Mul"
  op: "Mul"
  input: "gradients/Sum_grad/Tile"
  input: "Log"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/mul_grad/Sum"
  op: "Sum"
  input: "gradients/mul_grad/Mul"
  input: "gradients/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/mul_grad/Reshape"
  op: "Reshape"
  input: "gradients/mul_grad/Sum"
  input: "gradients/mul_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/mul_grad/Mul_1"
  op: "Mul"
  input: "Placeholder_1"
  input: "gradients/Sum_grad/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/mul_grad/Sum_1"
  op: "Sum"
  input: "gradients/mul_grad/Mul_1"
  input: "gradients/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/mul_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/mul_grad/Sum_1"
  input: "gradients/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/mul_grad/Reshape"
  input: "^gradients/mul_grad/Reshape_1"
}
node {
  name: "gradients/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/mul_grad/Reshape"
  input: "^gradients/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/mul_grad/Reshape_1"
  input: "^gradients/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/Log_grad/Reciprocal"
  op: "Reciprocal"
  input: "softmax"
  input: "^gradients/mul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/Log_grad/mul"
  op: "Mul"
  input: "gradients/mul_grad/tuple/control_dependency_1"
  input: "gradients/Log_grad/Reciprocal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/softmax_grad/mul"
  op: "Mul"
  input: "gradients/Log_grad/mul"
  input: "softmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/softmax_grad/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients/softmax_grad/Sum"
  op: "Sum"
  input: "gradients/softmax_grad/mul"
  input: "gradients/softmax_grad/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/softmax_grad/sub"
  op: "Sub"
  input: "gradients/Log_grad/mul"
  input: "gradients/softmax_grad/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/softmax_grad/mul_1"
  op: "Mul"
  input: "gradients/softmax_grad/sub"
  input: "softmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/add_2_grad/Shape"
  op: "Shape"
  input: "MatMul_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/add_2_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "gradients/add_2_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/add_2_grad/Shape"
  input: "gradients/add_2_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/add_2_grad/Sum"
  op: "Sum"
  input: "gradients/softmax_grad/mul_1"
  input: "gradients/add_2_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/add_2_grad/Reshape"
  op: "Reshape"
  input: "gradients/add_2_grad/Sum"
  input: "gradients/add_2_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/add_2_grad/Sum_1"
  op: "Sum"
  input: "gradients/softmax_grad/mul_1"
  input: "gradients/add_2_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/add_2_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/add_2_grad/Sum_1"
  input: "gradients/add_2_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/add_2_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/add_2_grad/Reshape"
  input: "^gradients/add_2_grad/Reshape_1"
}
node {
  name: "gradients/add_2_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/add_2_grad/Reshape"
  input: "^gradients/add_2_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/add_2_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/add_2_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/add_2_grad/Reshape_1"
  input: "^gradients/add_2_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/add_2_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/MatMul_2_grad/MatMul"
  op: "MatMul"
  input: "gradients/add_2_grad/tuple/control_dependency"
  input: "Variable_2/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/MatMul_2_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid"
  input: "gradients/add_2_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/MatMul_2_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/MatMul_2_grad/MatMul"
  input: "^gradients/MatMul_2_grad/MatMul_1"
}
node {
  name: "gradients/MatMul_2_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/MatMul_2_grad/MatMul"
  input: "^gradients/MatMul_2_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/MatMul_2_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/MatMul_2_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/MatMul_2_grad/MatMul_1"
  input: "^gradients/MatMul_2_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/MatMul_2_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients/Sigmoid_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid"
  input: "gradients/MatMul_2_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/add_grad/Shape"
  op: "Shape"
  input: "MatMul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/add_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "gradients/add_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/add_grad/Shape"
  input: "gradients/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/add_grad/Sum"
  op: "Sum"
  input: "gradients/Sigmoid_grad/SigmoidGrad"
  input: "gradients/add_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/add_grad/Reshape"
  op: "Reshape"
  input: "gradients/add_grad/Sum"
  input: "gradients/add_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/add_grad/Sum_1"
  op: "Sum"
  input: "gradients/Sigmoid_grad/SigmoidGrad"
  input: "gradients/add_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/add_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/add_grad/Sum_1"
  input: "gradients/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/add_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/add_grad/Reshape"
  input: "^gradients/add_grad/Reshape_1"
}
node {
  name: "gradients/add_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/add_grad/Reshape"
  input: "^gradients/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/add_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/add_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/add_grad/Reshape_1"
  input: "^gradients/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/add_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/MatMul_grad/MatMul"
  op: "MatMul"
  input: "gradients/add_grad/tuple/control_dependency"
  input: "Variable/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "Placeholder"
  input: "gradients/add_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/MatMul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/MatMul_grad/MatMul"
  input: "^gradients/MatMul_grad/MatMul_1"
}
node {
  name: "gradients/MatMul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/MatMul_grad/MatMul"
  input: "^gradients/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/MatMul_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/MatMul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/MatMul_grad/MatMul_1"
  input: "^gradients/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/MatMul_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "beta1_power/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "beta1_power"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta1_power/Assign"
  op: "Assign"
  input: "beta1_power"
  input: "beta1_power/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta1_power/read"
  op: "Identity"
  input: "beta1_power"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "beta2_power/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "beta2_power"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta2_power/Assign"
  op: "Assign"
  input: "beta2_power"
  input: "beta2_power/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta2_power/read"
  op: "Identity"
  input: "beta2_power"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "Variable/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable/Adam/Assign"
  op: "Assign"
  input: "Variable/Adam"
  input: "Variable/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable/Adam/read"
  op: "Identity"
  input: "Variable/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "Variable/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable/Adam_1/Assign"
  op: "Assign"
  input: "Variable/Adam_1"
  input: "Variable/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable/Adam_1/read"
  op: "Identity"
  input: "Variable/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "Variable_1/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_1/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_1/Adam/Assign"
  op: "Assign"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_1/Adam/read"
  op: "Identity"
  input: "Variable_1/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
}
node {
  name: "Variable_1/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_1/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_1/Adam_1/Assign"
  op: "Assign"
  input: "Variable_1/Adam_1"
  input: "Variable_1/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_1/Adam_1/read"
  op: "Identity"
  input: "Variable_1/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
}
node {
  name: "Variable_2/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_2/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_2/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_2/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_2/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_2/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_2/Adam/Assign"
  op: "Assign"
  input: "Variable_2/Adam"
  input: "Variable_2/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_2/Adam/read"
  op: "Identity"
  input: "Variable_2/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
}
node {
  name: "Variable_2/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_2/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_2/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_2/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_2/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_2/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_2/Adam_1/Assign"
  op: "Assign"
  input: "Variable_2/Adam_1"
  input: "Variable_2/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_2/Adam_1/read"
  op: "Identity"
  input: "Variable_2/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
}
node {
  name: "Variable_3/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_3/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_3/Adam/Assign"
  op: "Assign"
  input: "Variable_3/Adam"
  input: "Variable_3/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_3/Adam/read"
  op: "Identity"
  input: "Variable_3/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
}
node {
  name: "Variable_3/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_3/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_3/Adam_1/Assign"
  op: "Assign"
  input: "Variable_3/Adam_1"
  input: "Variable_3/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_3/Adam_1/read"
  op: "Identity"
  input: "Variable_3/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
}
node {
  name: "Adam/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Adam/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "Adam/update_Variable/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable"
  input: "Variable/Adam"
  input: "Variable/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "Adam/learning_rate"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/MatMul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_Variable_1/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_1"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "Adam/learning_rate"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/add_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_Variable_2/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_2"
  input: "Variable_2/Adam"
  input: "Variable_2/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "Adam/learning_rate"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/MatMul_2_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_Variable_3/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_3"
  input: "Variable_3/Adam"
  input: "Variable_3/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "Adam/learning_rate"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/add_2_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/mul"
  op: "Mul"
  input: "beta1_power/read"
  input: "Adam/beta1"
  input: "^Adam/update_Variable/ApplyAdam"
  input: "^Adam/update_Variable_1/ApplyAdam"
  input: "^Adam/update_Variable_2/ApplyAdam"
  input: "^Adam/update_Variable_3/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "Adam/Assign"
  op: "Assign"
  input: "beta1_power"
  input: "Adam/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam/mul_1"
  op: "Mul"
  input: "beta2_power/read"
  input: "Adam/beta2"
  input: "^Adam/update_Variable/ApplyAdam"
  input: "^Adam/update_Variable_1/ApplyAdam"
  input: "^Adam/update_Variable_2/ApplyAdam"
  input: "^Adam/update_Variable_3/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "Adam/Assign_1"
  op: "Assign"
  input: "beta2_power"
  input: "Adam/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam"
  op: "NoOp"
  input: "^Adam/Assign"
  input: "^Adam/Assign_1"
  input: "^Adam/update_Variable/ApplyAdam"
  input: "^Adam/update_Variable_1/ApplyAdam"
  input: "^Adam/update_Variable_2/ApplyAdam"
  input: "^Adam/update_Variable_3/ApplyAdam"
}
node {
  name: "save/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 14
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "beta1_power"
        string_val: "beta2_power"
      }
    }
  }
}
node {
  name: "save/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 14
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save/SaveV2"
  op: "SaveV2"
  input: "save/Const"
  input: "save/SaveV2/tensor_names"
  input: "save/SaveV2/shape_and_slices"
  input: "Variable"
  input: "Variable/Adam"
  input: "Variable/Adam_1"
  input: "Variable_1"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam_1"
  input: "Variable_2"
  input: "Variable_2/Adam"
  input: "Variable_2/Adam_1"
  input: "Variable_3"
  input: "Variable_3/Adam"
  input: "Variable_3/Adam_1"
  input: "beta1_power"
  input: "beta2_power"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/control_dependency"
  op: "Identity"
  input: "save/Const"
  input: "^save/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save/Const"
      }
    }
  }
}
node {
  name: "save/RestoreV2/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 14
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "beta1_power"
        string_val: "beta2_power"
      }
    }
  }
}
node {
  name: "save/RestoreV2/shape_and_slices"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 14
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2/tensor_names"
  input: "save/RestoreV2/shape_and_slices"
  device: "/device:CPU:0"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign"
  op: "Assign"
  input: "Variable"
  input: "save/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_1"
  op: "Assign"
  input: "Variable/Adam"
  input: "save/RestoreV2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_2"
  op: "Assign"
  input: "Variable/Adam_1"
  input: "save/RestoreV2:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_3"
  op: "Assign"
  input: "Variable_1"
  input: "save/RestoreV2:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_4"
  op: "Assign"
  input: "Variable_1/Adam"
  input: "save/RestoreV2:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_5"
  op: "Assign"
  input: "Variable_1/Adam_1"
  input: "save/RestoreV2:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_6"
  op: "Assign"
  input: "Variable_2"
  input: "save/RestoreV2:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_7"
  op: "Assign"
  input: "Variable_2/Adam"
  input: "save/RestoreV2:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_8"
  op: "Assign"
  input: "Variable_2/Adam_1"
  input: "save/RestoreV2:8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_9"
  op: "Assign"
  input: "Variable_3"
  input: "save/RestoreV2:9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_10"
  op: "Assign"
  input: "Variable_3/Adam"
  input: "save/RestoreV2:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_11"
  op: "Assign"
  input: "Variable_3/Adam_1"
  input: "save/RestoreV2:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_12"
  op: "Assign"
  input: "beta1_power"
  input: "save/RestoreV2:12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_13"
  op: "Assign"
  input: "beta2_power"
  input: "save/RestoreV2:13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_all"
  op: "NoOp"
  input: "^save/Assign"
  input: "^save/Assign_1"
  input: "^save/Assign_10"
  input: "^save/Assign_11"
  input: "^save/Assign_12"
  input: "^save/Assign_13"
  input: "^save/Assign_2"
  input: "^save/Assign_3"
  input: "^save/Assign_4"
  input: "^save/Assign_5"
  input: "^save/Assign_6"
  input: "^save/Assign_7"
  input: "^save/Assign_8"
  input: "^save/Assign_9"
}
node {
  name: "init"
  op: "NoOp"
  input: "^Variable/Adam/Assign"
  input: "^Variable/Adam_1/Assign"
  input: "^Variable/Assign"
  input: "^Variable_1/Adam/Assign"
  input: "^Variable_1/Adam_1/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_2/Adam/Assign"
  input: "^Variable_2/Adam_1/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_3/Adam/Assign"
  input: "^Variable_3/Adam_1/Assign"
  input: "^Variable_3/Assign"
  input: "^beta1_power/Assign"
  input: "^beta2_power/Assign"
}
node {
  name: "ArgMax/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax"
  op: "ArgMax"
  input: "softmax"
  input: "ArgMax/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "ArgMax_1/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_1"
  op: "ArgMax"
  input: "Placeholder_1"
  input: "ArgMax_1/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Equal"
  op: "Equal"
  input: "ArgMax"
  input: "ArgMax_1"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Cast"
  op: "Cast"
  input: "Equal"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_1"
  op: "Mean"
  input: "Cast"
  input: "Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "mul_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_1"
  op: "Mul"
  input: "Mean_1"
  input: "mul_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_2/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_2"
  op: "Mul"
  input: "Mean_1"
  input: "mul_2/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Placeholder_2"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 784
        }
      }
    }
  }
}
node {
  name: "Placeholder_3"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 10
        }
      }
    }
  }
}
node {
  name: "random_normal_4/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_4/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_4/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_4/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_4/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_4/mul"
  op: "Mul"
  input: "random_normal_4/RandomStandardNormal"
  input: "random_normal_4/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_4"
  op: "Add"
  input: "random_normal_4/mul"
  input: "random_normal_4/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_4"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_4/Assign"
  op: "Assign"
  input: "Variable_4"
  input: "random_normal_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_4/read"
  op: "Identity"
  input: "Variable_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
}
node {
  name: "random_normal_5/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "random_normal_5/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_5/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_5/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_5/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_5/mul"
  op: "Mul"
  input: "random_normal_5/RandomStandardNormal"
  input: "random_normal_5/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_5"
  op: "Add"
  input: "random_normal_5/mul"
  input: "random_normal_5/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_5"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_5/Assign"
  op: "Assign"
  input: "Variable_5"
  input: "random_normal_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_5/read"
  op: "Identity"
  input: "Variable_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
}
node {
  name: "MatMul_3"
  op: "MatMul"
  input: "Placeholder_2"
  input: "Variable_4/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_3"
  op: "Add"
  input: "MatMul_3"
  input: "Variable_5/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_2"
  op: "Sigmoid"
  input: "add_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_6/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_6/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_6/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_6/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_6/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_6/mul"
  op: "Mul"
  input: "random_normal_6/RandomStandardNormal"
  input: "random_normal_6/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_6"
  op: "Add"
  input: "random_normal_6/mul"
  input: "random_normal_6/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_6"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_6/Assign"
  op: "Assign"
  input: "Variable_6"
  input: "random_normal_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_6/read"
  op: "Identity"
  input: "Variable_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
}
node {
  name: "random_normal_7/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "random_normal_7/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_7/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_7/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_7/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_7/mul"
  op: "Mul"
  input: "random_normal_7/RandomStandardNormal"
  input: "random_normal_7/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_7"
  op: "Add"
  input: "random_normal_7/mul"
  input: "random_normal_7/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_7"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_7/Assign"
  op: "Assign"
  input: "Variable_7"
  input: "random_normal_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_7/read"
  op: "Identity"
  input: "Variable_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
}
node {
  name: "MatMul_4"
  op: "MatMul"
  input: "Sigmoid_2"
  input: "Variable_6/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_4"
  op: "Add"
  input: "MatMul_4"
  input: "Variable_7/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_3"
  op: "Sigmoid"
  input: "add_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_5"
  op: "MatMul"
  input: "Sigmoid_2"
  input: "Variable_6/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_5"
  op: "Add"
  input: "MatMul_5"
  input: "Variable_7/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "softmax_1"
  op: "Softmax"
  input: "add_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Log_1"
  op: "Log"
  input: "softmax_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_3"
  op: "Mul"
  input: "Placeholder_3"
  input: "Log_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sum_1/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sum_1"
  op: "Sum"
  input: "mul_3"
  input: "Sum_1/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Neg_1"
  op: "Neg"
  input: "Sum_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_2"
  op: "Mean"
  input: "Neg_1"
  input: "Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_1/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_1/Fill"
  op: "Fill"
  input: "gradients_1/Shape"
  input: "gradients_1/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Reshape"
  op: "Reshape"
  input: "gradients_1/Fill"
  input: "gradients_1/Mean_2_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Shape"
  op: "Shape"
  input: "Neg_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Tile"
  op: "Tile"
  input: "gradients_1/Mean_2_grad/Reshape"
  input: "gradients_1/Mean_2_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Shape_1"
  op: "Shape"
  input: "Neg_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Shape_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Prod"
  op: "Prod"
  input: "gradients_1/Mean_2_grad/Shape_1"
  input: "gradients_1/Mean_2_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Prod_1"
  op: "Prod"
  input: "gradients_1/Mean_2_grad/Shape_2"
  input: "gradients_1/Mean_2_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Maximum"
  op: "Maximum"
  input: "gradients_1/Mean_2_grad/Prod_1"
  input: "gradients_1/Mean_2_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_1/Mean_2_grad/Prod"
  input: "gradients_1/Mean_2_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/Cast"
  op: "Cast"
  input: "gradients_1/Mean_2_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/Mean_2_grad/truediv"
  op: "RealDiv"
  input: "gradients_1/Mean_2_grad/Tile"
  input: "gradients_1/Mean_2_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/Neg_1_grad/Neg"
  op: "Neg"
  input: "gradients_1/Mean_2_grad/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/Shape"
  op: "Shape"
  input: "mul_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/add"
  op: "Add"
  input: "Sum_1/reduction_indices"
  input: "gradients_1/Sum_1_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/mod"
  op: "FloorMod"
  input: "gradients_1/Sum_1_grad/add"
  input: "gradients_1/Sum_1_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/range"
  op: "Range"
  input: "gradients_1/Sum_1_grad/range/start"
  input: "gradients_1/Sum_1_grad/Size"
  input: "gradients_1/Sum_1_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/Fill"
  op: "Fill"
  input: "gradients_1/Sum_1_grad/Shape_1"
  input: "gradients_1/Sum_1_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "gradients_1/Sum_1_grad/range"
  input: "gradients_1/Sum_1_grad/mod"
  input: "gradients_1/Sum_1_grad/Shape"
  input: "gradients_1/Sum_1_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/Maximum"
  op: "Maximum"
  input: "gradients_1/Sum_1_grad/DynamicStitch"
  input: "gradients_1/Sum_1_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_1/Sum_1_grad/Shape"
  input: "gradients_1/Sum_1_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/Reshape"
  op: "Reshape"
  input: "gradients_1/Neg_1_grad/Neg"
  input: "gradients_1/Sum_1_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Sum_1_grad/Tile"
  op: "Tile"
  input: "gradients_1/Sum_1_grad/Reshape"
  input: "gradients_1/Sum_1_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/mul_3_grad/Shape"
  op: "Shape"
  input: "Placeholder_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/mul_3_grad/Shape_1"
  op: "Shape"
  input: "Log_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/mul_3_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_1/mul_3_grad/Shape"
  input: "gradients_1/mul_3_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/mul_3_grad/Mul"
  op: "Mul"
  input: "gradients_1/Sum_1_grad/Tile"
  input: "Log_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/mul_3_grad/Sum"
  op: "Sum"
  input: "gradients_1/mul_3_grad/Mul"
  input: "gradients_1/mul_3_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/mul_3_grad/Reshape"
  op: "Reshape"
  input: "gradients_1/mul_3_grad/Sum"
  input: "gradients_1/mul_3_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/mul_3_grad/Mul_1"
  op: "Mul"
  input: "Placeholder_3"
  input: "gradients_1/Sum_1_grad/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/mul_3_grad/Sum_1"
  op: "Sum"
  input: "gradients_1/mul_3_grad/Mul_1"
  input: "gradients_1/mul_3_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/mul_3_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_1/mul_3_grad/Sum_1"
  input: "gradients_1/mul_3_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/mul_3_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_1/mul_3_grad/Reshape"
  input: "^gradients_1/mul_3_grad/Reshape_1"
}
node {
  name: "gradients_1/mul_3_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_1/mul_3_grad/Reshape"
  input: "^gradients_1/mul_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/mul_3_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_1/mul_3_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_1/mul_3_grad/Reshape_1"
  input: "^gradients_1/mul_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/mul_3_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_1/Log_1_grad/Reciprocal"
  op: "Reciprocal"
  input: "softmax_1"
  input: "^gradients_1/mul_3_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/Log_1_grad/mul"
  op: "Mul"
  input: "gradients_1/mul_3_grad/tuple/control_dependency_1"
  input: "gradients_1/Log_1_grad/Reciprocal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/softmax_1_grad/mul"
  op: "Mul"
  input: "gradients_1/Log_1_grad/mul"
  input: "softmax_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/softmax_1_grad/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients_1/softmax_1_grad/Sum"
  op: "Sum"
  input: "gradients_1/softmax_1_grad/mul"
  input: "gradients_1/softmax_1_grad/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_1/softmax_1_grad/sub"
  op: "Sub"
  input: "gradients_1/Log_1_grad/mul"
  input: "gradients_1/softmax_1_grad/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/softmax_1_grad/mul_1"
  op: "Mul"
  input: "gradients_1/softmax_1_grad/sub"
  input: "softmax_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/add_5_grad/Shape"
  op: "Shape"
  input: "MatMul_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/add_5_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "gradients_1/add_5_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_1/add_5_grad/Shape"
  input: "gradients_1/add_5_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/add_5_grad/Sum"
  op: "Sum"
  input: "gradients_1/softmax_1_grad/mul_1"
  input: "gradients_1/add_5_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/add_5_grad/Reshape"
  op: "Reshape"
  input: "gradients_1/add_5_grad/Sum"
  input: "gradients_1/add_5_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/add_5_grad/Sum_1"
  op: "Sum"
  input: "gradients_1/softmax_1_grad/mul_1"
  input: "gradients_1/add_5_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/add_5_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_1/add_5_grad/Sum_1"
  input: "gradients_1/add_5_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/add_5_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_1/add_5_grad/Reshape"
  input: "^gradients_1/add_5_grad/Reshape_1"
}
node {
  name: "gradients_1/add_5_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_1/add_5_grad/Reshape"
  input: "^gradients_1/add_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/add_5_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_1/add_5_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_1/add_5_grad/Reshape_1"
  input: "^gradients_1/add_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/add_5_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_1/MatMul_5_grad/MatMul"
  op: "MatMul"
  input: "gradients_1/add_5_grad/tuple/control_dependency"
  input: "Variable_6/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_1/MatMul_5_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_2"
  input: "gradients_1/add_5_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/MatMul_5_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_1/MatMul_5_grad/MatMul"
  input: "^gradients_1/MatMul_5_grad/MatMul_1"
}
node {
  name: "gradients_1/MatMul_5_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_1/MatMul_5_grad/MatMul"
  input: "^gradients_1/MatMul_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/MatMul_5_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_1/MatMul_5_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_1/MatMul_5_grad/MatMul_1"
  input: "^gradients_1/MatMul_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/MatMul_5_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_1/Sigmoid_2_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_2"
  input: "gradients_1/MatMul_5_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/add_3_grad/Shape"
  op: "Shape"
  input: "MatMul_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/add_3_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "gradients_1/add_3_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_1/add_3_grad/Shape"
  input: "gradients_1/add_3_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/add_3_grad/Sum"
  op: "Sum"
  input: "gradients_1/Sigmoid_2_grad/SigmoidGrad"
  input: "gradients_1/add_3_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/add_3_grad/Reshape"
  op: "Reshape"
  input: "gradients_1/add_3_grad/Sum"
  input: "gradients_1/add_3_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/add_3_grad/Sum_1"
  op: "Sum"
  input: "gradients_1/Sigmoid_2_grad/SigmoidGrad"
  input: "gradients_1/add_3_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/add_3_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_1/add_3_grad/Sum_1"
  input: "gradients_1/add_3_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/add_3_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_1/add_3_grad/Reshape"
  input: "^gradients_1/add_3_grad/Reshape_1"
}
node {
  name: "gradients_1/add_3_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_1/add_3_grad/Reshape"
  input: "^gradients_1/add_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/add_3_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_1/add_3_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_1/add_3_grad/Reshape_1"
  input: "^gradients_1/add_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/add_3_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_1/MatMul_3_grad/MatMul"
  op: "MatMul"
  input: "gradients_1/add_3_grad/tuple/control_dependency"
  input: "Variable_4/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_1/MatMul_3_grad/MatMul_1"
  op: "MatMul"
  input: "Placeholder_2"
  input: "gradients_1/add_3_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/MatMul_3_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_1/MatMul_3_grad/MatMul"
  input: "^gradients_1/MatMul_3_grad/MatMul_1"
}
node {
  name: "gradients_1/MatMul_3_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_1/MatMul_3_grad/MatMul"
  input: "^gradients_1/MatMul_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/MatMul_3_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_1/MatMul_3_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_1/MatMul_3_grad/MatMul_1"
  input: "^gradients_1/MatMul_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/MatMul_3_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "beta1_power_1/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "beta1_power_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta1_power_1/Assign"
  op: "Assign"
  input: "beta1_power_1"
  input: "beta1_power_1/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta1_power_1/read"
  op: "Identity"
  input: "beta1_power_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
}
node {
  name: "beta2_power_1/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "beta2_power_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta2_power_1/Assign"
  op: "Assign"
  input: "beta2_power_1"
  input: "beta2_power_1/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta2_power_1/read"
  op: "Identity"
  input: "beta2_power_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
}
node {
  name: "Variable_4/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_4/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_4/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_4/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_4/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_4/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_4/Adam/Assign"
  op: "Assign"
  input: "Variable_4/Adam"
  input: "Variable_4/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_4/Adam/read"
  op: "Identity"
  input: "Variable_4/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
}
node {
  name: "Variable_4/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_4/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_4/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_4/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_4/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_4/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_4/Adam_1/Assign"
  op: "Assign"
  input: "Variable_4/Adam_1"
  input: "Variable_4/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_4/Adam_1/read"
  op: "Identity"
  input: "Variable_4/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
}
node {
  name: "Variable_5/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_5/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_5/Adam/Assign"
  op: "Assign"
  input: "Variable_5/Adam"
  input: "Variable_5/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_5/Adam/read"
  op: "Identity"
  input: "Variable_5/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
}
node {
  name: "Variable_5/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_5/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_5/Adam_1/Assign"
  op: "Assign"
  input: "Variable_5/Adam_1"
  input: "Variable_5/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_5/Adam_1/read"
  op: "Identity"
  input: "Variable_5/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
}
node {
  name: "Variable_6/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_6/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_6/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_6/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_6/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_6/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_6/Adam/Assign"
  op: "Assign"
  input: "Variable_6/Adam"
  input: "Variable_6/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_6/Adam/read"
  op: "Identity"
  input: "Variable_6/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
}
node {
  name: "Variable_6/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_6/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_6/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_6/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_6/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_6/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_6/Adam_1/Assign"
  op: "Assign"
  input: "Variable_6/Adam_1"
  input: "Variable_6/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_6/Adam_1/read"
  op: "Identity"
  input: "Variable_6/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
}
node {
  name: "Variable_7/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_7/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_7/Adam/Assign"
  op: "Assign"
  input: "Variable_7/Adam"
  input: "Variable_7/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_7/Adam/read"
  op: "Identity"
  input: "Variable_7/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
}
node {
  name: "Variable_7/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_7/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_7/Adam_1/Assign"
  op: "Assign"
  input: "Variable_7/Adam_1"
  input: "Variable_7/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_7/Adam_1/read"
  op: "Identity"
  input: "Variable_7/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
}
node {
  name: "Adam_1/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Adam_1/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam_1/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam_1/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "Adam_1/update_Variable_4/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_4"
  input: "Variable_4/Adam"
  input: "Variable_4/Adam_1"
  input: "beta1_power_1/read"
  input: "beta2_power_1/read"
  input: "Adam_1/learning_rate"
  input: "Adam_1/beta1"
  input: "Adam_1/beta2"
  input: "Adam_1/epsilon"
  input: "gradients_1/MatMul_3_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_1/update_Variable_5/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_5"
  input: "Variable_5/Adam"
  input: "Variable_5/Adam_1"
  input: "beta1_power_1/read"
  input: "beta2_power_1/read"
  input: "Adam_1/learning_rate"
  input: "Adam_1/beta1"
  input: "Adam_1/beta2"
  input: "Adam_1/epsilon"
  input: "gradients_1/add_3_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_1/update_Variable_6/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_6"
  input: "Variable_6/Adam"
  input: "Variable_6/Adam_1"
  input: "beta1_power_1/read"
  input: "beta2_power_1/read"
  input: "Adam_1/learning_rate"
  input: "Adam_1/beta1"
  input: "Adam_1/beta2"
  input: "Adam_1/epsilon"
  input: "gradients_1/MatMul_5_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_1/update_Variable_7/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_7"
  input: "Variable_7/Adam"
  input: "Variable_7/Adam_1"
  input: "beta1_power_1/read"
  input: "beta2_power_1/read"
  input: "Adam_1/learning_rate"
  input: "Adam_1/beta1"
  input: "Adam_1/beta2"
  input: "Adam_1/epsilon"
  input: "gradients_1/add_5_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_1/mul"
  op: "Mul"
  input: "beta1_power_1/read"
  input: "Adam_1/beta1"
  input: "^Adam_1/update_Variable_4/ApplyAdam"
  input: "^Adam_1/update_Variable_5/ApplyAdam"
  input: "^Adam_1/update_Variable_6/ApplyAdam"
  input: "^Adam_1/update_Variable_7/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
}
node {
  name: "Adam_1/Assign"
  op: "Assign"
  input: "beta1_power_1"
  input: "Adam_1/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_1/mul_1"
  op: "Mul"
  input: "beta2_power_1/read"
  input: "Adam_1/beta2"
  input: "^Adam_1/update_Variable_4/ApplyAdam"
  input: "^Adam_1/update_Variable_5/ApplyAdam"
  input: "^Adam_1/update_Variable_6/ApplyAdam"
  input: "^Adam_1/update_Variable_7/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
}
node {
  name: "Adam_1/Assign_1"
  op: "Assign"
  input: "beta2_power_1"
  input: "Adam_1/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_1"
  op: "NoOp"
  input: "^Adam_1/Assign"
  input: "^Adam_1/Assign_1"
  input: "^Adam_1/update_Variable_4/ApplyAdam"
  input: "^Adam_1/update_Variable_5/ApplyAdam"
  input: "^Adam_1/update_Variable_6/ApplyAdam"
  input: "^Adam_1/update_Variable_7/ApplyAdam"
}
node {
  name: "save_1/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save_1/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 28
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
      }
    }
  }
}
node {
  name: "save_1/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 28
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_1/SaveV2"
  op: "SaveV2"
  input: "save_1/Const"
  input: "save_1/SaveV2/tensor_names"
  input: "save_1/SaveV2/shape_and_slices"
  input: "Variable"
  input: "Variable/Adam"
  input: "Variable/Adam_1"
  input: "Variable_1"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam_1"
  input: "Variable_2"
  input: "Variable_2/Adam"
  input: "Variable_2/Adam_1"
  input: "Variable_3"
  input: "Variable_3/Adam"
  input: "Variable_3/Adam_1"
  input: "Variable_4"
  input: "Variable_4/Adam"
  input: "Variable_4/Adam_1"
  input: "Variable_5"
  input: "Variable_5/Adam"
  input: "Variable_5/Adam_1"
  input: "Variable_6"
  input: "Variable_6/Adam"
  input: "Variable_6/Adam_1"
  input: "Variable_7"
  input: "Variable_7/Adam"
  input: "Variable_7/Adam_1"
  input: "beta1_power"
  input: "beta1_power_1"
  input: "beta2_power"
  input: "beta2_power_1"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_1/control_dependency"
  op: "Identity"
  input: "save_1/Const"
  input: "^save_1/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save_1/Const"
      }
    }
  }
}
node {
  name: "save_1/RestoreV2/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 28
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
      }
    }
  }
}
node {
  name: "save_1/RestoreV2/shape_and_slices"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 28
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_1/RestoreV2"
  op: "RestoreV2"
  input: "save_1/Const"
  input: "save_1/RestoreV2/tensor_names"
  input: "save_1/RestoreV2/shape_and_slices"
  device: "/device:CPU:0"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_1/Assign"
  op: "Assign"
  input: "Variable"
  input: "save_1/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_1"
  op: "Assign"
  input: "Variable/Adam"
  input: "save_1/RestoreV2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_2"
  op: "Assign"
  input: "Variable/Adam_1"
  input: "save_1/RestoreV2:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_3"
  op: "Assign"
  input: "Variable_1"
  input: "save_1/RestoreV2:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_4"
  op: "Assign"
  input: "Variable_1/Adam"
  input: "save_1/RestoreV2:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_5"
  op: "Assign"
  input: "Variable_1/Adam_1"
  input: "save_1/RestoreV2:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_6"
  op: "Assign"
  input: "Variable_2"
  input: "save_1/RestoreV2:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_7"
  op: "Assign"
  input: "Variable_2/Adam"
  input: "save_1/RestoreV2:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_8"
  op: "Assign"
  input: "Variable_2/Adam_1"
  input: "save_1/RestoreV2:8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_9"
  op: "Assign"
  input: "Variable_3"
  input: "save_1/RestoreV2:9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_10"
  op: "Assign"
  input: "Variable_3/Adam"
  input: "save_1/RestoreV2:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_11"
  op: "Assign"
  input: "Variable_3/Adam_1"
  input: "save_1/RestoreV2:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_12"
  op: "Assign"
  input: "Variable_4"
  input: "save_1/RestoreV2:12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_13"
  op: "Assign"
  input: "Variable_4/Adam"
  input: "save_1/RestoreV2:13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_14"
  op: "Assign"
  input: "Variable_4/Adam_1"
  input: "save_1/RestoreV2:14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_15"
  op: "Assign"
  input: "Variable_5"
  input: "save_1/RestoreV2:15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_16"
  op: "Assign"
  input: "Variable_5/Adam"
  input: "save_1/RestoreV2:16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_17"
  op: "Assign"
  input: "Variable_5/Adam_1"
  input: "save_1/RestoreV2:17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_18"
  op: "Assign"
  input: "Variable_6"
  input: "save_1/RestoreV2:18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_19"
  op: "Assign"
  input: "Variable_6/Adam"
  input: "save_1/RestoreV2:19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_20"
  op: "Assign"
  input: "Variable_6/Adam_1"
  input: "save_1/RestoreV2:20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_21"
  op: "Assign"
  input: "Variable_7"
  input: "save_1/RestoreV2:21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_22"
  op: "Assign"
  input: "Variable_7/Adam"
  input: "save_1/RestoreV2:22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_23"
  op: "Assign"
  input: "Variable_7/Adam_1"
  input: "save_1/RestoreV2:23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_24"
  op: "Assign"
  input: "beta1_power"
  input: "save_1/RestoreV2:24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_25"
  op: "Assign"
  input: "beta1_power_1"
  input: "save_1/RestoreV2:25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_26"
  op: "Assign"
  input: "beta2_power"
  input: "save_1/RestoreV2:26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/Assign_27"
  op: "Assign"
  input: "beta2_power_1"
  input: "save_1/RestoreV2:27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_1/restore_all"
  op: "NoOp"
  input: "^save_1/Assign"
  input: "^save_1/Assign_1"
  input: "^save_1/Assign_10"
  input: "^save_1/Assign_11"
  input: "^save_1/Assign_12"
  input: "^save_1/Assign_13"
  input: "^save_1/Assign_14"
  input: "^save_1/Assign_15"
  input: "^save_1/Assign_16"
  input: "^save_1/Assign_17"
  input: "^save_1/Assign_18"
  input: "^save_1/Assign_19"
  input: "^save_1/Assign_2"
  input: "^save_1/Assign_20"
  input: "^save_1/Assign_21"
  input: "^save_1/Assign_22"
  input: "^save_1/Assign_23"
  input: "^save_1/Assign_24"
  input: "^save_1/Assign_25"
  input: "^save_1/Assign_26"
  input: "^save_1/Assign_27"
  input: "^save_1/Assign_3"
  input: "^save_1/Assign_4"
  input: "^save_1/Assign_5"
  input: "^save_1/Assign_6"
  input: "^save_1/Assign_7"
  input: "^save_1/Assign_8"
  input: "^save_1/Assign_9"
}
node {
  name: "init_1"
  op: "NoOp"
  input: "^Variable/Adam/Assign"
  input: "^Variable/Adam_1/Assign"
  input: "^Variable/Assign"
  input: "^Variable_1/Adam/Assign"
  input: "^Variable_1/Adam_1/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_2/Adam/Assign"
  input: "^Variable_2/Adam_1/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_3/Adam/Assign"
  input: "^Variable_3/Adam_1/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_4/Adam/Assign"
  input: "^Variable_4/Adam_1/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Adam/Assign"
  input: "^Variable_5/Adam_1/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Adam/Assign"
  input: "^Variable_6/Adam_1/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Adam/Assign"
  input: "^Variable_7/Adam_1/Assign"
  input: "^Variable_7/Assign"
  input: "^beta1_power/Assign"
  input: "^beta1_power_1/Assign"
  input: "^beta2_power/Assign"
  input: "^beta2_power_1/Assign"
}
node {
  name: "ArgMax_2/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_2"
  op: "ArgMax"
  input: "softmax_1"
  input: "ArgMax_2/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "ArgMax_3/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_3"
  op: "ArgMax"
  input: "Placeholder_3"
  input: "ArgMax_3/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Equal_1"
  op: "Equal"
  input: "ArgMax_2"
  input: "ArgMax_3"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Cast_1"
  op: "Cast"
  input: "Equal_1"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "Const_3"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_3"
  op: "Mean"
  input: "Cast_1"
  input: "Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "mul_4/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_4"
  op: "Mul"
  input: "Mean_3"
  input: "mul_4/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_5/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_5"
  op: "Mul"
  input: "Mean_3"
  input: "mul_5/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Placeholder_4"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 784
        }
      }
    }
  }
}
node {
  name: "Placeholder_5"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 10
        }
      }
    }
  }
}
node {
  name: "random_normal_8/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_8/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_8/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_8/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_8/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_8/mul"
  op: "Mul"
  input: "random_normal_8/RandomStandardNormal"
  input: "random_normal_8/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_8"
  op: "Add"
  input: "random_normal_8/mul"
  input: "random_normal_8/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_8"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_8/Assign"
  op: "Assign"
  input: "Variable_8"
  input: "random_normal_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_8/read"
  op: "Identity"
  input: "Variable_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
}
node {
  name: "random_normal_9/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "random_normal_9/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_9/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_9/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_9/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_9/mul"
  op: "Mul"
  input: "random_normal_9/RandomStandardNormal"
  input: "random_normal_9/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_9"
  op: "Add"
  input: "random_normal_9/mul"
  input: "random_normal_9/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_9"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_9/Assign"
  op: "Assign"
  input: "Variable_9"
  input: "random_normal_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_9/read"
  op: "Identity"
  input: "Variable_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
}
node {
  name: "MatMul_6"
  op: "MatMul"
  input: "Placeholder_4"
  input: "Variable_8/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_6"
  op: "Add"
  input: "MatMul_6"
  input: "Variable_9/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_4"
  op: "Sigmoid"
  input: "add_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_10/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_10/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_10/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_10/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_10/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_10/mul"
  op: "Mul"
  input: "random_normal_10/RandomStandardNormal"
  input: "random_normal_10/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_10"
  op: "Add"
  input: "random_normal_10/mul"
  input: "random_normal_10/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_10"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_10/Assign"
  op: "Assign"
  input: "Variable_10"
  input: "random_normal_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_10/read"
  op: "Identity"
  input: "Variable_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
}
node {
  name: "random_normal_11/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "random_normal_11/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_11/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_11/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_11/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_11/mul"
  op: "Mul"
  input: "random_normal_11/RandomStandardNormal"
  input: "random_normal_11/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_11"
  op: "Add"
  input: "random_normal_11/mul"
  input: "random_normal_11/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_11"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_11/Assign"
  op: "Assign"
  input: "Variable_11"
  input: "random_normal_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_11/read"
  op: "Identity"
  input: "Variable_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
}
node {
  name: "MatMul_7"
  op: "MatMul"
  input: "Sigmoid_4"
  input: "Variable_10/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_7"
  op: "Add"
  input: "MatMul_7"
  input: "Variable_11/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_5"
  op: "Sigmoid"
  input: "add_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_8"
  op: "MatMul"
  input: "Sigmoid_4"
  input: "Variable_10/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_8"
  op: "Add"
  input: "MatMul_8"
  input: "Variable_11/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "softmax_2"
  op: "Softmax"
  input: "add_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Log_2"
  op: "Log"
  input: "softmax_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_6"
  op: "Mul"
  input: "Placeholder_5"
  input: "Log_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sum_2/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sum_2"
  op: "Sum"
  input: "mul_6"
  input: "Sum_2/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Neg_2"
  op: "Neg"
  input: "Sum_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_4"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_4"
  op: "Mean"
  input: "Neg_2"
  input: "Const_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_2/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_2/Fill"
  op: "Fill"
  input: "gradients_2/Shape"
  input: "gradients_2/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Reshape"
  op: "Reshape"
  input: "gradients_2/Fill"
  input: "gradients_2/Mean_4_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Shape"
  op: "Shape"
  input: "Neg_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Tile"
  op: "Tile"
  input: "gradients_2/Mean_4_grad/Reshape"
  input: "gradients_2/Mean_4_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Shape_1"
  op: "Shape"
  input: "Neg_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Shape_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Prod"
  op: "Prod"
  input: "gradients_2/Mean_4_grad/Shape_1"
  input: "gradients_2/Mean_4_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Prod_1"
  op: "Prod"
  input: "gradients_2/Mean_4_grad/Shape_2"
  input: "gradients_2/Mean_4_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Maximum"
  op: "Maximum"
  input: "gradients_2/Mean_4_grad/Prod_1"
  input: "gradients_2/Mean_4_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_2/Mean_4_grad/Prod"
  input: "gradients_2/Mean_4_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/Cast"
  op: "Cast"
  input: "gradients_2/Mean_4_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/Mean_4_grad/truediv"
  op: "RealDiv"
  input: "gradients_2/Mean_4_grad/Tile"
  input: "gradients_2/Mean_4_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/Neg_2_grad/Neg"
  op: "Neg"
  input: "gradients_2/Mean_4_grad/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/Shape"
  op: "Shape"
  input: "mul_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/add"
  op: "Add"
  input: "Sum_2/reduction_indices"
  input: "gradients_2/Sum_2_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/mod"
  op: "FloorMod"
  input: "gradients_2/Sum_2_grad/add"
  input: "gradients_2/Sum_2_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/range"
  op: "Range"
  input: "gradients_2/Sum_2_grad/range/start"
  input: "gradients_2/Sum_2_grad/Size"
  input: "gradients_2/Sum_2_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/Fill"
  op: "Fill"
  input: "gradients_2/Sum_2_grad/Shape_1"
  input: "gradients_2/Sum_2_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "gradients_2/Sum_2_grad/range"
  input: "gradients_2/Sum_2_grad/mod"
  input: "gradients_2/Sum_2_grad/Shape"
  input: "gradients_2/Sum_2_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/Maximum"
  op: "Maximum"
  input: "gradients_2/Sum_2_grad/DynamicStitch"
  input: "gradients_2/Sum_2_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_2/Sum_2_grad/Shape"
  input: "gradients_2/Sum_2_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Sum_2_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/Reshape"
  op: "Reshape"
  input: "gradients_2/Neg_2_grad/Neg"
  input: "gradients_2/Sum_2_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Sum_2_grad/Tile"
  op: "Tile"
  input: "gradients_2/Sum_2_grad/Reshape"
  input: "gradients_2/Sum_2_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/mul_6_grad/Shape"
  op: "Shape"
  input: "Placeholder_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/mul_6_grad/Shape_1"
  op: "Shape"
  input: "Log_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/mul_6_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_2/mul_6_grad/Shape"
  input: "gradients_2/mul_6_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/mul_6_grad/Mul"
  op: "Mul"
  input: "gradients_2/Sum_2_grad/Tile"
  input: "Log_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/mul_6_grad/Sum"
  op: "Sum"
  input: "gradients_2/mul_6_grad/Mul"
  input: "gradients_2/mul_6_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/mul_6_grad/Reshape"
  op: "Reshape"
  input: "gradients_2/mul_6_grad/Sum"
  input: "gradients_2/mul_6_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/mul_6_grad/Mul_1"
  op: "Mul"
  input: "Placeholder_5"
  input: "gradients_2/Sum_2_grad/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/mul_6_grad/Sum_1"
  op: "Sum"
  input: "gradients_2/mul_6_grad/Mul_1"
  input: "gradients_2/mul_6_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/mul_6_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_2/mul_6_grad/Sum_1"
  input: "gradients_2/mul_6_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/mul_6_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_2/mul_6_grad/Reshape"
  input: "^gradients_2/mul_6_grad/Reshape_1"
}
node {
  name: "gradients_2/mul_6_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_2/mul_6_grad/Reshape"
  input: "^gradients_2/mul_6_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/mul_6_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_2/mul_6_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_2/mul_6_grad/Reshape_1"
  input: "^gradients_2/mul_6_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/mul_6_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_2/Log_2_grad/Reciprocal"
  op: "Reciprocal"
  input: "softmax_2"
  input: "^gradients_2/mul_6_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/Log_2_grad/mul"
  op: "Mul"
  input: "gradients_2/mul_6_grad/tuple/control_dependency_1"
  input: "gradients_2/Log_2_grad/Reciprocal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/softmax_2_grad/mul"
  op: "Mul"
  input: "gradients_2/Log_2_grad/mul"
  input: "softmax_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/softmax_2_grad/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients_2/softmax_2_grad/Sum"
  op: "Sum"
  input: "gradients_2/softmax_2_grad/mul"
  input: "gradients_2/softmax_2_grad/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_2/softmax_2_grad/sub"
  op: "Sub"
  input: "gradients_2/Log_2_grad/mul"
  input: "gradients_2/softmax_2_grad/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/softmax_2_grad/mul_1"
  op: "Mul"
  input: "gradients_2/softmax_2_grad/sub"
  input: "softmax_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/add_8_grad/Shape"
  op: "Shape"
  input: "MatMul_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/add_8_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "gradients_2/add_8_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_2/add_8_grad/Shape"
  input: "gradients_2/add_8_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/add_8_grad/Sum"
  op: "Sum"
  input: "gradients_2/softmax_2_grad/mul_1"
  input: "gradients_2/add_8_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/add_8_grad/Reshape"
  op: "Reshape"
  input: "gradients_2/add_8_grad/Sum"
  input: "gradients_2/add_8_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/add_8_grad/Sum_1"
  op: "Sum"
  input: "gradients_2/softmax_2_grad/mul_1"
  input: "gradients_2/add_8_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/add_8_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_2/add_8_grad/Sum_1"
  input: "gradients_2/add_8_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/add_8_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_2/add_8_grad/Reshape"
  input: "^gradients_2/add_8_grad/Reshape_1"
}
node {
  name: "gradients_2/add_8_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_2/add_8_grad/Reshape"
  input: "^gradients_2/add_8_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/add_8_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_2/add_8_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_2/add_8_grad/Reshape_1"
  input: "^gradients_2/add_8_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/add_8_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_2/MatMul_8_grad/MatMul"
  op: "MatMul"
  input: "gradients_2/add_8_grad/tuple/control_dependency"
  input: "Variable_10/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_2/MatMul_8_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_4"
  input: "gradients_2/add_8_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/MatMul_8_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_2/MatMul_8_grad/MatMul"
  input: "^gradients_2/MatMul_8_grad/MatMul_1"
}
node {
  name: "gradients_2/MatMul_8_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_2/MatMul_8_grad/MatMul"
  input: "^gradients_2/MatMul_8_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/MatMul_8_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_2/MatMul_8_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_2/MatMul_8_grad/MatMul_1"
  input: "^gradients_2/MatMul_8_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/MatMul_8_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_2/Sigmoid_4_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_4"
  input: "gradients_2/MatMul_8_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/add_6_grad/Shape"
  op: "Shape"
  input: "MatMul_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/add_6_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "gradients_2/add_6_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_2/add_6_grad/Shape"
  input: "gradients_2/add_6_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/add_6_grad/Sum"
  op: "Sum"
  input: "gradients_2/Sigmoid_4_grad/SigmoidGrad"
  input: "gradients_2/add_6_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/add_6_grad/Reshape"
  op: "Reshape"
  input: "gradients_2/add_6_grad/Sum"
  input: "gradients_2/add_6_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/add_6_grad/Sum_1"
  op: "Sum"
  input: "gradients_2/Sigmoid_4_grad/SigmoidGrad"
  input: "gradients_2/add_6_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/add_6_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_2/add_6_grad/Sum_1"
  input: "gradients_2/add_6_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/add_6_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_2/add_6_grad/Reshape"
  input: "^gradients_2/add_6_grad/Reshape_1"
}
node {
  name: "gradients_2/add_6_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_2/add_6_grad/Reshape"
  input: "^gradients_2/add_6_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/add_6_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_2/add_6_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_2/add_6_grad/Reshape_1"
  input: "^gradients_2/add_6_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/add_6_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_2/MatMul_6_grad/MatMul"
  op: "MatMul"
  input: "gradients_2/add_6_grad/tuple/control_dependency"
  input: "Variable_8/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_2/MatMul_6_grad/MatMul_1"
  op: "MatMul"
  input: "Placeholder_4"
  input: "gradients_2/add_6_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/MatMul_6_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_2/MatMul_6_grad/MatMul"
  input: "^gradients_2/MatMul_6_grad/MatMul_1"
}
node {
  name: "gradients_2/MatMul_6_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_2/MatMul_6_grad/MatMul"
  input: "^gradients_2/MatMul_6_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/MatMul_6_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_2/MatMul_6_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_2/MatMul_6_grad/MatMul_1"
  input: "^gradients_2/MatMul_6_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/MatMul_6_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "beta1_power_2/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "beta1_power_2"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta1_power_2/Assign"
  op: "Assign"
  input: "beta1_power_2"
  input: "beta1_power_2/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta1_power_2/read"
  op: "Identity"
  input: "beta1_power_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
}
node {
  name: "beta2_power_2/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "beta2_power_2"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta2_power_2/Assign"
  op: "Assign"
  input: "beta2_power_2"
  input: "beta2_power_2/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta2_power_2/read"
  op: "Identity"
  input: "beta2_power_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
}
node {
  name: "Variable_8/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_8/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_8/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_8/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_8/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_8/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_8/Adam/Assign"
  op: "Assign"
  input: "Variable_8/Adam"
  input: "Variable_8/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_8/Adam/read"
  op: "Identity"
  input: "Variable_8/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
}
node {
  name: "Variable_8/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_8/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_8/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_8/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_8/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_8/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_8/Adam_1/Assign"
  op: "Assign"
  input: "Variable_8/Adam_1"
  input: "Variable_8/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_8/Adam_1/read"
  op: "Identity"
  input: "Variable_8/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
}
node {
  name: "Variable_9/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_9/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_9/Adam/Assign"
  op: "Assign"
  input: "Variable_9/Adam"
  input: "Variable_9/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_9/Adam/read"
  op: "Identity"
  input: "Variable_9/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
}
node {
  name: "Variable_9/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_9/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_9/Adam_1/Assign"
  op: "Assign"
  input: "Variable_9/Adam_1"
  input: "Variable_9/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_9/Adam_1/read"
  op: "Identity"
  input: "Variable_9/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
}
node {
  name: "Variable_10/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_10/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_10/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_10/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_10/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_10/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_10/Adam/Assign"
  op: "Assign"
  input: "Variable_10/Adam"
  input: "Variable_10/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_10/Adam/read"
  op: "Identity"
  input: "Variable_10/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
}
node {
  name: "Variable_10/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_10/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_10/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_10/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_10/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_10/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_10/Adam_1/Assign"
  op: "Assign"
  input: "Variable_10/Adam_1"
  input: "Variable_10/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_10/Adam_1/read"
  op: "Identity"
  input: "Variable_10/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
}
node {
  name: "Variable_11/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_11/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_11/Adam/Assign"
  op: "Assign"
  input: "Variable_11/Adam"
  input: "Variable_11/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_11/Adam/read"
  op: "Identity"
  input: "Variable_11/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
}
node {
  name: "Variable_11/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_11/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_11/Adam_1/Assign"
  op: "Assign"
  input: "Variable_11/Adam_1"
  input: "Variable_11/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_11/Adam_1/read"
  op: "Identity"
  input: "Variable_11/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
}
node {
  name: "Adam_2/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Adam_2/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam_2/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam_2/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "Adam_2/update_Variable_8/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_8"
  input: "Variable_8/Adam"
  input: "Variable_8/Adam_1"
  input: "beta1_power_2/read"
  input: "beta2_power_2/read"
  input: "Adam_2/learning_rate"
  input: "Adam_2/beta1"
  input: "Adam_2/beta2"
  input: "Adam_2/epsilon"
  input: "gradients_2/MatMul_6_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_2/update_Variable_9/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_9"
  input: "Variable_9/Adam"
  input: "Variable_9/Adam_1"
  input: "beta1_power_2/read"
  input: "beta2_power_2/read"
  input: "Adam_2/learning_rate"
  input: "Adam_2/beta1"
  input: "Adam_2/beta2"
  input: "Adam_2/epsilon"
  input: "gradients_2/add_6_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_2/update_Variable_10/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_10"
  input: "Variable_10/Adam"
  input: "Variable_10/Adam_1"
  input: "beta1_power_2/read"
  input: "beta2_power_2/read"
  input: "Adam_2/learning_rate"
  input: "Adam_2/beta1"
  input: "Adam_2/beta2"
  input: "Adam_2/epsilon"
  input: "gradients_2/MatMul_8_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_2/update_Variable_11/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_11"
  input: "Variable_11/Adam"
  input: "Variable_11/Adam_1"
  input: "beta1_power_2/read"
  input: "beta2_power_2/read"
  input: "Adam_2/learning_rate"
  input: "Adam_2/beta1"
  input: "Adam_2/beta2"
  input: "Adam_2/epsilon"
  input: "gradients_2/add_8_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_2/mul"
  op: "Mul"
  input: "beta1_power_2/read"
  input: "Adam_2/beta1"
  input: "^Adam_2/update_Variable_10/ApplyAdam"
  input: "^Adam_2/update_Variable_11/ApplyAdam"
  input: "^Adam_2/update_Variable_8/ApplyAdam"
  input: "^Adam_2/update_Variable_9/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
}
node {
  name: "Adam_2/Assign"
  op: "Assign"
  input: "beta1_power_2"
  input: "Adam_2/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_2/mul_1"
  op: "Mul"
  input: "beta2_power_2/read"
  input: "Adam_2/beta2"
  input: "^Adam_2/update_Variable_10/ApplyAdam"
  input: "^Adam_2/update_Variable_11/ApplyAdam"
  input: "^Adam_2/update_Variable_8/ApplyAdam"
  input: "^Adam_2/update_Variable_9/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
}
node {
  name: "Adam_2/Assign_1"
  op: "Assign"
  input: "beta2_power_2"
  input: "Adam_2/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_2"
  op: "NoOp"
  input: "^Adam_2/Assign"
  input: "^Adam_2/Assign_1"
  input: "^Adam_2/update_Variable_10/ApplyAdam"
  input: "^Adam_2/update_Variable_11/ApplyAdam"
  input: "^Adam_2/update_Variable_8/ApplyAdam"
  input: "^Adam_2/update_Variable_9/ApplyAdam"
}
node {
  name: "save_2/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save_2/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 42
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
      }
    }
  }
}
node {
  name: "save_2/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 42
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_2/SaveV2"
  op: "SaveV2"
  input: "save_2/Const"
  input: "save_2/SaveV2/tensor_names"
  input: "save_2/SaveV2/shape_and_slices"
  input: "Variable"
  input: "Variable/Adam"
  input: "Variable/Adam_1"
  input: "Variable_1"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam_1"
  input: "Variable_10"
  input: "Variable_10/Adam"
  input: "Variable_10/Adam_1"
  input: "Variable_11"
  input: "Variable_11/Adam"
  input: "Variable_11/Adam_1"
  input: "Variable_2"
  input: "Variable_2/Adam"
  input: "Variable_2/Adam_1"
  input: "Variable_3"
  input: "Variable_3/Adam"
  input: "Variable_3/Adam_1"
  input: "Variable_4"
  input: "Variable_4/Adam"
  input: "Variable_4/Adam_1"
  input: "Variable_5"
  input: "Variable_5/Adam"
  input: "Variable_5/Adam_1"
  input: "Variable_6"
  input: "Variable_6/Adam"
  input: "Variable_6/Adam_1"
  input: "Variable_7"
  input: "Variable_7/Adam"
  input: "Variable_7/Adam_1"
  input: "Variable_8"
  input: "Variable_8/Adam"
  input: "Variable_8/Adam_1"
  input: "Variable_9"
  input: "Variable_9/Adam"
  input: "Variable_9/Adam_1"
  input: "beta1_power"
  input: "beta1_power_1"
  input: "beta1_power_2"
  input: "beta2_power"
  input: "beta2_power_1"
  input: "beta2_power_2"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_2/control_dependency"
  op: "Identity"
  input: "save_2/Const"
  input: "^save_2/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save_2/Const"
      }
    }
  }
}
node {
  name: "save_2/RestoreV2/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 42
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
      }
    }
  }
}
node {
  name: "save_2/RestoreV2/shape_and_slices"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 42
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_2/RestoreV2"
  op: "RestoreV2"
  input: "save_2/Const"
  input: "save_2/RestoreV2/tensor_names"
  input: "save_2/RestoreV2/shape_and_slices"
  device: "/device:CPU:0"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_2/Assign"
  op: "Assign"
  input: "Variable"
  input: "save_2/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_1"
  op: "Assign"
  input: "Variable/Adam"
  input: "save_2/RestoreV2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_2"
  op: "Assign"
  input: "Variable/Adam_1"
  input: "save_2/RestoreV2:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_3"
  op: "Assign"
  input: "Variable_1"
  input: "save_2/RestoreV2:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_4"
  op: "Assign"
  input: "Variable_1/Adam"
  input: "save_2/RestoreV2:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_5"
  op: "Assign"
  input: "Variable_1/Adam_1"
  input: "save_2/RestoreV2:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_6"
  op: "Assign"
  input: "Variable_10"
  input: "save_2/RestoreV2:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_7"
  op: "Assign"
  input: "Variable_10/Adam"
  input: "save_2/RestoreV2:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_8"
  op: "Assign"
  input: "Variable_10/Adam_1"
  input: "save_2/RestoreV2:8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_9"
  op: "Assign"
  input: "Variable_11"
  input: "save_2/RestoreV2:9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_10"
  op: "Assign"
  input: "Variable_11/Adam"
  input: "save_2/RestoreV2:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_11"
  op: "Assign"
  input: "Variable_11/Adam_1"
  input: "save_2/RestoreV2:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_12"
  op: "Assign"
  input: "Variable_2"
  input: "save_2/RestoreV2:12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_13"
  op: "Assign"
  input: "Variable_2/Adam"
  input: "save_2/RestoreV2:13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_14"
  op: "Assign"
  input: "Variable_2/Adam_1"
  input: "save_2/RestoreV2:14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_15"
  op: "Assign"
  input: "Variable_3"
  input: "save_2/RestoreV2:15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_16"
  op: "Assign"
  input: "Variable_3/Adam"
  input: "save_2/RestoreV2:16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_17"
  op: "Assign"
  input: "Variable_3/Adam_1"
  input: "save_2/RestoreV2:17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_18"
  op: "Assign"
  input: "Variable_4"
  input: "save_2/RestoreV2:18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_19"
  op: "Assign"
  input: "Variable_4/Adam"
  input: "save_2/RestoreV2:19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_20"
  op: "Assign"
  input: "Variable_4/Adam_1"
  input: "save_2/RestoreV2:20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_21"
  op: "Assign"
  input: "Variable_5"
  input: "save_2/RestoreV2:21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_22"
  op: "Assign"
  input: "Variable_5/Adam"
  input: "save_2/RestoreV2:22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_23"
  op: "Assign"
  input: "Variable_5/Adam_1"
  input: "save_2/RestoreV2:23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_24"
  op: "Assign"
  input: "Variable_6"
  input: "save_2/RestoreV2:24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_25"
  op: "Assign"
  input: "Variable_6/Adam"
  input: "save_2/RestoreV2:25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_26"
  op: "Assign"
  input: "Variable_6/Adam_1"
  input: "save_2/RestoreV2:26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_27"
  op: "Assign"
  input: "Variable_7"
  input: "save_2/RestoreV2:27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_28"
  op: "Assign"
  input: "Variable_7/Adam"
  input: "save_2/RestoreV2:28"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_29"
  op: "Assign"
  input: "Variable_7/Adam_1"
  input: "save_2/RestoreV2:29"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_30"
  op: "Assign"
  input: "Variable_8"
  input: "save_2/RestoreV2:30"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_31"
  op: "Assign"
  input: "Variable_8/Adam"
  input: "save_2/RestoreV2:31"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_32"
  op: "Assign"
  input: "Variable_8/Adam_1"
  input: "save_2/RestoreV2:32"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_33"
  op: "Assign"
  input: "Variable_9"
  input: "save_2/RestoreV2:33"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_34"
  op: "Assign"
  input: "Variable_9/Adam"
  input: "save_2/RestoreV2:34"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_35"
  op: "Assign"
  input: "Variable_9/Adam_1"
  input: "save_2/RestoreV2:35"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_36"
  op: "Assign"
  input: "beta1_power"
  input: "save_2/RestoreV2:36"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_37"
  op: "Assign"
  input: "beta1_power_1"
  input: "save_2/RestoreV2:37"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_38"
  op: "Assign"
  input: "beta1_power_2"
  input: "save_2/RestoreV2:38"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_39"
  op: "Assign"
  input: "beta2_power"
  input: "save_2/RestoreV2:39"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_40"
  op: "Assign"
  input: "beta2_power_1"
  input: "save_2/RestoreV2:40"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/Assign_41"
  op: "Assign"
  input: "beta2_power_2"
  input: "save_2/RestoreV2:41"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_2/restore_all"
  op: "NoOp"
  input: "^save_2/Assign"
  input: "^save_2/Assign_1"
  input: "^save_2/Assign_10"
  input: "^save_2/Assign_11"
  input: "^save_2/Assign_12"
  input: "^save_2/Assign_13"
  input: "^save_2/Assign_14"
  input: "^save_2/Assign_15"
  input: "^save_2/Assign_16"
  input: "^save_2/Assign_17"
  input: "^save_2/Assign_18"
  input: "^save_2/Assign_19"
  input: "^save_2/Assign_2"
  input: "^save_2/Assign_20"
  input: "^save_2/Assign_21"
  input: "^save_2/Assign_22"
  input: "^save_2/Assign_23"
  input: "^save_2/Assign_24"
  input: "^save_2/Assign_25"
  input: "^save_2/Assign_26"
  input: "^save_2/Assign_27"
  input: "^save_2/Assign_28"
  input: "^save_2/Assign_29"
  input: "^save_2/Assign_3"
  input: "^save_2/Assign_30"
  input: "^save_2/Assign_31"
  input: "^save_2/Assign_32"
  input: "^save_2/Assign_33"
  input: "^save_2/Assign_34"
  input: "^save_2/Assign_35"
  input: "^save_2/Assign_36"
  input: "^save_2/Assign_37"
  input: "^save_2/Assign_38"
  input: "^save_2/Assign_39"
  input: "^save_2/Assign_4"
  input: "^save_2/Assign_40"
  input: "^save_2/Assign_41"
  input: "^save_2/Assign_5"
  input: "^save_2/Assign_6"
  input: "^save_2/Assign_7"
  input: "^save_2/Assign_8"
  input: "^save_2/Assign_9"
}
node {
  name: "init_2"
  op: "NoOp"
  input: "^Variable/Adam/Assign"
  input: "^Variable/Adam_1/Assign"
  input: "^Variable/Assign"
  input: "^Variable_1/Adam/Assign"
  input: "^Variable_1/Adam_1/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_10/Adam/Assign"
  input: "^Variable_10/Adam_1/Assign"
  input: "^Variable_10/Assign"
  input: "^Variable_11/Adam/Assign"
  input: "^Variable_11/Adam_1/Assign"
  input: "^Variable_11/Assign"
  input: "^Variable_2/Adam/Assign"
  input: "^Variable_2/Adam_1/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_3/Adam/Assign"
  input: "^Variable_3/Adam_1/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_4/Adam/Assign"
  input: "^Variable_4/Adam_1/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Adam/Assign"
  input: "^Variable_5/Adam_1/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Adam/Assign"
  input: "^Variable_6/Adam_1/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Adam/Assign"
  input: "^Variable_7/Adam_1/Assign"
  input: "^Variable_7/Assign"
  input: "^Variable_8/Adam/Assign"
  input: "^Variable_8/Adam_1/Assign"
  input: "^Variable_8/Assign"
  input: "^Variable_9/Adam/Assign"
  input: "^Variable_9/Adam_1/Assign"
  input: "^Variable_9/Assign"
  input: "^beta1_power/Assign"
  input: "^beta1_power_1/Assign"
  input: "^beta1_power_2/Assign"
  input: "^beta2_power/Assign"
  input: "^beta2_power_1/Assign"
  input: "^beta2_power_2/Assign"
}
node {
  name: "ArgMax_4/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_4"
  op: "ArgMax"
  input: "softmax_2"
  input: "ArgMax_4/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "ArgMax_5/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_5"
  op: "ArgMax"
  input: "Placeholder_5"
  input: "ArgMax_5/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Equal_2"
  op: "Equal"
  input: "ArgMax_4"
  input: "ArgMax_5"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Cast_2"
  op: "Cast"
  input: "Equal_2"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "Const_5"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_5"
  op: "Mean"
  input: "Cast_2"
  input: "Const_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "mul_7/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_7"
  op: "Mul"
  input: "Mean_5"
  input: "mul_7/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_8/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_8"
  op: "Mul"
  input: "Mean_5"
  input: "mul_8/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Placeholder_6"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 784
        }
      }
    }
  }
}
node {
  name: "Placeholder_7"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 10
        }
      }
    }
  }
}
node {
  name: "random_normal_12/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_12/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_12/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_12/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_12/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_12/mul"
  op: "Mul"
  input: "random_normal_12/RandomStandardNormal"
  input: "random_normal_12/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_12"
  op: "Add"
  input: "random_normal_12/mul"
  input: "random_normal_12/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_12"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_12/Assign"
  op: "Assign"
  input: "Variable_12"
  input: "random_normal_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_12/read"
  op: "Identity"
  input: "Variable_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
}
node {
  name: "random_normal_13/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "random_normal_13/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_13/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_13/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_13/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_13/mul"
  op: "Mul"
  input: "random_normal_13/RandomStandardNormal"
  input: "random_normal_13/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_13"
  op: "Add"
  input: "random_normal_13/mul"
  input: "random_normal_13/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_13"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_13/Assign"
  op: "Assign"
  input: "Variable_13"
  input: "random_normal_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_13/read"
  op: "Identity"
  input: "Variable_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
}
node {
  name: "MatMul_9"
  op: "MatMul"
  input: "Placeholder_6"
  input: "Variable_12/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_9"
  op: "Add"
  input: "MatMul_9"
  input: "Variable_13/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_6"
  op: "Sigmoid"
  input: "add_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_14/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_14/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_14/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_14/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_14/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_14/mul"
  op: "Mul"
  input: "random_normal_14/RandomStandardNormal"
  input: "random_normal_14/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_14"
  op: "Add"
  input: "random_normal_14/mul"
  input: "random_normal_14/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_14"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_14/Assign"
  op: "Assign"
  input: "Variable_14"
  input: "random_normal_14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_14/read"
  op: "Identity"
  input: "Variable_14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
}
node {
  name: "random_normal_15/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "random_normal_15/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_15/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_15/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_15/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_15/mul"
  op: "Mul"
  input: "random_normal_15/RandomStandardNormal"
  input: "random_normal_15/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_15"
  op: "Add"
  input: "random_normal_15/mul"
  input: "random_normal_15/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_15"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_15/Assign"
  op: "Assign"
  input: "Variable_15"
  input: "random_normal_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_15/read"
  op: "Identity"
  input: "Variable_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
}
node {
  name: "MatMul_10"
  op: "MatMul"
  input: "Sigmoid_6"
  input: "Variable_14/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_10"
  op: "Add"
  input: "MatMul_10"
  input: "Variable_15/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_7"
  op: "Sigmoid"
  input: "add_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_11"
  op: "MatMul"
  input: "Sigmoid_6"
  input: "Variable_14/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_11"
  op: "Add"
  input: "MatMul_11"
  input: "Variable_15/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "softmax_3"
  op: "Softmax"
  input: "add_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Log_3"
  op: "Log"
  input: "softmax_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_9"
  op: "Mul"
  input: "Placeholder_7"
  input: "Log_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sum_3/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sum_3"
  op: "Sum"
  input: "mul_9"
  input: "Sum_3/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Neg_3"
  op: "Neg"
  input: "Sum_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_6"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_6"
  op: "Mean"
  input: "Neg_3"
  input: "Const_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_3/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_3/Fill"
  op: "Fill"
  input: "gradients_3/Shape"
  input: "gradients_3/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Reshape"
  op: "Reshape"
  input: "gradients_3/Fill"
  input: "gradients_3/Mean_6_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Shape"
  op: "Shape"
  input: "Neg_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Tile"
  op: "Tile"
  input: "gradients_3/Mean_6_grad/Reshape"
  input: "gradients_3/Mean_6_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Shape_1"
  op: "Shape"
  input: "Neg_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Shape_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Prod"
  op: "Prod"
  input: "gradients_3/Mean_6_grad/Shape_1"
  input: "gradients_3/Mean_6_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Prod_1"
  op: "Prod"
  input: "gradients_3/Mean_6_grad/Shape_2"
  input: "gradients_3/Mean_6_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Maximum"
  op: "Maximum"
  input: "gradients_3/Mean_6_grad/Prod_1"
  input: "gradients_3/Mean_6_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_3/Mean_6_grad/Prod"
  input: "gradients_3/Mean_6_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/Cast"
  op: "Cast"
  input: "gradients_3/Mean_6_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/Mean_6_grad/truediv"
  op: "RealDiv"
  input: "gradients_3/Mean_6_grad/Tile"
  input: "gradients_3/Mean_6_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/Neg_3_grad/Neg"
  op: "Neg"
  input: "gradients_3/Mean_6_grad/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/Shape"
  op: "Shape"
  input: "mul_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/add"
  op: "Add"
  input: "Sum_3/reduction_indices"
  input: "gradients_3/Sum_3_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/mod"
  op: "FloorMod"
  input: "gradients_3/Sum_3_grad/add"
  input: "gradients_3/Sum_3_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/range"
  op: "Range"
  input: "gradients_3/Sum_3_grad/range/start"
  input: "gradients_3/Sum_3_grad/Size"
  input: "gradients_3/Sum_3_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/Fill"
  op: "Fill"
  input: "gradients_3/Sum_3_grad/Shape_1"
  input: "gradients_3/Sum_3_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "gradients_3/Sum_3_grad/range"
  input: "gradients_3/Sum_3_grad/mod"
  input: "gradients_3/Sum_3_grad/Shape"
  input: "gradients_3/Sum_3_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/Maximum"
  op: "Maximum"
  input: "gradients_3/Sum_3_grad/DynamicStitch"
  input: "gradients_3/Sum_3_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_3/Sum_3_grad/Shape"
  input: "gradients_3/Sum_3_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Sum_3_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/Reshape"
  op: "Reshape"
  input: "gradients_3/Neg_3_grad/Neg"
  input: "gradients_3/Sum_3_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Sum_3_grad/Tile"
  op: "Tile"
  input: "gradients_3/Sum_3_grad/Reshape"
  input: "gradients_3/Sum_3_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/mul_9_grad/Shape"
  op: "Shape"
  input: "Placeholder_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/mul_9_grad/Shape_1"
  op: "Shape"
  input: "Log_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/mul_9_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_3/mul_9_grad/Shape"
  input: "gradients_3/mul_9_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/mul_9_grad/Mul"
  op: "Mul"
  input: "gradients_3/Sum_3_grad/Tile"
  input: "Log_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/mul_9_grad/Sum"
  op: "Sum"
  input: "gradients_3/mul_9_grad/Mul"
  input: "gradients_3/mul_9_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/mul_9_grad/Reshape"
  op: "Reshape"
  input: "gradients_3/mul_9_grad/Sum"
  input: "gradients_3/mul_9_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/mul_9_grad/Mul_1"
  op: "Mul"
  input: "Placeholder_7"
  input: "gradients_3/Sum_3_grad/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/mul_9_grad/Sum_1"
  op: "Sum"
  input: "gradients_3/mul_9_grad/Mul_1"
  input: "gradients_3/mul_9_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/mul_9_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_3/mul_9_grad/Sum_1"
  input: "gradients_3/mul_9_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/mul_9_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_3/mul_9_grad/Reshape"
  input: "^gradients_3/mul_9_grad/Reshape_1"
}
node {
  name: "gradients_3/mul_9_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_3/mul_9_grad/Reshape"
  input: "^gradients_3/mul_9_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/mul_9_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_3/mul_9_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_3/mul_9_grad/Reshape_1"
  input: "^gradients_3/mul_9_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/mul_9_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_3/Log_3_grad/Reciprocal"
  op: "Reciprocal"
  input: "softmax_3"
  input: "^gradients_3/mul_9_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/Log_3_grad/mul"
  op: "Mul"
  input: "gradients_3/mul_9_grad/tuple/control_dependency_1"
  input: "gradients_3/Log_3_grad/Reciprocal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/softmax_3_grad/mul"
  op: "Mul"
  input: "gradients_3/Log_3_grad/mul"
  input: "softmax_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/softmax_3_grad/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients_3/softmax_3_grad/Sum"
  op: "Sum"
  input: "gradients_3/softmax_3_grad/mul"
  input: "gradients_3/softmax_3_grad/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_3/softmax_3_grad/sub"
  op: "Sub"
  input: "gradients_3/Log_3_grad/mul"
  input: "gradients_3/softmax_3_grad/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/softmax_3_grad/mul_1"
  op: "Mul"
  input: "gradients_3/softmax_3_grad/sub"
  input: "softmax_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/add_11_grad/Shape"
  op: "Shape"
  input: "MatMul_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/add_11_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "gradients_3/add_11_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_3/add_11_grad/Shape"
  input: "gradients_3/add_11_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/add_11_grad/Sum"
  op: "Sum"
  input: "gradients_3/softmax_3_grad/mul_1"
  input: "gradients_3/add_11_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/add_11_grad/Reshape"
  op: "Reshape"
  input: "gradients_3/add_11_grad/Sum"
  input: "gradients_3/add_11_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/add_11_grad/Sum_1"
  op: "Sum"
  input: "gradients_3/softmax_3_grad/mul_1"
  input: "gradients_3/add_11_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/add_11_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_3/add_11_grad/Sum_1"
  input: "gradients_3/add_11_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/add_11_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_3/add_11_grad/Reshape"
  input: "^gradients_3/add_11_grad/Reshape_1"
}
node {
  name: "gradients_3/add_11_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_3/add_11_grad/Reshape"
  input: "^gradients_3/add_11_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/add_11_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_3/add_11_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_3/add_11_grad/Reshape_1"
  input: "^gradients_3/add_11_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/add_11_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_3/MatMul_11_grad/MatMul"
  op: "MatMul"
  input: "gradients_3/add_11_grad/tuple/control_dependency"
  input: "Variable_14/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_3/MatMul_11_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_6"
  input: "gradients_3/add_11_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/MatMul_11_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_3/MatMul_11_grad/MatMul"
  input: "^gradients_3/MatMul_11_grad/MatMul_1"
}
node {
  name: "gradients_3/MatMul_11_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_3/MatMul_11_grad/MatMul"
  input: "^gradients_3/MatMul_11_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/MatMul_11_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_3/MatMul_11_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_3/MatMul_11_grad/MatMul_1"
  input: "^gradients_3/MatMul_11_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/MatMul_11_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_3/Sigmoid_6_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_6"
  input: "gradients_3/MatMul_11_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/add_9_grad/Shape"
  op: "Shape"
  input: "MatMul_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/add_9_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "gradients_3/add_9_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_3/add_9_grad/Shape"
  input: "gradients_3/add_9_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/add_9_grad/Sum"
  op: "Sum"
  input: "gradients_3/Sigmoid_6_grad/SigmoidGrad"
  input: "gradients_3/add_9_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/add_9_grad/Reshape"
  op: "Reshape"
  input: "gradients_3/add_9_grad/Sum"
  input: "gradients_3/add_9_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/add_9_grad/Sum_1"
  op: "Sum"
  input: "gradients_3/Sigmoid_6_grad/SigmoidGrad"
  input: "gradients_3/add_9_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/add_9_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_3/add_9_grad/Sum_1"
  input: "gradients_3/add_9_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/add_9_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_3/add_9_grad/Reshape"
  input: "^gradients_3/add_9_grad/Reshape_1"
}
node {
  name: "gradients_3/add_9_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_3/add_9_grad/Reshape"
  input: "^gradients_3/add_9_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/add_9_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_3/add_9_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_3/add_9_grad/Reshape_1"
  input: "^gradients_3/add_9_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/add_9_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_3/MatMul_9_grad/MatMul"
  op: "MatMul"
  input: "gradients_3/add_9_grad/tuple/control_dependency"
  input: "Variable_12/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_3/MatMul_9_grad/MatMul_1"
  op: "MatMul"
  input: "Placeholder_6"
  input: "gradients_3/add_9_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/MatMul_9_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_3/MatMul_9_grad/MatMul"
  input: "^gradients_3/MatMul_9_grad/MatMul_1"
}
node {
  name: "gradients_3/MatMul_9_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_3/MatMul_9_grad/MatMul"
  input: "^gradients_3/MatMul_9_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/MatMul_9_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_3/MatMul_9_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_3/MatMul_9_grad/MatMul_1"
  input: "^gradients_3/MatMul_9_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/MatMul_9_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "beta1_power_3/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "beta1_power_3"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta1_power_3/Assign"
  op: "Assign"
  input: "beta1_power_3"
  input: "beta1_power_3/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta1_power_3/read"
  op: "Identity"
  input: "beta1_power_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
}
node {
  name: "beta2_power_3/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "beta2_power_3"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta2_power_3/Assign"
  op: "Assign"
  input: "beta2_power_3"
  input: "beta2_power_3/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta2_power_3/read"
  op: "Identity"
  input: "beta2_power_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
}
node {
  name: "Variable_12/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_12/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_12/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_12/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_12/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_12/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_12/Adam/Assign"
  op: "Assign"
  input: "Variable_12/Adam"
  input: "Variable_12/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_12/Adam/read"
  op: "Identity"
  input: "Variable_12/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
}
node {
  name: "Variable_12/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_12/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_12/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_12/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_12/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_12/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_12/Adam_1/Assign"
  op: "Assign"
  input: "Variable_12/Adam_1"
  input: "Variable_12/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_12/Adam_1/read"
  op: "Identity"
  input: "Variable_12/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
}
node {
  name: "Variable_13/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_13/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_13/Adam/Assign"
  op: "Assign"
  input: "Variable_13/Adam"
  input: "Variable_13/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_13/Adam/read"
  op: "Identity"
  input: "Variable_13/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
}
node {
  name: "Variable_13/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_13/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_13/Adam_1/Assign"
  op: "Assign"
  input: "Variable_13/Adam_1"
  input: "Variable_13/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_13/Adam_1/read"
  op: "Identity"
  input: "Variable_13/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
}
node {
  name: "Variable_14/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_14/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_14/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_14/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_14/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_14/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_14/Adam/Assign"
  op: "Assign"
  input: "Variable_14/Adam"
  input: "Variable_14/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_14/Adam/read"
  op: "Identity"
  input: "Variable_14/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
}
node {
  name: "Variable_14/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_14/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_14/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_14/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_14/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_14/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_14/Adam_1/Assign"
  op: "Assign"
  input: "Variable_14/Adam_1"
  input: "Variable_14/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_14/Adam_1/read"
  op: "Identity"
  input: "Variable_14/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
}
node {
  name: "Variable_15/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_15/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_15/Adam/Assign"
  op: "Assign"
  input: "Variable_15/Adam"
  input: "Variable_15/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_15/Adam/read"
  op: "Identity"
  input: "Variable_15/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
}
node {
  name: "Variable_15/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_15/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_15/Adam_1/Assign"
  op: "Assign"
  input: "Variable_15/Adam_1"
  input: "Variable_15/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_15/Adam_1/read"
  op: "Identity"
  input: "Variable_15/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
}
node {
  name: "Adam_3/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Adam_3/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam_3/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam_3/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "Adam_3/update_Variable_12/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_12"
  input: "Variable_12/Adam"
  input: "Variable_12/Adam_1"
  input: "beta1_power_3/read"
  input: "beta2_power_3/read"
  input: "Adam_3/learning_rate"
  input: "Adam_3/beta1"
  input: "Adam_3/beta2"
  input: "Adam_3/epsilon"
  input: "gradients_3/MatMul_9_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_3/update_Variable_13/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_13"
  input: "Variable_13/Adam"
  input: "Variable_13/Adam_1"
  input: "beta1_power_3/read"
  input: "beta2_power_3/read"
  input: "Adam_3/learning_rate"
  input: "Adam_3/beta1"
  input: "Adam_3/beta2"
  input: "Adam_3/epsilon"
  input: "gradients_3/add_9_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_3/update_Variable_14/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_14"
  input: "Variable_14/Adam"
  input: "Variable_14/Adam_1"
  input: "beta1_power_3/read"
  input: "beta2_power_3/read"
  input: "Adam_3/learning_rate"
  input: "Adam_3/beta1"
  input: "Adam_3/beta2"
  input: "Adam_3/epsilon"
  input: "gradients_3/MatMul_11_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_3/update_Variable_15/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_15"
  input: "Variable_15/Adam"
  input: "Variable_15/Adam_1"
  input: "beta1_power_3/read"
  input: "beta2_power_3/read"
  input: "Adam_3/learning_rate"
  input: "Adam_3/beta1"
  input: "Adam_3/beta2"
  input: "Adam_3/epsilon"
  input: "gradients_3/add_11_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_3/mul"
  op: "Mul"
  input: "beta1_power_3/read"
  input: "Adam_3/beta1"
  input: "^Adam_3/update_Variable_12/ApplyAdam"
  input: "^Adam_3/update_Variable_13/ApplyAdam"
  input: "^Adam_3/update_Variable_14/ApplyAdam"
  input: "^Adam_3/update_Variable_15/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
}
node {
  name: "Adam_3/Assign"
  op: "Assign"
  input: "beta1_power_3"
  input: "Adam_3/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_3/mul_1"
  op: "Mul"
  input: "beta2_power_3/read"
  input: "Adam_3/beta2"
  input: "^Adam_3/update_Variable_12/ApplyAdam"
  input: "^Adam_3/update_Variable_13/ApplyAdam"
  input: "^Adam_3/update_Variable_14/ApplyAdam"
  input: "^Adam_3/update_Variable_15/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
}
node {
  name: "Adam_3/Assign_1"
  op: "Assign"
  input: "beta2_power_3"
  input: "Adam_3/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_3"
  op: "NoOp"
  input: "^Adam_3/Assign"
  input: "^Adam_3/Assign_1"
  input: "^Adam_3/update_Variable_12/ApplyAdam"
  input: "^Adam_3/update_Variable_13/ApplyAdam"
  input: "^Adam_3/update_Variable_14/ApplyAdam"
  input: "^Adam_3/update_Variable_15/ApplyAdam"
}
node {
  name: "save_3/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save_3/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 56
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta1_power_3"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
        string_val: "beta2_power_3"
      }
    }
  }
}
node {
  name: "save_3/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 56
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_3/SaveV2"
  op: "SaveV2"
  input: "save_3/Const"
  input: "save_3/SaveV2/tensor_names"
  input: "save_3/SaveV2/shape_and_slices"
  input: "Variable"
  input: "Variable/Adam"
  input: "Variable/Adam_1"
  input: "Variable_1"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam_1"
  input: "Variable_10"
  input: "Variable_10/Adam"
  input: "Variable_10/Adam_1"
  input: "Variable_11"
  input: "Variable_11/Adam"
  input: "Variable_11/Adam_1"
  input: "Variable_12"
  input: "Variable_12/Adam"
  input: "Variable_12/Adam_1"
  input: "Variable_13"
  input: "Variable_13/Adam"
  input: "Variable_13/Adam_1"
  input: "Variable_14"
  input: "Variable_14/Adam"
  input: "Variable_14/Adam_1"
  input: "Variable_15"
  input: "Variable_15/Adam"
  input: "Variable_15/Adam_1"
  input: "Variable_2"
  input: "Variable_2/Adam"
  input: "Variable_2/Adam_1"
  input: "Variable_3"
  input: "Variable_3/Adam"
  input: "Variable_3/Adam_1"
  input: "Variable_4"
  input: "Variable_4/Adam"
  input: "Variable_4/Adam_1"
  input: "Variable_5"
  input: "Variable_5/Adam"
  input: "Variable_5/Adam_1"
  input: "Variable_6"
  input: "Variable_6/Adam"
  input: "Variable_6/Adam_1"
  input: "Variable_7"
  input: "Variable_7/Adam"
  input: "Variable_7/Adam_1"
  input: "Variable_8"
  input: "Variable_8/Adam"
  input: "Variable_8/Adam_1"
  input: "Variable_9"
  input: "Variable_9/Adam"
  input: "Variable_9/Adam_1"
  input: "beta1_power"
  input: "beta1_power_1"
  input: "beta1_power_2"
  input: "beta1_power_3"
  input: "beta2_power"
  input: "beta2_power_1"
  input: "beta2_power_2"
  input: "beta2_power_3"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_3/control_dependency"
  op: "Identity"
  input: "save_3/Const"
  input: "^save_3/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save_3/Const"
      }
    }
  }
}
node {
  name: "save_3/RestoreV2/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 56
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta1_power_3"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
        string_val: "beta2_power_3"
      }
    }
  }
}
node {
  name: "save_3/RestoreV2/shape_and_slices"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 56
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_3/RestoreV2"
  op: "RestoreV2"
  input: "save_3/Const"
  input: "save_3/RestoreV2/tensor_names"
  input: "save_3/RestoreV2/shape_and_slices"
  device: "/device:CPU:0"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_3/Assign"
  op: "Assign"
  input: "Variable"
  input: "save_3/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_1"
  op: "Assign"
  input: "Variable/Adam"
  input: "save_3/RestoreV2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_2"
  op: "Assign"
  input: "Variable/Adam_1"
  input: "save_3/RestoreV2:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_3"
  op: "Assign"
  input: "Variable_1"
  input: "save_3/RestoreV2:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_4"
  op: "Assign"
  input: "Variable_1/Adam"
  input: "save_3/RestoreV2:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_5"
  op: "Assign"
  input: "Variable_1/Adam_1"
  input: "save_3/RestoreV2:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_6"
  op: "Assign"
  input: "Variable_10"
  input: "save_3/RestoreV2:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_7"
  op: "Assign"
  input: "Variable_10/Adam"
  input: "save_3/RestoreV2:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_8"
  op: "Assign"
  input: "Variable_10/Adam_1"
  input: "save_3/RestoreV2:8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_9"
  op: "Assign"
  input: "Variable_11"
  input: "save_3/RestoreV2:9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_10"
  op: "Assign"
  input: "Variable_11/Adam"
  input: "save_3/RestoreV2:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_11"
  op: "Assign"
  input: "Variable_11/Adam_1"
  input: "save_3/RestoreV2:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_12"
  op: "Assign"
  input: "Variable_12"
  input: "save_3/RestoreV2:12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_13"
  op: "Assign"
  input: "Variable_12/Adam"
  input: "save_3/RestoreV2:13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_14"
  op: "Assign"
  input: "Variable_12/Adam_1"
  input: "save_3/RestoreV2:14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_15"
  op: "Assign"
  input: "Variable_13"
  input: "save_3/RestoreV2:15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_16"
  op: "Assign"
  input: "Variable_13/Adam"
  input: "save_3/RestoreV2:16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_17"
  op: "Assign"
  input: "Variable_13/Adam_1"
  input: "save_3/RestoreV2:17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_18"
  op: "Assign"
  input: "Variable_14"
  input: "save_3/RestoreV2:18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_19"
  op: "Assign"
  input: "Variable_14/Adam"
  input: "save_3/RestoreV2:19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_20"
  op: "Assign"
  input: "Variable_14/Adam_1"
  input: "save_3/RestoreV2:20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_21"
  op: "Assign"
  input: "Variable_15"
  input: "save_3/RestoreV2:21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_22"
  op: "Assign"
  input: "Variable_15/Adam"
  input: "save_3/RestoreV2:22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_23"
  op: "Assign"
  input: "Variable_15/Adam_1"
  input: "save_3/RestoreV2:23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_24"
  op: "Assign"
  input: "Variable_2"
  input: "save_3/RestoreV2:24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_25"
  op: "Assign"
  input: "Variable_2/Adam"
  input: "save_3/RestoreV2:25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_26"
  op: "Assign"
  input: "Variable_2/Adam_1"
  input: "save_3/RestoreV2:26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_27"
  op: "Assign"
  input: "Variable_3"
  input: "save_3/RestoreV2:27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_28"
  op: "Assign"
  input: "Variable_3/Adam"
  input: "save_3/RestoreV2:28"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_29"
  op: "Assign"
  input: "Variable_3/Adam_1"
  input: "save_3/RestoreV2:29"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_30"
  op: "Assign"
  input: "Variable_4"
  input: "save_3/RestoreV2:30"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_31"
  op: "Assign"
  input: "Variable_4/Adam"
  input: "save_3/RestoreV2:31"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_32"
  op: "Assign"
  input: "Variable_4/Adam_1"
  input: "save_3/RestoreV2:32"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_33"
  op: "Assign"
  input: "Variable_5"
  input: "save_3/RestoreV2:33"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_34"
  op: "Assign"
  input: "Variable_5/Adam"
  input: "save_3/RestoreV2:34"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_35"
  op: "Assign"
  input: "Variable_5/Adam_1"
  input: "save_3/RestoreV2:35"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_36"
  op: "Assign"
  input: "Variable_6"
  input: "save_3/RestoreV2:36"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_37"
  op: "Assign"
  input: "Variable_6/Adam"
  input: "save_3/RestoreV2:37"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_38"
  op: "Assign"
  input: "Variable_6/Adam_1"
  input: "save_3/RestoreV2:38"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_39"
  op: "Assign"
  input: "Variable_7"
  input: "save_3/RestoreV2:39"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_40"
  op: "Assign"
  input: "Variable_7/Adam"
  input: "save_3/RestoreV2:40"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_41"
  op: "Assign"
  input: "Variable_7/Adam_1"
  input: "save_3/RestoreV2:41"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_42"
  op: "Assign"
  input: "Variable_8"
  input: "save_3/RestoreV2:42"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_43"
  op: "Assign"
  input: "Variable_8/Adam"
  input: "save_3/RestoreV2:43"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_44"
  op: "Assign"
  input: "Variable_8/Adam_1"
  input: "save_3/RestoreV2:44"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_45"
  op: "Assign"
  input: "Variable_9"
  input: "save_3/RestoreV2:45"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_46"
  op: "Assign"
  input: "Variable_9/Adam"
  input: "save_3/RestoreV2:46"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_47"
  op: "Assign"
  input: "Variable_9/Adam_1"
  input: "save_3/RestoreV2:47"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_48"
  op: "Assign"
  input: "beta1_power"
  input: "save_3/RestoreV2:48"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_49"
  op: "Assign"
  input: "beta1_power_1"
  input: "save_3/RestoreV2:49"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_50"
  op: "Assign"
  input: "beta1_power_2"
  input: "save_3/RestoreV2:50"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_51"
  op: "Assign"
  input: "beta1_power_3"
  input: "save_3/RestoreV2:51"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_52"
  op: "Assign"
  input: "beta2_power"
  input: "save_3/RestoreV2:52"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_53"
  op: "Assign"
  input: "beta2_power_1"
  input: "save_3/RestoreV2:53"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_54"
  op: "Assign"
  input: "beta2_power_2"
  input: "save_3/RestoreV2:54"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/Assign_55"
  op: "Assign"
  input: "beta2_power_3"
  input: "save_3/RestoreV2:55"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_3/restore_all"
  op: "NoOp"
  input: "^save_3/Assign"
  input: "^save_3/Assign_1"
  input: "^save_3/Assign_10"
  input: "^save_3/Assign_11"
  input: "^save_3/Assign_12"
  input: "^save_3/Assign_13"
  input: "^save_3/Assign_14"
  input: "^save_3/Assign_15"
  input: "^save_3/Assign_16"
  input: "^save_3/Assign_17"
  input: "^save_3/Assign_18"
  input: "^save_3/Assign_19"
  input: "^save_3/Assign_2"
  input: "^save_3/Assign_20"
  input: "^save_3/Assign_21"
  input: "^save_3/Assign_22"
  input: "^save_3/Assign_23"
  input: "^save_3/Assign_24"
  input: "^save_3/Assign_25"
  input: "^save_3/Assign_26"
  input: "^save_3/Assign_27"
  input: "^save_3/Assign_28"
  input: "^save_3/Assign_29"
  input: "^save_3/Assign_3"
  input: "^save_3/Assign_30"
  input: "^save_3/Assign_31"
  input: "^save_3/Assign_32"
  input: "^save_3/Assign_33"
  input: "^save_3/Assign_34"
  input: "^save_3/Assign_35"
  input: "^save_3/Assign_36"
  input: "^save_3/Assign_37"
  input: "^save_3/Assign_38"
  input: "^save_3/Assign_39"
  input: "^save_3/Assign_4"
  input: "^save_3/Assign_40"
  input: "^save_3/Assign_41"
  input: "^save_3/Assign_42"
  input: "^save_3/Assign_43"
  input: "^save_3/Assign_44"
  input: "^save_3/Assign_45"
  input: "^save_3/Assign_46"
  input: "^save_3/Assign_47"
  input: "^save_3/Assign_48"
  input: "^save_3/Assign_49"
  input: "^save_3/Assign_5"
  input: "^save_3/Assign_50"
  input: "^save_3/Assign_51"
  input: "^save_3/Assign_52"
  input: "^save_3/Assign_53"
  input: "^save_3/Assign_54"
  input: "^save_3/Assign_55"
  input: "^save_3/Assign_6"
  input: "^save_3/Assign_7"
  input: "^save_3/Assign_8"
  input: "^save_3/Assign_9"
}
node {
  name: "init_3"
  op: "NoOp"
  input: "^Variable/Adam/Assign"
  input: "^Variable/Adam_1/Assign"
  input: "^Variable/Assign"
  input: "^Variable_1/Adam/Assign"
  input: "^Variable_1/Adam_1/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_10/Adam/Assign"
  input: "^Variable_10/Adam_1/Assign"
  input: "^Variable_10/Assign"
  input: "^Variable_11/Adam/Assign"
  input: "^Variable_11/Adam_1/Assign"
  input: "^Variable_11/Assign"
  input: "^Variable_12/Adam/Assign"
  input: "^Variable_12/Adam_1/Assign"
  input: "^Variable_12/Assign"
  input: "^Variable_13/Adam/Assign"
  input: "^Variable_13/Adam_1/Assign"
  input: "^Variable_13/Assign"
  input: "^Variable_14/Adam/Assign"
  input: "^Variable_14/Adam_1/Assign"
  input: "^Variable_14/Assign"
  input: "^Variable_15/Adam/Assign"
  input: "^Variable_15/Adam_1/Assign"
  input: "^Variable_15/Assign"
  input: "^Variable_2/Adam/Assign"
  input: "^Variable_2/Adam_1/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_3/Adam/Assign"
  input: "^Variable_3/Adam_1/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_4/Adam/Assign"
  input: "^Variable_4/Adam_1/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Adam/Assign"
  input: "^Variable_5/Adam_1/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Adam/Assign"
  input: "^Variable_6/Adam_1/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Adam/Assign"
  input: "^Variable_7/Adam_1/Assign"
  input: "^Variable_7/Assign"
  input: "^Variable_8/Adam/Assign"
  input: "^Variable_8/Adam_1/Assign"
  input: "^Variable_8/Assign"
  input: "^Variable_9/Adam/Assign"
  input: "^Variable_9/Adam_1/Assign"
  input: "^Variable_9/Assign"
  input: "^beta1_power/Assign"
  input: "^beta1_power_1/Assign"
  input: "^beta1_power_2/Assign"
  input: "^beta1_power_3/Assign"
  input: "^beta2_power/Assign"
  input: "^beta2_power_1/Assign"
  input: "^beta2_power_2/Assign"
  input: "^beta2_power_3/Assign"
}
node {
  name: "ArgMax_6/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_6"
  op: "ArgMax"
  input: "softmax_3"
  input: "ArgMax_6/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "ArgMax_7/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_7"
  op: "ArgMax"
  input: "Placeholder_7"
  input: "ArgMax_7/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Equal_3"
  op: "Equal"
  input: "ArgMax_6"
  input: "ArgMax_7"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Cast_3"
  op: "Cast"
  input: "Equal_3"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "Const_7"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_7"
  op: "Mean"
  input: "Cast_3"
  input: "Const_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "mul_10/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_10"
  op: "Mul"
  input: "Mean_7"
  input: "mul_10/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_11/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_11"
  op: "Mul"
  input: "Mean_7"
  input: "mul_11/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Placeholder_8"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 784
        }
      }
    }
  }
}
node {
  name: "Placeholder_9"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 10
        }
      }
    }
  }
}
node {
  name: "random_normal_16/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_16/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_16/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_16/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_16/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_16/mul"
  op: "Mul"
  input: "random_normal_16/RandomStandardNormal"
  input: "random_normal_16/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_16"
  op: "Add"
  input: "random_normal_16/mul"
  input: "random_normal_16/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_16"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_16/Assign"
  op: "Assign"
  input: "Variable_16"
  input: "random_normal_16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_16/read"
  op: "Identity"
  input: "Variable_16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
}
node {
  name: "random_normal_17/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "random_normal_17/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_17/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_17/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_17/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_17/mul"
  op: "Mul"
  input: "random_normal_17/RandomStandardNormal"
  input: "random_normal_17/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_17"
  op: "Add"
  input: "random_normal_17/mul"
  input: "random_normal_17/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_17"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_17/Assign"
  op: "Assign"
  input: "Variable_17"
  input: "random_normal_17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_17/read"
  op: "Identity"
  input: "Variable_17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
}
node {
  name: "MatMul_12"
  op: "MatMul"
  input: "Placeholder_8"
  input: "Variable_16/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_12"
  op: "Add"
  input: "MatMul_12"
  input: "Variable_17/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_8"
  op: "Sigmoid"
  input: "add_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_18/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_18/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_18/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_18/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_18/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_18/mul"
  op: "Mul"
  input: "random_normal_18/RandomStandardNormal"
  input: "random_normal_18/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_18"
  op: "Add"
  input: "random_normal_18/mul"
  input: "random_normal_18/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_18"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_18/Assign"
  op: "Assign"
  input: "Variable_18"
  input: "random_normal_18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_18/read"
  op: "Identity"
  input: "Variable_18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
}
node {
  name: "random_normal_19/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "random_normal_19/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_19/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_19/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_19/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_19/mul"
  op: "Mul"
  input: "random_normal_19/RandomStandardNormal"
  input: "random_normal_19/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_19"
  op: "Add"
  input: "random_normal_19/mul"
  input: "random_normal_19/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_19"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_19/Assign"
  op: "Assign"
  input: "Variable_19"
  input: "random_normal_19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_19/read"
  op: "Identity"
  input: "Variable_19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
}
node {
  name: "MatMul_13"
  op: "MatMul"
  input: "Sigmoid_8"
  input: "Variable_18/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_13"
  op: "Add"
  input: "MatMul_13"
  input: "Variable_19/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_9"
  op: "Sigmoid"
  input: "add_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_14"
  op: "MatMul"
  input: "Sigmoid_8"
  input: "Variable_18/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_14"
  op: "Add"
  input: "MatMul_14"
  input: "Variable_19/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "softmax_4"
  op: "Softmax"
  input: "add_14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Log_4"
  op: "Log"
  input: "softmax_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_12"
  op: "Mul"
  input: "Placeholder_9"
  input: "Log_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sum_4/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sum_4"
  op: "Sum"
  input: "mul_12"
  input: "Sum_4/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Neg_4"
  op: "Neg"
  input: "Sum_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_8"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_8"
  op: "Mean"
  input: "Neg_4"
  input: "Const_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_4/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_4/Fill"
  op: "Fill"
  input: "gradients_4/Shape"
  input: "gradients_4/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Reshape"
  op: "Reshape"
  input: "gradients_4/Fill"
  input: "gradients_4/Mean_8_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Shape"
  op: "Shape"
  input: "Neg_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Tile"
  op: "Tile"
  input: "gradients_4/Mean_8_grad/Reshape"
  input: "gradients_4/Mean_8_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Shape_1"
  op: "Shape"
  input: "Neg_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Shape_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Prod"
  op: "Prod"
  input: "gradients_4/Mean_8_grad/Shape_1"
  input: "gradients_4/Mean_8_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Prod_1"
  op: "Prod"
  input: "gradients_4/Mean_8_grad/Shape_2"
  input: "gradients_4/Mean_8_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Maximum"
  op: "Maximum"
  input: "gradients_4/Mean_8_grad/Prod_1"
  input: "gradients_4/Mean_8_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_4/Mean_8_grad/Prod"
  input: "gradients_4/Mean_8_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/Cast"
  op: "Cast"
  input: "gradients_4/Mean_8_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/Mean_8_grad/truediv"
  op: "RealDiv"
  input: "gradients_4/Mean_8_grad/Tile"
  input: "gradients_4/Mean_8_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/Neg_4_grad/Neg"
  op: "Neg"
  input: "gradients_4/Mean_8_grad/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/Shape"
  op: "Shape"
  input: "mul_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/add"
  op: "Add"
  input: "Sum_4/reduction_indices"
  input: "gradients_4/Sum_4_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/mod"
  op: "FloorMod"
  input: "gradients_4/Sum_4_grad/add"
  input: "gradients_4/Sum_4_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/range"
  op: "Range"
  input: "gradients_4/Sum_4_grad/range/start"
  input: "gradients_4/Sum_4_grad/Size"
  input: "gradients_4/Sum_4_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/Fill"
  op: "Fill"
  input: "gradients_4/Sum_4_grad/Shape_1"
  input: "gradients_4/Sum_4_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "gradients_4/Sum_4_grad/range"
  input: "gradients_4/Sum_4_grad/mod"
  input: "gradients_4/Sum_4_grad/Shape"
  input: "gradients_4/Sum_4_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/Maximum"
  op: "Maximum"
  input: "gradients_4/Sum_4_grad/DynamicStitch"
  input: "gradients_4/Sum_4_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_4/Sum_4_grad/Shape"
  input: "gradients_4/Sum_4_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Sum_4_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/Reshape"
  op: "Reshape"
  input: "gradients_4/Neg_4_grad/Neg"
  input: "gradients_4/Sum_4_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Sum_4_grad/Tile"
  op: "Tile"
  input: "gradients_4/Sum_4_grad/Reshape"
  input: "gradients_4/Sum_4_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/mul_12_grad/Shape"
  op: "Shape"
  input: "Placeholder_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/mul_12_grad/Shape_1"
  op: "Shape"
  input: "Log_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/mul_12_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_4/mul_12_grad/Shape"
  input: "gradients_4/mul_12_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/mul_12_grad/Mul"
  op: "Mul"
  input: "gradients_4/Sum_4_grad/Tile"
  input: "Log_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/mul_12_grad/Sum"
  op: "Sum"
  input: "gradients_4/mul_12_grad/Mul"
  input: "gradients_4/mul_12_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/mul_12_grad/Reshape"
  op: "Reshape"
  input: "gradients_4/mul_12_grad/Sum"
  input: "gradients_4/mul_12_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/mul_12_grad/Mul_1"
  op: "Mul"
  input: "Placeholder_9"
  input: "gradients_4/Sum_4_grad/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/mul_12_grad/Sum_1"
  op: "Sum"
  input: "gradients_4/mul_12_grad/Mul_1"
  input: "gradients_4/mul_12_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/mul_12_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_4/mul_12_grad/Sum_1"
  input: "gradients_4/mul_12_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/mul_12_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_4/mul_12_grad/Reshape"
  input: "^gradients_4/mul_12_grad/Reshape_1"
}
node {
  name: "gradients_4/mul_12_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_4/mul_12_grad/Reshape"
  input: "^gradients_4/mul_12_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/mul_12_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_4/mul_12_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_4/mul_12_grad/Reshape_1"
  input: "^gradients_4/mul_12_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/mul_12_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_4/Log_4_grad/Reciprocal"
  op: "Reciprocal"
  input: "softmax_4"
  input: "^gradients_4/mul_12_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/Log_4_grad/mul"
  op: "Mul"
  input: "gradients_4/mul_12_grad/tuple/control_dependency_1"
  input: "gradients_4/Log_4_grad/Reciprocal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/softmax_4_grad/mul"
  op: "Mul"
  input: "gradients_4/Log_4_grad/mul"
  input: "softmax_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/softmax_4_grad/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients_4/softmax_4_grad/Sum"
  op: "Sum"
  input: "gradients_4/softmax_4_grad/mul"
  input: "gradients_4/softmax_4_grad/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_4/softmax_4_grad/sub"
  op: "Sub"
  input: "gradients_4/Log_4_grad/mul"
  input: "gradients_4/softmax_4_grad/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/softmax_4_grad/mul_1"
  op: "Mul"
  input: "gradients_4/softmax_4_grad/sub"
  input: "softmax_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/add_14_grad/Shape"
  op: "Shape"
  input: "MatMul_14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/add_14_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "gradients_4/add_14_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_4/add_14_grad/Shape"
  input: "gradients_4/add_14_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/add_14_grad/Sum"
  op: "Sum"
  input: "gradients_4/softmax_4_grad/mul_1"
  input: "gradients_4/add_14_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/add_14_grad/Reshape"
  op: "Reshape"
  input: "gradients_4/add_14_grad/Sum"
  input: "gradients_4/add_14_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/add_14_grad/Sum_1"
  op: "Sum"
  input: "gradients_4/softmax_4_grad/mul_1"
  input: "gradients_4/add_14_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/add_14_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_4/add_14_grad/Sum_1"
  input: "gradients_4/add_14_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/add_14_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_4/add_14_grad/Reshape"
  input: "^gradients_4/add_14_grad/Reshape_1"
}
node {
  name: "gradients_4/add_14_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_4/add_14_grad/Reshape"
  input: "^gradients_4/add_14_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/add_14_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_4/add_14_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_4/add_14_grad/Reshape_1"
  input: "^gradients_4/add_14_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/add_14_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_4/MatMul_14_grad/MatMul"
  op: "MatMul"
  input: "gradients_4/add_14_grad/tuple/control_dependency"
  input: "Variable_18/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_4/MatMul_14_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_8"
  input: "gradients_4/add_14_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/MatMul_14_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_4/MatMul_14_grad/MatMul"
  input: "^gradients_4/MatMul_14_grad/MatMul_1"
}
node {
  name: "gradients_4/MatMul_14_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_4/MatMul_14_grad/MatMul"
  input: "^gradients_4/MatMul_14_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/MatMul_14_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_4/MatMul_14_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_4/MatMul_14_grad/MatMul_1"
  input: "^gradients_4/MatMul_14_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/MatMul_14_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_4/Sigmoid_8_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_8"
  input: "gradients_4/MatMul_14_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/add_12_grad/Shape"
  op: "Shape"
  input: "MatMul_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/add_12_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "gradients_4/add_12_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_4/add_12_grad/Shape"
  input: "gradients_4/add_12_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/add_12_grad/Sum"
  op: "Sum"
  input: "gradients_4/Sigmoid_8_grad/SigmoidGrad"
  input: "gradients_4/add_12_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/add_12_grad/Reshape"
  op: "Reshape"
  input: "gradients_4/add_12_grad/Sum"
  input: "gradients_4/add_12_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/add_12_grad/Sum_1"
  op: "Sum"
  input: "gradients_4/Sigmoid_8_grad/SigmoidGrad"
  input: "gradients_4/add_12_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/add_12_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_4/add_12_grad/Sum_1"
  input: "gradients_4/add_12_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/add_12_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_4/add_12_grad/Reshape"
  input: "^gradients_4/add_12_grad/Reshape_1"
}
node {
  name: "gradients_4/add_12_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_4/add_12_grad/Reshape"
  input: "^gradients_4/add_12_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/add_12_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_4/add_12_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_4/add_12_grad/Reshape_1"
  input: "^gradients_4/add_12_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/add_12_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_4/MatMul_12_grad/MatMul"
  op: "MatMul"
  input: "gradients_4/add_12_grad/tuple/control_dependency"
  input: "Variable_16/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_4/MatMul_12_grad/MatMul_1"
  op: "MatMul"
  input: "Placeholder_8"
  input: "gradients_4/add_12_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/MatMul_12_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_4/MatMul_12_grad/MatMul"
  input: "^gradients_4/MatMul_12_grad/MatMul_1"
}
node {
  name: "gradients_4/MatMul_12_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_4/MatMul_12_grad/MatMul"
  input: "^gradients_4/MatMul_12_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/MatMul_12_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_4/MatMul_12_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_4/MatMul_12_grad/MatMul_1"
  input: "^gradients_4/MatMul_12_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/MatMul_12_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "beta1_power_4/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "beta1_power_4"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta1_power_4/Assign"
  op: "Assign"
  input: "beta1_power_4"
  input: "beta1_power_4/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta1_power_4/read"
  op: "Identity"
  input: "beta1_power_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
}
node {
  name: "beta2_power_4/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "beta2_power_4"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta2_power_4/Assign"
  op: "Assign"
  input: "beta2_power_4"
  input: "beta2_power_4/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta2_power_4/read"
  op: "Identity"
  input: "beta2_power_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
}
node {
  name: "Variable_16/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_16/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_16/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_16/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_16/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_16/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_16/Adam/Assign"
  op: "Assign"
  input: "Variable_16/Adam"
  input: "Variable_16/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_16/Adam/read"
  op: "Identity"
  input: "Variable_16/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
}
node {
  name: "Variable_16/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_16/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_16/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_16/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_16/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_16/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_16/Adam_1/Assign"
  op: "Assign"
  input: "Variable_16/Adam_1"
  input: "Variable_16/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_16/Adam_1/read"
  op: "Identity"
  input: "Variable_16/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
}
node {
  name: "Variable_17/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_17/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_17/Adam/Assign"
  op: "Assign"
  input: "Variable_17/Adam"
  input: "Variable_17/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_17/Adam/read"
  op: "Identity"
  input: "Variable_17/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
}
node {
  name: "Variable_17/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_17/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_17/Adam_1/Assign"
  op: "Assign"
  input: "Variable_17/Adam_1"
  input: "Variable_17/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_17/Adam_1/read"
  op: "Identity"
  input: "Variable_17/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
}
node {
  name: "Variable_18/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_18/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_18/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_18/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_18/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_18/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_18/Adam/Assign"
  op: "Assign"
  input: "Variable_18/Adam"
  input: "Variable_18/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_18/Adam/read"
  op: "Identity"
  input: "Variable_18/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
}
node {
  name: "Variable_18/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_18/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_18/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_18/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_18/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_18/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_18/Adam_1/Assign"
  op: "Assign"
  input: "Variable_18/Adam_1"
  input: "Variable_18/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_18/Adam_1/read"
  op: "Identity"
  input: "Variable_18/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
}
node {
  name: "Variable_19/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_19/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_19/Adam/Assign"
  op: "Assign"
  input: "Variable_19/Adam"
  input: "Variable_19/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_19/Adam/read"
  op: "Identity"
  input: "Variable_19/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
}
node {
  name: "Variable_19/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_19/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_19/Adam_1/Assign"
  op: "Assign"
  input: "Variable_19/Adam_1"
  input: "Variable_19/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_19/Adam_1/read"
  op: "Identity"
  input: "Variable_19/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
}
node {
  name: "Adam_4/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Adam_4/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam_4/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam_4/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "Adam_4/update_Variable_16/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_16"
  input: "Variable_16/Adam"
  input: "Variable_16/Adam_1"
  input: "beta1_power_4/read"
  input: "beta2_power_4/read"
  input: "Adam_4/learning_rate"
  input: "Adam_4/beta1"
  input: "Adam_4/beta2"
  input: "Adam_4/epsilon"
  input: "gradients_4/MatMul_12_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_4/update_Variable_17/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_17"
  input: "Variable_17/Adam"
  input: "Variable_17/Adam_1"
  input: "beta1_power_4/read"
  input: "beta2_power_4/read"
  input: "Adam_4/learning_rate"
  input: "Adam_4/beta1"
  input: "Adam_4/beta2"
  input: "Adam_4/epsilon"
  input: "gradients_4/add_12_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_4/update_Variable_18/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_18"
  input: "Variable_18/Adam"
  input: "Variable_18/Adam_1"
  input: "beta1_power_4/read"
  input: "beta2_power_4/read"
  input: "Adam_4/learning_rate"
  input: "Adam_4/beta1"
  input: "Adam_4/beta2"
  input: "Adam_4/epsilon"
  input: "gradients_4/MatMul_14_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_4/update_Variable_19/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_19"
  input: "Variable_19/Adam"
  input: "Variable_19/Adam_1"
  input: "beta1_power_4/read"
  input: "beta2_power_4/read"
  input: "Adam_4/learning_rate"
  input: "Adam_4/beta1"
  input: "Adam_4/beta2"
  input: "Adam_4/epsilon"
  input: "gradients_4/add_14_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_4/mul"
  op: "Mul"
  input: "beta1_power_4/read"
  input: "Adam_4/beta1"
  input: "^Adam_4/update_Variable_16/ApplyAdam"
  input: "^Adam_4/update_Variable_17/ApplyAdam"
  input: "^Adam_4/update_Variable_18/ApplyAdam"
  input: "^Adam_4/update_Variable_19/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
}
node {
  name: "Adam_4/Assign"
  op: "Assign"
  input: "beta1_power_4"
  input: "Adam_4/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_4/mul_1"
  op: "Mul"
  input: "beta2_power_4/read"
  input: "Adam_4/beta2"
  input: "^Adam_4/update_Variable_16/ApplyAdam"
  input: "^Adam_4/update_Variable_17/ApplyAdam"
  input: "^Adam_4/update_Variable_18/ApplyAdam"
  input: "^Adam_4/update_Variable_19/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
}
node {
  name: "Adam_4/Assign_1"
  op: "Assign"
  input: "beta2_power_4"
  input: "Adam_4/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_4"
  op: "NoOp"
  input: "^Adam_4/Assign"
  input: "^Adam_4/Assign_1"
  input: "^Adam_4/update_Variable_16/ApplyAdam"
  input: "^Adam_4/update_Variable_17/ApplyAdam"
  input: "^Adam_4/update_Variable_18/ApplyAdam"
  input: "^Adam_4/update_Variable_19/ApplyAdam"
}
node {
  name: "save_4/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save_4/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 70
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_16"
        string_val: "Variable_16/Adam"
        string_val: "Variable_16/Adam_1"
        string_val: "Variable_17"
        string_val: "Variable_17/Adam"
        string_val: "Variable_17/Adam_1"
        string_val: "Variable_18"
        string_val: "Variable_18/Adam"
        string_val: "Variable_18/Adam_1"
        string_val: "Variable_19"
        string_val: "Variable_19/Adam"
        string_val: "Variable_19/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta1_power_3"
        string_val: "beta1_power_4"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
        string_val: "beta2_power_3"
        string_val: "beta2_power_4"
      }
    }
  }
}
node {
  name: "save_4/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 70
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_4/SaveV2"
  op: "SaveV2"
  input: "save_4/Const"
  input: "save_4/SaveV2/tensor_names"
  input: "save_4/SaveV2/shape_and_slices"
  input: "Variable"
  input: "Variable/Adam"
  input: "Variable/Adam_1"
  input: "Variable_1"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam_1"
  input: "Variable_10"
  input: "Variable_10/Adam"
  input: "Variable_10/Adam_1"
  input: "Variable_11"
  input: "Variable_11/Adam"
  input: "Variable_11/Adam_1"
  input: "Variable_12"
  input: "Variable_12/Adam"
  input: "Variable_12/Adam_1"
  input: "Variable_13"
  input: "Variable_13/Adam"
  input: "Variable_13/Adam_1"
  input: "Variable_14"
  input: "Variable_14/Adam"
  input: "Variable_14/Adam_1"
  input: "Variable_15"
  input: "Variable_15/Adam"
  input: "Variable_15/Adam_1"
  input: "Variable_16"
  input: "Variable_16/Adam"
  input: "Variable_16/Adam_1"
  input: "Variable_17"
  input: "Variable_17/Adam"
  input: "Variable_17/Adam_1"
  input: "Variable_18"
  input: "Variable_18/Adam"
  input: "Variable_18/Adam_1"
  input: "Variable_19"
  input: "Variable_19/Adam"
  input: "Variable_19/Adam_1"
  input: "Variable_2"
  input: "Variable_2/Adam"
  input: "Variable_2/Adam_1"
  input: "Variable_3"
  input: "Variable_3/Adam"
  input: "Variable_3/Adam_1"
  input: "Variable_4"
  input: "Variable_4/Adam"
  input: "Variable_4/Adam_1"
  input: "Variable_5"
  input: "Variable_5/Adam"
  input: "Variable_5/Adam_1"
  input: "Variable_6"
  input: "Variable_6/Adam"
  input: "Variable_6/Adam_1"
  input: "Variable_7"
  input: "Variable_7/Adam"
  input: "Variable_7/Adam_1"
  input: "Variable_8"
  input: "Variable_8/Adam"
  input: "Variable_8/Adam_1"
  input: "Variable_9"
  input: "Variable_9/Adam"
  input: "Variable_9/Adam_1"
  input: "beta1_power"
  input: "beta1_power_1"
  input: "beta1_power_2"
  input: "beta1_power_3"
  input: "beta1_power_4"
  input: "beta2_power"
  input: "beta2_power_1"
  input: "beta2_power_2"
  input: "beta2_power_3"
  input: "beta2_power_4"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_4/control_dependency"
  op: "Identity"
  input: "save_4/Const"
  input: "^save_4/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save_4/Const"
      }
    }
  }
}
node {
  name: "save_4/RestoreV2/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 70
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_16"
        string_val: "Variable_16/Adam"
        string_val: "Variable_16/Adam_1"
        string_val: "Variable_17"
        string_val: "Variable_17/Adam"
        string_val: "Variable_17/Adam_1"
        string_val: "Variable_18"
        string_val: "Variable_18/Adam"
        string_val: "Variable_18/Adam_1"
        string_val: "Variable_19"
        string_val: "Variable_19/Adam"
        string_val: "Variable_19/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta1_power_3"
        string_val: "beta1_power_4"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
        string_val: "beta2_power_3"
        string_val: "beta2_power_4"
      }
    }
  }
}
node {
  name: "save_4/RestoreV2/shape_and_slices"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 70
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_4/RestoreV2"
  op: "RestoreV2"
  input: "save_4/Const"
  input: "save_4/RestoreV2/tensor_names"
  input: "save_4/RestoreV2/shape_and_slices"
  device: "/device:CPU:0"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_4/Assign"
  op: "Assign"
  input: "Variable"
  input: "save_4/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_1"
  op: "Assign"
  input: "Variable/Adam"
  input: "save_4/RestoreV2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_2"
  op: "Assign"
  input: "Variable/Adam_1"
  input: "save_4/RestoreV2:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_3"
  op: "Assign"
  input: "Variable_1"
  input: "save_4/RestoreV2:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_4"
  op: "Assign"
  input: "Variable_1/Adam"
  input: "save_4/RestoreV2:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_5"
  op: "Assign"
  input: "Variable_1/Adam_1"
  input: "save_4/RestoreV2:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_6"
  op: "Assign"
  input: "Variable_10"
  input: "save_4/RestoreV2:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_7"
  op: "Assign"
  input: "Variable_10/Adam"
  input: "save_4/RestoreV2:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_8"
  op: "Assign"
  input: "Variable_10/Adam_1"
  input: "save_4/RestoreV2:8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_9"
  op: "Assign"
  input: "Variable_11"
  input: "save_4/RestoreV2:9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_10"
  op: "Assign"
  input: "Variable_11/Adam"
  input: "save_4/RestoreV2:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_11"
  op: "Assign"
  input: "Variable_11/Adam_1"
  input: "save_4/RestoreV2:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_12"
  op: "Assign"
  input: "Variable_12"
  input: "save_4/RestoreV2:12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_13"
  op: "Assign"
  input: "Variable_12/Adam"
  input: "save_4/RestoreV2:13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_14"
  op: "Assign"
  input: "Variable_12/Adam_1"
  input: "save_4/RestoreV2:14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_15"
  op: "Assign"
  input: "Variable_13"
  input: "save_4/RestoreV2:15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_16"
  op: "Assign"
  input: "Variable_13/Adam"
  input: "save_4/RestoreV2:16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_17"
  op: "Assign"
  input: "Variable_13/Adam_1"
  input: "save_4/RestoreV2:17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_18"
  op: "Assign"
  input: "Variable_14"
  input: "save_4/RestoreV2:18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_19"
  op: "Assign"
  input: "Variable_14/Adam"
  input: "save_4/RestoreV2:19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_20"
  op: "Assign"
  input: "Variable_14/Adam_1"
  input: "save_4/RestoreV2:20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_21"
  op: "Assign"
  input: "Variable_15"
  input: "save_4/RestoreV2:21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_22"
  op: "Assign"
  input: "Variable_15/Adam"
  input: "save_4/RestoreV2:22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_23"
  op: "Assign"
  input: "Variable_15/Adam_1"
  input: "save_4/RestoreV2:23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_24"
  op: "Assign"
  input: "Variable_16"
  input: "save_4/RestoreV2:24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_25"
  op: "Assign"
  input: "Variable_16/Adam"
  input: "save_4/RestoreV2:25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_26"
  op: "Assign"
  input: "Variable_16/Adam_1"
  input: "save_4/RestoreV2:26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_27"
  op: "Assign"
  input: "Variable_17"
  input: "save_4/RestoreV2:27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_28"
  op: "Assign"
  input: "Variable_17/Adam"
  input: "save_4/RestoreV2:28"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_29"
  op: "Assign"
  input: "Variable_17/Adam_1"
  input: "save_4/RestoreV2:29"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_30"
  op: "Assign"
  input: "Variable_18"
  input: "save_4/RestoreV2:30"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_31"
  op: "Assign"
  input: "Variable_18/Adam"
  input: "save_4/RestoreV2:31"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_32"
  op: "Assign"
  input: "Variable_18/Adam_1"
  input: "save_4/RestoreV2:32"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_33"
  op: "Assign"
  input: "Variable_19"
  input: "save_4/RestoreV2:33"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_34"
  op: "Assign"
  input: "Variable_19/Adam"
  input: "save_4/RestoreV2:34"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_35"
  op: "Assign"
  input: "Variable_19/Adam_1"
  input: "save_4/RestoreV2:35"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_36"
  op: "Assign"
  input: "Variable_2"
  input: "save_4/RestoreV2:36"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_37"
  op: "Assign"
  input: "Variable_2/Adam"
  input: "save_4/RestoreV2:37"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_38"
  op: "Assign"
  input: "Variable_2/Adam_1"
  input: "save_4/RestoreV2:38"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_39"
  op: "Assign"
  input: "Variable_3"
  input: "save_4/RestoreV2:39"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_40"
  op: "Assign"
  input: "Variable_3/Adam"
  input: "save_4/RestoreV2:40"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_41"
  op: "Assign"
  input: "Variable_3/Adam_1"
  input: "save_4/RestoreV2:41"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_42"
  op: "Assign"
  input: "Variable_4"
  input: "save_4/RestoreV2:42"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_43"
  op: "Assign"
  input: "Variable_4/Adam"
  input: "save_4/RestoreV2:43"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_44"
  op: "Assign"
  input: "Variable_4/Adam_1"
  input: "save_4/RestoreV2:44"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_45"
  op: "Assign"
  input: "Variable_5"
  input: "save_4/RestoreV2:45"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_46"
  op: "Assign"
  input: "Variable_5/Adam"
  input: "save_4/RestoreV2:46"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_47"
  op: "Assign"
  input: "Variable_5/Adam_1"
  input: "save_4/RestoreV2:47"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_48"
  op: "Assign"
  input: "Variable_6"
  input: "save_4/RestoreV2:48"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_49"
  op: "Assign"
  input: "Variable_6/Adam"
  input: "save_4/RestoreV2:49"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_50"
  op: "Assign"
  input: "Variable_6/Adam_1"
  input: "save_4/RestoreV2:50"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_51"
  op: "Assign"
  input: "Variable_7"
  input: "save_4/RestoreV2:51"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_52"
  op: "Assign"
  input: "Variable_7/Adam"
  input: "save_4/RestoreV2:52"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_53"
  op: "Assign"
  input: "Variable_7/Adam_1"
  input: "save_4/RestoreV2:53"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_54"
  op: "Assign"
  input: "Variable_8"
  input: "save_4/RestoreV2:54"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_55"
  op: "Assign"
  input: "Variable_8/Adam"
  input: "save_4/RestoreV2:55"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_56"
  op: "Assign"
  input: "Variable_8/Adam_1"
  input: "save_4/RestoreV2:56"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_57"
  op: "Assign"
  input: "Variable_9"
  input: "save_4/RestoreV2:57"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_58"
  op: "Assign"
  input: "Variable_9/Adam"
  input: "save_4/RestoreV2:58"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_59"
  op: "Assign"
  input: "Variable_9/Adam_1"
  input: "save_4/RestoreV2:59"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_60"
  op: "Assign"
  input: "beta1_power"
  input: "save_4/RestoreV2:60"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_61"
  op: "Assign"
  input: "beta1_power_1"
  input: "save_4/RestoreV2:61"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_62"
  op: "Assign"
  input: "beta1_power_2"
  input: "save_4/RestoreV2:62"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_63"
  op: "Assign"
  input: "beta1_power_3"
  input: "save_4/RestoreV2:63"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_64"
  op: "Assign"
  input: "beta1_power_4"
  input: "save_4/RestoreV2:64"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_65"
  op: "Assign"
  input: "beta2_power"
  input: "save_4/RestoreV2:65"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_66"
  op: "Assign"
  input: "beta2_power_1"
  input: "save_4/RestoreV2:66"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_67"
  op: "Assign"
  input: "beta2_power_2"
  input: "save_4/RestoreV2:67"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_68"
  op: "Assign"
  input: "beta2_power_3"
  input: "save_4/RestoreV2:68"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/Assign_69"
  op: "Assign"
  input: "beta2_power_4"
  input: "save_4/RestoreV2:69"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_4/restore_all"
  op: "NoOp"
  input: "^save_4/Assign"
  input: "^save_4/Assign_1"
  input: "^save_4/Assign_10"
  input: "^save_4/Assign_11"
  input: "^save_4/Assign_12"
  input: "^save_4/Assign_13"
  input: "^save_4/Assign_14"
  input: "^save_4/Assign_15"
  input: "^save_4/Assign_16"
  input: "^save_4/Assign_17"
  input: "^save_4/Assign_18"
  input: "^save_4/Assign_19"
  input: "^save_4/Assign_2"
  input: "^save_4/Assign_20"
  input: "^save_4/Assign_21"
  input: "^save_4/Assign_22"
  input: "^save_4/Assign_23"
  input: "^save_4/Assign_24"
  input: "^save_4/Assign_25"
  input: "^save_4/Assign_26"
  input: "^save_4/Assign_27"
  input: "^save_4/Assign_28"
  input: "^save_4/Assign_29"
  input: "^save_4/Assign_3"
  input: "^save_4/Assign_30"
  input: "^save_4/Assign_31"
  input: "^save_4/Assign_32"
  input: "^save_4/Assign_33"
  input: "^save_4/Assign_34"
  input: "^save_4/Assign_35"
  input: "^save_4/Assign_36"
  input: "^save_4/Assign_37"
  input: "^save_4/Assign_38"
  input: "^save_4/Assign_39"
  input: "^save_4/Assign_4"
  input: "^save_4/Assign_40"
  input: "^save_4/Assign_41"
  input: "^save_4/Assign_42"
  input: "^save_4/Assign_43"
  input: "^save_4/Assign_44"
  input: "^save_4/Assign_45"
  input: "^save_4/Assign_46"
  input: "^save_4/Assign_47"
  input: "^save_4/Assign_48"
  input: "^save_4/Assign_49"
  input: "^save_4/Assign_5"
  input: "^save_4/Assign_50"
  input: "^save_4/Assign_51"
  input: "^save_4/Assign_52"
  input: "^save_4/Assign_53"
  input: "^save_4/Assign_54"
  input: "^save_4/Assign_55"
  input: "^save_4/Assign_56"
  input: "^save_4/Assign_57"
  input: "^save_4/Assign_58"
  input: "^save_4/Assign_59"
  input: "^save_4/Assign_6"
  input: "^save_4/Assign_60"
  input: "^save_4/Assign_61"
  input: "^save_4/Assign_62"
  input: "^save_4/Assign_63"
  input: "^save_4/Assign_64"
  input: "^save_4/Assign_65"
  input: "^save_4/Assign_66"
  input: "^save_4/Assign_67"
  input: "^save_4/Assign_68"
  input: "^save_4/Assign_69"
  input: "^save_4/Assign_7"
  input: "^save_4/Assign_8"
  input: "^save_4/Assign_9"
}
node {
  name: "init_4"
  op: "NoOp"
  input: "^Variable/Adam/Assign"
  input: "^Variable/Adam_1/Assign"
  input: "^Variable/Assign"
  input: "^Variable_1/Adam/Assign"
  input: "^Variable_1/Adam_1/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_10/Adam/Assign"
  input: "^Variable_10/Adam_1/Assign"
  input: "^Variable_10/Assign"
  input: "^Variable_11/Adam/Assign"
  input: "^Variable_11/Adam_1/Assign"
  input: "^Variable_11/Assign"
  input: "^Variable_12/Adam/Assign"
  input: "^Variable_12/Adam_1/Assign"
  input: "^Variable_12/Assign"
  input: "^Variable_13/Adam/Assign"
  input: "^Variable_13/Adam_1/Assign"
  input: "^Variable_13/Assign"
  input: "^Variable_14/Adam/Assign"
  input: "^Variable_14/Adam_1/Assign"
  input: "^Variable_14/Assign"
  input: "^Variable_15/Adam/Assign"
  input: "^Variable_15/Adam_1/Assign"
  input: "^Variable_15/Assign"
  input: "^Variable_16/Adam/Assign"
  input: "^Variable_16/Adam_1/Assign"
  input: "^Variable_16/Assign"
  input: "^Variable_17/Adam/Assign"
  input: "^Variable_17/Adam_1/Assign"
  input: "^Variable_17/Assign"
  input: "^Variable_18/Adam/Assign"
  input: "^Variable_18/Adam_1/Assign"
  input: "^Variable_18/Assign"
  input: "^Variable_19/Adam/Assign"
  input: "^Variable_19/Adam_1/Assign"
  input: "^Variable_19/Assign"
  input: "^Variable_2/Adam/Assign"
  input: "^Variable_2/Adam_1/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_3/Adam/Assign"
  input: "^Variable_3/Adam_1/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_4/Adam/Assign"
  input: "^Variable_4/Adam_1/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Adam/Assign"
  input: "^Variable_5/Adam_1/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Adam/Assign"
  input: "^Variable_6/Adam_1/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Adam/Assign"
  input: "^Variable_7/Adam_1/Assign"
  input: "^Variable_7/Assign"
  input: "^Variable_8/Adam/Assign"
  input: "^Variable_8/Adam_1/Assign"
  input: "^Variable_8/Assign"
  input: "^Variable_9/Adam/Assign"
  input: "^Variable_9/Adam_1/Assign"
  input: "^Variable_9/Assign"
  input: "^beta1_power/Assign"
  input: "^beta1_power_1/Assign"
  input: "^beta1_power_2/Assign"
  input: "^beta1_power_3/Assign"
  input: "^beta1_power_4/Assign"
  input: "^beta2_power/Assign"
  input: "^beta2_power_1/Assign"
  input: "^beta2_power_2/Assign"
  input: "^beta2_power_3/Assign"
  input: "^beta2_power_4/Assign"
}
node {
  name: "ArgMax_8/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_8"
  op: "ArgMax"
  input: "softmax_4"
  input: "ArgMax_8/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "ArgMax_9/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_9"
  op: "ArgMax"
  input: "Placeholder_9"
  input: "ArgMax_9/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Equal_4"
  op: "Equal"
  input: "ArgMax_8"
  input: "ArgMax_9"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Cast_4"
  op: "Cast"
  input: "Equal_4"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "Const_9"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_9"
  op: "Mean"
  input: "Cast_4"
  input: "Const_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "mul_13/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_13"
  op: "Mul"
  input: "Mean_9"
  input: "mul_13/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_14/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_14"
  op: "Mul"
  input: "Mean_9"
  input: "mul_14/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Placeholder_10"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 784
        }
      }
    }
  }
}
node {
  name: "Placeholder_11"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 10
        }
      }
    }
  }
}
node {
  name: "random_normal_20/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_20/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_20/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_20/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_20/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_20/mul"
  op: "Mul"
  input: "random_normal_20/RandomStandardNormal"
  input: "random_normal_20/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_20"
  op: "Add"
  input: "random_normal_20/mul"
  input: "random_normal_20/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_20"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_20/Assign"
  op: "Assign"
  input: "Variable_20"
  input: "random_normal_20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_20/read"
  op: "Identity"
  input: "Variable_20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
}
node {
  name: "random_normal_21/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "random_normal_21/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_21/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_21/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_21/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_21/mul"
  op: "Mul"
  input: "random_normal_21/RandomStandardNormal"
  input: "random_normal_21/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_21"
  op: "Add"
  input: "random_normal_21/mul"
  input: "random_normal_21/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_21"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_21/Assign"
  op: "Assign"
  input: "Variable_21"
  input: "random_normal_21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_21/read"
  op: "Identity"
  input: "Variable_21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
}
node {
  name: "MatMul_15"
  op: "MatMul"
  input: "Placeholder_10"
  input: "Variable_20/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_15"
  op: "Add"
  input: "MatMul_15"
  input: "Variable_21/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_10"
  op: "Sigmoid"
  input: "add_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_22/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_22/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_22/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_22/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_22/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_22/mul"
  op: "Mul"
  input: "random_normal_22/RandomStandardNormal"
  input: "random_normal_22/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_22"
  op: "Add"
  input: "random_normal_22/mul"
  input: "random_normal_22/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_22"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_22/Assign"
  op: "Assign"
  input: "Variable_22"
  input: "random_normal_22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_22/read"
  op: "Identity"
  input: "Variable_22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
}
node {
  name: "random_normal_23/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "random_normal_23/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_23/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_23/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_23/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_23/mul"
  op: "Mul"
  input: "random_normal_23/RandomStandardNormal"
  input: "random_normal_23/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_23"
  op: "Add"
  input: "random_normal_23/mul"
  input: "random_normal_23/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_23"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_23/Assign"
  op: "Assign"
  input: "Variable_23"
  input: "random_normal_23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_23/read"
  op: "Identity"
  input: "Variable_23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
}
node {
  name: "MatMul_16"
  op: "MatMul"
  input: "Sigmoid_10"
  input: "Variable_22/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_16"
  op: "Add"
  input: "MatMul_16"
  input: "Variable_23/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_11"
  op: "Sigmoid"
  input: "add_16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_17"
  op: "MatMul"
  input: "Sigmoid_10"
  input: "Variable_22/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_17"
  op: "Add"
  input: "MatMul_17"
  input: "Variable_23/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "softmax_5"
  op: "Softmax"
  input: "add_17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Log_5"
  op: "Log"
  input: "softmax_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_15"
  op: "Mul"
  input: "Placeholder_11"
  input: "Log_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sum_5/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sum_5"
  op: "Sum"
  input: "mul_15"
  input: "Sum_5/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Neg_5"
  op: "Neg"
  input: "Sum_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_10"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_10"
  op: "Mean"
  input: "Neg_5"
  input: "Const_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_5/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_5/Fill"
  op: "Fill"
  input: "gradients_5/Shape"
  input: "gradients_5/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Reshape"
  op: "Reshape"
  input: "gradients_5/Fill"
  input: "gradients_5/Mean_10_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Shape"
  op: "Shape"
  input: "Neg_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Tile"
  op: "Tile"
  input: "gradients_5/Mean_10_grad/Reshape"
  input: "gradients_5/Mean_10_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Shape_1"
  op: "Shape"
  input: "Neg_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Shape_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Prod"
  op: "Prod"
  input: "gradients_5/Mean_10_grad/Shape_1"
  input: "gradients_5/Mean_10_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Prod_1"
  op: "Prod"
  input: "gradients_5/Mean_10_grad/Shape_2"
  input: "gradients_5/Mean_10_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Maximum"
  op: "Maximum"
  input: "gradients_5/Mean_10_grad/Prod_1"
  input: "gradients_5/Mean_10_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_5/Mean_10_grad/Prod"
  input: "gradients_5/Mean_10_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/Cast"
  op: "Cast"
  input: "gradients_5/Mean_10_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/Mean_10_grad/truediv"
  op: "RealDiv"
  input: "gradients_5/Mean_10_grad/Tile"
  input: "gradients_5/Mean_10_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/Neg_5_grad/Neg"
  op: "Neg"
  input: "gradients_5/Mean_10_grad/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/Shape"
  op: "Shape"
  input: "mul_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/add"
  op: "Add"
  input: "Sum_5/reduction_indices"
  input: "gradients_5/Sum_5_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/mod"
  op: "FloorMod"
  input: "gradients_5/Sum_5_grad/add"
  input: "gradients_5/Sum_5_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/range"
  op: "Range"
  input: "gradients_5/Sum_5_grad/range/start"
  input: "gradients_5/Sum_5_grad/Size"
  input: "gradients_5/Sum_5_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/Fill"
  op: "Fill"
  input: "gradients_5/Sum_5_grad/Shape_1"
  input: "gradients_5/Sum_5_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "gradients_5/Sum_5_grad/range"
  input: "gradients_5/Sum_5_grad/mod"
  input: "gradients_5/Sum_5_grad/Shape"
  input: "gradients_5/Sum_5_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/Maximum"
  op: "Maximum"
  input: "gradients_5/Sum_5_grad/DynamicStitch"
  input: "gradients_5/Sum_5_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_5/Sum_5_grad/Shape"
  input: "gradients_5/Sum_5_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Sum_5_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/Reshape"
  op: "Reshape"
  input: "gradients_5/Neg_5_grad/Neg"
  input: "gradients_5/Sum_5_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Sum_5_grad/Tile"
  op: "Tile"
  input: "gradients_5/Sum_5_grad/Reshape"
  input: "gradients_5/Sum_5_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/mul_15_grad/Shape"
  op: "Shape"
  input: "Placeholder_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/mul_15_grad/Shape_1"
  op: "Shape"
  input: "Log_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/mul_15_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_5/mul_15_grad/Shape"
  input: "gradients_5/mul_15_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/mul_15_grad/Mul"
  op: "Mul"
  input: "gradients_5/Sum_5_grad/Tile"
  input: "Log_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/mul_15_grad/Sum"
  op: "Sum"
  input: "gradients_5/mul_15_grad/Mul"
  input: "gradients_5/mul_15_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/mul_15_grad/Reshape"
  op: "Reshape"
  input: "gradients_5/mul_15_grad/Sum"
  input: "gradients_5/mul_15_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/mul_15_grad/Mul_1"
  op: "Mul"
  input: "Placeholder_11"
  input: "gradients_5/Sum_5_grad/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/mul_15_grad/Sum_1"
  op: "Sum"
  input: "gradients_5/mul_15_grad/Mul_1"
  input: "gradients_5/mul_15_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/mul_15_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_5/mul_15_grad/Sum_1"
  input: "gradients_5/mul_15_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/mul_15_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_5/mul_15_grad/Reshape"
  input: "^gradients_5/mul_15_grad/Reshape_1"
}
node {
  name: "gradients_5/mul_15_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_5/mul_15_grad/Reshape"
  input: "^gradients_5/mul_15_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/mul_15_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_5/mul_15_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_5/mul_15_grad/Reshape_1"
  input: "^gradients_5/mul_15_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/mul_15_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_5/Log_5_grad/Reciprocal"
  op: "Reciprocal"
  input: "softmax_5"
  input: "^gradients_5/mul_15_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/Log_5_grad/mul"
  op: "Mul"
  input: "gradients_5/mul_15_grad/tuple/control_dependency_1"
  input: "gradients_5/Log_5_grad/Reciprocal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/softmax_5_grad/mul"
  op: "Mul"
  input: "gradients_5/Log_5_grad/mul"
  input: "softmax_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/softmax_5_grad/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients_5/softmax_5_grad/Sum"
  op: "Sum"
  input: "gradients_5/softmax_5_grad/mul"
  input: "gradients_5/softmax_5_grad/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_5/softmax_5_grad/sub"
  op: "Sub"
  input: "gradients_5/Log_5_grad/mul"
  input: "gradients_5/softmax_5_grad/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/softmax_5_grad/mul_1"
  op: "Mul"
  input: "gradients_5/softmax_5_grad/sub"
  input: "softmax_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/add_17_grad/Shape"
  op: "Shape"
  input: "MatMul_17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/add_17_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "gradients_5/add_17_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_5/add_17_grad/Shape"
  input: "gradients_5/add_17_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/add_17_grad/Sum"
  op: "Sum"
  input: "gradients_5/softmax_5_grad/mul_1"
  input: "gradients_5/add_17_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/add_17_grad/Reshape"
  op: "Reshape"
  input: "gradients_5/add_17_grad/Sum"
  input: "gradients_5/add_17_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/add_17_grad/Sum_1"
  op: "Sum"
  input: "gradients_5/softmax_5_grad/mul_1"
  input: "gradients_5/add_17_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/add_17_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_5/add_17_grad/Sum_1"
  input: "gradients_5/add_17_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/add_17_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_5/add_17_grad/Reshape"
  input: "^gradients_5/add_17_grad/Reshape_1"
}
node {
  name: "gradients_5/add_17_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_5/add_17_grad/Reshape"
  input: "^gradients_5/add_17_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/add_17_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_5/add_17_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_5/add_17_grad/Reshape_1"
  input: "^gradients_5/add_17_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/add_17_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_5/MatMul_17_grad/MatMul"
  op: "MatMul"
  input: "gradients_5/add_17_grad/tuple/control_dependency"
  input: "Variable_22/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_5/MatMul_17_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_10"
  input: "gradients_5/add_17_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/MatMul_17_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_5/MatMul_17_grad/MatMul"
  input: "^gradients_5/MatMul_17_grad/MatMul_1"
}
node {
  name: "gradients_5/MatMul_17_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_5/MatMul_17_grad/MatMul"
  input: "^gradients_5/MatMul_17_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/MatMul_17_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_5/MatMul_17_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_5/MatMul_17_grad/MatMul_1"
  input: "^gradients_5/MatMul_17_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/MatMul_17_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_5/Sigmoid_10_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_10"
  input: "gradients_5/MatMul_17_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/add_15_grad/Shape"
  op: "Shape"
  input: "MatMul_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/add_15_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "gradients_5/add_15_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_5/add_15_grad/Shape"
  input: "gradients_5/add_15_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/add_15_grad/Sum"
  op: "Sum"
  input: "gradients_5/Sigmoid_10_grad/SigmoidGrad"
  input: "gradients_5/add_15_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/add_15_grad/Reshape"
  op: "Reshape"
  input: "gradients_5/add_15_grad/Sum"
  input: "gradients_5/add_15_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/add_15_grad/Sum_1"
  op: "Sum"
  input: "gradients_5/Sigmoid_10_grad/SigmoidGrad"
  input: "gradients_5/add_15_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/add_15_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_5/add_15_grad/Sum_1"
  input: "gradients_5/add_15_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/add_15_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_5/add_15_grad/Reshape"
  input: "^gradients_5/add_15_grad/Reshape_1"
}
node {
  name: "gradients_5/add_15_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_5/add_15_grad/Reshape"
  input: "^gradients_5/add_15_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/add_15_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_5/add_15_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_5/add_15_grad/Reshape_1"
  input: "^gradients_5/add_15_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/add_15_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_5/MatMul_15_grad/MatMul"
  op: "MatMul"
  input: "gradients_5/add_15_grad/tuple/control_dependency"
  input: "Variable_20/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_5/MatMul_15_grad/MatMul_1"
  op: "MatMul"
  input: "Placeholder_10"
  input: "gradients_5/add_15_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/MatMul_15_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_5/MatMul_15_grad/MatMul"
  input: "^gradients_5/MatMul_15_grad/MatMul_1"
}
node {
  name: "gradients_5/MatMul_15_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_5/MatMul_15_grad/MatMul"
  input: "^gradients_5/MatMul_15_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/MatMul_15_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_5/MatMul_15_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_5/MatMul_15_grad/MatMul_1"
  input: "^gradients_5/MatMul_15_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/MatMul_15_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "beta1_power_5/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "beta1_power_5"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta1_power_5/Assign"
  op: "Assign"
  input: "beta1_power_5"
  input: "beta1_power_5/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta1_power_5/read"
  op: "Identity"
  input: "beta1_power_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
}
node {
  name: "beta2_power_5/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "beta2_power_5"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta2_power_5/Assign"
  op: "Assign"
  input: "beta2_power_5"
  input: "beta2_power_5/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta2_power_5/read"
  op: "Identity"
  input: "beta2_power_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
}
node {
  name: "Variable_20/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_20/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_20/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_20/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_20/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_20/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_20/Adam/Assign"
  op: "Assign"
  input: "Variable_20/Adam"
  input: "Variable_20/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_20/Adam/read"
  op: "Identity"
  input: "Variable_20/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
}
node {
  name: "Variable_20/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_20/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_20/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_20/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_20/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_20/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_20/Adam_1/Assign"
  op: "Assign"
  input: "Variable_20/Adam_1"
  input: "Variable_20/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_20/Adam_1/read"
  op: "Identity"
  input: "Variable_20/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
}
node {
  name: "Variable_21/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_21/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_21/Adam/Assign"
  op: "Assign"
  input: "Variable_21/Adam"
  input: "Variable_21/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_21/Adam/read"
  op: "Identity"
  input: "Variable_21/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
}
node {
  name: "Variable_21/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_21/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_21/Adam_1/Assign"
  op: "Assign"
  input: "Variable_21/Adam_1"
  input: "Variable_21/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_21/Adam_1/read"
  op: "Identity"
  input: "Variable_21/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
}
node {
  name: "Variable_22/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_22/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_22/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_22/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_22/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_22/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_22/Adam/Assign"
  op: "Assign"
  input: "Variable_22/Adam"
  input: "Variable_22/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_22/Adam/read"
  op: "Identity"
  input: "Variable_22/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
}
node {
  name: "Variable_22/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_22/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_22/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_22/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_22/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_22/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_22/Adam_1/Assign"
  op: "Assign"
  input: "Variable_22/Adam_1"
  input: "Variable_22/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_22/Adam_1/read"
  op: "Identity"
  input: "Variable_22/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
}
node {
  name: "Variable_23/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_23/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_23/Adam/Assign"
  op: "Assign"
  input: "Variable_23/Adam"
  input: "Variable_23/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_23/Adam/read"
  op: "Identity"
  input: "Variable_23/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
}
node {
  name: "Variable_23/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_23/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_23/Adam_1/Assign"
  op: "Assign"
  input: "Variable_23/Adam_1"
  input: "Variable_23/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_23/Adam_1/read"
  op: "Identity"
  input: "Variable_23/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
}
node {
  name: "Adam_5/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Adam_5/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam_5/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam_5/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "Adam_5/update_Variable_20/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_20"
  input: "Variable_20/Adam"
  input: "Variable_20/Adam_1"
  input: "beta1_power_5/read"
  input: "beta2_power_5/read"
  input: "Adam_5/learning_rate"
  input: "Adam_5/beta1"
  input: "Adam_5/beta2"
  input: "Adam_5/epsilon"
  input: "gradients_5/MatMul_15_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_5/update_Variable_21/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_21"
  input: "Variable_21/Adam"
  input: "Variable_21/Adam_1"
  input: "beta1_power_5/read"
  input: "beta2_power_5/read"
  input: "Adam_5/learning_rate"
  input: "Adam_5/beta1"
  input: "Adam_5/beta2"
  input: "Adam_5/epsilon"
  input: "gradients_5/add_15_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_5/update_Variable_22/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_22"
  input: "Variable_22/Adam"
  input: "Variable_22/Adam_1"
  input: "beta1_power_5/read"
  input: "beta2_power_5/read"
  input: "Adam_5/learning_rate"
  input: "Adam_5/beta1"
  input: "Adam_5/beta2"
  input: "Adam_5/epsilon"
  input: "gradients_5/MatMul_17_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_5/update_Variable_23/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_23"
  input: "Variable_23/Adam"
  input: "Variable_23/Adam_1"
  input: "beta1_power_5/read"
  input: "beta2_power_5/read"
  input: "Adam_5/learning_rate"
  input: "Adam_5/beta1"
  input: "Adam_5/beta2"
  input: "Adam_5/epsilon"
  input: "gradients_5/add_17_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_5/mul"
  op: "Mul"
  input: "beta1_power_5/read"
  input: "Adam_5/beta1"
  input: "^Adam_5/update_Variable_20/ApplyAdam"
  input: "^Adam_5/update_Variable_21/ApplyAdam"
  input: "^Adam_5/update_Variable_22/ApplyAdam"
  input: "^Adam_5/update_Variable_23/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
}
node {
  name: "Adam_5/Assign"
  op: "Assign"
  input: "beta1_power_5"
  input: "Adam_5/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_5/mul_1"
  op: "Mul"
  input: "beta2_power_5/read"
  input: "Adam_5/beta2"
  input: "^Adam_5/update_Variable_20/ApplyAdam"
  input: "^Adam_5/update_Variable_21/ApplyAdam"
  input: "^Adam_5/update_Variable_22/ApplyAdam"
  input: "^Adam_5/update_Variable_23/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
}
node {
  name: "Adam_5/Assign_1"
  op: "Assign"
  input: "beta2_power_5"
  input: "Adam_5/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_5"
  op: "NoOp"
  input: "^Adam_5/Assign"
  input: "^Adam_5/Assign_1"
  input: "^Adam_5/update_Variable_20/ApplyAdam"
  input: "^Adam_5/update_Variable_21/ApplyAdam"
  input: "^Adam_5/update_Variable_22/ApplyAdam"
  input: "^Adam_5/update_Variable_23/ApplyAdam"
}
node {
  name: "save_5/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save_5/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 84
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_16"
        string_val: "Variable_16/Adam"
        string_val: "Variable_16/Adam_1"
        string_val: "Variable_17"
        string_val: "Variable_17/Adam"
        string_val: "Variable_17/Adam_1"
        string_val: "Variable_18"
        string_val: "Variable_18/Adam"
        string_val: "Variable_18/Adam_1"
        string_val: "Variable_19"
        string_val: "Variable_19/Adam"
        string_val: "Variable_19/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_20"
        string_val: "Variable_20/Adam"
        string_val: "Variable_20/Adam_1"
        string_val: "Variable_21"
        string_val: "Variable_21/Adam"
        string_val: "Variable_21/Adam_1"
        string_val: "Variable_22"
        string_val: "Variable_22/Adam"
        string_val: "Variable_22/Adam_1"
        string_val: "Variable_23"
        string_val: "Variable_23/Adam"
        string_val: "Variable_23/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta1_power_3"
        string_val: "beta1_power_4"
        string_val: "beta1_power_5"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
        string_val: "beta2_power_3"
        string_val: "beta2_power_4"
        string_val: "beta2_power_5"
      }
    }
  }
}
node {
  name: "save_5/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 84
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_5/SaveV2"
  op: "SaveV2"
  input: "save_5/Const"
  input: "save_5/SaveV2/tensor_names"
  input: "save_5/SaveV2/shape_and_slices"
  input: "Variable"
  input: "Variable/Adam"
  input: "Variable/Adam_1"
  input: "Variable_1"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam_1"
  input: "Variable_10"
  input: "Variable_10/Adam"
  input: "Variable_10/Adam_1"
  input: "Variable_11"
  input: "Variable_11/Adam"
  input: "Variable_11/Adam_1"
  input: "Variable_12"
  input: "Variable_12/Adam"
  input: "Variable_12/Adam_1"
  input: "Variable_13"
  input: "Variable_13/Adam"
  input: "Variable_13/Adam_1"
  input: "Variable_14"
  input: "Variable_14/Adam"
  input: "Variable_14/Adam_1"
  input: "Variable_15"
  input: "Variable_15/Adam"
  input: "Variable_15/Adam_1"
  input: "Variable_16"
  input: "Variable_16/Adam"
  input: "Variable_16/Adam_1"
  input: "Variable_17"
  input: "Variable_17/Adam"
  input: "Variable_17/Adam_1"
  input: "Variable_18"
  input: "Variable_18/Adam"
  input: "Variable_18/Adam_1"
  input: "Variable_19"
  input: "Variable_19/Adam"
  input: "Variable_19/Adam_1"
  input: "Variable_2"
  input: "Variable_2/Adam"
  input: "Variable_2/Adam_1"
  input: "Variable_20"
  input: "Variable_20/Adam"
  input: "Variable_20/Adam_1"
  input: "Variable_21"
  input: "Variable_21/Adam"
  input: "Variable_21/Adam_1"
  input: "Variable_22"
  input: "Variable_22/Adam"
  input: "Variable_22/Adam_1"
  input: "Variable_23"
  input: "Variable_23/Adam"
  input: "Variable_23/Adam_1"
  input: "Variable_3"
  input: "Variable_3/Adam"
  input: "Variable_3/Adam_1"
  input: "Variable_4"
  input: "Variable_4/Adam"
  input: "Variable_4/Adam_1"
  input: "Variable_5"
  input: "Variable_5/Adam"
  input: "Variable_5/Adam_1"
  input: "Variable_6"
  input: "Variable_6/Adam"
  input: "Variable_6/Adam_1"
  input: "Variable_7"
  input: "Variable_7/Adam"
  input: "Variable_7/Adam_1"
  input: "Variable_8"
  input: "Variable_8/Adam"
  input: "Variable_8/Adam_1"
  input: "Variable_9"
  input: "Variable_9/Adam"
  input: "Variable_9/Adam_1"
  input: "beta1_power"
  input: "beta1_power_1"
  input: "beta1_power_2"
  input: "beta1_power_3"
  input: "beta1_power_4"
  input: "beta1_power_5"
  input: "beta2_power"
  input: "beta2_power_1"
  input: "beta2_power_2"
  input: "beta2_power_3"
  input: "beta2_power_4"
  input: "beta2_power_5"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_5/control_dependency"
  op: "Identity"
  input: "save_5/Const"
  input: "^save_5/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save_5/Const"
      }
    }
  }
}
node {
  name: "save_5/RestoreV2/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 84
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_16"
        string_val: "Variable_16/Adam"
        string_val: "Variable_16/Adam_1"
        string_val: "Variable_17"
        string_val: "Variable_17/Adam"
        string_val: "Variable_17/Adam_1"
        string_val: "Variable_18"
        string_val: "Variable_18/Adam"
        string_val: "Variable_18/Adam_1"
        string_val: "Variable_19"
        string_val: "Variable_19/Adam"
        string_val: "Variable_19/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_20"
        string_val: "Variable_20/Adam"
        string_val: "Variable_20/Adam_1"
        string_val: "Variable_21"
        string_val: "Variable_21/Adam"
        string_val: "Variable_21/Adam_1"
        string_val: "Variable_22"
        string_val: "Variable_22/Adam"
        string_val: "Variable_22/Adam_1"
        string_val: "Variable_23"
        string_val: "Variable_23/Adam"
        string_val: "Variable_23/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta1_power_3"
        string_val: "beta1_power_4"
        string_val: "beta1_power_5"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
        string_val: "beta2_power_3"
        string_val: "beta2_power_4"
        string_val: "beta2_power_5"
      }
    }
  }
}
node {
  name: "save_5/RestoreV2/shape_and_slices"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 84
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_5/RestoreV2"
  op: "RestoreV2"
  input: "save_5/Const"
  input: "save_5/RestoreV2/tensor_names"
  input: "save_5/RestoreV2/shape_and_slices"
  device: "/device:CPU:0"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_5/Assign"
  op: "Assign"
  input: "Variable"
  input: "save_5/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_1"
  op: "Assign"
  input: "Variable/Adam"
  input: "save_5/RestoreV2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_2"
  op: "Assign"
  input: "Variable/Adam_1"
  input: "save_5/RestoreV2:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_3"
  op: "Assign"
  input: "Variable_1"
  input: "save_5/RestoreV2:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_4"
  op: "Assign"
  input: "Variable_1/Adam"
  input: "save_5/RestoreV2:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_5"
  op: "Assign"
  input: "Variable_1/Adam_1"
  input: "save_5/RestoreV2:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_6"
  op: "Assign"
  input: "Variable_10"
  input: "save_5/RestoreV2:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_7"
  op: "Assign"
  input: "Variable_10/Adam"
  input: "save_5/RestoreV2:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_8"
  op: "Assign"
  input: "Variable_10/Adam_1"
  input: "save_5/RestoreV2:8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_9"
  op: "Assign"
  input: "Variable_11"
  input: "save_5/RestoreV2:9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_10"
  op: "Assign"
  input: "Variable_11/Adam"
  input: "save_5/RestoreV2:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_11"
  op: "Assign"
  input: "Variable_11/Adam_1"
  input: "save_5/RestoreV2:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_12"
  op: "Assign"
  input: "Variable_12"
  input: "save_5/RestoreV2:12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_13"
  op: "Assign"
  input: "Variable_12/Adam"
  input: "save_5/RestoreV2:13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_14"
  op: "Assign"
  input: "Variable_12/Adam_1"
  input: "save_5/RestoreV2:14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_15"
  op: "Assign"
  input: "Variable_13"
  input: "save_5/RestoreV2:15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_16"
  op: "Assign"
  input: "Variable_13/Adam"
  input: "save_5/RestoreV2:16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_17"
  op: "Assign"
  input: "Variable_13/Adam_1"
  input: "save_5/RestoreV2:17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_18"
  op: "Assign"
  input: "Variable_14"
  input: "save_5/RestoreV2:18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_19"
  op: "Assign"
  input: "Variable_14/Adam"
  input: "save_5/RestoreV2:19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_20"
  op: "Assign"
  input: "Variable_14/Adam_1"
  input: "save_5/RestoreV2:20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_21"
  op: "Assign"
  input: "Variable_15"
  input: "save_5/RestoreV2:21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_22"
  op: "Assign"
  input: "Variable_15/Adam"
  input: "save_5/RestoreV2:22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_23"
  op: "Assign"
  input: "Variable_15/Adam_1"
  input: "save_5/RestoreV2:23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_24"
  op: "Assign"
  input: "Variable_16"
  input: "save_5/RestoreV2:24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_25"
  op: "Assign"
  input: "Variable_16/Adam"
  input: "save_5/RestoreV2:25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_26"
  op: "Assign"
  input: "Variable_16/Adam_1"
  input: "save_5/RestoreV2:26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_27"
  op: "Assign"
  input: "Variable_17"
  input: "save_5/RestoreV2:27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_28"
  op: "Assign"
  input: "Variable_17/Adam"
  input: "save_5/RestoreV2:28"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_29"
  op: "Assign"
  input: "Variable_17/Adam_1"
  input: "save_5/RestoreV2:29"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_30"
  op: "Assign"
  input: "Variable_18"
  input: "save_5/RestoreV2:30"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_31"
  op: "Assign"
  input: "Variable_18/Adam"
  input: "save_5/RestoreV2:31"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_32"
  op: "Assign"
  input: "Variable_18/Adam_1"
  input: "save_5/RestoreV2:32"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_33"
  op: "Assign"
  input: "Variable_19"
  input: "save_5/RestoreV2:33"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_34"
  op: "Assign"
  input: "Variable_19/Adam"
  input: "save_5/RestoreV2:34"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_35"
  op: "Assign"
  input: "Variable_19/Adam_1"
  input: "save_5/RestoreV2:35"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_36"
  op: "Assign"
  input: "Variable_2"
  input: "save_5/RestoreV2:36"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_37"
  op: "Assign"
  input: "Variable_2/Adam"
  input: "save_5/RestoreV2:37"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_38"
  op: "Assign"
  input: "Variable_2/Adam_1"
  input: "save_5/RestoreV2:38"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_39"
  op: "Assign"
  input: "Variable_20"
  input: "save_5/RestoreV2:39"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_40"
  op: "Assign"
  input: "Variable_20/Adam"
  input: "save_5/RestoreV2:40"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_41"
  op: "Assign"
  input: "Variable_20/Adam_1"
  input: "save_5/RestoreV2:41"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_42"
  op: "Assign"
  input: "Variable_21"
  input: "save_5/RestoreV2:42"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_43"
  op: "Assign"
  input: "Variable_21/Adam"
  input: "save_5/RestoreV2:43"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_44"
  op: "Assign"
  input: "Variable_21/Adam_1"
  input: "save_5/RestoreV2:44"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_45"
  op: "Assign"
  input: "Variable_22"
  input: "save_5/RestoreV2:45"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_46"
  op: "Assign"
  input: "Variable_22/Adam"
  input: "save_5/RestoreV2:46"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_47"
  op: "Assign"
  input: "Variable_22/Adam_1"
  input: "save_5/RestoreV2:47"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_48"
  op: "Assign"
  input: "Variable_23"
  input: "save_5/RestoreV2:48"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_49"
  op: "Assign"
  input: "Variable_23/Adam"
  input: "save_5/RestoreV2:49"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_50"
  op: "Assign"
  input: "Variable_23/Adam_1"
  input: "save_5/RestoreV2:50"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_51"
  op: "Assign"
  input: "Variable_3"
  input: "save_5/RestoreV2:51"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_52"
  op: "Assign"
  input: "Variable_3/Adam"
  input: "save_5/RestoreV2:52"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_53"
  op: "Assign"
  input: "Variable_3/Adam_1"
  input: "save_5/RestoreV2:53"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_54"
  op: "Assign"
  input: "Variable_4"
  input: "save_5/RestoreV2:54"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_55"
  op: "Assign"
  input: "Variable_4/Adam"
  input: "save_5/RestoreV2:55"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_56"
  op: "Assign"
  input: "Variable_4/Adam_1"
  input: "save_5/RestoreV2:56"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_57"
  op: "Assign"
  input: "Variable_5"
  input: "save_5/RestoreV2:57"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_58"
  op: "Assign"
  input: "Variable_5/Adam"
  input: "save_5/RestoreV2:58"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_59"
  op: "Assign"
  input: "Variable_5/Adam_1"
  input: "save_5/RestoreV2:59"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_60"
  op: "Assign"
  input: "Variable_6"
  input: "save_5/RestoreV2:60"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_61"
  op: "Assign"
  input: "Variable_6/Adam"
  input: "save_5/RestoreV2:61"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_62"
  op: "Assign"
  input: "Variable_6/Adam_1"
  input: "save_5/RestoreV2:62"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_63"
  op: "Assign"
  input: "Variable_7"
  input: "save_5/RestoreV2:63"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_64"
  op: "Assign"
  input: "Variable_7/Adam"
  input: "save_5/RestoreV2:64"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_65"
  op: "Assign"
  input: "Variable_7/Adam_1"
  input: "save_5/RestoreV2:65"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_66"
  op: "Assign"
  input: "Variable_8"
  input: "save_5/RestoreV2:66"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_67"
  op: "Assign"
  input: "Variable_8/Adam"
  input: "save_5/RestoreV2:67"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_68"
  op: "Assign"
  input: "Variable_8/Adam_1"
  input: "save_5/RestoreV2:68"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_69"
  op: "Assign"
  input: "Variable_9"
  input: "save_5/RestoreV2:69"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_70"
  op: "Assign"
  input: "Variable_9/Adam"
  input: "save_5/RestoreV2:70"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_71"
  op: "Assign"
  input: "Variable_9/Adam_1"
  input: "save_5/RestoreV2:71"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_72"
  op: "Assign"
  input: "beta1_power"
  input: "save_5/RestoreV2:72"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_73"
  op: "Assign"
  input: "beta1_power_1"
  input: "save_5/RestoreV2:73"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_74"
  op: "Assign"
  input: "beta1_power_2"
  input: "save_5/RestoreV2:74"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_75"
  op: "Assign"
  input: "beta1_power_3"
  input: "save_5/RestoreV2:75"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_76"
  op: "Assign"
  input: "beta1_power_4"
  input: "save_5/RestoreV2:76"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_77"
  op: "Assign"
  input: "beta1_power_5"
  input: "save_5/RestoreV2:77"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_78"
  op: "Assign"
  input: "beta2_power"
  input: "save_5/RestoreV2:78"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_79"
  op: "Assign"
  input: "beta2_power_1"
  input: "save_5/RestoreV2:79"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_80"
  op: "Assign"
  input: "beta2_power_2"
  input: "save_5/RestoreV2:80"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_81"
  op: "Assign"
  input: "beta2_power_3"
  input: "save_5/RestoreV2:81"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_82"
  op: "Assign"
  input: "beta2_power_4"
  input: "save_5/RestoreV2:82"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/Assign_83"
  op: "Assign"
  input: "beta2_power_5"
  input: "save_5/RestoreV2:83"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_5/restore_all"
  op: "NoOp"
  input: "^save_5/Assign"
  input: "^save_5/Assign_1"
  input: "^save_5/Assign_10"
  input: "^save_5/Assign_11"
  input: "^save_5/Assign_12"
  input: "^save_5/Assign_13"
  input: "^save_5/Assign_14"
  input: "^save_5/Assign_15"
  input: "^save_5/Assign_16"
  input: "^save_5/Assign_17"
  input: "^save_5/Assign_18"
  input: "^save_5/Assign_19"
  input: "^save_5/Assign_2"
  input: "^save_5/Assign_20"
  input: "^save_5/Assign_21"
  input: "^save_5/Assign_22"
  input: "^save_5/Assign_23"
  input: "^save_5/Assign_24"
  input: "^save_5/Assign_25"
  input: "^save_5/Assign_26"
  input: "^save_5/Assign_27"
  input: "^save_5/Assign_28"
  input: "^save_5/Assign_29"
  input: "^save_5/Assign_3"
  input: "^save_5/Assign_30"
  input: "^save_5/Assign_31"
  input: "^save_5/Assign_32"
  input: "^save_5/Assign_33"
  input: "^save_5/Assign_34"
  input: "^save_5/Assign_35"
  input: "^save_5/Assign_36"
  input: "^save_5/Assign_37"
  input: "^save_5/Assign_38"
  input: "^save_5/Assign_39"
  input: "^save_5/Assign_4"
  input: "^save_5/Assign_40"
  input: "^save_5/Assign_41"
  input: "^save_5/Assign_42"
  input: "^save_5/Assign_43"
  input: "^save_5/Assign_44"
  input: "^save_5/Assign_45"
  input: "^save_5/Assign_46"
  input: "^save_5/Assign_47"
  input: "^save_5/Assign_48"
  input: "^save_5/Assign_49"
  input: "^save_5/Assign_5"
  input: "^save_5/Assign_50"
  input: "^save_5/Assign_51"
  input: "^save_5/Assign_52"
  input: "^save_5/Assign_53"
  input: "^save_5/Assign_54"
  input: "^save_5/Assign_55"
  input: "^save_5/Assign_56"
  input: "^save_5/Assign_57"
  input: "^save_5/Assign_58"
  input: "^save_5/Assign_59"
  input: "^save_5/Assign_6"
  input: "^save_5/Assign_60"
  input: "^save_5/Assign_61"
  input: "^save_5/Assign_62"
  input: "^save_5/Assign_63"
  input: "^save_5/Assign_64"
  input: "^save_5/Assign_65"
  input: "^save_5/Assign_66"
  input: "^save_5/Assign_67"
  input: "^save_5/Assign_68"
  input: "^save_5/Assign_69"
  input: "^save_5/Assign_7"
  input: "^save_5/Assign_70"
  input: "^save_5/Assign_71"
  input: "^save_5/Assign_72"
  input: "^save_5/Assign_73"
  input: "^save_5/Assign_74"
  input: "^save_5/Assign_75"
  input: "^save_5/Assign_76"
  input: "^save_5/Assign_77"
  input: "^save_5/Assign_78"
  input: "^save_5/Assign_79"
  input: "^save_5/Assign_8"
  input: "^save_5/Assign_80"
  input: "^save_5/Assign_81"
  input: "^save_5/Assign_82"
  input: "^save_5/Assign_83"
  input: "^save_5/Assign_9"
}
node {
  name: "init_5"
  op: "NoOp"
  input: "^Variable/Adam/Assign"
  input: "^Variable/Adam_1/Assign"
  input: "^Variable/Assign"
  input: "^Variable_1/Adam/Assign"
  input: "^Variable_1/Adam_1/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_10/Adam/Assign"
  input: "^Variable_10/Adam_1/Assign"
  input: "^Variable_10/Assign"
  input: "^Variable_11/Adam/Assign"
  input: "^Variable_11/Adam_1/Assign"
  input: "^Variable_11/Assign"
  input: "^Variable_12/Adam/Assign"
  input: "^Variable_12/Adam_1/Assign"
  input: "^Variable_12/Assign"
  input: "^Variable_13/Adam/Assign"
  input: "^Variable_13/Adam_1/Assign"
  input: "^Variable_13/Assign"
  input: "^Variable_14/Adam/Assign"
  input: "^Variable_14/Adam_1/Assign"
  input: "^Variable_14/Assign"
  input: "^Variable_15/Adam/Assign"
  input: "^Variable_15/Adam_1/Assign"
  input: "^Variable_15/Assign"
  input: "^Variable_16/Adam/Assign"
  input: "^Variable_16/Adam_1/Assign"
  input: "^Variable_16/Assign"
  input: "^Variable_17/Adam/Assign"
  input: "^Variable_17/Adam_1/Assign"
  input: "^Variable_17/Assign"
  input: "^Variable_18/Adam/Assign"
  input: "^Variable_18/Adam_1/Assign"
  input: "^Variable_18/Assign"
  input: "^Variable_19/Adam/Assign"
  input: "^Variable_19/Adam_1/Assign"
  input: "^Variable_19/Assign"
  input: "^Variable_2/Adam/Assign"
  input: "^Variable_2/Adam_1/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_20/Adam/Assign"
  input: "^Variable_20/Adam_1/Assign"
  input: "^Variable_20/Assign"
  input: "^Variable_21/Adam/Assign"
  input: "^Variable_21/Adam_1/Assign"
  input: "^Variable_21/Assign"
  input: "^Variable_22/Adam/Assign"
  input: "^Variable_22/Adam_1/Assign"
  input: "^Variable_22/Assign"
  input: "^Variable_23/Adam/Assign"
  input: "^Variable_23/Adam_1/Assign"
  input: "^Variable_23/Assign"
  input: "^Variable_3/Adam/Assign"
  input: "^Variable_3/Adam_1/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_4/Adam/Assign"
  input: "^Variable_4/Adam_1/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Adam/Assign"
  input: "^Variable_5/Adam_1/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Adam/Assign"
  input: "^Variable_6/Adam_1/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Adam/Assign"
  input: "^Variable_7/Adam_1/Assign"
  input: "^Variable_7/Assign"
  input: "^Variable_8/Adam/Assign"
  input: "^Variable_8/Adam_1/Assign"
  input: "^Variable_8/Assign"
  input: "^Variable_9/Adam/Assign"
  input: "^Variable_9/Adam_1/Assign"
  input: "^Variable_9/Assign"
  input: "^beta1_power/Assign"
  input: "^beta1_power_1/Assign"
  input: "^beta1_power_2/Assign"
  input: "^beta1_power_3/Assign"
  input: "^beta1_power_4/Assign"
  input: "^beta1_power_5/Assign"
  input: "^beta2_power/Assign"
  input: "^beta2_power_1/Assign"
  input: "^beta2_power_2/Assign"
  input: "^beta2_power_3/Assign"
  input: "^beta2_power_4/Assign"
  input: "^beta2_power_5/Assign"
}
node {
  name: "ArgMax_10/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_10"
  op: "ArgMax"
  input: "softmax_5"
  input: "ArgMax_10/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "ArgMax_11/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_11"
  op: "ArgMax"
  input: "Placeholder_11"
  input: "ArgMax_11/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Equal_5"
  op: "Equal"
  input: "ArgMax_10"
  input: "ArgMax_11"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Cast_5"
  op: "Cast"
  input: "Equal_5"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "Const_11"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_11"
  op: "Mean"
  input: "Cast_5"
  input: "Const_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "mul_16/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_16"
  op: "Mul"
  input: "Mean_11"
  input: "mul_16/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_17/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_17"
  op: "Mul"
  input: "Mean_11"
  input: "mul_17/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Placeholder_12"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 784
        }
      }
    }
  }
}
node {
  name: "Placeholder_13"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 10
        }
      }
    }
  }
}
node {
  name: "random_normal_24/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_24/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_24/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_24/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_24/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_24/mul"
  op: "Mul"
  input: "random_normal_24/RandomStandardNormal"
  input: "random_normal_24/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_24"
  op: "Add"
  input: "random_normal_24/mul"
  input: "random_normal_24/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_24"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_24/Assign"
  op: "Assign"
  input: "Variable_24"
  input: "random_normal_24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_24/read"
  op: "Identity"
  input: "Variable_24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
}
node {
  name: "random_normal_25/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "random_normal_25/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_25/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_25/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_25/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_25/mul"
  op: "Mul"
  input: "random_normal_25/RandomStandardNormal"
  input: "random_normal_25/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_25"
  op: "Add"
  input: "random_normal_25/mul"
  input: "random_normal_25/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_25"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_25/Assign"
  op: "Assign"
  input: "Variable_25"
  input: "random_normal_25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_25/read"
  op: "Identity"
  input: "Variable_25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
}
node {
  name: "MatMul_18"
  op: "MatMul"
  input: "Placeholder_12"
  input: "Variable_24/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_18"
  op: "Add"
  input: "MatMul_18"
  input: "Variable_25/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_12"
  op: "Sigmoid"
  input: "add_18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_26/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_26/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_26/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_26/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_26/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_26/mul"
  op: "Mul"
  input: "random_normal_26/RandomStandardNormal"
  input: "random_normal_26/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_26"
  op: "Add"
  input: "random_normal_26/mul"
  input: "random_normal_26/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_26"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_26/Assign"
  op: "Assign"
  input: "Variable_26"
  input: "random_normal_26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_26/read"
  op: "Identity"
  input: "Variable_26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
}
node {
  name: "random_normal_27/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "random_normal_27/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_27/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_27/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_27/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_27/mul"
  op: "Mul"
  input: "random_normal_27/RandomStandardNormal"
  input: "random_normal_27/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_27"
  op: "Add"
  input: "random_normal_27/mul"
  input: "random_normal_27/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_27"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_27/Assign"
  op: "Assign"
  input: "Variable_27"
  input: "random_normal_27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_27/read"
  op: "Identity"
  input: "Variable_27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
}
node {
  name: "MatMul_19"
  op: "MatMul"
  input: "Sigmoid_12"
  input: "Variable_26/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_19"
  op: "Add"
  input: "MatMul_19"
  input: "Variable_27/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_13"
  op: "Sigmoid"
  input: "add_19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_20"
  op: "MatMul"
  input: "Sigmoid_12"
  input: "Variable_26/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_20"
  op: "Add"
  input: "MatMul_20"
  input: "Variable_27/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "softmax_6"
  op: "Softmax"
  input: "add_20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Log_6"
  op: "Log"
  input: "softmax_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_18"
  op: "Mul"
  input: "Placeholder_13"
  input: "Log_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sum_6/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sum_6"
  op: "Sum"
  input: "mul_18"
  input: "Sum_6/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Neg_6"
  op: "Neg"
  input: "Sum_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_12"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_12"
  op: "Mean"
  input: "Neg_6"
  input: "Const_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_6/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_6/Fill"
  op: "Fill"
  input: "gradients_6/Shape"
  input: "gradients_6/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Reshape"
  op: "Reshape"
  input: "gradients_6/Fill"
  input: "gradients_6/Mean_12_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Shape"
  op: "Shape"
  input: "Neg_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Tile"
  op: "Tile"
  input: "gradients_6/Mean_12_grad/Reshape"
  input: "gradients_6/Mean_12_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Shape_1"
  op: "Shape"
  input: "Neg_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Shape_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Prod"
  op: "Prod"
  input: "gradients_6/Mean_12_grad/Shape_1"
  input: "gradients_6/Mean_12_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Prod_1"
  op: "Prod"
  input: "gradients_6/Mean_12_grad/Shape_2"
  input: "gradients_6/Mean_12_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Maximum"
  op: "Maximum"
  input: "gradients_6/Mean_12_grad/Prod_1"
  input: "gradients_6/Mean_12_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_6/Mean_12_grad/Prod"
  input: "gradients_6/Mean_12_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/Cast"
  op: "Cast"
  input: "gradients_6/Mean_12_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/Mean_12_grad/truediv"
  op: "RealDiv"
  input: "gradients_6/Mean_12_grad/Tile"
  input: "gradients_6/Mean_12_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_6/Neg_6_grad/Neg"
  op: "Neg"
  input: "gradients_6/Mean_12_grad/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/Shape"
  op: "Shape"
  input: "mul_18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/add"
  op: "Add"
  input: "Sum_6/reduction_indices"
  input: "gradients_6/Sum_6_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/mod"
  op: "FloorMod"
  input: "gradients_6/Sum_6_grad/add"
  input: "gradients_6/Sum_6_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/range"
  op: "Range"
  input: "gradients_6/Sum_6_grad/range/start"
  input: "gradients_6/Sum_6_grad/Size"
  input: "gradients_6/Sum_6_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/Fill"
  op: "Fill"
  input: "gradients_6/Sum_6_grad/Shape_1"
  input: "gradients_6/Sum_6_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "gradients_6/Sum_6_grad/range"
  input: "gradients_6/Sum_6_grad/mod"
  input: "gradients_6/Sum_6_grad/Shape"
  input: "gradients_6/Sum_6_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/Maximum"
  op: "Maximum"
  input: "gradients_6/Sum_6_grad/DynamicStitch"
  input: "gradients_6/Sum_6_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_6/Sum_6_grad/Shape"
  input: "gradients_6/Sum_6_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/Sum_6_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/Reshape"
  op: "Reshape"
  input: "gradients_6/Neg_6_grad/Neg"
  input: "gradients_6/Sum_6_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/Sum_6_grad/Tile"
  op: "Tile"
  input: "gradients_6/Sum_6_grad/Reshape"
  input: "gradients_6/Sum_6_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/mul_18_grad/Shape"
  op: "Shape"
  input: "Placeholder_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/mul_18_grad/Shape_1"
  op: "Shape"
  input: "Log_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/mul_18_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_6/mul_18_grad/Shape"
  input: "gradients_6/mul_18_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/mul_18_grad/Mul"
  op: "Mul"
  input: "gradients_6/Sum_6_grad/Tile"
  input: "Log_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_6/mul_18_grad/Sum"
  op: "Sum"
  input: "gradients_6/mul_18_grad/Mul"
  input: "gradients_6/mul_18_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/mul_18_grad/Reshape"
  op: "Reshape"
  input: "gradients_6/mul_18_grad/Sum"
  input: "gradients_6/mul_18_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/mul_18_grad/Mul_1"
  op: "Mul"
  input: "Placeholder_13"
  input: "gradients_6/Sum_6_grad/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_6/mul_18_grad/Sum_1"
  op: "Sum"
  input: "gradients_6/mul_18_grad/Mul_1"
  input: "gradients_6/mul_18_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/mul_18_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_6/mul_18_grad/Sum_1"
  input: "gradients_6/mul_18_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/mul_18_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_6/mul_18_grad/Reshape"
  input: "^gradients_6/mul_18_grad/Reshape_1"
}
node {
  name: "gradients_6/mul_18_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_6/mul_18_grad/Reshape"
  input: "^gradients_6/mul_18_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/mul_18_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_6/mul_18_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_6/mul_18_grad/Reshape_1"
  input: "^gradients_6/mul_18_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/mul_18_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_6/Log_6_grad/Reciprocal"
  op: "Reciprocal"
  input: "softmax_6"
  input: "^gradients_6/mul_18_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_6/Log_6_grad/mul"
  op: "Mul"
  input: "gradients_6/mul_18_grad/tuple/control_dependency_1"
  input: "gradients_6/Log_6_grad/Reciprocal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_6/softmax_6_grad/mul"
  op: "Mul"
  input: "gradients_6/Log_6_grad/mul"
  input: "softmax_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_6/softmax_6_grad/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients_6/softmax_6_grad/Sum"
  op: "Sum"
  input: "gradients_6/softmax_6_grad/mul"
  input: "gradients_6/softmax_6_grad/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_6/softmax_6_grad/sub"
  op: "Sub"
  input: "gradients_6/Log_6_grad/mul"
  input: "gradients_6/softmax_6_grad/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_6/softmax_6_grad/mul_1"
  op: "Mul"
  input: "gradients_6/softmax_6_grad/sub"
  input: "softmax_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_6/add_20_grad/Shape"
  op: "Shape"
  input: "MatMul_20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/add_20_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "gradients_6/add_20_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_6/add_20_grad/Shape"
  input: "gradients_6/add_20_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/add_20_grad/Sum"
  op: "Sum"
  input: "gradients_6/softmax_6_grad/mul_1"
  input: "gradients_6/add_20_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/add_20_grad/Reshape"
  op: "Reshape"
  input: "gradients_6/add_20_grad/Sum"
  input: "gradients_6/add_20_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/add_20_grad/Sum_1"
  op: "Sum"
  input: "gradients_6/softmax_6_grad/mul_1"
  input: "gradients_6/add_20_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/add_20_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_6/add_20_grad/Sum_1"
  input: "gradients_6/add_20_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/add_20_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_6/add_20_grad/Reshape"
  input: "^gradients_6/add_20_grad/Reshape_1"
}
node {
  name: "gradients_6/add_20_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_6/add_20_grad/Reshape"
  input: "^gradients_6/add_20_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/add_20_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_6/add_20_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_6/add_20_grad/Reshape_1"
  input: "^gradients_6/add_20_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/add_20_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_6/MatMul_20_grad/MatMul"
  op: "MatMul"
  input: "gradients_6/add_20_grad/tuple/control_dependency"
  input: "Variable_26/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_6/MatMul_20_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_12"
  input: "gradients_6/add_20_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/MatMul_20_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_6/MatMul_20_grad/MatMul"
  input: "^gradients_6/MatMul_20_grad/MatMul_1"
}
node {
  name: "gradients_6/MatMul_20_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_6/MatMul_20_grad/MatMul"
  input: "^gradients_6/MatMul_20_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/MatMul_20_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_6/MatMul_20_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_6/MatMul_20_grad/MatMul_1"
  input: "^gradients_6/MatMul_20_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/MatMul_20_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_6/Sigmoid_12_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_12"
  input: "gradients_6/MatMul_20_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_6/add_18_grad/Shape"
  op: "Shape"
  input: "MatMul_18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/add_18_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "gradients_6/add_18_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_6/add_18_grad/Shape"
  input: "gradients_6/add_18_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/add_18_grad/Sum"
  op: "Sum"
  input: "gradients_6/Sigmoid_12_grad/SigmoidGrad"
  input: "gradients_6/add_18_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/add_18_grad/Reshape"
  op: "Reshape"
  input: "gradients_6/add_18_grad/Sum"
  input: "gradients_6/add_18_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/add_18_grad/Sum_1"
  op: "Sum"
  input: "gradients_6/Sigmoid_12_grad/SigmoidGrad"
  input: "gradients_6/add_18_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/add_18_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_6/add_18_grad/Sum_1"
  input: "gradients_6/add_18_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_6/add_18_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_6/add_18_grad/Reshape"
  input: "^gradients_6/add_18_grad/Reshape_1"
}
node {
  name: "gradients_6/add_18_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_6/add_18_grad/Reshape"
  input: "^gradients_6/add_18_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/add_18_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_6/add_18_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_6/add_18_grad/Reshape_1"
  input: "^gradients_6/add_18_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/add_18_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_6/MatMul_18_grad/MatMul"
  op: "MatMul"
  input: "gradients_6/add_18_grad/tuple/control_dependency"
  input: "Variable_24/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_6/MatMul_18_grad/MatMul_1"
  op: "MatMul"
  input: "Placeholder_12"
  input: "gradients_6/add_18_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_6/MatMul_18_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_6/MatMul_18_grad/MatMul"
  input: "^gradients_6/MatMul_18_grad/MatMul_1"
}
node {
  name: "gradients_6/MatMul_18_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_6/MatMul_18_grad/MatMul"
  input: "^gradients_6/MatMul_18_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/MatMul_18_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_6/MatMul_18_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_6/MatMul_18_grad/MatMul_1"
  input: "^gradients_6/MatMul_18_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_6/MatMul_18_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "beta1_power_6/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "beta1_power_6"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta1_power_6/Assign"
  op: "Assign"
  input: "beta1_power_6"
  input: "beta1_power_6/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta1_power_6/read"
  op: "Identity"
  input: "beta1_power_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
}
node {
  name: "beta2_power_6/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "beta2_power_6"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta2_power_6/Assign"
  op: "Assign"
  input: "beta2_power_6"
  input: "beta2_power_6/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta2_power_6/read"
  op: "Identity"
  input: "beta2_power_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
}
node {
  name: "Variable_24/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_24/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_24/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_24/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_24/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_24/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_24/Adam/Assign"
  op: "Assign"
  input: "Variable_24/Adam"
  input: "Variable_24/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_24/Adam/read"
  op: "Identity"
  input: "Variable_24/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
}
node {
  name: "Variable_24/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_24/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_24/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_24/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_24/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_24/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_24/Adam_1/Assign"
  op: "Assign"
  input: "Variable_24/Adam_1"
  input: "Variable_24/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_24/Adam_1/read"
  op: "Identity"
  input: "Variable_24/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
}
node {
  name: "Variable_25/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_25/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_25/Adam/Assign"
  op: "Assign"
  input: "Variable_25/Adam"
  input: "Variable_25/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_25/Adam/read"
  op: "Identity"
  input: "Variable_25/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
}
node {
  name: "Variable_25/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_25/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_25/Adam_1/Assign"
  op: "Assign"
  input: "Variable_25/Adam_1"
  input: "Variable_25/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_25/Adam_1/read"
  op: "Identity"
  input: "Variable_25/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
}
node {
  name: "Variable_26/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_26/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_26/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_26/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_26/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_26/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_26/Adam/Assign"
  op: "Assign"
  input: "Variable_26/Adam"
  input: "Variable_26/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_26/Adam/read"
  op: "Identity"
  input: "Variable_26/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
}
node {
  name: "Variable_26/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_26/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_26/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_26/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_26/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_26/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_26/Adam_1/Assign"
  op: "Assign"
  input: "Variable_26/Adam_1"
  input: "Variable_26/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_26/Adam_1/read"
  op: "Identity"
  input: "Variable_26/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
}
node {
  name: "Variable_27/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_27/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_27/Adam/Assign"
  op: "Assign"
  input: "Variable_27/Adam"
  input: "Variable_27/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_27/Adam/read"
  op: "Identity"
  input: "Variable_27/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
}
node {
  name: "Variable_27/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_27/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_27/Adam_1/Assign"
  op: "Assign"
  input: "Variable_27/Adam_1"
  input: "Variable_27/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_27/Adam_1/read"
  op: "Identity"
  input: "Variable_27/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
}
node {
  name: "Adam_6/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Adam_6/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam_6/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam_6/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "Adam_6/update_Variable_24/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_24"
  input: "Variable_24/Adam"
  input: "Variable_24/Adam_1"
  input: "beta1_power_6/read"
  input: "beta2_power_6/read"
  input: "Adam_6/learning_rate"
  input: "Adam_6/beta1"
  input: "Adam_6/beta2"
  input: "Adam_6/epsilon"
  input: "gradients_6/MatMul_18_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_6/update_Variable_25/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_25"
  input: "Variable_25/Adam"
  input: "Variable_25/Adam_1"
  input: "beta1_power_6/read"
  input: "beta2_power_6/read"
  input: "Adam_6/learning_rate"
  input: "Adam_6/beta1"
  input: "Adam_6/beta2"
  input: "Adam_6/epsilon"
  input: "gradients_6/add_18_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_6/update_Variable_26/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_26"
  input: "Variable_26/Adam"
  input: "Variable_26/Adam_1"
  input: "beta1_power_6/read"
  input: "beta2_power_6/read"
  input: "Adam_6/learning_rate"
  input: "Adam_6/beta1"
  input: "Adam_6/beta2"
  input: "Adam_6/epsilon"
  input: "gradients_6/MatMul_20_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_6/update_Variable_27/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_27"
  input: "Variable_27/Adam"
  input: "Variable_27/Adam_1"
  input: "beta1_power_6/read"
  input: "beta2_power_6/read"
  input: "Adam_6/learning_rate"
  input: "Adam_6/beta1"
  input: "Adam_6/beta2"
  input: "Adam_6/epsilon"
  input: "gradients_6/add_20_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_6/mul"
  op: "Mul"
  input: "beta1_power_6/read"
  input: "Adam_6/beta1"
  input: "^Adam_6/update_Variable_24/ApplyAdam"
  input: "^Adam_6/update_Variable_25/ApplyAdam"
  input: "^Adam_6/update_Variable_26/ApplyAdam"
  input: "^Adam_6/update_Variable_27/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
}
node {
  name: "Adam_6/Assign"
  op: "Assign"
  input: "beta1_power_6"
  input: "Adam_6/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_6/mul_1"
  op: "Mul"
  input: "beta2_power_6/read"
  input: "Adam_6/beta2"
  input: "^Adam_6/update_Variable_24/ApplyAdam"
  input: "^Adam_6/update_Variable_25/ApplyAdam"
  input: "^Adam_6/update_Variable_26/ApplyAdam"
  input: "^Adam_6/update_Variable_27/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
}
node {
  name: "Adam_6/Assign_1"
  op: "Assign"
  input: "beta2_power_6"
  input: "Adam_6/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_6"
  op: "NoOp"
  input: "^Adam_6/Assign"
  input: "^Adam_6/Assign_1"
  input: "^Adam_6/update_Variable_24/ApplyAdam"
  input: "^Adam_6/update_Variable_25/ApplyAdam"
  input: "^Adam_6/update_Variable_26/ApplyAdam"
  input: "^Adam_6/update_Variable_27/ApplyAdam"
}
node {
  name: "save_6/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save_6/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 98
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_16"
        string_val: "Variable_16/Adam"
        string_val: "Variable_16/Adam_1"
        string_val: "Variable_17"
        string_val: "Variable_17/Adam"
        string_val: "Variable_17/Adam_1"
        string_val: "Variable_18"
        string_val: "Variable_18/Adam"
        string_val: "Variable_18/Adam_1"
        string_val: "Variable_19"
        string_val: "Variable_19/Adam"
        string_val: "Variable_19/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_20"
        string_val: "Variable_20/Adam"
        string_val: "Variable_20/Adam_1"
        string_val: "Variable_21"
        string_val: "Variable_21/Adam"
        string_val: "Variable_21/Adam_1"
        string_val: "Variable_22"
        string_val: "Variable_22/Adam"
        string_val: "Variable_22/Adam_1"
        string_val: "Variable_23"
        string_val: "Variable_23/Adam"
        string_val: "Variable_23/Adam_1"
        string_val: "Variable_24"
        string_val: "Variable_24/Adam"
        string_val: "Variable_24/Adam_1"
        string_val: "Variable_25"
        string_val: "Variable_25/Adam"
        string_val: "Variable_25/Adam_1"
        string_val: "Variable_26"
        string_val: "Variable_26/Adam"
        string_val: "Variable_26/Adam_1"
        string_val: "Variable_27"
        string_val: "Variable_27/Adam"
        string_val: "Variable_27/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta1_power_3"
        string_val: "beta1_power_4"
        string_val: "beta1_power_5"
        string_val: "beta1_power_6"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
        string_val: "beta2_power_3"
        string_val: "beta2_power_4"
        string_val: "beta2_power_5"
        string_val: "beta2_power_6"
      }
    }
  }
}
node {
  name: "save_6/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 98
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_6/SaveV2"
  op: "SaveV2"
  input: "save_6/Const"
  input: "save_6/SaveV2/tensor_names"
  input: "save_6/SaveV2/shape_and_slices"
  input: "Variable"
  input: "Variable/Adam"
  input: "Variable/Adam_1"
  input: "Variable_1"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam_1"
  input: "Variable_10"
  input: "Variable_10/Adam"
  input: "Variable_10/Adam_1"
  input: "Variable_11"
  input: "Variable_11/Adam"
  input: "Variable_11/Adam_1"
  input: "Variable_12"
  input: "Variable_12/Adam"
  input: "Variable_12/Adam_1"
  input: "Variable_13"
  input: "Variable_13/Adam"
  input: "Variable_13/Adam_1"
  input: "Variable_14"
  input: "Variable_14/Adam"
  input: "Variable_14/Adam_1"
  input: "Variable_15"
  input: "Variable_15/Adam"
  input: "Variable_15/Adam_1"
  input: "Variable_16"
  input: "Variable_16/Adam"
  input: "Variable_16/Adam_1"
  input: "Variable_17"
  input: "Variable_17/Adam"
  input: "Variable_17/Adam_1"
  input: "Variable_18"
  input: "Variable_18/Adam"
  input: "Variable_18/Adam_1"
  input: "Variable_19"
  input: "Variable_19/Adam"
  input: "Variable_19/Adam_1"
  input: "Variable_2"
  input: "Variable_2/Adam"
  input: "Variable_2/Adam_1"
  input: "Variable_20"
  input: "Variable_20/Adam"
  input: "Variable_20/Adam_1"
  input: "Variable_21"
  input: "Variable_21/Adam"
  input: "Variable_21/Adam_1"
  input: "Variable_22"
  input: "Variable_22/Adam"
  input: "Variable_22/Adam_1"
  input: "Variable_23"
  input: "Variable_23/Adam"
  input: "Variable_23/Adam_1"
  input: "Variable_24"
  input: "Variable_24/Adam"
  input: "Variable_24/Adam_1"
  input: "Variable_25"
  input: "Variable_25/Adam"
  input: "Variable_25/Adam_1"
  input: "Variable_26"
  input: "Variable_26/Adam"
  input: "Variable_26/Adam_1"
  input: "Variable_27"
  input: "Variable_27/Adam"
  input: "Variable_27/Adam_1"
  input: "Variable_3"
  input: "Variable_3/Adam"
  input: "Variable_3/Adam_1"
  input: "Variable_4"
  input: "Variable_4/Adam"
  input: "Variable_4/Adam_1"
  input: "Variable_5"
  input: "Variable_5/Adam"
  input: "Variable_5/Adam_1"
  input: "Variable_6"
  input: "Variable_6/Adam"
  input: "Variable_6/Adam_1"
  input: "Variable_7"
  input: "Variable_7/Adam"
  input: "Variable_7/Adam_1"
  input: "Variable_8"
  input: "Variable_8/Adam"
  input: "Variable_8/Adam_1"
  input: "Variable_9"
  input: "Variable_9/Adam"
  input: "Variable_9/Adam_1"
  input: "beta1_power"
  input: "beta1_power_1"
  input: "beta1_power_2"
  input: "beta1_power_3"
  input: "beta1_power_4"
  input: "beta1_power_5"
  input: "beta1_power_6"
  input: "beta2_power"
  input: "beta2_power_1"
  input: "beta2_power_2"
  input: "beta2_power_3"
  input: "beta2_power_4"
  input: "beta2_power_5"
  input: "beta2_power_6"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_6/control_dependency"
  op: "Identity"
  input: "save_6/Const"
  input: "^save_6/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save_6/Const"
      }
    }
  }
}
node {
  name: "save_6/RestoreV2/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 98
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_16"
        string_val: "Variable_16/Adam"
        string_val: "Variable_16/Adam_1"
        string_val: "Variable_17"
        string_val: "Variable_17/Adam"
        string_val: "Variable_17/Adam_1"
        string_val: "Variable_18"
        string_val: "Variable_18/Adam"
        string_val: "Variable_18/Adam_1"
        string_val: "Variable_19"
        string_val: "Variable_19/Adam"
        string_val: "Variable_19/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_20"
        string_val: "Variable_20/Adam"
        string_val: "Variable_20/Adam_1"
        string_val: "Variable_21"
        string_val: "Variable_21/Adam"
        string_val: "Variable_21/Adam_1"
        string_val: "Variable_22"
        string_val: "Variable_22/Adam"
        string_val: "Variable_22/Adam_1"
        string_val: "Variable_23"
        string_val: "Variable_23/Adam"
        string_val: "Variable_23/Adam_1"
        string_val: "Variable_24"
        string_val: "Variable_24/Adam"
        string_val: "Variable_24/Adam_1"
        string_val: "Variable_25"
        string_val: "Variable_25/Adam"
        string_val: "Variable_25/Adam_1"
        string_val: "Variable_26"
        string_val: "Variable_26/Adam"
        string_val: "Variable_26/Adam_1"
        string_val: "Variable_27"
        string_val: "Variable_27/Adam"
        string_val: "Variable_27/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta1_power_3"
        string_val: "beta1_power_4"
        string_val: "beta1_power_5"
        string_val: "beta1_power_6"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
        string_val: "beta2_power_3"
        string_val: "beta2_power_4"
        string_val: "beta2_power_5"
        string_val: "beta2_power_6"
      }
    }
  }
}
node {
  name: "save_6/RestoreV2/shape_and_slices"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 98
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_6/RestoreV2"
  op: "RestoreV2"
  input: "save_6/Const"
  input: "save_6/RestoreV2/tensor_names"
  input: "save_6/RestoreV2/shape_and_slices"
  device: "/device:CPU:0"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_6/Assign"
  op: "Assign"
  input: "Variable"
  input: "save_6/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_1"
  op: "Assign"
  input: "Variable/Adam"
  input: "save_6/RestoreV2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_2"
  op: "Assign"
  input: "Variable/Adam_1"
  input: "save_6/RestoreV2:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_3"
  op: "Assign"
  input: "Variable_1"
  input: "save_6/RestoreV2:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_4"
  op: "Assign"
  input: "Variable_1/Adam"
  input: "save_6/RestoreV2:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_5"
  op: "Assign"
  input: "Variable_1/Adam_1"
  input: "save_6/RestoreV2:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_6"
  op: "Assign"
  input: "Variable_10"
  input: "save_6/RestoreV2:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_7"
  op: "Assign"
  input: "Variable_10/Adam"
  input: "save_6/RestoreV2:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_8"
  op: "Assign"
  input: "Variable_10/Adam_1"
  input: "save_6/RestoreV2:8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_9"
  op: "Assign"
  input: "Variable_11"
  input: "save_6/RestoreV2:9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_10"
  op: "Assign"
  input: "Variable_11/Adam"
  input: "save_6/RestoreV2:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_11"
  op: "Assign"
  input: "Variable_11/Adam_1"
  input: "save_6/RestoreV2:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_12"
  op: "Assign"
  input: "Variable_12"
  input: "save_6/RestoreV2:12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_13"
  op: "Assign"
  input: "Variable_12/Adam"
  input: "save_6/RestoreV2:13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_14"
  op: "Assign"
  input: "Variable_12/Adam_1"
  input: "save_6/RestoreV2:14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_15"
  op: "Assign"
  input: "Variable_13"
  input: "save_6/RestoreV2:15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_16"
  op: "Assign"
  input: "Variable_13/Adam"
  input: "save_6/RestoreV2:16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_17"
  op: "Assign"
  input: "Variable_13/Adam_1"
  input: "save_6/RestoreV2:17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_18"
  op: "Assign"
  input: "Variable_14"
  input: "save_6/RestoreV2:18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_19"
  op: "Assign"
  input: "Variable_14/Adam"
  input: "save_6/RestoreV2:19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_20"
  op: "Assign"
  input: "Variable_14/Adam_1"
  input: "save_6/RestoreV2:20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_21"
  op: "Assign"
  input: "Variable_15"
  input: "save_6/RestoreV2:21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_22"
  op: "Assign"
  input: "Variable_15/Adam"
  input: "save_6/RestoreV2:22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_23"
  op: "Assign"
  input: "Variable_15/Adam_1"
  input: "save_6/RestoreV2:23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_24"
  op: "Assign"
  input: "Variable_16"
  input: "save_6/RestoreV2:24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_25"
  op: "Assign"
  input: "Variable_16/Adam"
  input: "save_6/RestoreV2:25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_26"
  op: "Assign"
  input: "Variable_16/Adam_1"
  input: "save_6/RestoreV2:26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_27"
  op: "Assign"
  input: "Variable_17"
  input: "save_6/RestoreV2:27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_28"
  op: "Assign"
  input: "Variable_17/Adam"
  input: "save_6/RestoreV2:28"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_29"
  op: "Assign"
  input: "Variable_17/Adam_1"
  input: "save_6/RestoreV2:29"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_30"
  op: "Assign"
  input: "Variable_18"
  input: "save_6/RestoreV2:30"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_31"
  op: "Assign"
  input: "Variable_18/Adam"
  input: "save_6/RestoreV2:31"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_32"
  op: "Assign"
  input: "Variable_18/Adam_1"
  input: "save_6/RestoreV2:32"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_33"
  op: "Assign"
  input: "Variable_19"
  input: "save_6/RestoreV2:33"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_34"
  op: "Assign"
  input: "Variable_19/Adam"
  input: "save_6/RestoreV2:34"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_35"
  op: "Assign"
  input: "Variable_19/Adam_1"
  input: "save_6/RestoreV2:35"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_36"
  op: "Assign"
  input: "Variable_2"
  input: "save_6/RestoreV2:36"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_37"
  op: "Assign"
  input: "Variable_2/Adam"
  input: "save_6/RestoreV2:37"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_38"
  op: "Assign"
  input: "Variable_2/Adam_1"
  input: "save_6/RestoreV2:38"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_39"
  op: "Assign"
  input: "Variable_20"
  input: "save_6/RestoreV2:39"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_40"
  op: "Assign"
  input: "Variable_20/Adam"
  input: "save_6/RestoreV2:40"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_41"
  op: "Assign"
  input: "Variable_20/Adam_1"
  input: "save_6/RestoreV2:41"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_42"
  op: "Assign"
  input: "Variable_21"
  input: "save_6/RestoreV2:42"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_43"
  op: "Assign"
  input: "Variable_21/Adam"
  input: "save_6/RestoreV2:43"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_44"
  op: "Assign"
  input: "Variable_21/Adam_1"
  input: "save_6/RestoreV2:44"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_45"
  op: "Assign"
  input: "Variable_22"
  input: "save_6/RestoreV2:45"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_46"
  op: "Assign"
  input: "Variable_22/Adam"
  input: "save_6/RestoreV2:46"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_47"
  op: "Assign"
  input: "Variable_22/Adam_1"
  input: "save_6/RestoreV2:47"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_48"
  op: "Assign"
  input: "Variable_23"
  input: "save_6/RestoreV2:48"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_49"
  op: "Assign"
  input: "Variable_23/Adam"
  input: "save_6/RestoreV2:49"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_50"
  op: "Assign"
  input: "Variable_23/Adam_1"
  input: "save_6/RestoreV2:50"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_51"
  op: "Assign"
  input: "Variable_24"
  input: "save_6/RestoreV2:51"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_52"
  op: "Assign"
  input: "Variable_24/Adam"
  input: "save_6/RestoreV2:52"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_53"
  op: "Assign"
  input: "Variable_24/Adam_1"
  input: "save_6/RestoreV2:53"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_54"
  op: "Assign"
  input: "Variable_25"
  input: "save_6/RestoreV2:54"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_55"
  op: "Assign"
  input: "Variable_25/Adam"
  input: "save_6/RestoreV2:55"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_56"
  op: "Assign"
  input: "Variable_25/Adam_1"
  input: "save_6/RestoreV2:56"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_57"
  op: "Assign"
  input: "Variable_26"
  input: "save_6/RestoreV2:57"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_58"
  op: "Assign"
  input: "Variable_26/Adam"
  input: "save_6/RestoreV2:58"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_59"
  op: "Assign"
  input: "Variable_26/Adam_1"
  input: "save_6/RestoreV2:59"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_60"
  op: "Assign"
  input: "Variable_27"
  input: "save_6/RestoreV2:60"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_61"
  op: "Assign"
  input: "Variable_27/Adam"
  input: "save_6/RestoreV2:61"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_62"
  op: "Assign"
  input: "Variable_27/Adam_1"
  input: "save_6/RestoreV2:62"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_63"
  op: "Assign"
  input: "Variable_3"
  input: "save_6/RestoreV2:63"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_64"
  op: "Assign"
  input: "Variable_3/Adam"
  input: "save_6/RestoreV2:64"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_65"
  op: "Assign"
  input: "Variable_3/Adam_1"
  input: "save_6/RestoreV2:65"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_66"
  op: "Assign"
  input: "Variable_4"
  input: "save_6/RestoreV2:66"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_67"
  op: "Assign"
  input: "Variable_4/Adam"
  input: "save_6/RestoreV2:67"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_68"
  op: "Assign"
  input: "Variable_4/Adam_1"
  input: "save_6/RestoreV2:68"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_69"
  op: "Assign"
  input: "Variable_5"
  input: "save_6/RestoreV2:69"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_70"
  op: "Assign"
  input: "Variable_5/Adam"
  input: "save_6/RestoreV2:70"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_71"
  op: "Assign"
  input: "Variable_5/Adam_1"
  input: "save_6/RestoreV2:71"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_72"
  op: "Assign"
  input: "Variable_6"
  input: "save_6/RestoreV2:72"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_73"
  op: "Assign"
  input: "Variable_6/Adam"
  input: "save_6/RestoreV2:73"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_74"
  op: "Assign"
  input: "Variable_6/Adam_1"
  input: "save_6/RestoreV2:74"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_75"
  op: "Assign"
  input: "Variable_7"
  input: "save_6/RestoreV2:75"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_76"
  op: "Assign"
  input: "Variable_7/Adam"
  input: "save_6/RestoreV2:76"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_77"
  op: "Assign"
  input: "Variable_7/Adam_1"
  input: "save_6/RestoreV2:77"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_78"
  op: "Assign"
  input: "Variable_8"
  input: "save_6/RestoreV2:78"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_79"
  op: "Assign"
  input: "Variable_8/Adam"
  input: "save_6/RestoreV2:79"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_80"
  op: "Assign"
  input: "Variable_8/Adam_1"
  input: "save_6/RestoreV2:80"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_81"
  op: "Assign"
  input: "Variable_9"
  input: "save_6/RestoreV2:81"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_82"
  op: "Assign"
  input: "Variable_9/Adam"
  input: "save_6/RestoreV2:82"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_83"
  op: "Assign"
  input: "Variable_9/Adam_1"
  input: "save_6/RestoreV2:83"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_84"
  op: "Assign"
  input: "beta1_power"
  input: "save_6/RestoreV2:84"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_85"
  op: "Assign"
  input: "beta1_power_1"
  input: "save_6/RestoreV2:85"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_86"
  op: "Assign"
  input: "beta1_power_2"
  input: "save_6/RestoreV2:86"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_87"
  op: "Assign"
  input: "beta1_power_3"
  input: "save_6/RestoreV2:87"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_88"
  op: "Assign"
  input: "beta1_power_4"
  input: "save_6/RestoreV2:88"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_89"
  op: "Assign"
  input: "beta1_power_5"
  input: "save_6/RestoreV2:89"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_90"
  op: "Assign"
  input: "beta1_power_6"
  input: "save_6/RestoreV2:90"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_91"
  op: "Assign"
  input: "beta2_power"
  input: "save_6/RestoreV2:91"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_92"
  op: "Assign"
  input: "beta2_power_1"
  input: "save_6/RestoreV2:92"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_93"
  op: "Assign"
  input: "beta2_power_2"
  input: "save_6/RestoreV2:93"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_94"
  op: "Assign"
  input: "beta2_power_3"
  input: "save_6/RestoreV2:94"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_95"
  op: "Assign"
  input: "beta2_power_4"
  input: "save_6/RestoreV2:95"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_96"
  op: "Assign"
  input: "beta2_power_5"
  input: "save_6/RestoreV2:96"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/Assign_97"
  op: "Assign"
  input: "beta2_power_6"
  input: "save_6/RestoreV2:97"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_6/restore_all"
  op: "NoOp"
  input: "^save_6/Assign"
  input: "^save_6/Assign_1"
  input: "^save_6/Assign_10"
  input: "^save_6/Assign_11"
  input: "^save_6/Assign_12"
  input: "^save_6/Assign_13"
  input: "^save_6/Assign_14"
  input: "^save_6/Assign_15"
  input: "^save_6/Assign_16"
  input: "^save_6/Assign_17"
  input: "^save_6/Assign_18"
  input: "^save_6/Assign_19"
  input: "^save_6/Assign_2"
  input: "^save_6/Assign_20"
  input: "^save_6/Assign_21"
  input: "^save_6/Assign_22"
  input: "^save_6/Assign_23"
  input: "^save_6/Assign_24"
  input: "^save_6/Assign_25"
  input: "^save_6/Assign_26"
  input: "^save_6/Assign_27"
  input: "^save_6/Assign_28"
  input: "^save_6/Assign_29"
  input: "^save_6/Assign_3"
  input: "^save_6/Assign_30"
  input: "^save_6/Assign_31"
  input: "^save_6/Assign_32"
  input: "^save_6/Assign_33"
  input: "^save_6/Assign_34"
  input: "^save_6/Assign_35"
  input: "^save_6/Assign_36"
  input: "^save_6/Assign_37"
  input: "^save_6/Assign_38"
  input: "^save_6/Assign_39"
  input: "^save_6/Assign_4"
  input: "^save_6/Assign_40"
  input: "^save_6/Assign_41"
  input: "^save_6/Assign_42"
  input: "^save_6/Assign_43"
  input: "^save_6/Assign_44"
  input: "^save_6/Assign_45"
  input: "^save_6/Assign_46"
  input: "^save_6/Assign_47"
  input: "^save_6/Assign_48"
  input: "^save_6/Assign_49"
  input: "^save_6/Assign_5"
  input: "^save_6/Assign_50"
  input: "^save_6/Assign_51"
  input: "^save_6/Assign_52"
  input: "^save_6/Assign_53"
  input: "^save_6/Assign_54"
  input: "^save_6/Assign_55"
  input: "^save_6/Assign_56"
  input: "^save_6/Assign_57"
  input: "^save_6/Assign_58"
  input: "^save_6/Assign_59"
  input: "^save_6/Assign_6"
  input: "^save_6/Assign_60"
  input: "^save_6/Assign_61"
  input: "^save_6/Assign_62"
  input: "^save_6/Assign_63"
  input: "^save_6/Assign_64"
  input: "^save_6/Assign_65"
  input: "^save_6/Assign_66"
  input: "^save_6/Assign_67"
  input: "^save_6/Assign_68"
  input: "^save_6/Assign_69"
  input: "^save_6/Assign_7"
  input: "^save_6/Assign_70"
  input: "^save_6/Assign_71"
  input: "^save_6/Assign_72"
  input: "^save_6/Assign_73"
  input: "^save_6/Assign_74"
  input: "^save_6/Assign_75"
  input: "^save_6/Assign_76"
  input: "^save_6/Assign_77"
  input: "^save_6/Assign_78"
  input: "^save_6/Assign_79"
  input: "^save_6/Assign_8"
  input: "^save_6/Assign_80"
  input: "^save_6/Assign_81"
  input: "^save_6/Assign_82"
  input: "^save_6/Assign_83"
  input: "^save_6/Assign_84"
  input: "^save_6/Assign_85"
  input: "^save_6/Assign_86"
  input: "^save_6/Assign_87"
  input: "^save_6/Assign_88"
  input: "^save_6/Assign_89"
  input: "^save_6/Assign_9"
  input: "^save_6/Assign_90"
  input: "^save_6/Assign_91"
  input: "^save_6/Assign_92"
  input: "^save_6/Assign_93"
  input: "^save_6/Assign_94"
  input: "^save_6/Assign_95"
  input: "^save_6/Assign_96"
  input: "^save_6/Assign_97"
}
node {
  name: "init_6"
  op: "NoOp"
  input: "^Variable/Adam/Assign"
  input: "^Variable/Adam_1/Assign"
  input: "^Variable/Assign"
  input: "^Variable_1/Adam/Assign"
  input: "^Variable_1/Adam_1/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_10/Adam/Assign"
  input: "^Variable_10/Adam_1/Assign"
  input: "^Variable_10/Assign"
  input: "^Variable_11/Adam/Assign"
  input: "^Variable_11/Adam_1/Assign"
  input: "^Variable_11/Assign"
  input: "^Variable_12/Adam/Assign"
  input: "^Variable_12/Adam_1/Assign"
  input: "^Variable_12/Assign"
  input: "^Variable_13/Adam/Assign"
  input: "^Variable_13/Adam_1/Assign"
  input: "^Variable_13/Assign"
  input: "^Variable_14/Adam/Assign"
  input: "^Variable_14/Adam_1/Assign"
  input: "^Variable_14/Assign"
  input: "^Variable_15/Adam/Assign"
  input: "^Variable_15/Adam_1/Assign"
  input: "^Variable_15/Assign"
  input: "^Variable_16/Adam/Assign"
  input: "^Variable_16/Adam_1/Assign"
  input: "^Variable_16/Assign"
  input: "^Variable_17/Adam/Assign"
  input: "^Variable_17/Adam_1/Assign"
  input: "^Variable_17/Assign"
  input: "^Variable_18/Adam/Assign"
  input: "^Variable_18/Adam_1/Assign"
  input: "^Variable_18/Assign"
  input: "^Variable_19/Adam/Assign"
  input: "^Variable_19/Adam_1/Assign"
  input: "^Variable_19/Assign"
  input: "^Variable_2/Adam/Assign"
  input: "^Variable_2/Adam_1/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_20/Adam/Assign"
  input: "^Variable_20/Adam_1/Assign"
  input: "^Variable_20/Assign"
  input: "^Variable_21/Adam/Assign"
  input: "^Variable_21/Adam_1/Assign"
  input: "^Variable_21/Assign"
  input: "^Variable_22/Adam/Assign"
  input: "^Variable_22/Adam_1/Assign"
  input: "^Variable_22/Assign"
  input: "^Variable_23/Adam/Assign"
  input: "^Variable_23/Adam_1/Assign"
  input: "^Variable_23/Assign"
  input: "^Variable_24/Adam/Assign"
  input: "^Variable_24/Adam_1/Assign"
  input: "^Variable_24/Assign"
  input: "^Variable_25/Adam/Assign"
  input: "^Variable_25/Adam_1/Assign"
  input: "^Variable_25/Assign"
  input: "^Variable_26/Adam/Assign"
  input: "^Variable_26/Adam_1/Assign"
  input: "^Variable_26/Assign"
  input: "^Variable_27/Adam/Assign"
  input: "^Variable_27/Adam_1/Assign"
  input: "^Variable_27/Assign"
  input: "^Variable_3/Adam/Assign"
  input: "^Variable_3/Adam_1/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_4/Adam/Assign"
  input: "^Variable_4/Adam_1/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Adam/Assign"
  input: "^Variable_5/Adam_1/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Adam/Assign"
  input: "^Variable_6/Adam_1/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Adam/Assign"
  input: "^Variable_7/Adam_1/Assign"
  input: "^Variable_7/Assign"
  input: "^Variable_8/Adam/Assign"
  input: "^Variable_8/Adam_1/Assign"
  input: "^Variable_8/Assign"
  input: "^Variable_9/Adam/Assign"
  input: "^Variable_9/Adam_1/Assign"
  input: "^Variable_9/Assign"
  input: "^beta1_power/Assign"
  input: "^beta1_power_1/Assign"
  input: "^beta1_power_2/Assign"
  input: "^beta1_power_3/Assign"
  input: "^beta1_power_4/Assign"
  input: "^beta1_power_5/Assign"
  input: "^beta1_power_6/Assign"
  input: "^beta2_power/Assign"
  input: "^beta2_power_1/Assign"
  input: "^beta2_power_2/Assign"
  input: "^beta2_power_3/Assign"
  input: "^beta2_power_4/Assign"
  input: "^beta2_power_5/Assign"
  input: "^beta2_power_6/Assign"
}
node {
  name: "ArgMax_12/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_12"
  op: "ArgMax"
  input: "softmax_6"
  input: "ArgMax_12/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "ArgMax_13/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_13"
  op: "ArgMax"
  input: "Placeholder_13"
  input: "ArgMax_13/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Equal_6"
  op: "Equal"
  input: "ArgMax_12"
  input: "ArgMax_13"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Cast_6"
  op: "Cast"
  input: "Equal_6"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "Const_13"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_13"
  op: "Mean"
  input: "Cast_6"
  input: "Const_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "mul_19/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_19"
  op: "Mul"
  input: "Mean_13"
  input: "mul_19/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_20/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_20"
  op: "Mul"
  input: "Mean_13"
  input: "mul_20/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Placeholder_14"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 784
        }
      }
    }
  }
}
node {
  name: "Placeholder_15"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 10
        }
      }
    }
  }
}
node {
  name: "random_normal_28/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_28/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_28/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_28/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_28/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_28/mul"
  op: "Mul"
  input: "random_normal_28/RandomStandardNormal"
  input: "random_normal_28/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_28"
  op: "Add"
  input: "random_normal_28/mul"
  input: "random_normal_28/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_28"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_28/Assign"
  op: "Assign"
  input: "Variable_28"
  input: "random_normal_28"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_28/read"
  op: "Identity"
  input: "Variable_28"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
}
node {
  name: "random_normal_29/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "random_normal_29/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_29/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_29/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_29/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_29/mul"
  op: "Mul"
  input: "random_normal_29/RandomStandardNormal"
  input: "random_normal_29/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_29"
  op: "Add"
  input: "random_normal_29/mul"
  input: "random_normal_29/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_29"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_29/Assign"
  op: "Assign"
  input: "Variable_29"
  input: "random_normal_29"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_29/read"
  op: "Identity"
  input: "Variable_29"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
}
node {
  name: "MatMul_21"
  op: "MatMul"
  input: "Placeholder_14"
  input: "Variable_28/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_21"
  op: "Add"
  input: "MatMul_21"
  input: "Variable_29/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_14"
  op: "Sigmoid"
  input: "add_21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_30/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_30/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_30/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_30/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_30/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_30/mul"
  op: "Mul"
  input: "random_normal_30/RandomStandardNormal"
  input: "random_normal_30/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_30"
  op: "Add"
  input: "random_normal_30/mul"
  input: "random_normal_30/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_30"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_30/Assign"
  op: "Assign"
  input: "Variable_30"
  input: "random_normal_30"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_30/read"
  op: "Identity"
  input: "Variable_30"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
}
node {
  name: "random_normal_31/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "random_normal_31/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_31/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_31/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_31/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_31/mul"
  op: "Mul"
  input: "random_normal_31/RandomStandardNormal"
  input: "random_normal_31/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_31"
  op: "Add"
  input: "random_normal_31/mul"
  input: "random_normal_31/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_31"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_31/Assign"
  op: "Assign"
  input: "Variable_31"
  input: "random_normal_31"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_31/read"
  op: "Identity"
  input: "Variable_31"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
}
node {
  name: "MatMul_22"
  op: "MatMul"
  input: "Sigmoid_14"
  input: "Variable_30/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_22"
  op: "Add"
  input: "MatMul_22"
  input: "Variable_31/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_15"
  op: "Sigmoid"
  input: "add_22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_23"
  op: "MatMul"
  input: "Sigmoid_14"
  input: "Variable_30/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_23"
  op: "Add"
  input: "MatMul_23"
  input: "Variable_31/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "softmax_7"
  op: "Softmax"
  input: "add_23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Log_7"
  op: "Log"
  input: "softmax_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_21"
  op: "Mul"
  input: "Placeholder_15"
  input: "Log_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sum_7/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sum_7"
  op: "Sum"
  input: "mul_21"
  input: "Sum_7/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Neg_7"
  op: "Neg"
  input: "Sum_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_14"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_14"
  op: "Mean"
  input: "Neg_7"
  input: "Const_14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_7/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_7/Fill"
  op: "Fill"
  input: "gradients_7/Shape"
  input: "gradients_7/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Reshape"
  op: "Reshape"
  input: "gradients_7/Fill"
  input: "gradients_7/Mean_14_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Shape"
  op: "Shape"
  input: "Neg_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Tile"
  op: "Tile"
  input: "gradients_7/Mean_14_grad/Reshape"
  input: "gradients_7/Mean_14_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Shape_1"
  op: "Shape"
  input: "Neg_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Shape_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Prod"
  op: "Prod"
  input: "gradients_7/Mean_14_grad/Shape_1"
  input: "gradients_7/Mean_14_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Prod_1"
  op: "Prod"
  input: "gradients_7/Mean_14_grad/Shape_2"
  input: "gradients_7/Mean_14_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Maximum"
  op: "Maximum"
  input: "gradients_7/Mean_14_grad/Prod_1"
  input: "gradients_7/Mean_14_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_7/Mean_14_grad/Prod"
  input: "gradients_7/Mean_14_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/Cast"
  op: "Cast"
  input: "gradients_7/Mean_14_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/Mean_14_grad/truediv"
  op: "RealDiv"
  input: "gradients_7/Mean_14_grad/Tile"
  input: "gradients_7/Mean_14_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_7/Neg_7_grad/Neg"
  op: "Neg"
  input: "gradients_7/Mean_14_grad/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/Shape"
  op: "Shape"
  input: "mul_21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/add"
  op: "Add"
  input: "Sum_7/reduction_indices"
  input: "gradients_7/Sum_7_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/mod"
  op: "FloorMod"
  input: "gradients_7/Sum_7_grad/add"
  input: "gradients_7/Sum_7_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/range"
  op: "Range"
  input: "gradients_7/Sum_7_grad/range/start"
  input: "gradients_7/Sum_7_grad/Size"
  input: "gradients_7/Sum_7_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/Fill"
  op: "Fill"
  input: "gradients_7/Sum_7_grad/Shape_1"
  input: "gradients_7/Sum_7_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "gradients_7/Sum_7_grad/range"
  input: "gradients_7/Sum_7_grad/mod"
  input: "gradients_7/Sum_7_grad/Shape"
  input: "gradients_7/Sum_7_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/Maximum"
  op: "Maximum"
  input: "gradients_7/Sum_7_grad/DynamicStitch"
  input: "gradients_7/Sum_7_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_7/Sum_7_grad/Shape"
  input: "gradients_7/Sum_7_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/Sum_7_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/Reshape"
  op: "Reshape"
  input: "gradients_7/Neg_7_grad/Neg"
  input: "gradients_7/Sum_7_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/Sum_7_grad/Tile"
  op: "Tile"
  input: "gradients_7/Sum_7_grad/Reshape"
  input: "gradients_7/Sum_7_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/mul_21_grad/Shape"
  op: "Shape"
  input: "Placeholder_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/mul_21_grad/Shape_1"
  op: "Shape"
  input: "Log_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/mul_21_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_7/mul_21_grad/Shape"
  input: "gradients_7/mul_21_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/mul_21_grad/Mul"
  op: "Mul"
  input: "gradients_7/Sum_7_grad/Tile"
  input: "Log_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_7/mul_21_grad/Sum"
  op: "Sum"
  input: "gradients_7/mul_21_grad/Mul"
  input: "gradients_7/mul_21_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/mul_21_grad/Reshape"
  op: "Reshape"
  input: "gradients_7/mul_21_grad/Sum"
  input: "gradients_7/mul_21_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/mul_21_grad/Mul_1"
  op: "Mul"
  input: "Placeholder_15"
  input: "gradients_7/Sum_7_grad/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_7/mul_21_grad/Sum_1"
  op: "Sum"
  input: "gradients_7/mul_21_grad/Mul_1"
  input: "gradients_7/mul_21_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/mul_21_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_7/mul_21_grad/Sum_1"
  input: "gradients_7/mul_21_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/mul_21_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_7/mul_21_grad/Reshape"
  input: "^gradients_7/mul_21_grad/Reshape_1"
}
node {
  name: "gradients_7/mul_21_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_7/mul_21_grad/Reshape"
  input: "^gradients_7/mul_21_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/mul_21_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_7/mul_21_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_7/mul_21_grad/Reshape_1"
  input: "^gradients_7/mul_21_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/mul_21_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_7/Log_7_grad/Reciprocal"
  op: "Reciprocal"
  input: "softmax_7"
  input: "^gradients_7/mul_21_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_7/Log_7_grad/mul"
  op: "Mul"
  input: "gradients_7/mul_21_grad/tuple/control_dependency_1"
  input: "gradients_7/Log_7_grad/Reciprocal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_7/softmax_7_grad/mul"
  op: "Mul"
  input: "gradients_7/Log_7_grad/mul"
  input: "softmax_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_7/softmax_7_grad/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients_7/softmax_7_grad/Sum"
  op: "Sum"
  input: "gradients_7/softmax_7_grad/mul"
  input: "gradients_7/softmax_7_grad/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_7/softmax_7_grad/sub"
  op: "Sub"
  input: "gradients_7/Log_7_grad/mul"
  input: "gradients_7/softmax_7_grad/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_7/softmax_7_grad/mul_1"
  op: "Mul"
  input: "gradients_7/softmax_7_grad/sub"
  input: "softmax_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_7/add_23_grad/Shape"
  op: "Shape"
  input: "MatMul_23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/add_23_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "gradients_7/add_23_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_7/add_23_grad/Shape"
  input: "gradients_7/add_23_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/add_23_grad/Sum"
  op: "Sum"
  input: "gradients_7/softmax_7_grad/mul_1"
  input: "gradients_7/add_23_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/add_23_grad/Reshape"
  op: "Reshape"
  input: "gradients_7/add_23_grad/Sum"
  input: "gradients_7/add_23_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/add_23_grad/Sum_1"
  op: "Sum"
  input: "gradients_7/softmax_7_grad/mul_1"
  input: "gradients_7/add_23_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/add_23_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_7/add_23_grad/Sum_1"
  input: "gradients_7/add_23_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/add_23_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_7/add_23_grad/Reshape"
  input: "^gradients_7/add_23_grad/Reshape_1"
}
node {
  name: "gradients_7/add_23_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_7/add_23_grad/Reshape"
  input: "^gradients_7/add_23_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/add_23_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_7/add_23_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_7/add_23_grad/Reshape_1"
  input: "^gradients_7/add_23_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/add_23_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_7/MatMul_23_grad/MatMul"
  op: "MatMul"
  input: "gradients_7/add_23_grad/tuple/control_dependency"
  input: "Variable_30/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_7/MatMul_23_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_14"
  input: "gradients_7/add_23_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/MatMul_23_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_7/MatMul_23_grad/MatMul"
  input: "^gradients_7/MatMul_23_grad/MatMul_1"
}
node {
  name: "gradients_7/MatMul_23_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_7/MatMul_23_grad/MatMul"
  input: "^gradients_7/MatMul_23_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/MatMul_23_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_7/MatMul_23_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_7/MatMul_23_grad/MatMul_1"
  input: "^gradients_7/MatMul_23_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/MatMul_23_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_7/Sigmoid_14_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_14"
  input: "gradients_7/MatMul_23_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_7/add_21_grad/Shape"
  op: "Shape"
  input: "MatMul_21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/add_21_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "gradients_7/add_21_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_7/add_21_grad/Shape"
  input: "gradients_7/add_21_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/add_21_grad/Sum"
  op: "Sum"
  input: "gradients_7/Sigmoid_14_grad/SigmoidGrad"
  input: "gradients_7/add_21_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/add_21_grad/Reshape"
  op: "Reshape"
  input: "gradients_7/add_21_grad/Sum"
  input: "gradients_7/add_21_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/add_21_grad/Sum_1"
  op: "Sum"
  input: "gradients_7/Sigmoid_14_grad/SigmoidGrad"
  input: "gradients_7/add_21_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/add_21_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_7/add_21_grad/Sum_1"
  input: "gradients_7/add_21_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_7/add_21_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_7/add_21_grad/Reshape"
  input: "^gradients_7/add_21_grad/Reshape_1"
}
node {
  name: "gradients_7/add_21_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_7/add_21_grad/Reshape"
  input: "^gradients_7/add_21_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/add_21_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_7/add_21_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_7/add_21_grad/Reshape_1"
  input: "^gradients_7/add_21_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/add_21_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_7/MatMul_21_grad/MatMul"
  op: "MatMul"
  input: "gradients_7/add_21_grad/tuple/control_dependency"
  input: "Variable_28/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_7/MatMul_21_grad/MatMul_1"
  op: "MatMul"
  input: "Placeholder_14"
  input: "gradients_7/add_21_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_7/MatMul_21_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_7/MatMul_21_grad/MatMul"
  input: "^gradients_7/MatMul_21_grad/MatMul_1"
}
node {
  name: "gradients_7/MatMul_21_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_7/MatMul_21_grad/MatMul"
  input: "^gradients_7/MatMul_21_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/MatMul_21_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_7/MatMul_21_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_7/MatMul_21_grad/MatMul_1"
  input: "^gradients_7/MatMul_21_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_7/MatMul_21_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "beta1_power_7/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "beta1_power_7"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta1_power_7/Assign"
  op: "Assign"
  input: "beta1_power_7"
  input: "beta1_power_7/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta1_power_7/read"
  op: "Identity"
  input: "beta1_power_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
}
node {
  name: "beta2_power_7/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "beta2_power_7"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta2_power_7/Assign"
  op: "Assign"
  input: "beta2_power_7"
  input: "beta2_power_7/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta2_power_7/read"
  op: "Identity"
  input: "beta2_power_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
}
node {
  name: "Variable_28/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_28/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_28/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_28/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_28/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_28/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_28/Adam/Assign"
  op: "Assign"
  input: "Variable_28/Adam"
  input: "Variable_28/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_28/Adam/read"
  op: "Identity"
  input: "Variable_28/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
}
node {
  name: "Variable_28/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_28/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_28/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_28/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_28/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_28/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_28/Adam_1/Assign"
  op: "Assign"
  input: "Variable_28/Adam_1"
  input: "Variable_28/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_28/Adam_1/read"
  op: "Identity"
  input: "Variable_28/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
}
node {
  name: "Variable_29/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_29/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_29/Adam/Assign"
  op: "Assign"
  input: "Variable_29/Adam"
  input: "Variable_29/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_29/Adam/read"
  op: "Identity"
  input: "Variable_29/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
}
node {
  name: "Variable_29/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_29/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_29/Adam_1/Assign"
  op: "Assign"
  input: "Variable_29/Adam_1"
  input: "Variable_29/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_29/Adam_1/read"
  op: "Identity"
  input: "Variable_29/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
}
node {
  name: "Variable_30/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_30/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_30/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_30/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_30/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_30/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_30/Adam/Assign"
  op: "Assign"
  input: "Variable_30/Adam"
  input: "Variable_30/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_30/Adam/read"
  op: "Identity"
  input: "Variable_30/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
}
node {
  name: "Variable_30/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_30/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_30/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_30/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_30/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_30/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_30/Adam_1/Assign"
  op: "Assign"
  input: "Variable_30/Adam_1"
  input: "Variable_30/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_30/Adam_1/read"
  op: "Identity"
  input: "Variable_30/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
}
node {
  name: "Variable_31/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_31/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_31/Adam/Assign"
  op: "Assign"
  input: "Variable_31/Adam"
  input: "Variable_31/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_31/Adam/read"
  op: "Identity"
  input: "Variable_31/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
}
node {
  name: "Variable_31/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_31/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_31/Adam_1/Assign"
  op: "Assign"
  input: "Variable_31/Adam_1"
  input: "Variable_31/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_31/Adam_1/read"
  op: "Identity"
  input: "Variable_31/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
}
node {
  name: "Adam_7/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Adam_7/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam_7/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam_7/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "Adam_7/update_Variable_28/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_28"
  input: "Variable_28/Adam"
  input: "Variable_28/Adam_1"
  input: "beta1_power_7/read"
  input: "beta2_power_7/read"
  input: "Adam_7/learning_rate"
  input: "Adam_7/beta1"
  input: "Adam_7/beta2"
  input: "Adam_7/epsilon"
  input: "gradients_7/MatMul_21_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_7/update_Variable_29/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_29"
  input: "Variable_29/Adam"
  input: "Variable_29/Adam_1"
  input: "beta1_power_7/read"
  input: "beta2_power_7/read"
  input: "Adam_7/learning_rate"
  input: "Adam_7/beta1"
  input: "Adam_7/beta2"
  input: "Adam_7/epsilon"
  input: "gradients_7/add_21_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_7/update_Variable_30/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_30"
  input: "Variable_30/Adam"
  input: "Variable_30/Adam_1"
  input: "beta1_power_7/read"
  input: "beta2_power_7/read"
  input: "Adam_7/learning_rate"
  input: "Adam_7/beta1"
  input: "Adam_7/beta2"
  input: "Adam_7/epsilon"
  input: "gradients_7/MatMul_23_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_7/update_Variable_31/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_31"
  input: "Variable_31/Adam"
  input: "Variable_31/Adam_1"
  input: "beta1_power_7/read"
  input: "beta2_power_7/read"
  input: "Adam_7/learning_rate"
  input: "Adam_7/beta1"
  input: "Adam_7/beta2"
  input: "Adam_7/epsilon"
  input: "gradients_7/add_23_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_7/mul"
  op: "Mul"
  input: "beta1_power_7/read"
  input: "Adam_7/beta1"
  input: "^Adam_7/update_Variable_28/ApplyAdam"
  input: "^Adam_7/update_Variable_29/ApplyAdam"
  input: "^Adam_7/update_Variable_30/ApplyAdam"
  input: "^Adam_7/update_Variable_31/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
}
node {
  name: "Adam_7/Assign"
  op: "Assign"
  input: "beta1_power_7"
  input: "Adam_7/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_7/mul_1"
  op: "Mul"
  input: "beta2_power_7/read"
  input: "Adam_7/beta2"
  input: "^Adam_7/update_Variable_28/ApplyAdam"
  input: "^Adam_7/update_Variable_29/ApplyAdam"
  input: "^Adam_7/update_Variable_30/ApplyAdam"
  input: "^Adam_7/update_Variable_31/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
}
node {
  name: "Adam_7/Assign_1"
  op: "Assign"
  input: "beta2_power_7"
  input: "Adam_7/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_7"
  op: "NoOp"
  input: "^Adam_7/Assign"
  input: "^Adam_7/Assign_1"
  input: "^Adam_7/update_Variable_28/ApplyAdam"
  input: "^Adam_7/update_Variable_29/ApplyAdam"
  input: "^Adam_7/update_Variable_30/ApplyAdam"
  input: "^Adam_7/update_Variable_31/ApplyAdam"
}
node {
  name: "save_7/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save_7/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 112
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_16"
        string_val: "Variable_16/Adam"
        string_val: "Variable_16/Adam_1"
        string_val: "Variable_17"
        string_val: "Variable_17/Adam"
        string_val: "Variable_17/Adam_1"
        string_val: "Variable_18"
        string_val: "Variable_18/Adam"
        string_val: "Variable_18/Adam_1"
        string_val: "Variable_19"
        string_val: "Variable_19/Adam"
        string_val: "Variable_19/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_20"
        string_val: "Variable_20/Adam"
        string_val: "Variable_20/Adam_1"
        string_val: "Variable_21"
        string_val: "Variable_21/Adam"
        string_val: "Variable_21/Adam_1"
        string_val: "Variable_22"
        string_val: "Variable_22/Adam"
        string_val: "Variable_22/Adam_1"
        string_val: "Variable_23"
        string_val: "Variable_23/Adam"
        string_val: "Variable_23/Adam_1"
        string_val: "Variable_24"
        string_val: "Variable_24/Adam"
        string_val: "Variable_24/Adam_1"
        string_val: "Variable_25"
        string_val: "Variable_25/Adam"
        string_val: "Variable_25/Adam_1"
        string_val: "Variable_26"
        string_val: "Variable_26/Adam"
        string_val: "Variable_26/Adam_1"
        string_val: "Variable_27"
        string_val: "Variable_27/Adam"
        string_val: "Variable_27/Adam_1"
        string_val: "Variable_28"
        string_val: "Variable_28/Adam"
        string_val: "Variable_28/Adam_1"
        string_val: "Variable_29"
        string_val: "Variable_29/Adam"
        string_val: "Variable_29/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_30"
        string_val: "Variable_30/Adam"
        string_val: "Variable_30/Adam_1"
        string_val: "Variable_31"
        string_val: "Variable_31/Adam"
        string_val: "Variable_31/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta1_power_3"
        string_val: "beta1_power_4"
        string_val: "beta1_power_5"
        string_val: "beta1_power_6"
        string_val: "beta1_power_7"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
        string_val: "beta2_power_3"
        string_val: "beta2_power_4"
        string_val: "beta2_power_5"
        string_val: "beta2_power_6"
        string_val: "beta2_power_7"
      }
    }
  }
}
node {
  name: "save_7/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 112
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_7/SaveV2"
  op: "SaveV2"
  input: "save_7/Const"
  input: "save_7/SaveV2/tensor_names"
  input: "save_7/SaveV2/shape_and_slices"
  input: "Variable"
  input: "Variable/Adam"
  input: "Variable/Adam_1"
  input: "Variable_1"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam_1"
  input: "Variable_10"
  input: "Variable_10/Adam"
  input: "Variable_10/Adam_1"
  input: "Variable_11"
  input: "Variable_11/Adam"
  input: "Variable_11/Adam_1"
  input: "Variable_12"
  input: "Variable_12/Adam"
  input: "Variable_12/Adam_1"
  input: "Variable_13"
  input: "Variable_13/Adam"
  input: "Variable_13/Adam_1"
  input: "Variable_14"
  input: "Variable_14/Adam"
  input: "Variable_14/Adam_1"
  input: "Variable_15"
  input: "Variable_15/Adam"
  input: "Variable_15/Adam_1"
  input: "Variable_16"
  input: "Variable_16/Adam"
  input: "Variable_16/Adam_1"
  input: "Variable_17"
  input: "Variable_17/Adam"
  input: "Variable_17/Adam_1"
  input: "Variable_18"
  input: "Variable_18/Adam"
  input: "Variable_18/Adam_1"
  input: "Variable_19"
  input: "Variable_19/Adam"
  input: "Variable_19/Adam_1"
  input: "Variable_2"
  input: "Variable_2/Adam"
  input: "Variable_2/Adam_1"
  input: "Variable_20"
  input: "Variable_20/Adam"
  input: "Variable_20/Adam_1"
  input: "Variable_21"
  input: "Variable_21/Adam"
  input: "Variable_21/Adam_1"
  input: "Variable_22"
  input: "Variable_22/Adam"
  input: "Variable_22/Adam_1"
  input: "Variable_23"
  input: "Variable_23/Adam"
  input: "Variable_23/Adam_1"
  input: "Variable_24"
  input: "Variable_24/Adam"
  input: "Variable_24/Adam_1"
  input: "Variable_25"
  input: "Variable_25/Adam"
  input: "Variable_25/Adam_1"
  input: "Variable_26"
  input: "Variable_26/Adam"
  input: "Variable_26/Adam_1"
  input: "Variable_27"
  input: "Variable_27/Adam"
  input: "Variable_27/Adam_1"
  input: "Variable_28"
  input: "Variable_28/Adam"
  input: "Variable_28/Adam_1"
  input: "Variable_29"
  input: "Variable_29/Adam"
  input: "Variable_29/Adam_1"
  input: "Variable_3"
  input: "Variable_3/Adam"
  input: "Variable_3/Adam_1"
  input: "Variable_30"
  input: "Variable_30/Adam"
  input: "Variable_30/Adam_1"
  input: "Variable_31"
  input: "Variable_31/Adam"
  input: "Variable_31/Adam_1"
  input: "Variable_4"
  input: "Variable_4/Adam"
  input: "Variable_4/Adam_1"
  input: "Variable_5"
  input: "Variable_5/Adam"
  input: "Variable_5/Adam_1"
  input: "Variable_6"
  input: "Variable_6/Adam"
  input: "Variable_6/Adam_1"
  input: "Variable_7"
  input: "Variable_7/Adam"
  input: "Variable_7/Adam_1"
  input: "Variable_8"
  input: "Variable_8/Adam"
  input: "Variable_8/Adam_1"
  input: "Variable_9"
  input: "Variable_9/Adam"
  input: "Variable_9/Adam_1"
  input: "beta1_power"
  input: "beta1_power_1"
  input: "beta1_power_2"
  input: "beta1_power_3"
  input: "beta1_power_4"
  input: "beta1_power_5"
  input: "beta1_power_6"
  input: "beta1_power_7"
  input: "beta2_power"
  input: "beta2_power_1"
  input: "beta2_power_2"
  input: "beta2_power_3"
  input: "beta2_power_4"
  input: "beta2_power_5"
  input: "beta2_power_6"
  input: "beta2_power_7"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_7/control_dependency"
  op: "Identity"
  input: "save_7/Const"
  input: "^save_7/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save_7/Const"
      }
    }
  }
}
node {
  name: "save_7/RestoreV2/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 112
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_16"
        string_val: "Variable_16/Adam"
        string_val: "Variable_16/Adam_1"
        string_val: "Variable_17"
        string_val: "Variable_17/Adam"
        string_val: "Variable_17/Adam_1"
        string_val: "Variable_18"
        string_val: "Variable_18/Adam"
        string_val: "Variable_18/Adam_1"
        string_val: "Variable_19"
        string_val: "Variable_19/Adam"
        string_val: "Variable_19/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_20"
        string_val: "Variable_20/Adam"
        string_val: "Variable_20/Adam_1"
        string_val: "Variable_21"
        string_val: "Variable_21/Adam"
        string_val: "Variable_21/Adam_1"
        string_val: "Variable_22"
        string_val: "Variable_22/Adam"
        string_val: "Variable_22/Adam_1"
        string_val: "Variable_23"
        string_val: "Variable_23/Adam"
        string_val: "Variable_23/Adam_1"
        string_val: "Variable_24"
        string_val: "Variable_24/Adam"
        string_val: "Variable_24/Adam_1"
        string_val: "Variable_25"
        string_val: "Variable_25/Adam"
        string_val: "Variable_25/Adam_1"
        string_val: "Variable_26"
        string_val: "Variable_26/Adam"
        string_val: "Variable_26/Adam_1"
        string_val: "Variable_27"
        string_val: "Variable_27/Adam"
        string_val: "Variable_27/Adam_1"
        string_val: "Variable_28"
        string_val: "Variable_28/Adam"
        string_val: "Variable_28/Adam_1"
        string_val: "Variable_29"
        string_val: "Variable_29/Adam"
        string_val: "Variable_29/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_30"
        string_val: "Variable_30/Adam"
        string_val: "Variable_30/Adam_1"
        string_val: "Variable_31"
        string_val: "Variable_31/Adam"
        string_val: "Variable_31/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta1_power_3"
        string_val: "beta1_power_4"
        string_val: "beta1_power_5"
        string_val: "beta1_power_6"
        string_val: "beta1_power_7"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
        string_val: "beta2_power_3"
        string_val: "beta2_power_4"
        string_val: "beta2_power_5"
        string_val: "beta2_power_6"
        string_val: "beta2_power_7"
      }
    }
  }
}
node {
  name: "save_7/RestoreV2/shape_and_slices"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 112
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_7/RestoreV2"
  op: "RestoreV2"
  input: "save_7/Const"
  input: "save_7/RestoreV2/tensor_names"
  input: "save_7/RestoreV2/shape_and_slices"
  device: "/device:CPU:0"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_7/Assign"
  op: "Assign"
  input: "Variable"
  input: "save_7/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_1"
  op: "Assign"
  input: "Variable/Adam"
  input: "save_7/RestoreV2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_2"
  op: "Assign"
  input: "Variable/Adam_1"
  input: "save_7/RestoreV2:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_3"
  op: "Assign"
  input: "Variable_1"
  input: "save_7/RestoreV2:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_4"
  op: "Assign"
  input: "Variable_1/Adam"
  input: "save_7/RestoreV2:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_5"
  op: "Assign"
  input: "Variable_1/Adam_1"
  input: "save_7/RestoreV2:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_6"
  op: "Assign"
  input: "Variable_10"
  input: "save_7/RestoreV2:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_7"
  op: "Assign"
  input: "Variable_10/Adam"
  input: "save_7/RestoreV2:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_8"
  op: "Assign"
  input: "Variable_10/Adam_1"
  input: "save_7/RestoreV2:8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_9"
  op: "Assign"
  input: "Variable_11"
  input: "save_7/RestoreV2:9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_10"
  op: "Assign"
  input: "Variable_11/Adam"
  input: "save_7/RestoreV2:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_11"
  op: "Assign"
  input: "Variable_11/Adam_1"
  input: "save_7/RestoreV2:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_12"
  op: "Assign"
  input: "Variable_12"
  input: "save_7/RestoreV2:12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_13"
  op: "Assign"
  input: "Variable_12/Adam"
  input: "save_7/RestoreV2:13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_14"
  op: "Assign"
  input: "Variable_12/Adam_1"
  input: "save_7/RestoreV2:14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_15"
  op: "Assign"
  input: "Variable_13"
  input: "save_7/RestoreV2:15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_16"
  op: "Assign"
  input: "Variable_13/Adam"
  input: "save_7/RestoreV2:16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_17"
  op: "Assign"
  input: "Variable_13/Adam_1"
  input: "save_7/RestoreV2:17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_18"
  op: "Assign"
  input: "Variable_14"
  input: "save_7/RestoreV2:18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_19"
  op: "Assign"
  input: "Variable_14/Adam"
  input: "save_7/RestoreV2:19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_20"
  op: "Assign"
  input: "Variable_14/Adam_1"
  input: "save_7/RestoreV2:20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_21"
  op: "Assign"
  input: "Variable_15"
  input: "save_7/RestoreV2:21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_22"
  op: "Assign"
  input: "Variable_15/Adam"
  input: "save_7/RestoreV2:22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_23"
  op: "Assign"
  input: "Variable_15/Adam_1"
  input: "save_7/RestoreV2:23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_24"
  op: "Assign"
  input: "Variable_16"
  input: "save_7/RestoreV2:24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_25"
  op: "Assign"
  input: "Variable_16/Adam"
  input: "save_7/RestoreV2:25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_26"
  op: "Assign"
  input: "Variable_16/Adam_1"
  input: "save_7/RestoreV2:26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_27"
  op: "Assign"
  input: "Variable_17"
  input: "save_7/RestoreV2:27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_28"
  op: "Assign"
  input: "Variable_17/Adam"
  input: "save_7/RestoreV2:28"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_29"
  op: "Assign"
  input: "Variable_17/Adam_1"
  input: "save_7/RestoreV2:29"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_30"
  op: "Assign"
  input: "Variable_18"
  input: "save_7/RestoreV2:30"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_31"
  op: "Assign"
  input: "Variable_18/Adam"
  input: "save_7/RestoreV2:31"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_32"
  op: "Assign"
  input: "Variable_18/Adam_1"
  input: "save_7/RestoreV2:32"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_33"
  op: "Assign"
  input: "Variable_19"
  input: "save_7/RestoreV2:33"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_34"
  op: "Assign"
  input: "Variable_19/Adam"
  input: "save_7/RestoreV2:34"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_35"
  op: "Assign"
  input: "Variable_19/Adam_1"
  input: "save_7/RestoreV2:35"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_36"
  op: "Assign"
  input: "Variable_2"
  input: "save_7/RestoreV2:36"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_37"
  op: "Assign"
  input: "Variable_2/Adam"
  input: "save_7/RestoreV2:37"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_38"
  op: "Assign"
  input: "Variable_2/Adam_1"
  input: "save_7/RestoreV2:38"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_39"
  op: "Assign"
  input: "Variable_20"
  input: "save_7/RestoreV2:39"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_40"
  op: "Assign"
  input: "Variable_20/Adam"
  input: "save_7/RestoreV2:40"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_41"
  op: "Assign"
  input: "Variable_20/Adam_1"
  input: "save_7/RestoreV2:41"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_42"
  op: "Assign"
  input: "Variable_21"
  input: "save_7/RestoreV2:42"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_43"
  op: "Assign"
  input: "Variable_21/Adam"
  input: "save_7/RestoreV2:43"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_44"
  op: "Assign"
  input: "Variable_21/Adam_1"
  input: "save_7/RestoreV2:44"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_45"
  op: "Assign"
  input: "Variable_22"
  input: "save_7/RestoreV2:45"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_46"
  op: "Assign"
  input: "Variable_22/Adam"
  input: "save_7/RestoreV2:46"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_47"
  op: "Assign"
  input: "Variable_22/Adam_1"
  input: "save_7/RestoreV2:47"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_48"
  op: "Assign"
  input: "Variable_23"
  input: "save_7/RestoreV2:48"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_49"
  op: "Assign"
  input: "Variable_23/Adam"
  input: "save_7/RestoreV2:49"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_50"
  op: "Assign"
  input: "Variable_23/Adam_1"
  input: "save_7/RestoreV2:50"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_51"
  op: "Assign"
  input: "Variable_24"
  input: "save_7/RestoreV2:51"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_52"
  op: "Assign"
  input: "Variable_24/Adam"
  input: "save_7/RestoreV2:52"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_53"
  op: "Assign"
  input: "Variable_24/Adam_1"
  input: "save_7/RestoreV2:53"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_54"
  op: "Assign"
  input: "Variable_25"
  input: "save_7/RestoreV2:54"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_55"
  op: "Assign"
  input: "Variable_25/Adam"
  input: "save_7/RestoreV2:55"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_56"
  op: "Assign"
  input: "Variable_25/Adam_1"
  input: "save_7/RestoreV2:56"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_57"
  op: "Assign"
  input: "Variable_26"
  input: "save_7/RestoreV2:57"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_58"
  op: "Assign"
  input: "Variable_26/Adam"
  input: "save_7/RestoreV2:58"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_59"
  op: "Assign"
  input: "Variable_26/Adam_1"
  input: "save_7/RestoreV2:59"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_60"
  op: "Assign"
  input: "Variable_27"
  input: "save_7/RestoreV2:60"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_61"
  op: "Assign"
  input: "Variable_27/Adam"
  input: "save_7/RestoreV2:61"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_62"
  op: "Assign"
  input: "Variable_27/Adam_1"
  input: "save_7/RestoreV2:62"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_63"
  op: "Assign"
  input: "Variable_28"
  input: "save_7/RestoreV2:63"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_64"
  op: "Assign"
  input: "Variable_28/Adam"
  input: "save_7/RestoreV2:64"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_65"
  op: "Assign"
  input: "Variable_28/Adam_1"
  input: "save_7/RestoreV2:65"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_66"
  op: "Assign"
  input: "Variable_29"
  input: "save_7/RestoreV2:66"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_67"
  op: "Assign"
  input: "Variable_29/Adam"
  input: "save_7/RestoreV2:67"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_68"
  op: "Assign"
  input: "Variable_29/Adam_1"
  input: "save_7/RestoreV2:68"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_29"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_69"
  op: "Assign"
  input: "Variable_3"
  input: "save_7/RestoreV2:69"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_70"
  op: "Assign"
  input: "Variable_3/Adam"
  input: "save_7/RestoreV2:70"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_71"
  op: "Assign"
  input: "Variable_3/Adam_1"
  input: "save_7/RestoreV2:71"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_72"
  op: "Assign"
  input: "Variable_30"
  input: "save_7/RestoreV2:72"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_73"
  op: "Assign"
  input: "Variable_30/Adam"
  input: "save_7/RestoreV2:73"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_74"
  op: "Assign"
  input: "Variable_30/Adam_1"
  input: "save_7/RestoreV2:74"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_30"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_75"
  op: "Assign"
  input: "Variable_31"
  input: "save_7/RestoreV2:75"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_76"
  op: "Assign"
  input: "Variable_31/Adam"
  input: "save_7/RestoreV2:76"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_77"
  op: "Assign"
  input: "Variable_31/Adam_1"
  input: "save_7/RestoreV2:77"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_31"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_78"
  op: "Assign"
  input: "Variable_4"
  input: "save_7/RestoreV2:78"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_79"
  op: "Assign"
  input: "Variable_4/Adam"
  input: "save_7/RestoreV2:79"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_80"
  op: "Assign"
  input: "Variable_4/Adam_1"
  input: "save_7/RestoreV2:80"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_81"
  op: "Assign"
  input: "Variable_5"
  input: "save_7/RestoreV2:81"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_82"
  op: "Assign"
  input: "Variable_5/Adam"
  input: "save_7/RestoreV2:82"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_83"
  op: "Assign"
  input: "Variable_5/Adam_1"
  input: "save_7/RestoreV2:83"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_84"
  op: "Assign"
  input: "Variable_6"
  input: "save_7/RestoreV2:84"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_85"
  op: "Assign"
  input: "Variable_6/Adam"
  input: "save_7/RestoreV2:85"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_86"
  op: "Assign"
  input: "Variable_6/Adam_1"
  input: "save_7/RestoreV2:86"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_87"
  op: "Assign"
  input: "Variable_7"
  input: "save_7/RestoreV2:87"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_88"
  op: "Assign"
  input: "Variable_7/Adam"
  input: "save_7/RestoreV2:88"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_89"
  op: "Assign"
  input: "Variable_7/Adam_1"
  input: "save_7/RestoreV2:89"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_90"
  op: "Assign"
  input: "Variable_8"
  input: "save_7/RestoreV2:90"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_91"
  op: "Assign"
  input: "Variable_8/Adam"
  input: "save_7/RestoreV2:91"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_92"
  op: "Assign"
  input: "Variable_8/Adam_1"
  input: "save_7/RestoreV2:92"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_93"
  op: "Assign"
  input: "Variable_9"
  input: "save_7/RestoreV2:93"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_94"
  op: "Assign"
  input: "Variable_9/Adam"
  input: "save_7/RestoreV2:94"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_95"
  op: "Assign"
  input: "Variable_9/Adam_1"
  input: "save_7/RestoreV2:95"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_96"
  op: "Assign"
  input: "beta1_power"
  input: "save_7/RestoreV2:96"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_97"
  op: "Assign"
  input: "beta1_power_1"
  input: "save_7/RestoreV2:97"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_98"
  op: "Assign"
  input: "beta1_power_2"
  input: "save_7/RestoreV2:98"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_99"
  op: "Assign"
  input: "beta1_power_3"
  input: "save_7/RestoreV2:99"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_100"
  op: "Assign"
  input: "beta1_power_4"
  input: "save_7/RestoreV2:100"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_101"
  op: "Assign"
  input: "beta1_power_5"
  input: "save_7/RestoreV2:101"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_102"
  op: "Assign"
  input: "beta1_power_6"
  input: "save_7/RestoreV2:102"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_103"
  op: "Assign"
  input: "beta1_power_7"
  input: "save_7/RestoreV2:103"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_104"
  op: "Assign"
  input: "beta2_power"
  input: "save_7/RestoreV2:104"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_105"
  op: "Assign"
  input: "beta2_power_1"
  input: "save_7/RestoreV2:105"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_106"
  op: "Assign"
  input: "beta2_power_2"
  input: "save_7/RestoreV2:106"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_107"
  op: "Assign"
  input: "beta2_power_3"
  input: "save_7/RestoreV2:107"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_108"
  op: "Assign"
  input: "beta2_power_4"
  input: "save_7/RestoreV2:108"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_109"
  op: "Assign"
  input: "beta2_power_5"
  input: "save_7/RestoreV2:109"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_110"
  op: "Assign"
  input: "beta2_power_6"
  input: "save_7/RestoreV2:110"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/Assign_111"
  op: "Assign"
  input: "beta2_power_7"
  input: "save_7/RestoreV2:111"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_28"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save_7/restore_all"
  op: "NoOp"
  input: "^save_7/Assign"
  input: "^save_7/Assign_1"
  input: "^save_7/Assign_10"
  input: "^save_7/Assign_100"
  input: "^save_7/Assign_101"
  input: "^save_7/Assign_102"
  input: "^save_7/Assign_103"
  input: "^save_7/Assign_104"
  input: "^save_7/Assign_105"
  input: "^save_7/Assign_106"
  input: "^save_7/Assign_107"
  input: "^save_7/Assign_108"
  input: "^save_7/Assign_109"
  input: "^save_7/Assign_11"
  input: "^save_7/Assign_110"
  input: "^save_7/Assign_111"
  input: "^save_7/Assign_12"
  input: "^save_7/Assign_13"
  input: "^save_7/Assign_14"
  input: "^save_7/Assign_15"
  input: "^save_7/Assign_16"
  input: "^save_7/Assign_17"
  input: "^save_7/Assign_18"
  input: "^save_7/Assign_19"
  input: "^save_7/Assign_2"
  input: "^save_7/Assign_20"
  input: "^save_7/Assign_21"
  input: "^save_7/Assign_22"
  input: "^save_7/Assign_23"
  input: "^save_7/Assign_24"
  input: "^save_7/Assign_25"
  input: "^save_7/Assign_26"
  input: "^save_7/Assign_27"
  input: "^save_7/Assign_28"
  input: "^save_7/Assign_29"
  input: "^save_7/Assign_3"
  input: "^save_7/Assign_30"
  input: "^save_7/Assign_31"
  input: "^save_7/Assign_32"
  input: "^save_7/Assign_33"
  input: "^save_7/Assign_34"
  input: "^save_7/Assign_35"
  input: "^save_7/Assign_36"
  input: "^save_7/Assign_37"
  input: "^save_7/Assign_38"
  input: "^save_7/Assign_39"
  input: "^save_7/Assign_4"
  input: "^save_7/Assign_40"
  input: "^save_7/Assign_41"
  input: "^save_7/Assign_42"
  input: "^save_7/Assign_43"
  input: "^save_7/Assign_44"
  input: "^save_7/Assign_45"
  input: "^save_7/Assign_46"
  input: "^save_7/Assign_47"
  input: "^save_7/Assign_48"
  input: "^save_7/Assign_49"
  input: "^save_7/Assign_5"
  input: "^save_7/Assign_50"
  input: "^save_7/Assign_51"
  input: "^save_7/Assign_52"
  input: "^save_7/Assign_53"
  input: "^save_7/Assign_54"
  input: "^save_7/Assign_55"
  input: "^save_7/Assign_56"
  input: "^save_7/Assign_57"
  input: "^save_7/Assign_58"
  input: "^save_7/Assign_59"
  input: "^save_7/Assign_6"
  input: "^save_7/Assign_60"
  input: "^save_7/Assign_61"
  input: "^save_7/Assign_62"
  input: "^save_7/Assign_63"
  input: "^save_7/Assign_64"
  input: "^save_7/Assign_65"
  input: "^save_7/Assign_66"
  input: "^save_7/Assign_67"
  input: "^save_7/Assign_68"
  input: "^save_7/Assign_69"
  input: "^save_7/Assign_7"
  input: "^save_7/Assign_70"
  input: "^save_7/Assign_71"
  input: "^save_7/Assign_72"
  input: "^save_7/Assign_73"
  input: "^save_7/Assign_74"
  input: "^save_7/Assign_75"
  input: "^save_7/Assign_76"
  input: "^save_7/Assign_77"
  input: "^save_7/Assign_78"
  input: "^save_7/Assign_79"
  input: "^save_7/Assign_8"
  input: "^save_7/Assign_80"
  input: "^save_7/Assign_81"
  input: "^save_7/Assign_82"
  input: "^save_7/Assign_83"
  input: "^save_7/Assign_84"
  input: "^save_7/Assign_85"
  input: "^save_7/Assign_86"
  input: "^save_7/Assign_87"
  input: "^save_7/Assign_88"
  input: "^save_7/Assign_89"
  input: "^save_7/Assign_9"
  input: "^save_7/Assign_90"
  input: "^save_7/Assign_91"
  input: "^save_7/Assign_92"
  input: "^save_7/Assign_93"
  input: "^save_7/Assign_94"
  input: "^save_7/Assign_95"
  input: "^save_7/Assign_96"
  input: "^save_7/Assign_97"
  input: "^save_7/Assign_98"
  input: "^save_7/Assign_99"
}
node {
  name: "init_7"
  op: "NoOp"
  input: "^Variable/Adam/Assign"
  input: "^Variable/Adam_1/Assign"
  input: "^Variable/Assign"
  input: "^Variable_1/Adam/Assign"
  input: "^Variable_1/Adam_1/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_10/Adam/Assign"
  input: "^Variable_10/Adam_1/Assign"
  input: "^Variable_10/Assign"
  input: "^Variable_11/Adam/Assign"
  input: "^Variable_11/Adam_1/Assign"
  input: "^Variable_11/Assign"
  input: "^Variable_12/Adam/Assign"
  input: "^Variable_12/Adam_1/Assign"
  input: "^Variable_12/Assign"
  input: "^Variable_13/Adam/Assign"
  input: "^Variable_13/Adam_1/Assign"
  input: "^Variable_13/Assign"
  input: "^Variable_14/Adam/Assign"
  input: "^Variable_14/Adam_1/Assign"
  input: "^Variable_14/Assign"
  input: "^Variable_15/Adam/Assign"
  input: "^Variable_15/Adam_1/Assign"
  input: "^Variable_15/Assign"
  input: "^Variable_16/Adam/Assign"
  input: "^Variable_16/Adam_1/Assign"
  input: "^Variable_16/Assign"
  input: "^Variable_17/Adam/Assign"
  input: "^Variable_17/Adam_1/Assign"
  input: "^Variable_17/Assign"
  input: "^Variable_18/Adam/Assign"
  input: "^Variable_18/Adam_1/Assign"
  input: "^Variable_18/Assign"
  input: "^Variable_19/Adam/Assign"
  input: "^Variable_19/Adam_1/Assign"
  input: "^Variable_19/Assign"
  input: "^Variable_2/Adam/Assign"
  input: "^Variable_2/Adam_1/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_20/Adam/Assign"
  input: "^Variable_20/Adam_1/Assign"
  input: "^Variable_20/Assign"
  input: "^Variable_21/Adam/Assign"
  input: "^Variable_21/Adam_1/Assign"
  input: "^Variable_21/Assign"
  input: "^Variable_22/Adam/Assign"
  input: "^Variable_22/Adam_1/Assign"
  input: "^Variable_22/Assign"
  input: "^Variable_23/Adam/Assign"
  input: "^Variable_23/Adam_1/Assign"
  input: "^Variable_23/Assign"
  input: "^Variable_24/Adam/Assign"
  input: "^Variable_24/Adam_1/Assign"
  input: "^Variable_24/Assign"
  input: "^Variable_25/Adam/Assign"
  input: "^Variable_25/Adam_1/Assign"
  input: "^Variable_25/Assign"
  input: "^Variable_26/Adam/Assign"
  input: "^Variable_26/Adam_1/Assign"
  input: "^Variable_26/Assign"
  input: "^Variable_27/Adam/Assign"
  input: "^Variable_27/Adam_1/Assign"
  input: "^Variable_27/Assign"
  input: "^Variable_28/Adam/Assign"
  input: "^Variable_28/Adam_1/Assign"
  input: "^Variable_28/Assign"
  input: "^Variable_29/Adam/Assign"
  input: "^Variable_29/Adam_1/Assign"
  input: "^Variable_29/Assign"
  input: "^Variable_3/Adam/Assign"
  input: "^Variable_3/Adam_1/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_30/Adam/Assign"
  input: "^Variable_30/Adam_1/Assign"
  input: "^Variable_30/Assign"
  input: "^Variable_31/Adam/Assign"
  input: "^Variable_31/Adam_1/Assign"
  input: "^Variable_31/Assign"
  input: "^Variable_4/Adam/Assign"
  input: "^Variable_4/Adam_1/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Adam/Assign"
  input: "^Variable_5/Adam_1/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Adam/Assign"
  input: "^Variable_6/Adam_1/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Adam/Assign"
  input: "^Variable_7/Adam_1/Assign"
  input: "^Variable_7/Assign"
  input: "^Variable_8/Adam/Assign"
  input: "^Variable_8/Adam_1/Assign"
  input: "^Variable_8/Assign"
  input: "^Variable_9/Adam/Assign"
  input: "^Variable_9/Adam_1/Assign"
  input: "^Variable_9/Assign"
  input: "^beta1_power/Assign"
  input: "^beta1_power_1/Assign"
  input: "^beta1_power_2/Assign"
  input: "^beta1_power_3/Assign"
  input: "^beta1_power_4/Assign"
  input: "^beta1_power_5/Assign"
  input: "^beta1_power_6/Assign"
  input: "^beta1_power_7/Assign"
  input: "^beta2_power/Assign"
  input: "^beta2_power_1/Assign"
  input: "^beta2_power_2/Assign"
  input: "^beta2_power_3/Assign"
  input: "^beta2_power_4/Assign"
  input: "^beta2_power_5/Assign"
  input: "^beta2_power_6/Assign"
  input: "^beta2_power_7/Assign"
}
node {
  name: "ArgMax_14/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_14"
  op: "ArgMax"
  input: "softmax_7"
  input: "ArgMax_14/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "ArgMax_15/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax_15"
  op: "ArgMax"
  input: "Placeholder_15"
  input: "ArgMax_15/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Equal_7"
  op: "Equal"
  input: "ArgMax_14"
  input: "ArgMax_15"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Cast_7"
  op: "Cast"
  input: "Equal_7"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "Const_15"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_15"
  op: "Mean"
  input: "Cast_7"
  input: "Const_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "mul_22/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_22"
  op: "Mul"
  input: "Mean_15"
  input: "mul_22/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_23/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 100.0
      }
    }
  }
}
node {
  name: "mul_23"
  op: "Mul"
  input: "Mean_15"
  input: "mul_23/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Placeholder_16"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 784
        }
      }
    }
  }
}
node {
  name: "Placeholder_17"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 10
        }
      }
    }
  }
}
node {
  name: "random_normal_32/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_32/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_32/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_32/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_32/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_32/mul"
  op: "Mul"
  input: "random_normal_32/RandomStandardNormal"
  input: "random_normal_32/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_32"
  op: "Add"
  input: "random_normal_32/mul"
  input: "random_normal_32/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_32"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_32/Assign"
  op: "Assign"
  input: "Variable_32"
  input: "random_normal_32"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_32/read"
  op: "Identity"
  input: "Variable_32"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
}
node {
  name: "random_normal_33/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "random_normal_33/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_33/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_33/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_33/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_33/mul"
  op: "Mul"
  input: "random_normal_33/RandomStandardNormal"
  input: "random_normal_33/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_33"
  op: "Add"
  input: "random_normal_33/mul"
  input: "random_normal_33/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_33"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_33/Assign"
  op: "Assign"
  input: "Variable_33"
  input: "random_normal_33"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_33"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_33/read"
  op: "Identity"
  input: "Variable_33"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_33"
      }
    }
  }
}
node {
  name: "MatMul_24"
  op: "MatMul"
  input: "Placeholder_16"
  input: "Variable_32/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_24"
  op: "Add"
  input: "MatMul_24"
  input: "Variable_33/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_16"
  op: "Sigmoid"
  input: "add_24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_34/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "random_normal_34/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_34/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_34/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_34/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_34/mul"
  op: "Mul"
  input: "random_normal_34/RandomStandardNormal"
  input: "random_normal_34/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_34"
  op: "Add"
  input: "random_normal_34/mul"
  input: "random_normal_34/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_34"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_34/Assign"
  op: "Assign"
  input: "Variable_34"
  input: "random_normal_34"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_34/read"
  op: "Identity"
  input: "Variable_34"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
}
node {
  name: "random_normal_35/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "random_normal_35/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "random_normal_35/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_normal_35/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "random_normal_35/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_normal_35/mul"
  op: "Mul"
  input: "random_normal_35/RandomStandardNormal"
  input: "random_normal_35/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_normal_35"
  op: "Add"
  input: "random_normal_35/mul"
  input: "random_normal_35/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_35"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_35/Assign"
  op: "Assign"
  input: "Variable_35"
  input: "random_normal_35"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_35"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_35/read"
  op: "Identity"
  input: "Variable_35"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_35"
      }
    }
  }
}
node {
  name: "MatMul_25"
  op: "MatMul"
  input: "Sigmoid_16"
  input: "Variable_34/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_25"
  op: "Add"
  input: "MatMul_25"
  input: "Variable_35/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_17"
  op: "Sigmoid"
  input: "add_25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_26"
  op: "MatMul"
  input: "Sigmoid_16"
  input: "Variable_34/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "add_26"
  op: "Add"
  input: "MatMul_26"
  input: "Variable_35/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "softmax_8"
  op: "Softmax"
  input: "add_26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Log_8"
  op: "Log"
  input: "softmax_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "mul_24"
  op: "Mul"
  input: "Placeholder_17"
  input: "Log_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sum_8/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sum_8"
  op: "Sum"
  input: "mul_24"
  input: "Sum_8/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Neg_8"
  op: "Neg"
  input: "Sum_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_16"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_16"
  op: "Mean"
  input: "Neg_8"
  input: "Const_16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_8/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_8/Fill"
  op: "Fill"
  input: "gradients_8/Shape"
  input: "gradients_8/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Reshape"
  op: "Reshape"
  input: "gradients_8/Fill"
  input: "gradients_8/Mean_16_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Shape"
  op: "Shape"
  input: "Neg_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Tile"
  op: "Tile"
  input: "gradients_8/Mean_16_grad/Reshape"
  input: "gradients_8/Mean_16_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Shape_1"
  op: "Shape"
  input: "Neg_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Shape_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Prod"
  op: "Prod"
  input: "gradients_8/Mean_16_grad/Shape_1"
  input: "gradients_8/Mean_16_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Prod_1"
  op: "Prod"
  input: "gradients_8/Mean_16_grad/Shape_2"
  input: "gradients_8/Mean_16_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Maximum"
  op: "Maximum"
  input: "gradients_8/Mean_16_grad/Prod_1"
  input: "gradients_8/Mean_16_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_8/Mean_16_grad/Prod"
  input: "gradients_8/Mean_16_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/Cast"
  op: "Cast"
  input: "gradients_8/Mean_16_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/Mean_16_grad/truediv"
  op: "RealDiv"
  input: "gradients_8/Mean_16_grad/Tile"
  input: "gradients_8/Mean_16_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_8/Neg_8_grad/Neg"
  op: "Neg"
  input: "gradients_8/Mean_16_grad/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/Shape"
  op: "Shape"
  input: "mul_24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/add"
  op: "Add"
  input: "Sum_8/reduction_indices"
  input: "gradients_8/Sum_8_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/mod"
  op: "FloorMod"
  input: "gradients_8/Sum_8_grad/add"
  input: "gradients_8/Sum_8_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/range"
  op: "Range"
  input: "gradients_8/Sum_8_grad/range/start"
  input: "gradients_8/Sum_8_grad/Size"
  input: "gradients_8/Sum_8_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/Fill"
  op: "Fill"
  input: "gradients_8/Sum_8_grad/Shape_1"
  input: "gradients_8/Sum_8_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "gradients_8/Sum_8_grad/range"
  input: "gradients_8/Sum_8_grad/mod"
  input: "gradients_8/Sum_8_grad/Shape"
  input: "gradients_8/Sum_8_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/Maximum"
  op: "Maximum"
  input: "gradients_8/Sum_8_grad/DynamicStitch"
  input: "gradients_8/Sum_8_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/floordiv"
  op: "FloorDiv"
  input: "gradients_8/Sum_8_grad/Shape"
  input: "gradients_8/Sum_8_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/Sum_8_grad/Shape"
      }
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/Reshape"
  op: "Reshape"
  input: "gradients_8/Neg_8_grad/Neg"
  input: "gradients_8/Sum_8_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/Sum_8_grad/Tile"
  op: "Tile"
  input: "gradients_8/Sum_8_grad/Reshape"
  input: "gradients_8/Sum_8_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/mul_24_grad/Shape"
  op: "Shape"
  input: "Placeholder_17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/mul_24_grad/Shape_1"
  op: "Shape"
  input: "Log_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/mul_24_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_8/mul_24_grad/Shape"
  input: "gradients_8/mul_24_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/mul_24_grad/Mul"
  op: "Mul"
  input: "gradients_8/Sum_8_grad/Tile"
  input: "Log_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_8/mul_24_grad/Sum"
  op: "Sum"
  input: "gradients_8/mul_24_grad/Mul"
  input: "gradients_8/mul_24_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/mul_24_grad/Reshape"
  op: "Reshape"
  input: "gradients_8/mul_24_grad/Sum"
  input: "gradients_8/mul_24_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/mul_24_grad/Mul_1"
  op: "Mul"
  input: "Placeholder_17"
  input: "gradients_8/Sum_8_grad/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_8/mul_24_grad/Sum_1"
  op: "Sum"
  input: "gradients_8/mul_24_grad/Mul_1"
  input: "gradients_8/mul_24_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/mul_24_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_8/mul_24_grad/Sum_1"
  input: "gradients_8/mul_24_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/mul_24_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_8/mul_24_grad/Reshape"
  input: "^gradients_8/mul_24_grad/Reshape_1"
}
node {
  name: "gradients_8/mul_24_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_8/mul_24_grad/Reshape"
  input: "^gradients_8/mul_24_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/mul_24_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_8/mul_24_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_8/mul_24_grad/Reshape_1"
  input: "^gradients_8/mul_24_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/mul_24_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_8/Log_8_grad/Reciprocal"
  op: "Reciprocal"
  input: "softmax_8"
  input: "^gradients_8/mul_24_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_8/Log_8_grad/mul"
  op: "Mul"
  input: "gradients_8/mul_24_grad/tuple/control_dependency_1"
  input: "gradients_8/Log_8_grad/Reciprocal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_8/softmax_8_grad/mul"
  op: "Mul"
  input: "gradients_8/Log_8_grad/mul"
  input: "softmax_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_8/softmax_8_grad/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients_8/softmax_8_grad/Sum"
  op: "Sum"
  input: "gradients_8/softmax_8_grad/mul"
  input: "gradients_8/softmax_8_grad/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_8/softmax_8_grad/sub"
  op: "Sub"
  input: "gradients_8/Log_8_grad/mul"
  input: "gradients_8/softmax_8_grad/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_8/softmax_8_grad/mul_1"
  op: "Mul"
  input: "gradients_8/softmax_8_grad/sub"
  input: "softmax_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_8/add_26_grad/Shape"
  op: "Shape"
  input: "MatMul_26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/add_26_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 10
      }
    }
  }
}
node {
  name: "gradients_8/add_26_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_8/add_26_grad/Shape"
  input: "gradients_8/add_26_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/add_26_grad/Sum"
  op: "Sum"
  input: "gradients_8/softmax_8_grad/mul_1"
  input: "gradients_8/add_26_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/add_26_grad/Reshape"
  op: "Reshape"
  input: "gradients_8/add_26_grad/Sum"
  input: "gradients_8/add_26_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/add_26_grad/Sum_1"
  op: "Sum"
  input: "gradients_8/softmax_8_grad/mul_1"
  input: "gradients_8/add_26_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/add_26_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_8/add_26_grad/Sum_1"
  input: "gradients_8/add_26_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/add_26_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_8/add_26_grad/Reshape"
  input: "^gradients_8/add_26_grad/Reshape_1"
}
node {
  name: "gradients_8/add_26_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_8/add_26_grad/Reshape"
  input: "^gradients_8/add_26_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/add_26_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_8/add_26_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_8/add_26_grad/Reshape_1"
  input: "^gradients_8/add_26_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/add_26_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_8/MatMul_26_grad/MatMul"
  op: "MatMul"
  input: "gradients_8/add_26_grad/tuple/control_dependency"
  input: "Variable_34/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_8/MatMul_26_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_16"
  input: "gradients_8/add_26_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/MatMul_26_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_8/MatMul_26_grad/MatMul"
  input: "^gradients_8/MatMul_26_grad/MatMul_1"
}
node {
  name: "gradients_8/MatMul_26_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_8/MatMul_26_grad/MatMul"
  input: "^gradients_8/MatMul_26_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/MatMul_26_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_8/MatMul_26_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_8/MatMul_26_grad/MatMul_1"
  input: "^gradients_8/MatMul_26_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/MatMul_26_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_8/Sigmoid_16_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_16"
  input: "gradients_8/MatMul_26_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_8/add_24_grad/Shape"
  op: "Shape"
  input: "MatMul_24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/add_24_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 100
      }
    }
  }
}
node {
  name: "gradients_8/add_24_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_8/add_24_grad/Shape"
  input: "gradients_8/add_24_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/add_24_grad/Sum"
  op: "Sum"
  input: "gradients_8/Sigmoid_16_grad/SigmoidGrad"
  input: "gradients_8/add_24_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/add_24_grad/Reshape"
  op: "Reshape"
  input: "gradients_8/add_24_grad/Sum"
  input: "gradients_8/add_24_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/add_24_grad/Sum_1"
  op: "Sum"
  input: "gradients_8/Sigmoid_16_grad/SigmoidGrad"
  input: "gradients_8/add_24_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/add_24_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_8/add_24_grad/Sum_1"
  input: "gradients_8/add_24_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_8/add_24_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_8/add_24_grad/Reshape"
  input: "^gradients_8/add_24_grad/Reshape_1"
}
node {
  name: "gradients_8/add_24_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_8/add_24_grad/Reshape"
  input: "^gradients_8/add_24_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/add_24_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_8/add_24_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_8/add_24_grad/Reshape_1"
  input: "^gradients_8/add_24_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/add_24_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_8/MatMul_24_grad/MatMul"
  op: "MatMul"
  input: "gradients_8/add_24_grad/tuple/control_dependency"
  input: "Variable_32/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_8/MatMul_24_grad/MatMul_1"
  op: "MatMul"
  input: "Placeholder_16"
  input: "gradients_8/add_24_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_8/MatMul_24_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_8/MatMul_24_grad/MatMul"
  input: "^gradients_8/MatMul_24_grad/MatMul_1"
}
node {
  name: "gradients_8/MatMul_24_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_8/MatMul_24_grad/MatMul"
  input: "^gradients_8/MatMul_24_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/MatMul_24_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_8/MatMul_24_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_8/MatMul_24_grad/MatMul_1"
  input: "^gradients_8/MatMul_24_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_8/MatMul_24_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "beta1_power_8/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "beta1_power_8"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta1_power_8/Assign"
  op: "Assign"
  input: "beta1_power_8"
  input: "beta1_power_8/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta1_power_8/read"
  op: "Identity"
  input: "beta1_power_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
}
node {
  name: "beta2_power_8/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "beta2_power_8"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta2_power_8/Assign"
  op: "Assign"
  input: "beta2_power_8"
  input: "beta2_power_8/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta2_power_8/read"
  op: "Identity"
  input: "beta2_power_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
}
node {
  name: "Variable_32/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_32/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_32/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_32/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_32/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_32/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_32/Adam/Assign"
  op: "Assign"
  input: "Variable_32/Adam"
  input: "Variable_32/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_32/Adam/read"
  op: "Identity"
  input: "Variable_32/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
}
node {
  name: "Variable_32/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\020\003\000\000d\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_32/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_32/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_32/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_32/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_32/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 784
        }
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_32/Adam_1/Assign"
  op: "Assign"
  input: "Variable_32/Adam_1"
  input: "Variable_32/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_32/Adam_1/read"
  op: "Identity"
  input: "Variable_32/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
}
node {
  name: "Variable_33/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_33"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_33/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_33"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_33/Adam/Assign"
  op: "Assign"
  input: "Variable_33/Adam"
  input: "Variable_33/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_33"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_33/Adam/read"
  op: "Identity"
  input: "Variable_33/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_33"
      }
    }
  }
}
node {
  name: "Variable_33/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_33"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 100
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_33/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_33"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_33/Adam_1/Assign"
  op: "Assign"
  input: "Variable_33/Adam_1"
  input: "Variable_33/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_33"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_33/Adam_1/read"
  op: "Identity"
  input: "Variable_33/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_33"
      }
    }
  }
}
node {
  name: "Variable_34/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_34/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_34/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable_34/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable_34/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_34/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_34/Adam/Assign"
  op: "Assign"
  input: "Variable_34/Adam"
  input: "Variable_34/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_34/Adam/read"
  op: "Identity"
  input: "Variable_34/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
}
node {
  name: "Variable_34/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "d\000\000\000\n\000\000\000"
      }
    }
  }
}
node {
  name: "Variable_34/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_34/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable_34/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable_34/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable_34/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 100
        }
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_34/Adam_1/Assign"
  op: "Assign"
  input: "Variable_34/Adam_1"
  input: "Variable_34/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_34/Adam_1/read"
  op: "Identity"
  input: "Variable_34/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
}
node {
  name: "Variable_35/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_35"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_35/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_35"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_35/Adam/Assign"
  op: "Assign"
  input: "Variable_35/Adam"
  input: "Variable_35/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_35"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_35/Adam/read"
  op: "Identity"
  input: "Variable_35/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_35"
      }
    }
  }
}
node {
  name: "Variable_35/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_35"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 10
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_35/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_35"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 10
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_35/Adam_1/Assign"
  op: "Assign"
  input: "Variable_35/Adam_1"
  input: "Variable_35/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_35"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_35/Adam_1/read"
  op: "Identity"
  input: "Variable_35/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_35"
      }
    }
  }
}
node {
  name: "Adam_8/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Adam_8/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam_8/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam_8/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "Adam_8/update_Variable_32/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_32"
  input: "Variable_32/Adam"
  input: "Variable_32/Adam_1"
  input: "beta1_power_8/read"
  input: "beta2_power_8/read"
  input: "Adam_8/learning_rate"
  input: "Adam_8/beta1"
  input: "Adam_8/beta2"
  input: "Adam_8/epsilon"
  input: "gradients_8/MatMul_24_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_8/update_Variable_33/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_33"
  input: "Variable_33/Adam"
  input: "Variable_33/Adam_1"
  input: "beta1_power_8/read"
  input: "beta2_power_8/read"
  input: "Adam_8/learning_rate"
  input: "Adam_8/beta1"
  input: "Adam_8/beta2"
  input: "Adam_8/epsilon"
  input: "gradients_8/add_24_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_33"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_8/update_Variable_34/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_34"
  input: "Variable_34/Adam"
  input: "Variable_34/Adam_1"
  input: "beta1_power_8/read"
  input: "beta2_power_8/read"
  input: "Adam_8/learning_rate"
  input: "Adam_8/beta1"
  input: "Adam_8/beta2"
  input: "Adam_8/epsilon"
  input: "gradients_8/MatMul_26_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_34"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_8/update_Variable_35/ApplyAdam"
  op: "ApplyAdam"
  input: "Variable_35"
  input: "Variable_35/Adam"
  input: "Variable_35/Adam_1"
  input: "beta1_power_8/read"
  input: "beta2_power_8/read"
  input: "Adam_8/learning_rate"
  input: "Adam_8/beta1"
  input: "Adam_8/beta2"
  input: "Adam_8/epsilon"
  input: "gradients_8/add_26_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_35"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam_8/mul"
  op: "Mul"
  input: "beta1_power_8/read"
  input: "Adam_8/beta1"
  input: "^Adam_8/update_Variable_32/ApplyAdam"
  input: "^Adam_8/update_Variable_33/ApplyAdam"
  input: "^Adam_8/update_Variable_34/ApplyAdam"
  input: "^Adam_8/update_Variable_35/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
}
node {
  name: "Adam_8/Assign"
  op: "Assign"
  input: "beta1_power_8"
  input: "Adam_8/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_8/mul_1"
  op: "Mul"
  input: "beta2_power_8/read"
  input: "Adam_8/beta2"
  input: "^Adam_8/update_Variable_32/ApplyAdam"
  input: "^Adam_8/update_Variable_33/ApplyAdam"
  input: "^Adam_8/update_Variable_34/ApplyAdam"
  input: "^Adam_8/update_Variable_35/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
}
node {
  name: "Adam_8/Assign_1"
  op: "Assign"
  input: "beta2_power_8"
  input: "Adam_8/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_32"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam_8"
  op: "NoOp"
  input: "^Adam_8/Assign"
  input: "^Adam_8/Assign_1"
  input: "^Adam_8/update_Variable_32/ApplyAdam"
  input: "^Adam_8/update_Variable_33/ApplyAdam"
  input: "^Adam_8/update_Variable_34/ApplyAdam"
  input: "^Adam_8/update_Variable_35/ApplyAdam"
}
node {
  name: "save_8/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save_8/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 126
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_16"
        string_val: "Variable_16/Adam"
        string_val: "Variable_16/Adam_1"
        string_val: "Variable_17"
        string_val: "Variable_17/Adam"
        string_val: "Variable_17/Adam_1"
        string_val: "Variable_18"
        string_val: "Variable_18/Adam"
        string_val: "Variable_18/Adam_1"
        string_val: "Variable_19"
        string_val: "Variable_19/Adam"
        string_val: "Variable_19/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_20"
        string_val: "Variable_20/Adam"
        string_val: "Variable_20/Adam_1"
        string_val: "Variable_21"
        string_val: "Variable_21/Adam"
        string_val: "Variable_21/Adam_1"
        string_val: "Variable_22"
        string_val: "Variable_22/Adam"
        string_val: "Variable_22/Adam_1"
        string_val: "Variable_23"
        string_val: "Variable_23/Adam"
        string_val: "Variable_23/Adam_1"
        string_val: "Variable_24"
        string_val: "Variable_24/Adam"
        string_val: "Variable_24/Adam_1"
        string_val: "Variable_25"
        string_val: "Variable_25/Adam"
        string_val: "Variable_25/Adam_1"
        string_val: "Variable_26"
        string_val: "Variable_26/Adam"
        string_val: "Variable_26/Adam_1"
        string_val: "Variable_27"
        string_val: "Variable_27/Adam"
        string_val: "Variable_27/Adam_1"
        string_val: "Variable_28"
        string_val: "Variable_28/Adam"
        string_val: "Variable_28/Adam_1"
        string_val: "Variable_29"
        string_val: "Variable_29/Adam"
        string_val: "Variable_29/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_30"
        string_val: "Variable_30/Adam"
        string_val: "Variable_30/Adam_1"
        string_val: "Variable_31"
        string_val: "Variable_31/Adam"
        string_val: "Variable_31/Adam_1"
        string_val: "Variable_32"
        string_val: "Variable_32/Adam"
        string_val: "Variable_32/Adam_1"
        string_val: "Variable_33"
        string_val: "Variable_33/Adam"
        string_val: "Variable_33/Adam_1"
        string_val: "Variable_34"
        string_val: "Variable_34/Adam"
        string_val: "Variable_34/Adam_1"
        string_val: "Variable_35"
        string_val: "Variable_35/Adam"
        string_val: "Variable_35/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
        string_val: "Variable_8/Adam_1"
        string_val: "Variable_9"
        string_val: "Variable_9/Adam"
        string_val: "Variable_9/Adam_1"
        string_val: "beta1_power"
        string_val: "beta1_power_1"
        string_val: "beta1_power_2"
        string_val: "beta1_power_3"
        string_val: "beta1_power_4"
        string_val: "beta1_power_5"
        string_val: "beta1_power_6"
        string_val: "beta1_power_7"
        string_val: "beta1_power_8"
        string_val: "beta2_power"
        string_val: "beta2_power_1"
        string_val: "beta2_power_2"
        string_val: "beta2_power_3"
        string_val: "beta2_power_4"
        string_val: "beta2_power_5"
        string_val: "beta2_power_6"
        string_val: "beta2_power_7"
        string_val: "beta2_power_8"
      }
    }
  }
}
node {
  name: "save_8/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 126
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save_8/SaveV2"
  op: "SaveV2"
  input: "save_8/Const"
  input: "save_8/SaveV2/tensor_names"
  input: "save_8/SaveV2/shape_and_slices"
  input: "Variable"
  input: "Variable/Adam"
  input: "Variable/Adam_1"
  input: "Variable_1"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam_1"
  input: "Variable_10"
  input: "Variable_10/Adam"
  input: "Variable_10/Adam_1"
  input: "Variable_11"
  input: "Variable_11/Adam"
  input: "Variable_11/Adam_1"
  input: "Variable_12"
  input: "Variable_12/Adam"
  input: "Variable_12/Adam_1"
  input: "Variable_13"
  input: "Variable_13/Adam"
  input: "Variable_13/Adam_1"
  input: "Variable_14"
  input: "Variable_14/Adam"
  input: "Variable_14/Adam_1"
  input: "Variable_15"
  input: "Variable_15/Adam"
  input: "Variable_15/Adam_1"
  input: "Variable_16"
  input: "Variable_16/Adam"
  input: "Variable_16/Adam_1"
  input: "Variable_17"
  input: "Variable_17/Adam"
  input: "Variable_17/Adam_1"
  input: "Variable_18"
  input: "Variable_18/Adam"
  input: "Variable_18/Adam_1"
  input: "Variable_19"
  input: "Variable_19/Adam"
  input: "Variable_19/Adam_1"
  input: "Variable_2"
  input: "Variable_2/Adam"
  input: "Variable_2/Adam_1"
  input: "Variable_20"
  input: "Variable_20/Adam"
  input: "Variable_20/Adam_1"
  input: "Variable_21"
  input: "Variable_21/Adam"
  input: "Variable_21/Adam_1"
  input: "Variable_22"
  input: "Variable_22/Adam"
  input: "Variable_22/Adam_1"
  input: "Variable_23"
  input: "Variable_23/Adam"
  input: "Variable_23/Adam_1"
  input: "Variable_24"
  input: "Variable_24/Adam"
  input: "Variable_24/Adam_1"
  input: "Variable_25"
  input: "Variable_25/Adam"
  input: "Variable_25/Adam_1"
  input: "Variable_26"
  input: "Variable_26/Adam"
  input: "Variable_26/Adam_1"
  input: "Variable_27"
  input: "Variable_27/Adam"
  input: "Variable_27/Adam_1"
  input: "Variable_28"
  input: "Variable_28/Adam"
  input: "Variable_28/Adam_1"
  input: "Variable_29"
  input: "Variable_29/Adam"
  input: "Variable_29/Adam_1"
  input: "Variable_3"
  input: "Variable_3/Adam"
  input: "Variable_3/Adam_1"
  input: "Variable_30"
  input: "Variable_30/Adam"
  input: "Variable_30/Adam_1"
  input: "Variable_31"
  input: "Variable_31/Adam"
  input: "Variable_31/Adam_1"
  input: "Variable_32"
  input: "Variable_32/Adam"
  input: "Variable_32/Adam_1"
  input: "Variable_33"
  input: "Variable_33/Adam"
  input: "Variable_33/Adam_1"
  input: "Variable_34"
  input: "Variable_34/Adam"
  input: "Variable_34/Adam_1"
  input: "Variable_35"
  input: "Variable_35/Adam"
  input: "Variable_35/Adam_1"
  input: "Variable_4"
  input: "Variable_4/Adam"
  input: "Variable_4/Adam_1"
  input: "Variable_5"
  input: "Variable_5/Adam"
  input: "Variable_5/Adam_1"
  input: "Variable_6"
  input: "Variable_6/Adam"
  input: "Variable_6/Adam_1"
  input: "Variable_7"
  input: "Variable_7/Adam"
  input: "Variable_7/Adam_1"
  input: "Variable_8"
  input: "Variable_8/Adam"
  input: "Variable_8/Adam_1"
  input: "Variable_9"
  input: "Variable_9/Adam"
  input: "Variable_9/Adam_1"
  input: "beta1_power"
  input: "beta1_power_1"
  input: "beta1_power_2"
  input: "beta1_power_3"
  input: "beta1_power_4"
  input: "beta1_power_5"
  input: "beta1_power_6"
  input: "beta1_power_7"
  input: "beta1_power_8"
  input: "beta2_power"
  input: "beta2_power_1"
  input: "beta2_power_2"
  input: "beta2_power_3"
  input: "beta2_power_4"
  input: "beta2_power_5"
  input: "beta2_power_6"
  input: "beta2_power_7"
  input: "beta2_power_8"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save_8/control_dependency"
  op: "Identity"
  input: "save_8/Const"
  input: "^save_8/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save_8/Const"
      }
    }
  }
}
node {
  name: "save_8/RestoreV2/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 126
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "Variable_10"
        string_val: "Variable_10/Adam"
        string_val: "Variable_10/Adam_1"
        string_val: "Variable_11"
        string_val: "Variable_11/Adam"
        string_val: "Variable_11/Adam_1"
        string_val: "Variable_12"
        string_val: "Variable_12/Adam"
        string_val: "Variable_12/Adam_1"
        string_val: "Variable_13"
        string_val: "Variable_13/Adam"
        string_val: "Variable_13/Adam_1"
        string_val: "Variable_14"
        string_val: "Variable_14/Adam"
        string_val: "Variable_14/Adam_1"
        string_val: "Variable_15"
        string_val: "Variable_15/Adam"
        string_val: "Variable_15/Adam_1"
        string_val: "Variable_16"
        string_val: "Variable_16/Adam"
        string_val: "Variable_16/Adam_1"
        string_val: "Variable_17"
        string_val: "Variable_17/Adam"
        string_val: "Variable_17/Adam_1"
        string_val: "Variable_18"
        string_val: "Variable_18/Adam"
        string_val: "Variable_18/Adam_1"
        string_val: "Variable_19"
        string_val: "Variable_19/Adam"
        string_val: "Variable_19/Adam_1"
        string_val: "Variable_2"
        string_val: "Variable_2/Adam"
        string_val: "Variable_2/Adam_1"
        string_val: "Variable_20"
        string_val: "Variable_20/Adam"
        string_val: "Variable_20/Adam_1"
        string_val: "Variable_21"
        string_val: "Variable_21/Adam"
        string_val: "Variable_21/Adam_1"
        string_val: "Variable_22"
        string_val: "Variable_22/Adam"
        string_val: "Variable_22/Adam_1"
        string_val: "Variable_23"
        string_val: "Variable_23/Adam"
        string_val: "Variable_23/Adam_1"
        string_val: "Variable_24"
        string_val: "Variable_24/Adam"
        string_val: "Variable_24/Adam_1"
        string_val: "Variable_25"
        string_val: "Variable_25/Adam"
        string_val: "Variable_25/Adam_1"
        string_val: "Variable_26"
        string_val: "Variable_26/Adam"
        string_val: "Variable_26/Adam_1"
        string_val: "Variable_27"
        string_val: "Variable_27/Adam"
        string_val: "Variable_27/Adam_1"
        string_val: "Variable_28"
        string_val: "Variable_28/Adam"
        string_val: "Variable_28/Adam_1"
        string_val: "Variable_29"
        string_val: "Variable_29/Adam"
        string_val: "Variable_29/Adam_1"
        string_val: "Variable_3"
        string_val: "Variable_3/Adam"
        string_val: "Variable_3/Adam_1"
        string_val: "Variable_30"
        string_val: "Variable_30/Adam"
        string_val: "Variable_30/Adam_1"
        string_val: "Variable_31"
        string_val: "Variable_31/Adam"
        string_val: "Variable_31/Adam_1"
        string_val: "Variable_32"
        string_val: "Variable_32/Adam"
        string_val: "Variable_32/Adam_1"
        string_val: "Variable_33"
        string_val: "Variable_33/Adam"
        string_val: "Variable_33/Adam_1"
        string_val: "Variable_34"
        string_val: "Variable_34/Adam"
        string_val: "Variable_34/Adam_1"
        string_val: "Variable_35"
        string_val: "Variable_35/Adam"
        string_val: "Variable_35/Adam_1"
        string_val: "Variable_4"
        string_val: "Variable_4/Adam"
        string_val: "Variable_4/Adam_1"
        string_val: "Variable_5"
        string_val: "Variable_5/Adam"
        string_val: "Variable_5/Adam_1"
        string_val: "Variable_6"
        string_val: "Variable_6/Adam"
        string_val: "Variable_6/Adam_1"
        string_val: "Variable_7"
        string_val: "Variable_7/Adam"
        string_val: "Variable_7/Adam_1"
        string_val: "Variable_8"
        string_val: "Variable_8/Adam"
      }
    }
  }
}
  }