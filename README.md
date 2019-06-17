# WesTest
Testing repository for workflows

Install cwltool
As root 
yum install python-virtualenv
as user proceed setenv commands on 
https://github.com/common-workflow-language/cwltool


Usage:
- fix the path in workflow.yml
- run:
cwltool workflow.cwl workflow.yml

it should provide unzipped file to this directory. 

If you see 
"The error was: unhashable type: 'CommentedMap'"
there is extra "g" letter on output name. 
