{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.TH.Short.TensorMath where

import Foreign
import Foreign.C.Types
import Torch.Types.TH
import Data.Word
import Data.Int

-- | c_fill :  r_ value -> void
foreign import ccall "THTensorMath.h THShortTensor_fill"
  c_fill :: Ptr CTHShortTensor -> CShort -> IO ()

-- | c_zero :  r_ -> void
foreign import ccall "THTensorMath.h THShortTensor_zero"
  c_zero :: Ptr CTHShortTensor -> IO ()

-- | c_maskedFill :  tensor mask value -> void
foreign import ccall "THTensorMath.h THShortTensor_maskedFill"
  c_maskedFill :: Ptr CTHShortTensor -> Ptr CTHByteTensor -> CShort -> IO ()

-- | c_maskedCopy :  tensor mask src -> void
foreign import ccall "THTensorMath.h THShortTensor_maskedCopy"
  c_maskedCopy :: Ptr CTHShortTensor -> Ptr CTHByteTensor -> Ptr CTHShortTensor -> IO ()

-- | c_maskedSelect :  tensor src mask -> void
foreign import ccall "THTensorMath.h THShortTensor_maskedSelect"
  c_maskedSelect :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHByteTensor -> IO ()

-- | c_nonzero :  subscript tensor -> void
foreign import ccall "THTensorMath.h THShortTensor_nonzero"
  c_nonzero :: Ptr CTHLongTensor -> Ptr CTHShortTensor -> IO ()

-- | c_indexSelect :  tensor src dim index -> void
foreign import ccall "THTensorMath.h THShortTensor_indexSelect"
  c_indexSelect :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> IO ()

-- | c_indexCopy :  tensor dim index src -> void
foreign import ccall "THTensorMath.h THShortTensor_indexCopy"
  c_indexCopy :: Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> IO ()

-- | c_indexAdd :  tensor dim index src -> void
foreign import ccall "THTensorMath.h THShortTensor_indexAdd"
  c_indexAdd :: Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> IO ()

-- | c_indexFill :  tensor dim index val -> void
foreign import ccall "THTensorMath.h THShortTensor_indexFill"
  c_indexFill :: Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> CShort -> IO ()

-- | c_take :  tensor src index -> void
foreign import ccall "THTensorMath.h THShortTensor_take"
  c_take :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHLongTensor -> IO ()

-- | c_put :  tensor index src accumulate -> void
foreign import ccall "THTensorMath.h THShortTensor_put"
  c_put :: Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> IO ()

-- | c_gather :  tensor src dim index -> void
foreign import ccall "THTensorMath.h THShortTensor_gather"
  c_gather :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> IO ()

-- | c_scatter :  tensor dim index src -> void
foreign import ccall "THTensorMath.h THShortTensor_scatter"
  c_scatter :: Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> IO ()

-- | c_scatterAdd :  tensor dim index src -> void
foreign import ccall "THTensorMath.h THShortTensor_scatterAdd"
  c_scatterAdd :: Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> IO ()

-- | c_scatterFill :  tensor dim index val -> void
foreign import ccall "THTensorMath.h THShortTensor_scatterFill"
  c_scatterFill :: Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> CShort -> IO ()

-- | c_dot :  t src -> accreal
foreign import ccall "THTensorMath.h THShortTensor_dot"
  c_dot :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO CLong

-- | c_minall :  t -> real
foreign import ccall "THTensorMath.h THShortTensor_minall"
  c_minall :: Ptr CTHShortTensor -> IO CShort

-- | c_maxall :  t -> real
foreign import ccall "THTensorMath.h THShortTensor_maxall"
  c_maxall :: Ptr CTHShortTensor -> IO CShort

-- | c_medianall :  t -> real
foreign import ccall "THTensorMath.h THShortTensor_medianall"
  c_medianall :: Ptr CTHShortTensor -> IO CShort

-- | c_sumall :  t -> accreal
foreign import ccall "THTensorMath.h THShortTensor_sumall"
  c_sumall :: Ptr CTHShortTensor -> IO CLong

-- | c_prodall :  t -> accreal
foreign import ccall "THTensorMath.h THShortTensor_prodall"
  c_prodall :: Ptr CTHShortTensor -> IO CLong

-- | c_neg :  self src -> void
foreign import ccall "THTensorMath.h THShortTensor_neg"
  c_neg :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_add :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_add"
  c_add :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_sub :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_sub"
  c_sub :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_add_scaled :  r_ t value alpha -> void
foreign import ccall "THTensorMath.h THShortTensor_add_scaled"
  c_add_scaled :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> CShort -> IO ()

-- | c_sub_scaled :  r_ t value alpha -> void
foreign import ccall "THTensorMath.h THShortTensor_sub_scaled"
  c_sub_scaled :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> CShort -> IO ()

-- | c_mul :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_mul"
  c_mul :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_div :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_div"
  c_div :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_lshift :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_lshift"
  c_lshift :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_rshift :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_rshift"
  c_rshift :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_fmod :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_fmod"
  c_fmod :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_remainder :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_remainder"
  c_remainder :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_clamp :  r_ t min_value max_value -> void
foreign import ccall "THTensorMath.h THShortTensor_clamp"
  c_clamp :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> CShort -> IO ()

-- | c_bitand :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_bitand"
  c_bitand :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_bitor :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_bitor"
  c_bitor :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_bitxor :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_bitxor"
  c_bitxor :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_cadd :  r_ t value src -> void
foreign import ccall "THTensorMath.h THShortTensor_cadd"
  c_cadd :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> IO ()

-- | c_csub :  self src1 value src2 -> void
foreign import ccall "THTensorMath.h THShortTensor_csub"
  c_csub :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> IO ()

-- | c_cmul :  r_ t src -> void
foreign import ccall "THTensorMath.h THShortTensor_cmul"
  c_cmul :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_cpow :  r_ t src -> void
foreign import ccall "THTensorMath.h THShortTensor_cpow"
  c_cpow :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_cdiv :  r_ t src -> void
foreign import ccall "THTensorMath.h THShortTensor_cdiv"
  c_cdiv :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_clshift :  r_ t src -> void
foreign import ccall "THTensorMath.h THShortTensor_clshift"
  c_clshift :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_crshift :  r_ t src -> void
foreign import ccall "THTensorMath.h THShortTensor_crshift"
  c_crshift :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_cfmod :  r_ t src -> void
foreign import ccall "THTensorMath.h THShortTensor_cfmod"
  c_cfmod :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_cremainder :  r_ t src -> void
foreign import ccall "THTensorMath.h THShortTensor_cremainder"
  c_cremainder :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_cbitand :  r_ t src -> void
foreign import ccall "THTensorMath.h THShortTensor_cbitand"
  c_cbitand :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_cbitor :  r_ t src -> void
foreign import ccall "THTensorMath.h THShortTensor_cbitor"
  c_cbitor :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_cbitxor :  r_ t src -> void
foreign import ccall "THTensorMath.h THShortTensor_cbitxor"
  c_cbitxor :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_addcmul :  r_ t value src1 src2 -> void
foreign import ccall "THTensorMath.h THShortTensor_addcmul"
  c_addcmul :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_addcdiv :  r_ t value src1 src2 -> void
foreign import ccall "THTensorMath.h THShortTensor_addcdiv"
  c_addcdiv :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_addmv :  r_ beta t alpha mat vec -> void
foreign import ccall "THTensorMath.h THShortTensor_addmv"
  c_addmv :: Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_addmm :  r_ beta t alpha mat1 mat2 -> void
foreign import ccall "THTensorMath.h THShortTensor_addmm"
  c_addmm :: Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_addr :  r_ beta t alpha vec1 vec2 -> void
foreign import ccall "THTensorMath.h THShortTensor_addr"
  c_addr :: Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_addbmm :  r_ beta t alpha batch1 batch2 -> void
foreign import ccall "THTensorMath.h THShortTensor_addbmm"
  c_addbmm :: Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_baddbmm :  r_ beta t alpha batch1 batch2 -> void
foreign import ccall "THTensorMath.h THShortTensor_baddbmm"
  c_baddbmm :: Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_match :  r_ m1 m2 gain -> void
foreign import ccall "THTensorMath.h THShortTensor_match"
  c_match :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_numel :  t -> ptrdiff_t
foreign import ccall "THTensorMath.h THShortTensor_numel"
  c_numel :: Ptr CTHShortTensor -> IO CPtrdiff

-- | c_max :  values_ indices_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h THShortTensor_max"
  c_max :: Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ()

-- | c_min :  values_ indices_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h THShortTensor_min"
  c_min :: Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ()

-- | c_kthvalue :  values_ indices_ t k dimension keepdim -> void
foreign import ccall "THTensorMath.h THShortTensor_kthvalue"
  c_kthvalue :: Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CLLong -> CInt -> CInt -> IO ()

-- | c_mode :  values_ indices_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h THShortTensor_mode"
  c_mode :: Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ()

-- | c_median :  values_ indices_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h THShortTensor_median"
  c_median :: Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ()

-- | c_sum :  r_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h THShortTensor_sum"
  c_sum :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ()

-- | c_prod :  r_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h THShortTensor_prod"
  c_prod :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ()

-- | c_cumsum :  r_ t dimension -> void
foreign import ccall "THTensorMath.h THShortTensor_cumsum"
  c_cumsum :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> IO ()

-- | c_cumprod :  r_ t dimension -> void
foreign import ccall "THTensorMath.h THShortTensor_cumprod"
  c_cumprod :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> IO ()

-- | c_sign :  r_ t -> void
foreign import ccall "THTensorMath.h THShortTensor_sign"
  c_sign :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_trace :  t -> accreal
foreign import ccall "THTensorMath.h THShortTensor_trace"
  c_trace :: Ptr CTHShortTensor -> IO CLong

-- | c_cross :  r_ a b dimension -> void
foreign import ccall "THTensorMath.h THShortTensor_cross"
  c_cross :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> IO ()

-- | c_cmax :  r t src -> void
foreign import ccall "THTensorMath.h THShortTensor_cmax"
  c_cmax :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_cmin :  r t src -> void
foreign import ccall "THTensorMath.h THShortTensor_cmin"
  c_cmin :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_cmaxValue :  r t value -> void
foreign import ccall "THTensorMath.h THShortTensor_cmaxValue"
  c_cmaxValue :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_cminValue :  r t value -> void
foreign import ccall "THTensorMath.h THShortTensor_cminValue"
  c_cminValue :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_zeros :  r_ size -> void
foreign import ccall "THTensorMath.h THShortTensor_zeros"
  c_zeros :: Ptr CTHShortTensor -> Ptr CTHLongStorage -> IO ()

-- | c_zerosLike :  r_ input -> void
foreign import ccall "THTensorMath.h THShortTensor_zerosLike"
  c_zerosLike :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_ones :  r_ size -> void
foreign import ccall "THTensorMath.h THShortTensor_ones"
  c_ones :: Ptr CTHShortTensor -> Ptr CTHLongStorage -> IO ()

-- | c_onesLike :  r_ input -> void
foreign import ccall "THTensorMath.h THShortTensor_onesLike"
  c_onesLike :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_diag :  r_ t k -> void
foreign import ccall "THTensorMath.h THShortTensor_diag"
  c_diag :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> IO ()

-- | c_eye :  r_ n m -> void
foreign import ccall "THTensorMath.h THShortTensor_eye"
  c_eye :: Ptr CTHShortTensor -> CLLong -> CLLong -> IO ()

-- | c_arange :  r_ xmin xmax step -> void
foreign import ccall "THTensorMath.h THShortTensor_arange"
  c_arange :: Ptr CTHShortTensor -> CLong -> CLong -> CLong -> IO ()

-- | c_range :  r_ xmin xmax step -> void
foreign import ccall "THTensorMath.h THShortTensor_range"
  c_range :: Ptr CTHShortTensor -> CLong -> CLong -> CLong -> IO ()

-- | c_randperm :  r_ _generator n -> void
foreign import ccall "THTensorMath.h THShortTensor_randperm"
  c_randperm :: Ptr CTHShortTensor -> Ptr CTHGenerator -> CLLong -> IO ()

-- | c_reshape :  r_ t size -> void
foreign import ccall "THTensorMath.h THShortTensor_reshape"
  c_reshape :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHLongStorage -> IO ()

-- | c_sort :  rt_ ri_ t dimension descendingOrder -> void
foreign import ccall "THTensorMath.h THShortTensor_sort"
  c_sort :: Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ()

-- | c_topk :  rt_ ri_ t k dim dir sorted -> void
foreign import ccall "THTensorMath.h THShortTensor_topk"
  c_topk :: Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CLLong -> CInt -> CInt -> CInt -> IO ()

-- | c_tril :  r_ t k -> void
foreign import ccall "THTensorMath.h THShortTensor_tril"
  c_tril :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CLLong -> IO ()

-- | c_triu :  r_ t k -> void
foreign import ccall "THTensorMath.h THShortTensor_triu"
  c_triu :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CLLong -> IO ()

-- | c_cat :  r_ ta tb dimension -> void
foreign import ccall "THTensorMath.h THShortTensor_cat"
  c_cat :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> IO ()

-- | c_catArray :  result inputs numInputs dimension -> void
foreign import ccall "THTensorMath.h THShortTensor_catArray"
  c_catArray :: Ptr CTHShortTensor -> Ptr (Ptr CTHShortTensor) -> CInt -> CInt -> IO ()

-- | c_equal :  ta tb -> int
foreign import ccall "THTensorMath.h THShortTensor_equal"
  c_equal :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO CInt

-- | c_ltValue :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_ltValue"
  c_ltValue :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_leValue :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_leValue"
  c_leValue :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_gtValue :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_gtValue"
  c_gtValue :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_geValue :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_geValue"
  c_geValue :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_neValue :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_neValue"
  c_neValue :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_eqValue :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_eqValue"
  c_eqValue :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_ltValueT :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_ltValueT"
  c_ltValueT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_leValueT :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_leValueT"
  c_leValueT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_gtValueT :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_gtValueT"
  c_gtValueT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_geValueT :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_geValueT"
  c_geValueT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_neValueT :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_neValueT"
  c_neValueT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_eqValueT :  r_ t value -> void
foreign import ccall "THTensorMath.h THShortTensor_eqValueT"
  c_eqValueT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ()

-- | c_ltTensor :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_ltTensor"
  c_ltTensor :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_leTensor :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_leTensor"
  c_leTensor :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_gtTensor :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_gtTensor"
  c_gtTensor :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_geTensor :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_geTensor"
  c_geTensor :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_neTensor :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_neTensor"
  c_neTensor :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_eqTensor :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_eqTensor"
  c_eqTensor :: Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_ltTensorT :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_ltTensorT"
  c_ltTensorT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_leTensorT :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_leTensorT"
  c_leTensorT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_gtTensorT :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_gtTensorT"
  c_gtTensorT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_geTensorT :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_geTensorT"
  c_geTensorT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_neTensorT :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_neTensorT"
  c_neTensorT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_eqTensorT :  r_ ta tb -> void
foreign import ccall "THTensorMath.h THShortTensor_eqTensorT"
  c_eqTensorT :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | c_abs :  r_ t -> void
foreign import ccall "THTensorMath.h THShortTensor_abs"
  c_abs :: Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ()

-- | p_fill : Pointer to function : r_ value -> void
foreign import ccall "THTensorMath.h &THShortTensor_fill"
  p_fill :: FunPtr (Ptr CTHShortTensor -> CShort -> IO ())

-- | p_zero : Pointer to function : r_ -> void
foreign import ccall "THTensorMath.h &THShortTensor_zero"
  p_zero :: FunPtr (Ptr CTHShortTensor -> IO ())

-- | p_maskedFill : Pointer to function : tensor mask value -> void
foreign import ccall "THTensorMath.h &THShortTensor_maskedFill"
  p_maskedFill :: FunPtr (Ptr CTHShortTensor -> Ptr CTHByteTensor -> CShort -> IO ())

-- | p_maskedCopy : Pointer to function : tensor mask src -> void
foreign import ccall "THTensorMath.h &THShortTensor_maskedCopy"
  p_maskedCopy :: FunPtr (Ptr CTHShortTensor -> Ptr CTHByteTensor -> Ptr CTHShortTensor -> IO ())

-- | p_maskedSelect : Pointer to function : tensor src mask -> void
foreign import ccall "THTensorMath.h &THShortTensor_maskedSelect"
  p_maskedSelect :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHByteTensor -> IO ())

