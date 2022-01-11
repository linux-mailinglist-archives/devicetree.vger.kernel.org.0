Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05B7348B5B7
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 19:34:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242661AbiAKSeQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 13:34:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345155AbiAKSeP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jan 2022 13:34:15 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 731EFC06173F
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 10:34:15 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9C8B6616E3
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 18:34:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C964C36AEF
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 18:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1641926054;
        bh=aeyPLB/nphRfxyCIL/Y2VyWqBAo3sDA4wStGYkk4rNE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=YI2aDbDO3fRyz7YHbWTPnpKBTa6gxcDpGQtVO8T47XBuVhzjQFgyXnWt/fEoYaeMv
         V5hxEy9UBL8dRzA/ko6kyL8hZ4zpva0152rVAdoF/2ABYdqI0gARpCdMSJrWl28oRp
         HB5Cuq60hIgqLTpxdCWs3z4boYK9CH0RAdmWmgA7toZtVgSdvuXEUAVq+clsiRuWSg
         3prcvs+Lr4sdGM51bW6gSqgHSKzJ4Mtx4Ye8N8/+A1s5Cmlx/0ryMLtJtEfB6OcVoR
         uElumU45ZD/B0hLpGq3HRiZXCnx643CxoNcslUzv4Fi0xcxAuo2wf21HW/Ojw9KNZP
         FmhOYQQOlO6HQ==
Received: by mail-ed1-f51.google.com with SMTP id w16so70717777edc.11
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 10:34:13 -0800 (PST)
X-Gm-Message-State: AOAM530U4EbCRswRdHPojq9XN16+uvoncXoMLnz+vY63eIkIJoxutyF8
        hZlPfmLhfeXNdVazASZ4RajnkvQ8pHWGoc50sw==
X-Google-Smtp-Source: ABdhPJzQstcSmz/Ts6tpPguwGd24G4BkBJY8CsgDW2gg2OxGS1Cu9Qis+lW4qYjl9TFqxqfLeTro5NIXmv6HWcD7NuM=
X-Received: by 2002:aa7:d785:: with SMTP id s5mr5434256edq.215.1641926052384;
 Tue, 11 Jan 2022 10:34:12 -0800 (PST)
MIME-Version: 1.0
References: <20220111122111.3869046-1-marten.lindahl@axis.com>
In-Reply-To: <20220111122111.3869046-1-marten.lindahl@axis.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 11 Jan 2022 12:34:00 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLbYmxtG8w7aDxR9kZL3TvhZXyPy3fvPuiqmHa3c8ewJQ@mail.gmail.com>
Message-ID: <CAL_JsqLbYmxtG8w7aDxR9kZL3TvhZXyPy3fvPuiqmHa3c8ewJQ@mail.gmail.com>
Subject: Re: [PATCH] of: fdt: Check overlap of reserved memory regions
To:     =?UTF-8?Q?M=C3=A5rten_Lindahl?= <marten.lindahl@axis.com>,
        Stephen Boyd <swboyd@chromium.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>, kernel <kernel@axis.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 11, 2022 at 6:25 AM M=C3=A5rten Lindahl <marten.lindahl@axis.co=
m> wrote:
>
> If a DT specified reserved memory region overlaps an already registered
> reserved region no notification is made. Starting the system with
> overlapped memory regions can make it very hard to debug what is going
> wrong. This is specifically true in case the ramoops console intersects
> with initrd since the console overwrites memory that is used for initrd,
> which leads to memory corruption.
>
> Highlight this by printing a message about overlapping memory regions.

Won't this be noisy if a region is described in both /memreserve/ and
/reserved-memory node?

>
> Signed-off-by: M=C3=A5rten Lindahl <marten.lindahl@axis.com>
> ---
>  drivers/of/fdt.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index bdca35284ceb..c6b88a089b35 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -521,6 +521,11 @@ static int __init __reserved_mem_reserve_reg(unsigne=
d long node,
>                 base =3D dt_mem_next_cell(dt_root_addr_cells, &prop);
>                 size =3D dt_mem_next_cell(dt_root_size_cells, &prop);
>
> +               if (size && memblock_is_reserved(base)) {
> +                       pr_warn("WARNING: 0x%08llx+0x%08llx overlaps rese=
rved memory region\n",
> +                               (u64)base, (u64)size);
> +               }
> +
>                 if (size &&
>                     early_init_dt_reserve_memory_arch(base, size, nomap) =
=3D=3D 0)
>                         pr_debug("Reserved memory: reserved region for no=
de '%s': base %pa, size %lu MiB\n",
> --
> 2.30.2
>
