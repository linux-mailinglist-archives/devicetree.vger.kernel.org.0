Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C9FB310419
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 05:35:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbhBEEfM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 23:35:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbhBEEfK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 23:35:10 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A9E5C061786
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 20:34:30 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id i9so4840020wmq.1
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 20:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jAica2vDP1q/VnsGptZCUgryouD6m2iuWm5pWmo73/8=;
        b=IwIwEkWboYIh/T9gL0Ri0alGJIf2LkWSUw2UpU5d/TWfOyKAM6tDTkiYfq9mPClxhG
         RNezv+J7lfWK0WB/wOJkoD2TooHSCFt8H8IbuHQBBbXw9xxyut/vPS8312H+TVjwoK9z
         /sjo807gnmdvBLnRPH8AQEA6SIBrwHkDQEV7oAEDfuePo96XUe4bneKsuzC5bQoUI4hC
         DEyvmts7/qQMdzDH8BQVY7B7NTHS8RdGsq910p7w8o6BcN6c/xMlVGOUuRVYhUqYFMlK
         5BDTnOKZcc7WFOYxhuA49wNtl+fSevbSKO0eAZHc/K3Cwy9CjK3vY3wvnz0mLtgcN51p
         8iWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jAica2vDP1q/VnsGptZCUgryouD6m2iuWm5pWmo73/8=;
        b=Td2KBowiQ125jhy7ggBGrJ3wwNG08gri8sGzCpcjOGb4eOIfOUMb9mZMWYbXCNzQrS
         L1OMFPXP/RW/PqnNhpN81a9gNul77HO5AsBHAAXWqPAJyFdz+TPvDtAIFqShLlS3UjFx
         rNf9EXQf6WN4p2Zr9oTUrxFn13WYAM3NiYAPqOnaZYbxijCUl0SB1PulUGB/Ccue+LRf
         rRI3OGwISFULEcQoxfIlzm42ZWaNCEpHX/UaE2+jJ3o/EraBGvMh1vXr+WO+s5qVNeFt
         XLs7IeR/+pxre8ylCx1Y/lKujwtZwV/xKoTnXzPlgXsnFFxzV9CQLeEIROr1MfKHepBt
         g4fw==
X-Gm-Message-State: AOAM531/4YE3INSxleuNbGgh4fIOM+IcsOBtDoet52j7R/m38rOexbZi
        fJmckHMZ8nDzHvWymFpKMzv4U0rTfF5Zt1MiTfYcGg==
X-Google-Smtp-Source: ABdhPJx54wFfqNAcNeeb/Q3cD6Rxwuo54eE3SxXFvBomyMvyvBq3l5OQNBOA+LkQ1blV19pt3+PGMe6q9Z6It1v87To=
X-Received: by 2002:a1c:1b12:: with SMTP id b18mr1766706wmb.157.1612499668935;
 Thu, 04 Feb 2021 20:34:28 -0800 (PST)
MIME-Version: 1.0
References: <20210203125913.390949-1-damien.lemoal@wdc.com> <20210203125913.390949-4-damien.lemoal@wdc.com>
In-Reply-To: <20210203125913.390949-4-damien.lemoal@wdc.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Fri, 5 Feb 2021 10:04:17 +0530
Message-ID: <CAAhSdy3VCxjijSDrKmHAXN5LqV6N93Q=cZR86ai_whVc71Y=3Q@mail.gmail.com>
Subject: Re: [PATCH v15 03/16] dt-bindings: update risc-v cpu properties
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Atish Patra <atish.patra@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 3, 2021 at 6:29 PM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> The Canaan Kendryte K210 SoC CPU cores are based on a rocket chip
> version using a draft verion of the RISC-V ISA specifications. To avoid
> any confusion with CPU cores using stable specifications, add the
> compatible string "canaan,k210" for this SoC CPU cores.
>
> Also add the "riscv,none" value to the mmu-type property to allow a DT
> to indicate that the CPU being described does not have an MMU or that
> it has an MMU that is not usable (which is the case for the K210 SoC).
>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index eb6843f69f7c..e534f6a7cfa1 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -39,6 +39,7 @@ properties:
>                - sifive,u74
>                - sifive,u5
>                - sifive,u7
> +              - canaan,k210
>            - const: riscv
>        - const: riscv    # Simulator only
>      description:
> @@ -56,6 +57,7 @@ properties:
>        - riscv,sv32
>        - riscv,sv39
>        - riscv,sv48
> +      - riscv,none
>
>    riscv,isa:
>      description:
> --
> 2.29.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
