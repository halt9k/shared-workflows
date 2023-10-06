$user = "your user"
$repo = "repo"

(gh api repos/$user/$repo/actions/runs | ConvertFrom-Json).workflow_runs |
 %{ $_.id } |
 %{ gh api repos/$user/$repo/actions/runs/$_ -X DELETE }