#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 7.28.1 Digamma Function #
###########################
export gsl_sf_psi_int, gsl_sf_psi_int_e, gsl_sf_psi, gsl_sf_psi_e,
       gsl_sf_psi_1piy, gsl_sf_psi_1piy_e


# These routines compute the digamma function \psi(n) for positive integer n.
# The digamma function is also called the Psi function.
# 
#   Returns: Cdouble
function gsl_sf_psi_int{gsl_int<:Integer}(n::gsl_int)
    ccall( (:gsl_sf_psi_int, :libgsl), Cdouble, (Cint, ), n )
end


# These routines compute the digamma function \psi(n) for positive integer n.
# The digamma function is also called the Psi function.
# 
#   Returns: Cint
function gsl_sf_psi_int_e{gsl_int<:Integer}(n::gsl_int)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_psi_int_e, :libgsl), Cint, (Cint,
        Ptr{gsl_sf_result}), n, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the digamma function \psi(x) for general x, x \ne 0.
# 
#   Returns: Cdouble
function gsl_sf_psi(x::Cdouble)
    ccall( (:gsl_sf_psi, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the digamma function \psi(x) for general x, x \ne 0.
# 
#   Returns: Cint
function gsl_sf_psi_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_psi_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the real part of the digamma function on the line 1+i
# y, \Re[\psi(1 + i y)].
# 
#   Returns: Cdouble
function gsl_sf_psi_1piy(y::Cdouble)
    ccall( (:gsl_sf_psi_1piy, :libgsl), Cdouble, (Cdouble, ), y )
end


# These routines compute the real part of the digamma function on the line 1+i
# y, \Re[\psi(1 + i y)].
# 
#   Returns: Cint
function gsl_sf_psi_1piy_e(y::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_psi_1piy_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), y, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end