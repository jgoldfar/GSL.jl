#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################
# 7.16.3 Exponentiation With Error Estimate #
#############################################
export gsl_sf_exp_err_e, gsl_sf_exp_err_e10_e, gsl_sf_exp_mult_err_e,
       gsl_sf_exp_mult_err_e10_e


# This function exponentiates x with an associated absolute error dx.
# 
#   Returns: Cint
function gsl_sf_exp_err_e(x::Cdouble, dx::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_exp_err_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), x, dx, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This function exponentiates a quantity x with an associated absolute error dx
# using the gsl_sf_result_e10 type to return a result with extended range.
# 
#   Returns: Cint
function gsl_sf_exp_err_e10_e(x::Cdouble, dx::Cdouble)
    result = convert(Ptr{gsl_sf_result_e10}, Array(gsl_sf_result_e10, 1))
    gsl_errno = ccall( (:gsl_sf_exp_err_e10_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result_e10}), x, dx, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This routine computes the product y \exp(x) for the quantities x, y with
# associated absolute errors dx, dy.
# 
#   Returns: Cint
function gsl_sf_exp_mult_err_e(x::Cdouble, dx::Cdouble, y::Cdouble, dy::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_exp_mult_err_e, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Cdouble, Ptr{gsl_sf_result}), x, dx, y, dy, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This routine computes the product y \exp(x) for the quantities x, y with
# associated absolute errors dx, dy using the gsl_sf_result_e10 type to return
# a result with extended range.
# 
#   Returns: Cint
function gsl_sf_exp_mult_err_e10_e(x::Cdouble, dx::Cdouble, y::Cdouble, dy::Cdouble)
    result = convert(Ptr{gsl_sf_result_e10}, Array(gsl_sf_result_e10, 1))
    gsl_errno = ccall( (:gsl_sf_exp_mult_err_e10_e, :libgsl), Cint,
        (Cdouble, Cdouble, Cdouble, Cdouble, Ptr{gsl_sf_result_e10}), x, dx, y,
        dy, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end