from testrail import *

client = APIClient('https://resola.testrail.io/')
client.user = 'dev+qa2@resola.ai'
client.password = 'r7zo7u^QEYeohpvQ'
case = client.send_get('get_case/4320')
print(case)
print('Get method test - PASSED')

result = client.send_post('add_result_forg/219475',
    {
        'status_id':1, 'comment':'Test passed wrote by api'
    }
    )
print(result)
