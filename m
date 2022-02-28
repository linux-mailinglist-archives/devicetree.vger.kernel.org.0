Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31A8D4C66D7
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 11:07:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234668AbiB1KH6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 05:07:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231602AbiB1KH5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 05:07:57 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36DC43120D
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 02:07:19 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id j22so14471790wrb.13
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 02:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AnO7RJd7lIaXKXrGVfiV/DsRScB6mJSjgNzjp2pSS5E=;
        b=7c66SOwY/5D6ac4Gr2dhD7c1d55xW30W4PtBtluMV01alcTFMgytmQio0L2BKqun4w
         9qH8cgBStRaEJQx4YfunkHdz5E8/LsW9HkXkoQH7wGtqB03DUnGqMJnDmgvcCmVzZR5b
         SgWCEUZr/tWTN2o25v+mtJyA/uYE3BAFJAoDNP54vZurfkR5WHIlwfxaXZQMIskQkrvx
         uAQNcDzTR/KrwuPJS+7cE5KZxeusc/zHFEAYEQMldl1iYfM43jQf0GUbFJsIk7QDfEIW
         /N6ezzl5t1Dg+dkPm9LLIkS/fPinvJzH7luFkXXqFoAvrlIfeP+yoTV6cv1MS6jeOb6y
         rL7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AnO7RJd7lIaXKXrGVfiV/DsRScB6mJSjgNzjp2pSS5E=;
        b=e9OAI0dl7I76dYEfIB4abGGcuTPC/f50C2N7BarFnTBEseWFuvLEUrSXGTu9Ff5dZM
         yEXnVZNYtDZ3A/7vglyLmEqDyLk8ts9KUd0z1nhWRSLTqHttOUvPyOu6cS1HMMu6juUs
         j5e/w3CvTmIDeeCfP+ia1Xt3TW3df4k7jSt9d5lf7SP2WV6c0BNb1OTPbEvnxwUVa2aB
         tDYZ7lGy0Fg3/2fjMJlGEf5NI64lOCqFemp1bZr6niUNWyZRro+J29fbsLd3N81jjTOR
         Ur4msCLvfz5osEkRFCoQlj52a6WVYNkKwezN7rojGCvIb2aecqtPCokOz7chgd60o0+7
         K5vg==
X-Gm-Message-State: AOAM532ORB2DHgpVDGfejsEuExREft9GS8T9mhCuHEZ2p1F1mCWm6WJa
        6dtTQSCqe41bbVr7fjFNZU0VLT+wqogXCRZHQ6kkGw==
X-Google-Smtp-Source: ABdhPJzcGby9txMNpnM6dDB+1i4WYHtXQh75bUgyPwWul1vT2RSidk/YaPKfHpG9CYxWtJkWG2MX2nBdMjrmuQpOAWg=
X-Received: by 2002:adf:b645:0:b0:1e3:bab:7594 with SMTP id
 i5-20020adfb645000000b001e30bab7594mr15213752wre.346.1646042837663; Mon, 28
 Feb 2022 02:07:17 -0800 (PST)
MIME-Version: 1.0
References: <20220222204811.2281949-1-atishp@rivosinc.com> <20220222204811.2281949-6-atishp@rivosinc.com>
In-Reply-To: <20220222204811.2281949-6-atishp@rivosinc.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Mon, 28 Feb 2022 15:36:59 +0530
Message-ID: <CAAhSdy0Vzdx0y5Kt7JWq6QFRR4OO5Ea5PNF=pN3Nu0Q28r+CNA@mail.gmail.com>
Subject: Re: [PATCH v5 5/6] RISC-V: Do no continue isa string parsing without
 correct XLEN
To:     Atish Patra <atishp@rivosinc.com>
Cc:     "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atishp@atishpatra.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        DTML <devicetree@vger.kernel.org>,
        Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 23, 2022 at 2:18 AM Atish Patra <atishp@rivosinc.com> wrote:
>
> The isa string should begin with either rv64 or rv32. Otherwise, it is
> an incorrect isa string. Currently, the string parsing continues even if
> it doesnot begin with current XLEN.
>
> Fix this by checking if it found "rv64" or "rv32" in the beginning.
>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Atish Patra <atishp@rivosinc.com>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  arch/riscv/kernel/cpufeature.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index c6693873e95c..f3a4b0619aa0 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -84,6 +84,7 @@ void __init riscv_fill_hwcap(void)
>         for_each_of_cpu_node(node) {
>                 unsigned long this_hwcap = 0;
>                 DECLARE_BITMAP(this_isa, RISCV_ISA_EXT_MAX);
> +               const char *temp;
>
>                 if (riscv_of_processor_hartid(node) < 0)
>                         continue;
> @@ -93,6 +94,7 @@ void __init riscv_fill_hwcap(void)
>                         continue;
>                 }
>
> +               temp = isa;
>  #if IS_ENABLED(CONFIG_32BIT)
>                 if (!strncmp(isa, "rv32", 4))
>                         isa += 4;
> @@ -100,6 +102,9 @@ void __init riscv_fill_hwcap(void)
>                 if (!strncmp(isa, "rv64", 4))
>                         isa += 4;
>  #endif
> +               /* The riscv,isa DT property must start with rv64 or rv32 */
> +               if (temp == isa)
> +                       continue;
>                 bitmap_zero(this_isa, RISCV_ISA_EXT_MAX);
>                 for (; *isa; ++isa) {
>                         const char *ext = isa++;
> --
> 2.30.2
>
