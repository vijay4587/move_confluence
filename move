curl -u $confluence_creds -X GET "$confluence_url/pages/movepage.action?pageId=<page_id>&spaceKey=$confluence_space&targetTitle=<page_title_where_it_should_be_moved>&position=append" -H 'x-atlassian-token: no-check'


import requests
import json

url = "https://your-domain.atlassian.net/wiki/rest/api/content/{pageId}/move/{position}/{targetId}"

headers = {
   "Accept": "application/json",
   "Authorization": "Bearer <access_token>"
}

response = requests.request(
   "PUT",
   url,
   headers=headers
)

print(json.dumps(json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": ")))
