#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################################
# 19.2 Sampling from a quasi-random number generator #
######################################################
export qrng_get


# This function stores the next point from the sequence generator q in the
# array x.  The space available for x must match the dimension of the
# generator.  The point x will lie in the range 0 < x_i < 1 for each x_i.  An
# inline version of this function is used when HAVE_INLINE is defined.
#
#   Returns: Cint
function qrng_get(q::Ref{gsl_qrng}, x::Vector{Cdouble})
    errno = ccall( (:gsl_qrng_get, libgsl), Cint, (Ref{gsl_qrng},
        Ref{Cdouble}), q, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
