import cvxpy as cvx
import numpy as np

# Python Object Class which is converted to C++ code by Reflection
class CCRInputOrientedObjective:

    def __init__(self, input_data=None, output_data=None):
        self.input_data = input_data # denominator
        self.output_data = output_data # numerator

    def define_variables(self):
        self.s = cvx.Variable(self.output_data.shape[0])
        self.p = cvx.Variable(self.input_data.shape[0])
    
    def define_efficiency(self):
        self.output_var = cvx.matmul(self.s, self.output_data)
        self.input_var = cvx.matmul(self.p, self.input_data)

    def pad_dmus(self, dmu_s, dmu_p):
        if len(dmu_s.shape) > 1 and len(dum_p.shape) > 1:
            max_dim = max(dmu_s.shape[1], dmu_p.shape[1])
            dmu_s = np.concatenate(dmu_s, np.zeros((dmu_s.shape[0],max_dim-dmu_s.shape[1])))
            dmu_p = np.concatenate(dmu_p, np.zeros((dmu_p.shape[0],max_dim-dmu_p.shape[1])))
        
        return dmu_s, dmu_p
    
    def define_constraints(self, dmu_s, dmu_p, pad=False):
        if pad:
            dmu_s, dmu_p = self.pad_dmus(dmu_s, dmu_p)
        self.constraints = \
        [cvx.matmul(self.s, dmu_s) - cvx.matmul(self.p, dmu_p) <= 0, 
        self.input_var == 1, self.s >= 0, self.p >= 0]
    
    def define_problem(self, verbose=False, solver=cvx.SCS, max_iters=500):
        # objective function
        objective = cvx.Maximize(self.output_var)

        # use cvxpy to solve the objective
        self.problem = cvx.Problem(objective, self.constraints)

        self.problem.solve(
            verbose=verbose, solver=solver, max_iters=max_iters
        )

# Python Object Class which is converted to C++ code by Reflection
class CCROutputOrientedObjective:

    def __init__(self, input_data=None, output_data=None):
        self.input_data = input_data # denominator
        self.output_data = output_data # numerator

    def define_variables(self):
        self.s = cvx.Variable(self.output_data.shape[0])
        self.p = cvx.Variable(self.input_data.shape[0])
    
    def define_efficiency(self):
        self.output_var = cvx.matmul(self.s, self.output_data)
        self.input_var = cvx.matmul(self.p, self.input_data)

    def pad_dmus(self, dmu_s, dmu_p):
        if len(dmu_s.shape) > 1 and len(dum_p.shape) > 1:
            max_dim = max(dmu_s.shape[1], dmu_p.shape[1])
            dmu_s = np.concatenate(dmu_s, np.zeros((dmu_s.shape[0],max_dim-dmu_s.shape[1])))
            dmu_p = np.concatenate(dmu_p, np.zeros((dmu_p.shape[0],max_dim-dmu_p.shape[1])))
        
        return dmu_s, dmu_p
    
    def define_constraints(self, dmu_s, dmu_p, pad=False):
        if pad:
            dmu_s, dmu_p = self.pad_dmus(dmu_s, dmu_p)
        self.constraints = \
        [cvx.matmul(self.p, dmu_p) - cvx.matmul(self.s, dmu_s) >= 0, 
        self.output_var == 1, self.s >= 0, self.p >= 0]
    
    def define_problem(self, verbose=False, solver=cvx.SCS, max_iters=500):
        # objective function
        objective = cvx.Minimize(self.input_var)

        # use cvxpy to solve the objective
        self.problem = cvx.Problem(objective, self.constraints)

        self.problem.solve(
            verbose=verbose, solver=solver, max_iters=max_iters
        )
