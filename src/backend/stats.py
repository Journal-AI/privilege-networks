import numpy as np
import scipy
import statsmodels.api as sm

# Boxing and Unboxing of distributions using regular F-Test, chisquare-Test and T-Test

def chi_test(value, privilege_data):
    return statsmodels.stats.proportion.proportions_chisquare(privilege_data, privilege_data.shape[0], value)

def f_test(privilege_data, service_data, formula, hypothesis):
    results = sm.OLS(formula, privilege_data)
    return results.f_test(hypothesis)

def t_test(privilege_data, service_data, formula, hypothesis):
    results = sm.OLS(formula, privilege_data)
    return results.t_test(hypothesis)

# Modulate is used when the boxing and unboxing interface scales the input value and uses a statistical distribution
# Module class is also used to generate the bin output from seralization of the DEA Objective 
class Modulate:

    def __init__(self, param_dict=None):
        self.param_dict = param_dict

    def scale_param(self, param_name, scale=1.0):
        self.param_dict[param_name] *= scale
    
    def transform_param(self, param_name, transform=np.ones((1,1))):
        return np.matmul(self.param_dict[param_name], transform)

    def translate_param(self, param_name, translate=np.ones(1,1)):
        self.param_dict[param_name] = np.add(self.param_dict[param_name], translate)

    def power_param(self, param_name, power=1.0):
        self.param_dict[param_name] = np.power(self.param_dict[param_name], power)

