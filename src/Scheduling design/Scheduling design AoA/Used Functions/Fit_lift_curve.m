function [fitresult, gof] = Fit_lift_curve(AoA, C_L)
%CREATEFIT1(AOA,C_L)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : AoA
%      Y Output: C_L
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 23-Jul-2014 10:53:51


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( AoA, C_L );

% Set up fittype and options.
ft = fittype( 'poly1' );
opts = fitoptions( ft );
opts.Lower = [-Inf -Inf];
opts.Upper = [Inf Inf];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'C_L vs. AoA', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel( 'AoA' );
ylabel( 'C_L' );
grid on