-- | p_nonzero : Pointer to function : subscript tensor -> void
foreign import ccall "THTensorMath.h &THShortTensor_nonzero"
  p_nonzero :: FunPtr (Ptr CTHLongTensor -> Ptr CTHShortTensor -> IO ())

-- | p_indexSelect : Pointer to function : tensor src dim index -> void
foreign import ccall "THTensorMath.h &THShortTensor_indexSelect"
  p_indexSelect :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> IO ())

-- | p_indexCopy : Pointer to function : tensor dim index src -> void
foreign import ccall "THTensorMath.h &THShortTensor_indexCopy"
  p_indexCopy :: FunPtr (Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> IO ())

-- | p_indexAdd : Pointer to function : tensor dim index src -> void
foreign import ccall "THTensorMath.h &THShortTensor_indexAdd"
  p_indexAdd :: FunPtr (Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> IO ())

-- | p_indexFill : Pointer to function : tensor dim index val -> void
foreign import ccall "THTensorMath.h &THShortTensor_indexFill"
  p_indexFill :: FunPtr (Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> CShort -> IO ())

-- | p_take : Pointer to function : tensor src index -> void
foreign import ccall "THTensorMath.h &THShortTensor_take"
  p_take :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHLongTensor -> IO ())

-- | p_put : Pointer to function : tensor index src accumulate -> void
foreign import ccall "THTensorMath.h &THShortTensor_put"
  p_put :: FunPtr (Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> IO ())

