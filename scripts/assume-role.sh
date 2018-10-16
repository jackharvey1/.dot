#!/usr/bin/env bash
set -euo pipefail

help() { cat << EOF
usage: $0

Display the commands to set up the environment with an AWS assumed role

Example usage: ❯ eval OTP_TOKEN="123456" AWS_USERNAME="jon.doe" \$($0)

environment:
  ROLE            the role name to use (default: $ROLE)
  ACCOUNT         the AWS account number (default: $ACCOUNT)
  OTP_TOKEN       AWS MFA token
  AWS_USERNAME    the AWS username to use
  PARENT_ACCOUNT  the parent AWS account number (default: $PARENT_ACCOUNT)
EOF
}

[[ ${ROLE+x} && ${ACCOUNT+x} && ${OTP_TOKEN+x} && ${AWS_USERNAME+x} && ${PARENT_ACCOUNT+x} ]] || { help; exit 1; }

tmp="$(mktemp)"

aws sts assume-role \
  --role-arn "arn:aws:iam::${ACCOUNT}:role/${ROLE}" \
  --serial-number="arn:aws:iam::${PARENT_ACCOUNT}:mfa/${AWS_USERNAME}" \
  --token-code="$OTP_TOKEN" \
  --role-session-name "local-assume-role" > "$tmp"

AWS_ACCESS_KEY_ID="$(jq -r .Credentials.AccessKeyId < "$tmp")"
AWS_SECRET_ACCESS_KEY="$(jq -r .Credentials.SecretAccessKey < "$tmp")"
AWS_SESSION_TOKEN="$(jq -r .Credentials.SessionToken < "$tmp")"

cat << EOF
export AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID"
export AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY"
export AWS_SESSION_TOKEN="$AWS_SESSION_TOKEN"
EOF

rm "$tmp"
