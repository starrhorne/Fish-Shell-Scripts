function load_gzipped_sql_dump
    if test (count $argv) = 2
        gunzip -c $argv[1] | mysql -u root $argv[2]
    else
        echo "Usage: load_gzipped_sql_dump <sql.gz file> <db name>"
    end
end
