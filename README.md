# JPACRUDProject

So far this project has been probably the most interesting one and also the most lacking.

The great news is I have a very good idea of where I want to go but the bad news is that I lack the skill set currently to achieve these goals.

Best user info to use:

nolanurban@gmail.com
thenolan



# Scope of the project

As a USPSA participant, I shoot pistols competitively and train utilizing specialized drills to enhance my performance.  The hardest part is there
is no convenient way to track progress of these drills so I figured I would create a website that could be accessible via mobile phone to do so.

In short:

1. Users can login to a private account
2. Users should be able update their data to track it over time
3. Users could eventually compare their data to others to see where they are competitively

# Shortcomings

The list here is extensive but I'll continue to work to get it complete; we've been moving at such a rapid pace I'm still trying to do things and utilize code that is no longer relevant to the scope of our programming and it's apparatus.

1. CRUD operations became simple looking but the infrastructure supporting them became so large it's quite confusing.  I have multiple tables (because it makes sense to have certain degrees of separation) and do not understand enough of the JPQL language to actually pull multiple join queries. Additionally, I also tried doing native queries and that didn't work which demonstrates that I have very little surface knowledge of JPQL due to lacking in JSTL, JPA, etc.

2. The amount of DAO's and controllers -- is more less or is less more?  I found that creating them was quite easy but actually implementing them -- I have a DrillDAO that I do nothing with and a DrillDataDAO that there's little do with either since the UserDAO wants to access both.  I'm not sure how to bring their relationships over unfortunately.

3. The need for larger diagrams or UML's; I felt throughout this I started with a grand idea and became so focused on broken JSTL code that a simple <c:foreach> hampered my efforts more than actual Java programming

# Next Steps

1. Complete the updating process
2. Add an "AddDrill" for Users
3. Add a createNewUser for admin and potentially Users
4. Learn more about implementing JPQL queries
