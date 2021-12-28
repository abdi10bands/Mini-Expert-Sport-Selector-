% This is a Mini Expert System selection of sports based on physical attributes

superpower :- write('Body Type: ectomorph, mesomorph, or endomorph ?'), read(Btype),
              write('Weight? Kg '), read(W),
              write('Height? Cm '), read(H),
              write('Agility: agile or not_ agile ? '), read(A),
              write('Felxibility: flexible or not_ flexible? '), read(F),
              write('Endurance: High or Low ? '), read(E),
              bmi(W, H, Bmi),
              choose(Btype, Bmi, A, F, E, Sport),
             %  write('The BMI is '), write(Bmi),
              write('You should be a '), write(Sport), nl.



% Just to calculate Bmi 100%
bmi(W, H, Bmi) :- Bmi is (W/(H*H)*10000).


% Basketball player if ....
%  CF mesomorphic is 40, endomorphic is 60 
choose(Btype, Bmi, A, F, E, 'Basketball Player') :-
       big(Btype), fit(Bmi), agility(A), F = not_flexible, endurance(E). 
              
% Choose Soccer if ....
%  CF ectomorphic is 60 , mesomorphic is 40
choose(Btype, Bmi, A, F, E, 'Soccer Player ') :-
       mid(Btype), fit(Bmi), agility(A), F = not_flexible, endurance(E).

% Choose Wrestler or jiu jitsu  if ... 
% CF mesomorphic is 60 , endomorphic is 50
choose(Btype, Bmi, A, F, E, ' Wrestler or jiu jitsu practioner ') :-
       small(Btype), fit(Bmi), A = not_agile, flexibility(F), endurance(E).
 
% Choose Tennis player if ....
% CF ectomorphic is 70 , mesomorphic is 50
choose(Btype, Bmi, A, F, E, ' Tennis Player ') :-
       mid(Btype), fit(Bmi), agility(A), F = not_flexible, endurance(E).

% Choose Football if ...
% CF mesomorphic is 90 , endomorphic 60
choose(Btype, Bmi, A, F, E, ' Football Player ') :-
       big(Btype), fit(Bmi), agility(A), F = not_flexible, endurance(E).

% Choose Baseball if ...
% CF mesomorphic is 90 , endmorphic 40
choose(Btype, Bmi, A, F, E, ' Baseball Player ') :-
       big(Btype), fit(Bmi), A = not_agile, F = not_flexible, E = low.

% Choose Weights  if ...
% CF is 30
choose(Btype, Bmi, A, F, E, ' Weight Lifter ') :-
       fit(Bmi), agility(A), F = not_flexible, E = low.

% Choose Boxer  if ...
% CF ectomorphic is 40 , mesomorphic is 60
choose(Btype, Bmi, A, F, E, ' Boxer  ') :-
       mid(Btype), fit(Bmi), agility(A), F = not_flexible, endurance(E).

% Choose Surfer  if ...
% CF mesomorphic is 60 , endomorphic is 70
choose(Btype, Bmi, A, F, E, ' Surfer  ') :-
       small(Btype), fit(Bmi), agility(A), F = not_flexible, endurance(E).

% Choose Skateboarder  if ...
% CF mesomorphic is 70 , endomorphic is 60
choose(Btype, Bmi, A, F, E, ' Skateboarder  ') :-
       small(Btype), fit(Bmi), agility(A), F = not_flexible, endurance(E).


% Table Tennis if ...
% CF mesomorphic is 50, endomorphic is 80
choose(Btype, Bmi, A, F, E, ' Table Tennis Player ') :-
    small(Btype), fit(Bmi), A = not_agile, F = not_flexible, endurance(E).

% Choose Gymnast if ....
% CF ectomorphic is 40 , mesomorphic is 60
choose(Btype, Bmi, A, F, E, 'Gymnast  ') :-
       mid(Btype), fit(Bmi), A = not_agile, flexibility(F), E = low.

% Choose Swimmer if ...
% CF mesomorphic is 80, endmorphic 50
choose(Btype, Bmi, A, F, E, ' Swimmer ') :-
    big(Btype), fit(Bmi), A = not_agile, F = not_flexible, endurance(E).

% Figure Skating if ...
% CF mesomorphic is 50, endomorphic is 80
choose(Btype, Bmi, A, F, E, ' Figure Skater ') :-
    small(Btype), fit(Bmi), A = not_agile, flexibility(F), endurance(E).

% Special is chose if all of the abloce fail ...
choose(Btype, Bmi, A, F, E, 'anything you want, You are special and different you have the ability to build your own path Choose ANY Sport  ;) ').



% larger body types, ofcourse not always 
% CF for these rules is 50
big(Btype) :- Btype = mesomorph.
big(Btype) :- Btype = endomorph.

% In the mid level of body types
% CF for these rules is 50
mid(Btype) :- Btype = ectomorph.
mid(Btype) :- Btype = mesomorph.

% small body type , ofcouse not always
% CF for these rules is 50
small(Btype) :- Btype = mesomorph.
small(Btype) :- Btype = endomorph.

% CF for these rules is 70.
fit(Bmi) :-  19 < Bmi, Bmi =< 25 .

% CF for these rules is 100 because they are definitions.
agility(A) :- A = agile.

% CF for these rules is 100 because they are definitions.
flexibility(F) :- F = flexible.

% CF for these rules is 100 because they are definitions.
endurance(E) :- E = high.

% This system does not have facts 