-- | p_gather : Pointer to function : tensor src dim index -> void
foreign import ccall "THTensorMath.h &THShortTensor_gather"
  p_gather :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> IO ())

-- | p_scatter : Pointer to function : tensor dim index src -> void
foreign import ccall "THTensorMath.h &THShortTensor_scatter"
  p_scatter :: FunPtr (Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> IO ())

-- | p_scatterAdd : Pointer to function : tensor dim index src -> void
foreign import ccall "THTensorMath.h &THShortTensor_scatterAdd"
  p_scatterAdd :: FunPtr (Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> IO ())

-- | p_scatterFill : Pointer to function : tensor dim index val -> void
foreign import ccall "THTensorMath.h &THShortTensor_scatterFill"
  p_scatterFill :: FunPtr (Ptr CTHShortTensor -> CInt -> Ptr CTHLongTensor -> CShort -> IO ())

-- | p_dot : Pointer to function : t src -> accreal
foreign import ccall "THTensorMath.h &THShortTensor_dot"
  p_dot :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO CLong)

-- | p_minall : Pointer to function : t -> real
foreign import ccall "THTensorMath.h &THShortTensor_minall"
  p_minall :: FunPtr (Ptr CTHShortTensor -> IO CShort)

-- | p_maxall : Pointer to function : t -> real
foreign import ccall "THTensorMath.h &THShortTensor_maxall"
  p_maxall :: FunPtr (Ptr CTHShortTensor -> IO CShort)

