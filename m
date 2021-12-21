Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E4DD47BED3
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 12:24:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237081AbhLULYu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 06:24:50 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:36192 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237074AbhLULYu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 06:24:50 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 10CA0B81646
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 11:24:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC86EC36AE8
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 11:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1640085887;
        bh=yEa0QD+OlnAq0KG8V03Lf2a/avIQgT4OupzbrDjxEKI=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=GCTz51t2G9nbEqMs0RyAG9UVJjZRl0nklAR8Mcz7UBOMwzx+9sbaUywSbEJdrzP91
         9rOR6TuZOiPs5kkV4xff7JZFgVKKQCeSPVDx+1U9mf8iVJktc0hTRay1RW9B5c7raC
         78aJ9BsBpf67LycwFcoFTQVg69x+FGqV1hymhVVvEBs0DpjrI6oJyQwFHnPIpY1obf
         XoR5vRDiRTbYvAOxP805kwrR2cgwZw6A8/9VwZiJ4LmOgos0KoqP93jHSjpiy1ke1Z
         +tMi1GXd1M+P1iDQFPr4YK8HZAa7jMj3ososAfbcuyIh15H0AZfrA3gVN4FfEDLGa0
         iUGRueFWy9BuQ==
Received: by mail-ed1-f54.google.com with SMTP id y22so50790728edq.2
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 03:24:47 -0800 (PST)
X-Gm-Message-State: AOAM5319cRmaydNVfweEO0Jg4xoMxH2eU+jEIX7zs5RLH42ZyiKEhKYs
        HQIsZsLUiW8HhKsLbQiiG5yaeEweFnlqKoRIlg==
X-Google-Smtp-Source: ABdhPJyQXYznw27ZW1QqDPPInUbYUvwiGJmMkq7AD0jItwsYn6sgAuae2kYF/ZfegzgxRJKJBvdZl7IsZyqkJAGFgIQ=
X-Received: by 2002:a05:6402:5c9:: with SMTP id n9mr2690106edx.306.1640085886110;
 Tue, 21 Dec 2021 03:24:46 -0800 (PST)
MIME-Version: 1.0
References: <88f6428288756fb777d9fe6b910673c987757d10.1640076602.git.baruch@tkos.co.il>
 <4cd1b24a2f4d185cf96799ab02ea4283437de67b.1640076602.git.baruch@tkos.co.il>
In-Reply-To: <4cd1b24a2f4d185cf96799ab02ea4283437de67b.1640076602.git.baruch@tkos.co.il>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 21 Dec 2021 07:24:34 -0400
X-Gmail-Original-Message-ID: <CAL_JsqKNjPsBCZjP5BuYsXjLpc+YMaPJhq2NA=qU5NGtwifUwg@mail.gmail.com>
Message-ID: <CAL_JsqKNjPsBCZjP5BuYsXjLpc+YMaPJhq2NA=qU5NGtwifUwg@mail.gmail.com>
Subject: Re: [PATCH 2/2] of: base: Improve argument length mismatch error
To:     Baruch Siach <baruch@tkos.co.il>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 21, 2021 at 4:51 AM Baruch Siach <baruch@tkos.co.il> wrote:
>
> The cells_name field of of_phandle_iterator might be NULL. Use the
> phandle name instead. With this change we get the more helpful messages:
>
>   OF: /soc/pinctrl@1000000: phandle pinctrl@1000000 needs 3, found 2

How is printing the same thing twice better?

>
> instead of:
>
>   OF: /soc/pinctrl@1000000: (null) = 3 found 2
>
> That should make DT debugging easier.
>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  drivers/of/base.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 64218c614a85..7c03de370913 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1349,9 +1349,14 @@ int of_phandle_iterator_next(struct of_phandle_iterator *it)
>                  * property data length
>                  */
>                 if (it->cur + count > it->list_end) {
> -                       pr_err("%pOF: %s = %d found %ld\n",
> -                              it->parent, it->cells_name,
> -                              count, it->list_end - it->cur);
> +                       if (it->cells_name)
> +                               pr_err("%pOF: %s = %d found %ld\n",
> +                                       it->parent, it->cells_name,
> +                                       count, it->list_end - it->cur);
> +                       else
> +                               pr_err("%pOF: phandle %s needs %d, found %ld\n",
> +                                       it->parent, of_node_full_name(it->node),
> +                                       count, it->list_end - it->cur);
>                         goto err;
>                 }
>         }
> --
> 2.34.1
>
