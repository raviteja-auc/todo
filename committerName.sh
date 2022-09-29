#! /bin/sh

commit_id=$(cat commit.txt)
committername=$(git show -s --format='%cn' $commit_id)
committermsg=$(git show -s --format='%s' $commit_id)

blocks=[ 
            [ 
                "type": "section", 
                "text": [ 
                    "type": "mrkdwn", 
                    "text": "*$committername*\n $commit_id\n $committermsg" 
                ] 
            ] 
        ]

# blocks=[ { \"type\": \"section\", \"text\": { \"type\": \"mrkdwn\", \"text\": \"*$committername*\n $commit_id $committermsg\" } } ]

echo $blocks