-- | p_medianall : Pointer to function : t -> real
foreign import ccall "THTensorMath.h &THShortTensor_medianall"
  p_medianall :: FunPtr (Ptr CTHShortTensor -> IO CShort)

-- | p_sumall : Pointer to function : t -> accreal
foreign import ccall "THTensorMath.h &THShortTensor_sumall"
  p_sumall :: FunPtr (Ptr CTHShortTensor -> IO CLong)

-- | p_prodall : Pointer to function : t -> accreal
foreign import ccall "THTensorMath.h &THShortTensor_prodall"
  p_prodall :: FunPtr (Ptr CTHShortTensor -> IO CLong)

-- | p_neg : Pointer to function : self src -> void
foreign import ccall "THTensorMath.h &THShortTensor_neg"
  p_neg :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_add : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_add"
  p_add :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_sub : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_sub"
  p_sub :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_add_scaled : Pointer to function : r_ t value alpha -> void
foreign import ccall "THTensorMath.h &THShortTensor_add_scaled"
  p_add_scaled :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> CShort -> IO ())

-- | p_sub_scaled : Pointer to function : r_ t value alpha -> void
foreign import ccall "THTensorMath.h &THShortTensor_sub_scaled"
  p_sub_scaled :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> CShort -> IO ())

-- | p_mul : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_mul"
  p_mul :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_div : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_div"
  p_div :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_lshift : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_lshift"
  p_lshift :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_rshift : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_rshift"
  p_rshift :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_fmod : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_fmod"
  p_fmod :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_remainder : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_remainder"
  p_remainder :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_clamp : Pointer to function : r_ t min_value max_value -> void
