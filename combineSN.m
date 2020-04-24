function [S] = combineSN(S,NF,multiplier,start)

% Determine start position of signal
% start=randi([1 length(NF)-length(S)],1,1);

% Combine signals
S=[NF(1:start) NF(start+1:start+length(S))+S*multiplier NF(start+1+length(S):end)];

end

