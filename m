Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B41432A64FD
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 14:22:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729975AbgKDNWo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 08:22:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726691AbgKDNWo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 08:22:44 -0500
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com [IPv6:2607:f8b0:4864:20::b41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D9D8C0613D3
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 05:22:44 -0800 (PST)
Received: by mail-yb1-xb41.google.com with SMTP id f6so18055680ybr.0
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 05:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jb3wdusaREINBZ48i38ycIMAGJkV+09nUtl2Cta4ppY=;
        b=Hphq/PdkCfBXsjQpXy2rZiJEE2dALWDf3NsA6PUozW237/R6IW+Xf42Q3jV9iqZ2wb
         jUB6A/THkuGGM45T8s3ElWLk3/xucm6PKv7VZg4Sg+2/lVzoeZ2BahDSYWlC16zUpFQ2
         g6hdHaIYepBVaxMkUd+3HCScWecDi1PlAPOj2+xU8+OIufwNsnNExjQnjSLr1PRdSfdD
         LQaeF4rpHI6fwLE3NbX6nllBwTAh91SYCGnfmNz/EESz5ANG7qTNnmEbYjZ0g7uNoWO/
         6nBxljvpbA9e4TOL/DcgEAZUc2kr+5eohmcN4vdRJFAxQ46iJJS4pxl4yzetn/IOecoK
         /k3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jb3wdusaREINBZ48i38ycIMAGJkV+09nUtl2Cta4ppY=;
        b=O1GCIpP1PT9hXB5F1SP36k9ENL5yxsoITadtuDP8TkEcdIncIHqTQLNV1J+zqlzPla
         /HbF6R8qr+WPQN3CBCCiz7mTGmROlDC54siTZBL9XSnMxBGAqJWs4e7FwZOxrFrrIAso
         XdIH6/99tXUUvfPcoZtKnr2bT386BQ+wvazlrYgK/OkX0ocBRoHWcX/MBfyOf3IzFLAT
         8AhzCk/4+9WfO3jzAtfaD49mEdumR5Vy+77z99dJ3U4MH0y54UN61zbK3iMCg9XCcBaY
         I5iu1RW48JWVkT2Zku4uJCtHaXlW3NhERIzzfcrsw+2JgBZCJ0S+rXnFPoVrMM2EcYfv
         /rsg==
X-Gm-Message-State: AOAM530R8GTZ5txgsY4pL/14P74z+LZtNVy/YjSAZNSBnheZLfE58Skq
        jE81G4h5GRTHkWdwQuL12nnZViJ3LNORcd7gQrPHr+3AAyM=
X-Google-Smtp-Source: ABdhPJxvK0744YRHa35qvbfEo0Y1VzLk5dAe/Q0nV9OAEAnHnzf3yTh5C/D1pMMUTz/lQ/LMFjn4jybHBW//RfxN7as=
X-Received: by 2002:a25:348e:: with SMTP id b136mr35884853yba.203.1604496163295;
 Wed, 04 Nov 2020 05:22:43 -0800 (PST)
MIME-Version: 1.0
References: <20201103174350.991593-1-sudeep.holla@arm.com> <20201103174350.991593-4-sudeep.holla@arm.com>
In-Reply-To: <20201103174350.991593-4-sudeep.holla@arm.com>
From:   Andrew Walbran <qwandor@google.com>
Date:   Wed, 4 Nov 2020 13:22:31 +0000
Message-ID: <CA+_y_2H5oOdUM2Z+W8hvPOc41WZBrpcu7W1qd1UsK4Z1TiPr9w@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] arm64: smccc: Add support for SMCCCv1.2
 input/output registers
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>,
        Trilok Soni <tsoni@quicinc.com>, arve@android.com,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Android Kernel Team <kernel-team@android.com>,
        Fuad Tabba <tabba@google.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
        boundary="000000000000e43be505b347dfd1"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--000000000000e43be505b347dfd1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 3 Nov 2020 at 17:44, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> SMCCC v1.2 allows x8-x17 to be used as parameter registers and x4=E2=80=