foreign import ccall "THTensorMath.h &THShortTensor_clamp"
  p_clamp :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> CShort -> IO ())

-- | p_bitand : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_bitand"
  p_bitand :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_bitor : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_bitor"
  p_bitor :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_bitxor : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_bitxor"
  p_bitxor :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_cadd : Pointer to function : r_ t value src -> void
foreign import ccall "THTensorMath.h &THShortTensor_cadd"
  p_cadd :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> IO ())

-- | p_csub : Pointer to function : self src1 value src2 -> void
foreign import ccall "THTensorMath.h &THShortTensor_csub"
  p_csub :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> IO ())

-- | p_cmul : Pointer to function : r_ t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_cmul"
  p_cmul :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_cpow : Pointer to function : r_ t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_cpow"
  p_cpow :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_cdiv : Pointer to function : r_ t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_cdiv"
  p_cdiv :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_clshift : Pointer to function : r_ t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_clshift"
  p_clshift :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_crshift : Pointer to function : r_ t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_crshift"
  p_crshift :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_cfmod : Pointer to function : r_ t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_cfmod"
  p_cfmod :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_cremainder : Pointer to function : r_ t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_cremainder"
  p_cremainder :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_cbitand : Pointer to function : r_ t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_cbitand"
  p_cbitand :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_cbitor : Pointer to function : r_ t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_cbitor"
  p_cbitor :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_cbitxor : Pointer to function : r_ t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_cbitxor"
  p_cbitxor :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_addcmul : Pointer to function : r_ t value src1 src2 -> void
