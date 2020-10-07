from csv import writer
from behave import given, when, then
from hamcrest import instance_of, assert_that
from cofrinho import parser

@given('o csv')
def create_csv(context):
    context.csv = 'test.csv'
    # table = [
    #     dict(zip(context.table.headings, row))
    #     for row in context.table
    # ]
    with open(context.csv, 'w') as file:
        csv = writer(file)
        csv.writerow(context.table.headings)
        csv.writerows(context.table)


@when('o parser for invocado com "{campanha}"')
def parse_campanha(context, campanha):
    contex.result = parser(nome=campanha, path=context.csv)
    assert_that(contex.result, instance_of(dict))


@then('as pessoas apoiadoras com status "{status}" deverão ser exibidas')
def check_campanha(context, status):
    contex.result
