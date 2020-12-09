import cvxpy as cvx
import numpy as np

# Python Object Class which is converted to C++ code by Reflection
class Objective:

    def __init__(self, input_data=None, output_data=None):
        self.input_data = input_data # denominator
        self.output_data = output_data # numerator

    def define_variables(self):
        self.s = cvx.Variable(self.output_data.shape[0])
        self.p = cvx.Variable(self.input_data.shape[0])
    
    def define_efficiency(self):
        self.output_var = cvx.matmul(self.s, self.output_data)
        self.input_var = cvx.matmul(self.p, self.input_data)

    def define_constraints(self, dmu_s, dmu_p):
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