foreign import ccall "THTensorMath.h &THShortTensor_addcmul"
  p_addcmul :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_addcdiv : Pointer to function : r_ t value src1 src2 -> void
foreign import ccall "THTensorMath.h &THShortTensor_addcdiv"
  p_addcdiv :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_addmv : Pointer to function : r_ beta t alpha mat vec -> void
foreign import ccall "THTensorMath.h &THShortTensor_addmv"
  p_addmv :: FunPtr (Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_addmm : Pointer to function : r_ beta t alpha mat1 mat2 -> void
foreign import ccall "THTensorMath.h &THShortTensor_addmm"
  p_addmm :: FunPtr (Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_addr : Pointer to function : r_ beta t alpha vec1 vec2 -> void
foreign import ccall "THTensorMath.h &THShortTensor_addr"
  p_addr :: FunPtr (Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_addbmm : Pointer to function : r_ beta t alpha batch1 batch2 -> void
foreign import ccall "THTensorMath.h &THShortTensor_addbmm"
  p_addbmm :: FunPtr (Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_baddbmm : Pointer to function : r_ beta t alpha batch1 batch2 -> void
foreign import ccall "THTensorMath.h &THShortTensor_baddbmm"
  p_baddbmm :: FunPtr (Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> CShort -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_match : Pointer to function : r_ m1 m2 gain -> void
foreign import ccall "THTensorMath.h &THShortTensor_match"
  p_match :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_numel : Pointer to function : t -> ptrdiff_t
foreign import ccall "THTensorMath.h &THShortTensor_numel"
  p_numel :: FunPtr (Ptr CTHShortTensor -> IO CPtrdiff)

-- | p_max : Pointer to function : values_ indices_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h &THShortTensor_max"
  p_max :: FunPtr (Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ())

-- | p_min : Pointer to function : values_ indices_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h &THShortTensor_min"
  p_min :: FunPtr (Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ())

-- | p_kthvalue : Pointer to function : values_ indices_ t k dimension keepdim -> void
foreign import ccall "THTensorMath.h &THShortTensor_kthvalue"
  p_kthvalue :: FunPtr (Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CLLong -> CInt -> CInt -> IO ())

-- | p_mode : Pointer to function : values_ indices_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h &THShortTensor_mode"
  p_mode :: FunPtr (Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ())

-- | p_median : Pointer to function : values_ indices_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h &THShortTensor_median"
  p_median :: FunPtr (Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ())

-- | p_sum : Pointer to function : r_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h &THShortTensor_sum"
  p_sum :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ())

-- | p_prod : Pointer to function : r_ t dimension keepdim -> void
foreign import ccall "THTensorMath.h &THShortTensor_prod"
  p_prod :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ())

-- | p_cumsum : Pointer to function : r_ t dimension -> void
foreign import ccall "THTensorMath.h &THShortTensor_cumsum"
  p_cumsum :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> IO ())

-- | p_cumprod : Pointer to function : r_ t dimension -> void
foreign import ccall "THTensorMath.h &THShortTensor_cumprod"
  p_cumprod :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> IO ())

-- | p_sign : Pointer to function : r_ t -> void
foreign import ccall "THTensorMath.h &THShortTensor_sign"
  p_sign :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_trace : Pointer to function : t -> accreal
foreign import ccall "THTensorMath.h &THShortTensor_trace"
  p_trace :: FunPtr (Ptr CTHShortTensor -> IO CLong)

-- | p_cross : Pointer to function : r_ a b dimension -> void
foreign import ccall "THTensorMath.h &THShortTensor_cross"
  p_cross :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> IO ())

