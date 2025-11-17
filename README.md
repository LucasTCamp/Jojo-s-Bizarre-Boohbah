# Jojo-s-Bizarre-Boohbah

## QUESTION 1
- The error is a GROUP BY error.
- It happened because the name column we were selecting from boohbah_stand_link wasn't actually there. It was in the boohbah table.

## QUESTION 2
- Logic Error
- The issue is that this joins two unrelated tables. You must use the boohbah_stand_link, which literally links the two tables.

## QUESTION 3
- Name error
- The column name boohbah_name was just name. It was incorrectly stated.

## QUESTION 4
- Alias Error
- It sets boohbah to alias b and boohbah_stand_link to alias l, but doesn't use them in the select clause or where clause.

## QUESTION 5
- Logic Error
- The second where statement is not needed in the subquery for it to work.

## QUESTION 6
- Subquery Error
- The issue was that we were doing a single-row subquery where we needed a multiple-row one, which is why we used MAX.

## QUESTION 7
- Join error
- We were joining two unrelated tables, so we needed to include boohbah_stand_link to actually link the two.

## QUESTION 8
- Group Function Error
- You can't do a group function in the where clause, so you have to do a subquery instead. "

## QUESTION 9
- Logic Error
- You have to match the order of the outside select statement with the subquery select statement.

## QUESTION 10
- Logic Error
- You're using two unrelated tables, so you have to include boohbah_stand_link.
