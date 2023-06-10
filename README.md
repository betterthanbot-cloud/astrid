# Basic information for project contribution to Astrid

| Title | Description | URL |
| --- | --- | --- |
| Astrid Task List | Look here for ongoing task to work on. | [Astrid Dashboard] |
| AWS |  | [AWS] |
| Terraform |  | [Terraform] |
| Terragrunt |  | [Terragrunt] |
| Kubernetes |  | [Kubernetes] |
| Kustomized |  | [Kustomize] |
| Kapp |  | [Kapp] |


## How to clone and commit repo
'''
$ git clone https://github.com/betterthanbot-cloud/astrid.git 
$ git pull
$ git checkout -b feature/astrid-XX             # Change XX with Astric Dashboard Title extention. 
$ git tag 0.0.X                                 # Tag follows CHANGELOG.MD version. eg. 1.1.3
$ git add .
$ git commit -m "Meaningful message"            # Commit message related to dashboard task you are working on.
$ git push origin feature/astrid-XX
$ git push --tag
'''


## How to setup git config
'''
$ git config --global --edit                    # click 'i' to insert
name = <github-username>                        # enter github username
email = <email>                                 # enter email related to github account
filemode = false
diff = auto
status = auto
branch = auto
pager = true
'''

[AWS]: https://docs.aws.amazon.com/?nc2=h_ql_doc_do
[Astrid Dashboard]: https://github.com/orgs/betterthanbot-cloud/projects/1
[Terraform]: https://developer.hashicorp.com/terraform/intro
[Terragrunt]: https://terragrunt.gruntwork.io/docs/
[Kubernetes]: https://kubernetes.io/docs/home/
[Kustomize]: https://kustomize.io/
[Kapp]: https://carvel.dev/kapp/