-- | p_cmax : Pointer to function : r t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_cmax"
  p_cmax :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_cmin : Pointer to function : r t src -> void
foreign import ccall "THTensorMath.h &THShortTensor_cmin"
  p_cmin :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_cmaxValue : Pointer to function : r t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_cmaxValue"
  p_cmaxValue :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_cminValue : Pointer to function : r t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_cminValue"
  p_cminValue :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_zeros : Pointer to function : r_ size -> void
foreign import ccall "THTensorMath.h &THShortTensor_zeros"
  p_zeros :: FunPtr (Ptr CTHShortTensor -> Ptr CTHLongStorage -> IO ())

-- | p_zerosLike : Pointer to function : r_ input -> void
foreign import ccall "THTensorMath.h &THShortTensor_zerosLike"
  p_zerosLike :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_ones : Pointer to function : r_ size -> void
foreign import ccall "THTensorMath.h &THShortTensor_ones"
  p_ones :: FunPtr (Ptr CTHShortTensor -> Ptr CTHLongStorage -> IO ())

-- | p_onesLike : Pointer to function : r_ input -> void
foreign import ccall "THTensorMath.h &THShortTensor_onesLike"
  p_onesLike :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_diag : Pointer to function : r_ t k -> void
foreign import ccall "THTensorMath.h &THShortTensor_diag"
  p_diag :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> IO ())

-- | p_eye : Pointer to function : r_ n m -> void
foreign import ccall "THTensorMath.h &THShortTensor_eye"
  p_eye :: FunPtr (Ptr CTHShortTensor -> CLLong -> CLLong -> IO ())

-- | p_arange : Pointer to function : r_ xmin xmax step -> void
foreign import ccall "THTensorMath.h &THShortTensor_arange"
  p_arange :: FunPtr (Ptr CTHShortTensor -> CLong -> CLong -> CLong -> IO ())

-- | p_range : Pointer to function : r_ xmin xmax step -> void
foreign import ccall "THTensorMath.h &THShortTensor_range"
  p_range :: FunPtr (Ptr CTHShortTensor -> CLong -> CLong -> CLong -> IO ())

