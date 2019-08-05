Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8F4C68225E
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 18:30:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728830AbfHEQaI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 12:30:08 -0400
Received: from mail.kernel.org ([198.145.29.99]:33304 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726620AbfHEQaI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Aug 2019 12:30:08 -0400
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C728521738
        for <devicetree@vger.kernel.org>; Mon,  5 Aug 2019 16:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1565022606;
        bh=6zMiHJIx+ERj83jXha9mrqpBBab9E1RuqE3mXe0hPsM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=2s9SkdRVpM4hPN5qZkWi6MkYfIaJWteFgfXmwmgrlIcyuqrDjsqZzwIiKVN1/peS3
         Lt4oZBqZ1VCHxDo7VhlAOuE7FOzGqrt92NzOiR4pRTmQfKM8PSDXIrkJiWmOvXRQwq
         yTXcqDVwnmu0srjhsSL1Upra2ji+hKaAJtpbilmw=
Received: by mail-qt1-f174.google.com with SMTP id 44so50483795qtg.11
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 09:30:06 -0700 (PDT)
X-Gm-Message-State: APjAAAVJZS83fiANSXaU2Wl/Y3vYCYhJ4K1OmDcH6oMbzTknxCqoEmqS
        k3N22hfBOuS+X9Av2LZlpZywf0Qoz/Jl5G5H5g==
X-Google-Smtp-Source: APXvYqyfTHweXxsx0yQa1q1Ij2UE3m8ALrwP9dc0+htzGtl046XS6apqeV6/SCqQpiyuYax5OtEwtOw15tFiLncNRHQ=
X-Received: by 2002:ac8:368a:: with SMTP id a10mr107715673qtc.143.1565022605914;
 Mon, 05 Aug 2019 09:30:05 -0700 (PDT)
MIME-Version: 1.0
References: <1565020400-25679-1-git-send-email-daniel@gimpelevich.san-francisco.ca.us>
In-Reply-To: <1565020400-25679-1-git-send-email-daniel@gimpelevich.san-francisco.ca.us>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 5 Aug 2019 10:29:53 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLobsATYbKR0Rx8kpS3i+hHqsqibYn9h5Xi1T=DVwRF1g@mail.gmail.com>
Message-ID: <CAL_JsqLobsATYbKR0Rx8kpS3i+hHqsqibYn9h5Xi1T=DVwRF1g@mail.gmail.com>
Subject: Re: [PATCH v2] of/fdt: implement a "merge-cmdline" property
To:     Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>
Cc:     devicetree@vger.kernel.org, Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 5, 2019 at 9:53 AM Daniel Gimpelevich
<daniel@gimpelevich.san-francisco.ca.us> wrote:
>
> Currently, "bootargs" supplied via the "chosen" node can be used only to
> supply a kernel command line as a whole. No mechanism exists in DT to add
> bootargs to the existing command line instead. This is needed in order to
> avoid having to update the bootloader or default bootloader config when
> upgrading to a DTB and kernel pair that requires bootargs not previously
> needed.

The DTB and kernel are not a pair. Or at least they shouldn't be. If
anything, the bootloader and DTB are a pair as those are the h/w
specific parts. If the DTB and kernel are a pair, then anything you
want to put into DTB can just be in the kernel. There's been some
attempts to rework the command line handling to be common and support
prepending and appending which could be useful here.

> One example use case is that OpenWrt currently supports four ARM devices by
> means of locally applying the previously rejected edition of this patch. So
> far, the patch has been used in production only on ARM, but architecture is
> not a distinction in the design.

Other distros support dozens of boards, so why haven't they ever
needed such a change?

> On MIPS, Commit 951d223 ("MIPS: Fix CONFIG_CMDLINE handling") currently
> prevents support of such a mechanism, so I am including a workaround, in
> anticipation of upcoming changes.

Like I said on irc, mixing this with the mess that is MIPS
bootloader-kernel interface generally and command line handling
specifically is not a path to upstream.

> Signed-off-by: Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>
> Fixes: 951d223 ("MIPS: Fix CONFIG_CMDLINE handling")
> References: https://patchwork.linux-mips.org/patch/17659/
> ---
>  arch/mips/kernel/setup.c | 12 ++++++++----
>  drivers/of/fdt.c         |  9 +++++++--
>  2 files changed, 15 insertions(+), 6 deletions(-)
>
> diff --git a/arch/mips/kernel/setup.c b/arch/mips/kernel/setup.c
> index ab349d2..9ce58f2 100644
> --- a/arch/mips/kernel/setup.c
> +++ b/arch/mips/kernel/setup.c
> @@ -725,7 +725,10 @@ static void __init arch_mem_init(char **cmdline_p)
>          * CONFIG_CMDLINE ourselves below & don't want to duplicate its
>          * content because repeating arguments can be problematic.
>          */
> -       strlcpy(boot_command_line, " ", COMMAND_LINE_SIZE);
> +       if (USE_DTB_CMDLINE)
> +               strlcpy(boot_command_line, arcs_cmdline, COMMAND_LINE_SIZE);
> +       else
> +               strlcpy(boot_command_line, " ", COMMAND_LINE_SIZE);
>
>         /* call board setup routine */
>         plat_mem_setup();
> @@ -753,9 +756,10 @@ static void __init arch_mem_init(char **cmdline_p)
>  #if defined(CONFIG_CMDLINE_BOOL) && defined(CONFIG_CMDLINE_OVERRIDE)
>         strlcpy(boot_command_line, builtin_cmdline, COMMAND_LINE_SIZE);
>  #else
> -       if ((USE_PROM_CMDLINE && arcs_cmdline[0]) ||
> -           (USE_DTB_CMDLINE && !boot_command_line[0]))
> +       if (USE_PROM_CMDLINE)
>                 strlcpy(boot_command_line, arcs_cmdline, COMMAND_LINE_SIZE);
> +       else if (!strcmp(boot_command_line, " "))
> +               boot_command_line[0] = '\0';
>
>         if (EXTEND_WITH_PROM && arcs_cmdline[0]) {
>                 if (boot_command_line[0])
> @@ -764,7 +768,7 @@ static void __init arch_mem_init(char **cmdline_p)
>         }
>
>  #if defined(CONFIG_CMDLINE_BOOL)
> -       if (builtin_cmdline[0]) {
> +       if (builtin_cmdline[0] && strcmp(boot_command_line, builtin_cmdline)) {
>                 if (boot_command_line[0])
>                         strlcat(boot_command_line, " ", COMMAND_LINE_SIZE);
>                 strlcat(boot_command_line, builtin_cmdline, COMMAND_LINE_SIZE);
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 9cdf14b..08c25eb 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -1055,8 +1055,13 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
>
>         /* Retrieve command line */
>         p = of_get_flat_dt_prop(node, "bootargs", &l);
> -       if (p != NULL && l > 0)
> -               strlcpy(data, p, min(l, COMMAND_LINE_SIZE));
> +       if (p != NULL && l > 0) {
> +               if (!of_get_flat_dt_prop(node, "merge-cmdline", NULL))

This is worse than the original proposal because 'merge' is not clear
what it does compared to 'append' and how does 'cmdline' relate to
'bootargs'.

> +                       *(char *)data = '\0';
> +               if (*(char *)data)
> +                       strlcat(data, " ", COMMAND_LINE_SIZE);
> +               strlcat(data, p, min(l + strlen(data), COMMAND_LINE_SIZE));
> +       }
>
>         /*
>          * CONFIG_CMDLINE is meant to be a default in case nothing else
> --
> 1.9.1
>
