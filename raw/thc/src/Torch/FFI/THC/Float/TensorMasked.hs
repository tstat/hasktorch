{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.THC.Float.TensorMasked where

import Foreign
import Foreign.C.Types
import Data.Word
import Data.Int
import Torch.Types.TH
import Torch.Types.THC

-- | c_maskedFill :  state tensor mask value -> void
foreign import ccall "THCTensorMasked.h THCudaFloatTensor_maskedFill"
  c_maskedFill :: Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaByteTensor -> CFloat -> IO ()

-- | c_maskedFillByte :  state tensor mask value -> void
foreign import ccall "THCTensorMasked.h THCudaFloatTensor_maskedFillByte"
  c_maskedFillByte :: Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THByteTensor -> CFloat -> IO ()

-- | c_maskedCopy :  state tensor mask src -> void
foreign import ccall "THCTensorMasked.h THCudaFloatTensor_maskedCopy"
  c_maskedCopy :: Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaByteTensor -> Ptr C'THCudaFloatTensor -> IO ()

-- | c_maskedCopyByte :  state tensor mask src -> void
foreign import ccall "THCTensorMasked.h THCudaFloatTensor_maskedCopyByte"
  c_maskedCopyByte :: Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THByteTensor -> Ptr C'THCudaFloatTensor -> IO ()

-- | c_maskedSelect :  state tensor src mask -> void
foreign import ccall "THCTensorMasked.h THCudaFloatTensor_maskedSelect"
  c_maskedSelect :: Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaByteTensor -> IO ()

-- | c_maskedSelectByte :  state tensor src mask -> void
foreign import ccall "THCTensorMasked.h THCudaFloatTensor_maskedSelectByte"
  c_maskedSelectByte :: Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaFloatTensor -> Ptr C'THByteTensor -> IO ()

-- | p_maskedFill : Pointer to function : state tensor mask value -> void
foreign import ccall "THCTensorMasked.h &THCudaFloatTensor_maskedFill"
  p_maskedFill :: FunPtr (Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaByteTensor -> CFloat -> IO ())

-- | p_maskedFillByte : Pointer to function : state tensor mask value -> void
foreign import ccall "THCTensorMasked.h &THCudaFloatTensor_maskedFillByte"
  p_maskedFillByte :: FunPtr (Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THByteTensor -> CFloat -> IO ())

-- | p_maskedCopy : Pointer to function : state tensor mask src -> void
foreign import ccall "THCTensorMasked.h &THCudaFloatTensor_maskedCopy"
  p_maskedCopy :: FunPtr (Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaByteTensor -> Ptr C'THCudaFloatTensor -> IO ())

-- | p_maskedCopyByte : Pointer to function : state tensor mask src -> void
foreign import ccall "THCTensorMasked.h &THCudaFloatTensor_maskedCopyByte"
  p_maskedCopyByte :: FunPtr (Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THByteTensor -> Ptr C'THCudaFloatTensor -> IO ())

-- | p_maskedSelect : Pointer to function : state tensor src mask -> void
foreign import ccall "THCTensorMasked.h &THCudaFloatTensor_maskedSelect"
  p_maskedSelect :: FunPtr (Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaByteTensor -> IO ())

-- | p_maskedSelectByte : Pointer to function : state tensor src mask -> void
foreign import ccall "THCTensorMasked.h &THCudaFloatTensor_maskedSelectByte"
  p_maskedSelectByte :: FunPtr (Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaFloatTensor -> Ptr C'THByteTensor -> IO ())