-- | p_randperm : Pointer to function : r_ _generator n -> void
foreign import ccall "THTensorMath.h &THShortTensor_randperm"
  p_randperm :: FunPtr (Ptr CTHShortTensor -> Ptr CTHGenerator -> CLLong -> IO ())

-- | p_reshape : Pointer to function : r_ t size -> void
foreign import ccall "THTensorMath.h &THShortTensor_reshape"
  p_reshape :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHLongStorage -> IO ())

-- | p_sort : Pointer to function : rt_ ri_ t dimension descendingOrder -> void
foreign import ccall "THTensorMath.h &THShortTensor_sort"
  p_sort :: FunPtr (Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CInt -> CInt -> IO ())

-- | p_topk : Pointer to function : rt_ ri_ t k dim dir sorted -> void
foreign import ccall "THTensorMath.h &THShortTensor_topk"
  p_topk :: FunPtr (Ptr CTHShortTensor -> Ptr CTHLongTensor -> Ptr CTHShortTensor -> CLLong -> CInt -> CInt -> CInt -> IO ())

-- | p_tril : Pointer to function : r_ t k -> void
foreign import ccall "THTensorMath.h &THShortTensor_tril"
  p_tril :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CLLong -> IO ())

-- | p_triu : Pointer to function : r_ t k -> void
foreign import ccall "THTensorMath.h &THShortTensor_triu"
  p_triu :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CLLong -> IO ())

-- | p_cat : Pointer to function : r_ ta tb dimension -> void
foreign import ccall "THTensorMath.h &THShortTensor_cat"
  p_cat :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> CInt -> IO ())

-- | p_catArray : Pointer to function : result inputs numInputs dimension -> void
foreign import ccall "THTensorMath.h &THShortTensor_catArray"
  p_catArray :: FunPtr (Ptr CTHShortTensor -> Ptr (Ptr CTHShortTensor) -> CInt -> CInt -> IO ())

-- | p_equal : Pointer to function : ta tb -> int
foreign import ccall "THTensorMath.h &THShortTensor_equal"
  p_equal :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO CInt)

-- | p_ltValue : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_ltValue"
  p_ltValue :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_leValue : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_leValue"
  p_leValue :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_gtValue : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_gtValue"
  p_gtValue :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_geValue : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_geValue"
  p_geValue :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_neValue : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_neValue"
  p_neValue :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_eqValue : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_eqValue"
  p_eqValue :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_ltValueT : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_ltValueT"
  p_ltValueT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_leValueT : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_leValueT"
  p_leValueT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_gtValueT : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_gtValueT"
  p_gtValueT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_geValueT : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_geValueT"
  p_geValueT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_neValueT : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_neValueT"
  p_neValueT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_eqValueT : Pointer to function : r_ t value -> void
foreign import ccall "THTensorMath.h &THShortTensor_eqValueT"
  p_eqValueT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> CShort -> IO ())

-- | p_ltTensor : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_ltTensor"
  p_ltTensor :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_leTensor : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_leTensor"
  p_leTensor :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_gtTensor : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_gtTensor"
  p_gtTensor :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_geTensor : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_geTensor"
  p_geTensor :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_neTensor : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_neTensor"
  p_neTensor :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_eqTensor : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_eqTensor"
  p_eqTensor :: FunPtr (Ptr CTHByteTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_ltTensorT : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_ltTensorT"
  p_ltTensorT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_leTensorT : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_leTensorT"
  p_leTensorT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_gtTensorT : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_gtTensorT"
  p_gtTensorT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_geTensorT : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_geTensorT"
  p_geTensorT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_neTensorT : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_neTensorT"
  p_neTensorT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_eqTensorT : Pointer to function : r_ ta tb -> void
foreign import ccall "THTensorMath.h &THShortTensor_eqTensorT"
  p_eqTensorT :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())

-- | p_abs : Pointer to function : r_ t -> void
foreign import ccall "THTensorMath.h &THShortTensor_abs"
  p_abs :: FunPtr (Ptr CTHShortTensor -> Ptr CTHShortTensor -> IO ())