=94x17
> to be used as result registers in SMC64/HVC64. Arm Firmware Framework
> for Armv8-A specification makes use of x0-x7 as parameter and result
> registers.
>
> Current SMCCC interface in the kernel just use x0-x7 as parameter and
> x0-x3 as result registers. Let us add new interface to support x0-x7
> as parameter and result registers. This can be extended to include
> x8-x17 when there are users for the same.
>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  arch/arm64/kernel/asm-offsets.c |  4 +++
>  arch/arm64/kernel/smccc-call.S  | 22 +++++++++++++++
>  include/linux/arm-smccc.h       | 50 +++++++++++++++++++++++++++++++++
>  3 files changed, 76 insertions(+)
>
> diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offs=
ets.c
> index 7d32fc959b1a..32bcc25337ce 100644
> --- a/arch/arm64/kernel/asm-offsets.c
> +++ b/arch/arm64/kernel/asm-offsets.c
> @@ -122,6 +122,10 @@ int main(void)
>    DEFINE(ARM_SMCCC_RES_X2_OFFS,                offsetof(struct arm_smccc=
_res, a2));
>    DEFINE(ARM_SMCCC_QUIRK_ID_OFFS,      offsetof(struct arm_smccc_quirk, =
id));
>    DEFINE(ARM_SMCCC_QUIRK_STATE_OFFS,   offsetof(struct arm_smccc_quirk, =
state));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X0_OFFS,   offsetof(struct arm_smccc_v1_2_re=
s, a0));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X2_OFFS,   offsetof(struct arm_smccc_v1_2_re=
s, a2));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X4_OFFS,   offsetof(struct arm_smccc_v1_2_re=
s, a4));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X6_OFFS,   offsetof(struct arm_smccc_v1_2_re=
s, a6));
>    BLANK();
>    DEFINE(HIBERN_PBE_ORIG,      offsetof(struct pbe, orig_address));
>    DEFINE(HIBERN_PBE_ADDR,      offsetof(struct pbe, address));
> diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-cal=
l.S
> index d62447964ed9..0ea15c1742f3 100644
> --- a/arch/arm64/kernel/smccc-call.S
> +++ b/arch/arm64/kernel/smccc-call.S
> @@ -43,3 +43,25 @@ SYM_FUNC_START(__arm_smccc_hvc)
>         SMCCC   hvc
>  SYM_FUNC_END(__arm_smccc_hvc)
>  EXPORT_SYMBOL(__arm_smccc_hvc)
> +
> +       .macro SMCCC_v1_2 instr
> +       .cfi_startproc
> +       \instr #0
> +       ldr x8, [sp]
> +       stp x0, x1, [x8, #ARM_SMCCC_V1_2_RES_X0_OFFS]
> +       stp x2, x3, [x8, #ARM_SMCCC_V1_2_RES_X2_OFFS]
> +       stp x4, x5, [x8, #ARM_SMCCC_V1_2_RES_X4_OFFS]
> +       stp x6, x7, [x8, #ARM_SMCCC_V1_2_RES_X6_OFFS]
> +       ret
> +       .cfi_endproc
> +.endm
> +
> +SYM_FUNC_START(arm_smccc_v1_2_hvc)
> +       SMCCC_v1_2 hvc
> +SYM_FUNC_END(arm_smccc_v1_2_hvc)
> +EXPORT_SYMBOL(arm_smccc_v1_2_hvc)
> +
> +SYM_FUNC_START(arm_smccc_v1_2_smc)
> +       SMCCC_v1_2 smc
> +SYM_FUNC_END(arm_smccc_v1_2_smc)
> +EXPORT_SYMBOL(arm_smccc_v1_2_smc)
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index f860645f6512..aed27214c88f 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -155,6 +155,56 @@ struct arm_smccc_res {
>         unsigned long a3;
>  };
>
> +#ifdef CONFIG_ARM64
> +/* TODO Need to implement for ARM too */
> +/**
> + * struct arm_smccc_v1_2_res - Result from SMC/HVC call
> + * @a0-a3 result values from registers 0 to 3

Should this be a0-a7?

> + */
> +struct arm_smccc_v1_2_res {
> +       unsigned long a0;
> +       unsigned long a1;
> +       unsigned long a2;
> +       unsigned long a3;
> +       unsigned long a4;
> +       unsigned long a5;
> +       unsigned long a6;
> +       unsigned long a7;
> +};
> +
> +/**
> + * arm_smccc_v1_2_hvc() - make HVC calls
> + * @a0-a7: arguments passed in registers 0 to 7
> + * @res: result values from registers 0 to 7
> + *
> + * This function is used to make SMC calls following SMC Calling Convent=
ion
> + * v1.2 or above. The content of the supplied param are copied to regist=
ers
> + * 0 to 7 prior to the SMC instruction. The return values are updated wi=
th
> + * the content from register 0 to 7 on return from the SMC instruction.

s/SMC/HVC/ in several places above.

> + */
> +asmlinkage
> +void arm_smccc_v1_2_hvc(unsigned long a0, unsigned long a1, unsigned lon=
g a2,
> +                       unsigned long a3, unsigned long a4, unsigned long=
 a5,
> +                       unsigned long a6, unsigned long a7,
> +                       struct arm_smccc_v1_2_res  *res);
> +
> +/**
> + * arm_smccc_v1_2_smc() - make SMC calls
> + * @a0-a7: arguments passed in registers 0 to 7
> + * @res: result values from registers 0 to 7
> + *
> + * This function is used to make SMC calls following SMC Calling Convent=
ion
> + * v1.2 or above. The content of the supplied param are copied to regist=
ers
> + * 0 to 7 prior to the SMC instruction. The return values are updated wi=
th
> + * the content from register 0 to 7 on return from the SMC instruction.
> + */
> +asmlinkage
> +void arm_smccc_v1_2_smc(unsigned long a0, unsigned long a1, unsigned lon=
g a2,
> +                       unsigned long a3, unsigned long a4, unsigned long=
 a5,
> +                       unsigned long a6, unsigned long a7,
> +                       struct arm_smccc_v1_2_res  *res);
> +#endif
> +
>  /**
>   * struct arm_smccc_quirk - Contains quirk information
>   * @id: quirk identification
> --
> 2.25.1
>

--000000000000e43be505b347dfd1
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIPmgYJKoZIhvcNAQcCoIIPizCCD4cCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ggz0MIIEtjCCA56gAwIBAgIQeAMYYHb81ngUVR0WyMTzqzANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA3MjgwMDAwMDBaFw0yOTAzMTgwMDAwMDBaMFQxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSowKAYDVQQDEyFHbG9iYWxTaWduIEF0bGFz
IFIzIFNNSU1FIENBIDIwMjAwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvLe9xPU9W
dpiHLAvX7kFnaFZPuJLey7LYaMO8P/xSngB9IN73mVc7YiLov12Fekdtn5kL8PjmDBEvTYmWsuQS
6VBo3vdlqqXZ0M9eMkjcKqijrmDRleudEoPDzTumwQ18VB/3I+vbN039HIaRQ5x+NHGiPHVfk6Rx
c6KAbYceyeqqfuJEcq23vhTdium/Bf5hHqYUhuJwnBQ+dAUcFndUKMJrth6lHeoifkbw2bv81zxJ
I9cvIy516+oUekqiSFGfzAqByv41OrgLV4fLGCDH3yRh1tj7EtV3l2TngqtrDLUs5R+sWIItPa/4
AJXB1Q3nGNl2tNjVpcSn0uJ7aFPbAgMBAAGjggGKMIIBhjAOBgNVHQ8BAf8EBAMCAYYwHQYDVR0l
BBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFHzM
CmjXouseLHIb0c1dlW+N+/JjMB8GA1UdIwQYMBaAFI/wS3+oLkUkrk1Q+mOai97i3Ru8MHsGCCsG
AQUFBwEBBG8wbTAuBggrBgEFBQcwAYYiaHR0cDovL29jc3AyLmdsb2JhbHNpZ24uY29tL3Jvb3Ry
MzA7BggrBgEFBQcwAoYvaHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvcm9vdC1y
My5jcnQwNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9yb290LXIz
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
3bJTL+f1Qu2ISHRBOjBMBgNVHSAERTBDMEEGCSsGAQQBoDIBKDA0MDIGCCsGAQUFBwIBFiZodHRw
czovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMIGaBggrBgEFBQcB
AQSBjTCBijA+BggrBgEFBQcwAYYyaHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vY2EvZ3NhdGxh
c3Izc21pbWVjYTIwMjAwSAYIKwYBBQUHMAKGPGh0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5jb20v
Y2FjZXJ0L2dzYXRsYXNyM3NtaW1lY2EyMDIwLmNydDAfBgNVHSMEGDAWgBR8zApo16LrHixyG9HN
XZVvjfvyYzBGBgNVHR8EPzA9MDugOaA3hjVodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2NhL2dz
YXRsYXNyM3NtaW1lY2EyMDIwLmNybDANBgkqhkiG9w0BAQsFAAOCAQEAPSX0dCv/pNBePB6gzapR
2K3Td14q4WSFa3qzZW2NDRqi6BwzBnY56oEw5nzqoCfO862RWMaJooafzfFN8Tqi+a1srDUtfEl6
HqHJnOHV1ffVlKteZo7+a8MKoEEZkNY3FDqLCGW0MI3sK12SRylih9n9EiaZmNCdbiVEiQp8b6ZS
71dZypMV11MFvto+wAK5IpWrAGZceJvedthg4MbgRkwFl5mO4SpAE2+SiEJHfwSCXO9pANWr9tUo
HcT/LtA3yN6iu37SYRAEwVTCMOQz8ZId/aYKzWtUVhCe/w0ktX3JmQcD27GSKtGZLC2S1oudgZi1
EWpM28ahuCAqKwzu8jGCAmowggJmAgEBMGgwVDELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2Jh
bFNpZ24gbnYtc2ExKjAoBgNVBAMTIUdsb2JhbFNpZ24gQXRsYXMgUjMgU01JTUUgQ0EgMjAyMAIQ
ARpkhHbCOwIIXzj5ux8owjANBglghkgBZQMEAgEFAKCB1DAvBgkqhkiG9w0BCQQxIgQgm2XsxJrb
6ZpcroJu8cvPWqpYYdYf9zlKK/16VMiseYcwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkq
hkiG9w0BCQUxDxcNMjAxMTA0MTMyMjQzWjBpBgkqhkiG9w0BCQ8xXDBaMAsGCWCGSAFlAwQBKjAL
BglghkgBZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBCjALBgkqhkiG
9w0BAQcwCwYJYIZIAWUDBAIBMA0GCSqGSIb3DQEBAQUABIIBAH1wSY/KsSTbWQi9MpTp2KI+mlL6
LyK4uu2hEwbI/Bw5q/ydkkOi/nyVHhl11U03SkNt4tu4vAhIUssE5HS2HN43kmOrs2vC4Mk3ThKT
0sCAuDyZjjvndU62oJl3qmsz6XQmXRBxXw54DoipHBxBMtSNcEaSScCHRR4XUOTCuSCGjSoCoL53
d/gDU0BCi44oKOfllzdJ4Rnr5cH7tt8Mmr8CO1A6wf+qa4WIHNiBT7BuKdsuoHJNMac0QyPTmpRs
1WWWe0mfPKqFcgptCliKG9SM34c/Bm5pye9PaRH5FAAgjdCR1PdSM4BE5ofvcR3KWwcoi0SC714/
+FejAIzNCm8=
--000000000000e43be505b347dfd1--
