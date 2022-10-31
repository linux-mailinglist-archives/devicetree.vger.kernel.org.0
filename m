Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E842D613E32
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 20:26:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229822AbiJaT0S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 15:26:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229691AbiJaT0R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 15:26:17 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C9E812611
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 12:26:17 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id c129so1987358oia.0
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 12:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UJ0lOh2WHzkMHSyGntGrBnZIld+O9sk/z0tqYs4/9ac=;
        b=jPGFD+shh3P6Bxl6dtn/Bc8qE+MpQYMg9gVIT6JbAAfQ1LHymLueBqrnzH6fi5InEN
         N+higcRkSVCEyJqh0lBvXm7qN5SOF3x+Mez8epG5Ov/Xs5B4lU2nIgKoZRuJSk0s79n4
         LQKyHmuYzj7dsuc8Aq/hG7w+vv/5a4uDvjm54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UJ0lOh2WHzkMHSyGntGrBnZIld+O9sk/z0tqYs4/9ac=;
        b=ptgWREd5kC5WcQuI/a5xu8lCLxC2B4Kjo7TIVnohoCC03BmUCDUWyailyizcnYi4bg
         w4BYIYBnFPZrcf4XQOuGb9mF9gy6bzwXsisaC9An89W7M4acfzE/doXasLq5r/4cVc1J
         Jn36XmLFuTaEEeINYSho3j/NVgFA3zdZe5uUC4dpTY4lHVQkNoW6/ZiGXKoiJ1OZKwdu
         h9UHUyMsYwZonrVYWlefGO4a9qfRepE+3/o8QlsDLkwRwmzUmqEjMZ5u6QJbPI5N87xt
         6wGbih0A7OpqgZH5zwsgz9wo/QrMKPyXEHY+oPR8GNRguPaB3x0RYh5Z8IkE4jpO0yye
         EOrg==
X-Gm-Message-State: ACrzQf2maj3fWsNnnbJXAbC5dS5q6/v1jpOgmwIgXI79ecDfLAlk8cm6
        YVL16wfXFgZ84+bxW5cWey9eiovYOvNgaLyV2xTi
X-Google-Smtp-Source: AMsMyM5DK76DhxyTBJTOuwvjAKSAxZG+Xnk3XxPTuByccSTUMcdXR9NkvikUoLLs31SCFH7vadIOJuzabCuELGnqUMM=
X-Received: by 2002:aca:6007:0:b0:35a:1bda:d213 with SMTP id
 u7-20020aca6007000000b0035a1bdad213mr1491663oib.181.1667244376293; Mon, 31
 Oct 2022 12:26:16 -0700 (PDT)
MIME-Version: 1.0
References: <20221028231929.347918-1-atishp@rivosinc.com> <Y2Ad/FaLE5qM01gR@spud>
In-Reply-To: <Y2Ad/FaLE5qM01gR@spud>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Mon, 31 Oct 2022 12:26:05 -0700
Message-ID: <CAOnJCUK5Z6i39f5MJaRFhorGjcmBR=p_MapY_TDcR1e274wtpA@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Do not issue remote fences until smp is available
To:     Conor Dooley <conor@kernel.org>
Cc:     Atish Patra <atishp@rivosinc.com>, linux-kernel@vger.kernel.org,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 31, 2022 at 12:12 PM Conor Dooley <conor@kernel.org> wrote:
>
> On Fri, Oct 28, 2022 at 04:19:29PM -0700, Atish Patra wrote:
> > It is useless to issue remote fences if there is a single core
> > available. It becomes a bottleneck for sbi based rfences where
> > we will be making those ECALLs for no reason. Early code patching
> > because of static calls end up in this path.
> >
> > Signed-off-by: Atish Patra <atishp@rivosinc.com>
>
> Hey Atish,
> This doesn't apply for me to either fixes or for-next. What branch does
> it apply to?
> Thanks,
> Conor.
>
> > ---
> >  arch/riscv/mm/cacheflush.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> > index f10cb47eac3a..7fafc8c26505 100644
> > --- a/arch/riscv/mm/cacheflush.c
> > +++ b/arch/riscv/mm/cacheflush.c
> > @@ -19,6 +19,10 @@ void flush_icache_all(void)
> >  {
> >       local_flush_icache_all();
> >
> > +     /* No need to issue remote fence if only 1 cpu is online */
> > +     if (num_online_cpus() == 1)
> > +             return;
> > +
> >       if (IS_ENABLED(CONFIG_RISCV_SBI) && !riscv_use_ipi_for_rfence())
> >               sbi_remote_fence_i(NULL);
> >       else
> > --
> > 2.34.1
> >

Sorry I forgot to specify the dependencies for this patch. This patch
is based on Anup's IPI series [1] as
I assumed the IPI series would go first. I can rebase on top of the
master if required.
However, the issue will manifest only after Jisheng's patch[2] which
moved the sbi_init to earlier and introduced the
static key in the paging_init path.

[1] https://patchwork.kernel.org/project/linux-riscv/patch/20220820065446.389788-8-apatel@ventanamicro.com/
[2] https://lore.kernel.org/lkml/20220716115059.3509-1-jszhang@kernel.org/


--
Regards,
Atish
