Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEDC82F759F
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 10:40:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729326AbhAOJkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 04:40:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728586AbhAOJkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 04:40:06 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7883C061757
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 01:39:33 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id r4so7007856wmh.5
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 01:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=imaj/ctA3L/wlWp3n7QdUSQrNtHtAb2R0yMsutlcFPY=;
        b=cgNHpF2O+P66n9VszplNB6gDRihOfYqmDe4a9OIAshp+cU/z6aXgBreHhneSyDALZB
         BFYGYyGUabYUiTlTHxRBvbTeYEGj5y+kFZ5f8osmjYQjsw8koD7JA2Krcm+uU5ZdCOXL
         6UPcAz0nGGLXfXm0bGER9yAs+cwACT/tfr1gxEPjNxsGj6M1OHAAKFSlXDLO/i73v669
         z9Iy84NcAxp0HiERnGCV2OdGBbHfRI2cyESBg8jBGFPVcrJtjpKUD8n2PBChgYLQ4+N+
         GmZdCzUZXwIvOg9O3aik1NfifD3b9uFRIEsjXiDJuW6HQpBfj2Sw6TVSc22OTr5CQlO6
         PHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=imaj/ctA3L/wlWp3n7QdUSQrNtHtAb2R0yMsutlcFPY=;
        b=PB4JGHu0uZHX2z8zhdKoMEtojl4baiMuK15DS11SBbuiXZlh950z57kMQsEUiqv4YY
         NQn8GfBf28Kll7UZRBL7Jry8SQWO6nIEbsXZIEZYZ5z3yBy939TRjow1bHh/uiXnDpva
         HRe2BDCArMYmShVtn1DRzgtv+76RhanlQL96ff0ZXO1XAYaVfdFlNVTVj2Uwydi5iwUt
         riGurFjOPpsF1u4AFUvkgsptHtFr7er4fNFrIRrloNJ5nH3r/i99GukMoSonEFQECshU
         nGGKkV9ZGVdA8lUFzFqxHiFaW8R+dpc7p3esDn86glY2hjRUt7CZIfvbiPvaSDrUQocv
         Zjkg==
X-Gm-Message-State: AOAM5303az1MqgU/3MNWF+VTJKp6201JUIN7HmQsh/4zHTnkV3JIVWKK
        Vyj51RgR6t3j18JokAWXsV5zhwcxMYr0HS/A65OpkQ==
X-Google-Smtp-Source: ABdhPJzdRWu/TfyZ/Gd97tSU+o2o0bt1wD1y05MueGCvzmmH7EPSDgX4zaroWKovIWX7b3kAAonKNBo6s9Su7SNi1RQ=
X-Received: by 2002:a1c:1fc2:: with SMTP id f185mr7918821wmf.134.1610703572400;
 Fri, 15 Jan 2021 01:39:32 -0800 (PST)
MIME-Version: 1.0
References: <20210111212031.2422-1-vitaly.wool@konsulko.com>
In-Reply-To: <20210111212031.2422-1-vitaly.wool@konsulko.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Fri, 15 Jan 2021 15:09:21 +0530
Message-ID: <CAAhSdy04Nm+ET3Oepe5zRyVWiWpZzmfe=0BrdOEPUHGEOF86Vw@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: simplify BUILTIN_DTB processing
To:     Vitaly Wool <vitaly.wool@konsulko.com>
Cc:     linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Palmer Dabbelt <palmerdabbelt@google.com>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 12, 2021 at 2:51 AM Vitaly Wool <vitaly.wool@konsulko.com> wrote:
>
> Provide __dtb_start as a parameter to setup_vm() in case
> CONFIG_BUILTIN_DTB is true, so we don't have to duplicate
> BUILTIN_DTB specific processing in MMU-enabled and MMU-disabled
> versions of setup_vm().
>
> Signed-off-by: Vitaly Wool <vitaly.wool@konsulko.com>
> ---
>  arch/riscv/kernel/head.S | 4 ++++
>  arch/riscv/mm/init.c     | 4 ----
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 16e9941900c4..f5a9bad86e58 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -260,7 +260,11 @@ clear_bss_done:
>
>         /* Initialize page tables and relocate to virtual addresses */
>         la sp, init_thread_union + THREAD_SIZE
> +#ifdef CONFIG_BUILTIN_DTB
> +       la a0, __dtb_start
> +#else
>         mv a0, s1
> +#endif /* CONFIG_BUILTIN_DTB */
>         call setup_vm
>  #ifdef CONFIG_MMU
>         la a0, early_pg_dir
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 5b17f8d22f91..45faad7c4291 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -615,11 +615,7 @@ static void __init setup_vm_final(void)
>  #else
>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  {
> -#ifdef CONFIG_BUILTIN_DTB
> -       dtb_early_va = (void *) __dtb_start;
> -#else
>         dtb_early_va = (void *)dtb_pa;
> -#endif
>         dtb_early_pa = dtb_pa;
>  }
>
> --
> 2.20.1
>

We can avoid the early DTB mapping for MMU-enabled case when
BUILTIN_DTB is enabled (same as previous discussion). Otherwise
looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup
