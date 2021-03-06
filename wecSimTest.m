%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright 2014 the National Renewable Energy Laboratory and Sandia Corporation
%
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
%
%     http://www.apache.org/licenses/LICENSE-2.0
%
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath(genpath('.\tests'))
addpath(genpath('.\source'))
run_wecSim_tests
% setting up Jenkins CI


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Regular Wave Tests
fprintf('\nRegular Wave Tests \n')
fprintf('------------------------------\n')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Body1 Displacement in Heave
load('regular.mat')
tol = 1e-10;
org = regular.B1.WEC_Sim_org.heave;
new = regular.B1.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Body1 Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% Body2 Displacement in Heave
load('regular.mat')
tol = 1e-10;
org = regular.B2.WEC_Sim_org.heave;
new = regular.B2.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Body2 Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% Relative Displacement in Heave
load('regular.mat')
tol = 1e-10;
org = regular.Rel.WEC_Sim_org.heave;
new = regular.Rel.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Relative Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RegularCIC Wave Tests
fprintf('\nRegularCIC Wave Tests \n')
fprintf('------------------------------\n')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Body1 Displacement in Heave
load('regularCIC.mat')
tol = 1e-10;
org = regularCIC.B1.WEC_Sim_org.heave;
new = regularCIC.B1.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Body1 Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% Body2 Displacement in Heave
load('regularCIC.mat')
tol = 1e-10;
org = regularCIC.B2.WEC_Sim_org.heave;
new = regularCIC.B2.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Body2 Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% Relative Displacement in Heave
load('regularCIC.mat')
tol = 1e-10;
org = regularCIC.Rel.WEC_Sim_org.heave;
new = regularCIC.Rel.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Relative Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RegularCIC Wave Tests with State Space
fprintf('\nRegularCIC Wave Tests with State Space \n')
fprintf('------------------------------------------\n')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Body1 Displacement in Heave
load('regularSS.mat')
tol = 1e-10;
org = regularSS.B1.WEC_Sim_org.heave;
new = regularSS.B1.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Body1 Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% Body2 Displacement in Heave
load('regularSS.mat')
tol = 1e-10;
org = regularSS.B2.WEC_Sim_org.heave;
new = regularSS.B2.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Body2 Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% Relative Displacement in Heave
load('regularSS.mat')
tol = 1e-10;
org = regularSS.Rel.WEC_Sim_org.heave;
new = regularSS.Rel.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Relative Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Irregular Wave Tests using PM Spectrum
fprintf('\nIrregular Wave Tests using PM Spectrum \n')
fprintf('---------------------------------------------\n')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Body1 Displacement in Heave
load('irregularCIC.mat')
tol = 1e-10;
org = irregularCIC.B1.WEC_Sim_org.heave;
new = irregularCIC.B1.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Body1 Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% Body 2 Displacement in Heave
load('irregularCIC.mat')
tol = 1e-10;
org = irregularCIC.B2.WEC_Sim_org.heave;
new = irregularCIC.B2.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Body2 Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% Relative Displacement in Heave
load('irregularCIC.mat')
tol = 1e-10;
org = irregularCIC.Rel.WEC_Sim_org.heave;
new = irregularCIC.Rel.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Relative Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% 0th Order Spectral Moment
load('irregularCIC.mat')
tol = 1e-10;
org = irregularCIC.Sp.WEC_Sim_org.m0;
new = irregularCIC.Sp.WEC_Sim_new.m0;
assert(max(abs(org-new)) <= tol)
fprintf(['0th Order Spectral Moment, Diff = ' num2str(max(abs(org-new))) '\n'])

%% 2nd Order Spectral Moment
load('irregularCIC.mat')
tol = 1e-10;
org = irregularCIC.Sp.WEC_Sim_org.m2;
new = irregularCIC.Sp.WEC_Sim_new.m2;
assert(max(abs(org-new)) <= tol)
fprintf(['2nd Order Spectral Moment, Diff = ' num2str(max(abs(org-new))) '\n'])


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Irregular Wave Tests using PM Spectrum with State Space
fprintf('\nIrregular Wave Tests using PM Spectrum with State Space \n')
fprintf('----------------------------------------------------------\n')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Body1 Displacement in Heave
load('irregularSS.mat')
tol = 1e-10;
org = irregularSS.B1.WEC_Sim_org.heave;
new = irregularSS.B1.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Body2 Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% Body2 Displacement in Heave
load('irregularSS.mat')
tol = 1e-10;
org = irregularSS.B2.WEC_Sim_org.heave;
new = irregularSS.B2.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Body2 Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% Relative Displacement in Heave
load('irregularSS.mat')
tol = 1e-10;
org = irregularSS.Rel.WEC_Sim_org.heave;
new = irregularSS.Rel.WEC_Sim_new.heave;
assert(max(abs(org-new)) <= tol)
fprintf(['Relative Displacement in Heave, Diff = ' num2str(max(abs(org-new))) '\n'])

%% 0th Order Spectral Moment
load('irregularSS.mat')
tol = 1e-10;
org = irregularSS.Sp.WEC_Sim_org.m0;
new = irregularSS.Sp.WEC_Sim_new.m0;
assert(max(abs(org-new)) <= tol)
fprintf(['0th Order Spectral Moment, Diff = ' num2str(max(abs(org-new))) '\n'])

%% 2nd Order Spectral Moment
load('irregularSS.mat')
tol = 1e-10;
org = irregularSS.Sp.WEC_Sim_org.m2;
new = irregularSS.Sp.WEC_Sim_new.m2;
assert(max(abs(org-new)) <= tol)
fprintf(['2nd Order Spectral Moment, Diff = ' num2str(max(abs(org-new))) '\n'])


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Passive Yaw Tests in Regular Waves
fprintf('\nPassive Yaw Tests in Regular Waves \n')
fprintf('---------------------------------------\n')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Body1 Displacement in Yaw
load('RegYaw')
tol = 1e-10;
assert(RegYaw.Pos_diff <= tol)
fprintf(['Body1 Displacement in Yaw, Diff = ' num2str(RegYaw.Pos_diff) '\n'])

%% Body1 Torque in Yaw
tol=1e-4;
assert(RegYaw.Force_diff <= tol)
fprintf(['Body1 Torque in Yaw, Diff = ' num2str(RegYaw.Force_diff) '\n'])


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Passive Yaw Tests in Irregular Waves
fprintf('\nPassive Yaw Tests in Irregular Waves \n')
fprintf('---------------------------------------\n')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Body1 Displacement in Yaw
load('IrrYaw')
tol = 1e-10;
assert(IrrYaw.Pos_diff <= tol)
fprintf(['Body1 Displacement in Yaw, Diff = ' num2str(IrrYaw.Pos_diff) '\n'])

%% Body1 Torque in Yaw
load('IrrYaw')
% forces; use a larger tolerance to accomodate their larger magnitude
tol=1e-4;
assert(IrrYaw.Force_diff <= tol)
fprintf(['Body1 Torque in Yaw, Diff = ' num2str(IrrYaw.Force_diff) '\n'])

%% 0th Order Spectral Moment
load('IrrYaw.mat')
tol = 1e-10;
org = IrrYaw.Sp.WEC_Sim_org.m0;
new = IrrYaw.Sp.WEC_Sim_new.m0;
assert(max(abs(org-new)) <= tol)
fprintf(['0th Order Spectral Moment, Diff = ' num2str(max(abs(org-new))) '\n'])

%% 2nd Order Spectral Moment
load('IrrYaw.mat')
tol = 1e-10;
org = IrrYaw.Sp.WEC_Sim_org.m2;
new = IrrYaw.Sp.WEC_Sim_new.m2;
assert(max(abs(org-new)) <= tol)
fprintf(['2nd Order Spectral Moment, Diff = ' num2str(max(abs(org-new))) '\n'])


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run Test Cases
% Use the following command to run tests locally,  "runtests"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
