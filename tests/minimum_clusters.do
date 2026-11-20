version 16
clear all
set more off
run "fastflex.mata"
mata: mata drop fastflex_v1_fit()
mata:
real rowvector fastflex_v1_fit(real matrix input, real colvector a, real scalar omit, real scalar native, string scalar family)
{
    assert(rows(a)==2)
    assert(omit==1 | omit==2)
    return((omit==1 ? 1 : 3,.))
}
result=fastflex_v1_jack(J(1,1,0),(3\0),"fastflex")
assert(cols(result)==3)
assert(abs(result[1]-1)<1e-14)
assert(result[2]==1 & result[3]==3)
end
capture mata: fastflex_v1_jack(J(1,1,0),3,"fastflex")
assert _rc!=0
di "TWO_DELETION_ACCUMULATOR_PASS fastflex; actual ATT feasibility tested separately"
