select r.project, r.commits, r.contributors, regexp_replace(r.address,'[0-9]', '!','g') as address from repositories r;
