variable "general_account_role" {
    type = "string"
}

variable "rec_payments_signer_role" {
    type = "string"
}

variable "default_signer_role" {
    type = "string"
}

resource tokend_account "recurring_payments_account" {
    account_id = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
    role_id = "${var.general_account_role}"
    signers = [
        {
            role_id = "${var.default_signer_role}"
            public_key = "GAEIYBEUJMESZUJENHDIKKMIN5MFOJA7ZWOIXCQ2KYLB74B3SJFOA37R"
            weight = 1000
            identity = 1
        }
    ]
}
