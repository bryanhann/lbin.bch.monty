

bch_monty_usage () {
cat << EOF
USAGE:
        bch_monty SUBCOMMAND

SUBCOMMANDS:
        activate    -- activate a currently installed monty.
EOF
}

bch_monty () {
  case $1. in
    .|-h.|--help.)
      bch_monty_usage
      return
      ;;
    activate.)
      script=$(bch-monty activation-script)
      [ -f $script ] && { source $script ; return ; }
      echo "[bch_monty()]: Activation script not found. Try [bch-monty reinstall] first."
      ;;
  esac
}

