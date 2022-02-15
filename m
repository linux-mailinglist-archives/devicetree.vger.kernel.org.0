Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A21284B67DB
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 10:41:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234430AbiBOJlb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 04:41:31 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:32934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233978AbiBOJlb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 04:41:31 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB11E44B4
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 01:41:20 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id d27so31056063wrc.6
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 01:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t1wflCr1vStMilehgvIe0w5v3TJPtXNP/omwaXqFnbs=;
        b=X2ztBi1BvP5dZxfZSWhpEp86yS7NH+aFVQUGt8uylxVUHrTPgLxljm/I823I20QDAC
         myDO9b6pKdhXfxOflamUH9a0V56xRHIzRt+zobHm2aSQI9lX2AtyVbvDJ4b/hbAVMJwj
         O9vb1GNkZY2UcPTCqfIbCX+8y2sqNQNjI5x14V4+FrxOupZqMwREoOU7tUaRNhVammTS
         15HBCcV5/vHuri9+ncnfWaytYpmQXGl85VY7/QOaHfZV4ygqrf/US1M/Trp4pBEdNttY
         GmI4NuNrS9A1UQGLBpSYyXFp+7ZES8mph1JTwI5jnuKmU+GSd5GjMsnzQcXxqbHmEldG
         KnAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t1wflCr1vStMilehgvIe0w5v3TJPtXNP/omwaXqFnbs=;
        b=6LKeulA//hv1pnscxjoFpU4sK1zDoIHgODMsHCegD4t3xRLi8VdIdlvkt8tmNSGPz0
         4zl+BXTMbXgas2H3pcTSzC323T7aOQ6E5qpbOecrOl+20n7SYX/IOfpcfkk2PT7YMBIZ
         6Xm8aEQ86ANNw/e/EZF6jrgmXgXwTkuFkKJ38fPYoQ2sjrSMBu1nH02uQ86I1SCi8/ll
         Kn7yuPsOW/dLPgndRxJCoDzyfJcoWpivSeVQ0TmYiUD3QxLPUd2Opioa6wOKL7lZT62V
         IndmDhzJ9PLr+Mm7ezeYsUcMgtb7kjiL6MuCgEJGzNA1Nzi1uf0SVUSIHxlRZyJ2NVW2
         Qu4g==
X-Gm-Message-State: AOAM531m35Hb+1Gd3e9xzbZfAOdSZjzmsoichFVj7IAVGL0rK6DVS2oq
        Tv44Xjr4CRgwEION4KibzLzNp6FHcEu6qXJOmT9nSg==
X-Google-Smtp-Source: ABdhPJycaBm0tTnyxaAYB2jLzb26nfkOtUFXqf8v+zAItEOizp7OLUjLiobN4Bd6P0OekZnQ3wsTWbSu3Eh+8hJtkd0=
X-Received: by 2002:a5d:4209:: with SMTP id n9mr2515369wrq.86.1644918078895;
 Tue, 15 Feb 2022 01:41:18 -0800 (PST)
MIME-Version: 1.0
References: <20220215090211.911366-1-atishp@rivosinc.com> <20220215090211.911366-2-atishp@rivosinc.com>
In-Reply-To: <20220215090211.911366-2-atishp@rivosinc.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Tue, 15 Feb 2022 15:11:06 +0530
Message-ID: <CAAhSdy0+K+ADhO0oSoW7QUF582UvbaUbNPyAcBs5RMhUsm91Rw@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] RISC-V: Correctly print supported extensions
To:     Atish Patra <atishp@rivosinc.com>
Cc:     "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Tsukasa OI <research_trasio@irq.a4lg.com>,
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

On Tue, Feb 15, 2022 at 2:32 PM Atish Patra <atishp@rivosinc.com> wrote:
>
> From: Tsukasa OI <research_trasio@irq.a4lg.com>
>
> This commit replaces BITS_PER_LONG with number of alphabet letters.
>
> Current ISA pretty-printing code expects extension 'a' (bit 0) through
> 'z' (bit 25).  Although bit 26 and higher is not currently used (thus never
> cause an issue in practice), it will be an annoying problem if we start to
> use those in the future.
>
> This commit disables printing high bits for now.
>
> Signed-off-by: Tsukasa OI <research_trasio@irq.a4lg.com>
> Signed-off-by: Atish Patra <atishp@rivosinc.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  arch/riscv/kernel/cpufeature.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index d959d207a40d..dd3d57eb4eea 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -13,6 +13,8 @@
>  #include <asm/smp.h>
>  #include <asm/switch_to.h>
>
> +#define NUM_ALPHA_EXTS ('z' - 'a' + 1)
> +
>  unsigned long elf_hwcap __read_mostly;
>
>  /* Host ISA bitmap */
> @@ -63,7 +65,7 @@ void __init riscv_fill_hwcap(void)
>  {
>         struct device_node *node;
>         const char *isa;
> -       char print_str[BITS_PER_LONG + 1];
> +       char print_str[NUM_ALPHA_EXTS + 1];
>         size_t i, j, isa_len;
>         static unsigned long isa2hwcap[256] = {0};
>
> @@ -133,13 +135,13 @@ void __init riscv_fill_hwcap(void)
>         }
>
>         memset(print_str, 0, sizeof(print_str));
> -       for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> +       for (i = 0, j = 0; i < NUM_ALPHA_EXTS; i++)
>                 if (riscv_isa[0] & BIT_MASK(i))
>                         print_str[j++] = (char)('a' + i);
>         pr_info("riscv: ISA extensions %s\n", print_str);
>
>         memset(print_str, 0, sizeof(print_str));
> -       for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> +       for (i = 0, j = 0; i < NUM_ALPHA_EXTS; i++)
>                 if (elf_hwcap & BIT_MASK(i))
>                         print_str[j++] = (char)('a' + i);
>         pr_info("riscv: ELF capabilities %s\n", print_str);
> --
> 2.30.2
>
