#cython: language_level=3

from qutip.core.data.csr cimport CSR
from qutip.core.data.dense cimport Dense
from qutip.core.data.dia cimport Diag
from qutip.core.data.base cimport Data

cpdef CSR matmul_csr(CSR left, CSR right, double complex scale=*, CSR out=*)
cpdef Dense matmul_dense(Dense left, Dense right, double complex scale=*, Dense out=*)
cpdef Dense matmul_csr_dense_dense(CSR left, Dense right, double complex scale=*, Dense out=*)
cdef Dense matmul_data_dense(Data left, Dense right)
cdef void imatmul_data_dense(Data left, Dense right, double complex scale, Dense out)

cpdef Dense multiply_dense(Dense left, Dense right)
cpdef CSR multiply_csr(CSR left, CSR right)
cpdef Diag multiply_diag(Diag left, Diag right)
