user_data(student, 123).
user_data(admin, 0000).

login :-
    check_login(3).

check_login(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

check_login(Attempts) :-
    Attempts > 0,
    write('Username: '), read(User),
    write('Password: '), read(Pass),
    process_login(User, Pass, Attempts).

process_login(User, Pass, _) :-
    user_data(User, Pass),
    write('Login Successful'), nl.

process_login(User, Pass, Attempts) :-
    \+ user_data(User, Pass),
    write('Login Unsuccessful'), nl,
    Remaining is Attempts - 1,
    check_login(Remaining).