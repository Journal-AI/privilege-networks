import numpy as np
import statsmodels.api as sm
import scipy
from scipy.stats import chisquare, f_oneway, ttest_ind

# Boxing and Unboxing of distributions using regular F-Test, chisquare-Test and T-Test

def chi_test(src1, src2):
    return scipy.stats.chisquare(src1, src2)

def f_test(privilege_data, service_data):
    return f_oneway(privilege_data.values[:,0], service_data.values[:,0])

def t_test(privilege_data, service_data):
    return ttest_ind(privilege_data.values[:,0], service_data.values[:,0])
