#! /bin/sh

commit_id=$(cat commit.txt)
committername=$(git show -s --format='%cn' $commit_id)

# blocks="blocks=[
#             [
#                 'type': 'section',
#                 'text': [
#                     'type': 'mrkdwn',
#                     'text': \"*$committername*\n $commit_id commit name\"
#                 ]
#             ]
#         ]"

blocks="{
	\"blocks\": [
		{
			\"type\": \"section\",
			\"text\": {
				\"type\": \"mrkdwn\",
				\"text\": \"*$committername*\n $commit_id commit name\"
			}
		}
	]
}"

echo $blocks