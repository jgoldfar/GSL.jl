#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 17.12 Gauss-Legendre integration #
####################################
export gsl_integration_glfixed_table_alloc, gsl_integration_glfixed,
       gsl_integration_glfixed_point, gsl_integration_glfixed_table_free


### Function uses unknown type; disabled
### # This function determines the Gauss-Legendre abscissae and weights necessary
# for an n-point fixed order integration scheme.  If possible, high precision
# precomputed coefficients are used.  If precomputed weights are not available,
# lower precision coefficients are computed on the fly.
# 
### #   Returns: Ptr{gsl_integration_glfixed_table}
### #XXX Unknown output type Ptr{gsl_integration_glfixed_table}
### function gsl_integration_glfixed_table_alloc (n::Csize_t)
###     ccall( (:gsl_integration_glfixed_table_alloc, "libgsl"),
###         Ptr{gsl_integration_glfixed_table}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function applies the Gauss-Legendre integration rule contained in table
# t and returns the result.
# 
### #   Returns: Cdouble
### #XXX Unknown input type f::Ptr{gsl_function}
### #XXX Unknown input type t::Ptr{gsl_integration_glfixed_table}
### function gsl_integration_glfixed (f::Ptr{gsl_function}, a::Cdouble, b::Cdouble, t::Ptr{gsl_integration_glfixed_table})
###     ccall( (:gsl_integration_glfixed, "libgsl"), Cdouble,
###         (Ptr{gsl_function}, Cdouble, Cdouble,
###         Ptr{gsl_integration_glfixed_table}), f, a, b, t )
### end


### Function uses unknown type; disabled
### # For i in [0, ..., t->n - 1], this function obtains the i-th Gauss-Legendre
# point xi and weight wi on the interval [a,b].  The points and weights are
# ordered by increasing point value.  A function f may be integrated on [a,b]
# by summing wi * f(xi) over i.
# 
### #   Returns: Cint
### #XXX Unknown input type t::Ptr{gsl_integration_glfixed_table}
### function gsl_integration_glfixed_point (a::Cdouble, b::Cdouble, i::Csize_t, xi::Ptr{Cdouble}, wi::Ptr{Cdouble}, t::Ptr{gsl_integration_glfixed_table})
###     ccall( (:gsl_integration_glfixed_point, "libgsl"), Cint, (Cdouble,
###         Cdouble, Csize_t, Ptr{Cdouble}, Ptr{Cdouble},
###         Ptr{gsl_integration_glfixed_table}), a, b, i, xi, wi, t )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the table t.
# 
### #   Returns: Void
### #XXX Unknown input type t::Ptr{gsl_integration_glfixed_table}
### function gsl_integration_glfixed_table_free (t::Ptr{gsl_integration_glfixed_table})
###     ccall( (:gsl_integration_glfixed_table_free, "libgsl"), Void,
###         (Ptr{gsl_integration_glfixed_table}, ), t )
### end