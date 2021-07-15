Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9385E3C9968
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 09:09:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240225AbhGOHMa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 03:12:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239041AbhGOHMa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 03:12:30 -0400
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FECFC061762
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 00:09:36 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id e2so4120000ilu.5
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 00:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9B+oTQwgmo4p1Ky+jMiYsVX5twnQnFrh+/KabLkfKoM=;
        b=gXX+pNEeNfCIXnvpl5zzg72jHjH+3zkYJyYwbmO1kzh6ft7/OouMUm8xc5cxG1XPp8
         Vfl1oHQrkntzz2y4B62MFB0npJvEz/EllABrsOjYb23ZWwcji9c17WbupAJqSMCKjf0q
         P9puY5/sExP8rW+vR6b7vTTJ9DDQLHDyikWKMFxq6Z+CSp+C0hNwnB5kLycCHNfoPdF0
         ZME0I/BW6gRIqG6XyZirldBU3sEofWoFpeDFdYt+CBSvj2oKp21RqmylUxRHM9lqPuuJ
         Njxiq/CD9vBHyByW1XrAxcB0Y//F+cqnQDlTU5eH2uxU8VpUmofQm/oQOYs4ipZrnaFl
         xsFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9B+oTQwgmo4p1Ky+jMiYsVX5twnQnFrh+/KabLkfKoM=;
        b=HuZNxcX5z1bGAd/KKC+YTgSbAYJhFAYyDZjRgwSqxxdIOs1IOs5yYY7vp4hHY4QdHA
         cuLy52ZCKSliSgmx4gsueB5DC/fbn/Kenjg2y28+NiwGjNGIWBv/2mbNL46mwWlKTcL9
         Qm2lUVC3DSP+bcB/k42ggHxWcSRDlks7Hs7DHvMWCZKW3wdtnfChW1jXC0kruUbQYQ7j
         TiuBfvbO1ixwnDaRxs5CMIu0dQDWinome/BHA0RBwRRZFKWHLN5DHpNhwdIdiTmu8UR3
         BTX74/sVmvR8SZjdl6IRflLrtic5WyIIRUjUpJlcc5ENzixilQ/Z9Trx+rEyj6VOBVjl
         khww==
X-Gm-Message-State: AOAM531B/Xk7EdrKNtp9xNEnBaxfS8kghmmV2Sf1TT8n/Gwkg4m+wpba
        dmSbafaQ4YfKego8ArFT1jRYztTTc/piPBzPc3OHOA==
X-Google-Smtp-Source: ABdhPJwuKUmsa/XevSPh49jg4k4QcER8gMdTrKqp3qt3Rwy5IFwH+L9++y/Wz79S7Mh+BnEstfthYeRZOPSds8h1z9k=
X-Received: by 2002:a92:d990:: with SMTP id r16mr1786919iln.204.1626332975821;
 Thu, 15 Jul 2021 00:09:35 -0700 (PDT)
MIME-Version: 1.0
References: <1626316157-24935-1-git-send-email-kewei.xu@mediatek.com> <1626316157-24935-9-git-send-email-kewei.xu@mediatek.com>
In-Reply-To: <1626316157-24935-9-git-send-email-kewei.xu@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Thu, 15 Jul 2021 15:09:25 +0800
Message-ID: <CA+Px+wWNcSkxvsEoUrgBN73+jhq8qjFJodYjQnY1zW2d0a5yRA@mail.gmail.com>
Subject: Re: [PATCH 8/8] i2c: mediatek: modify bus speed calculation formula
To:     Kewei Xu <kewei.xu@mediatek.com>
Cc:     wsa@the-dreams.de, matthias.bgg@gmail.com, robh+dt@kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com,
        leilk.liu@mediatek.com, qii.wang@mediatek.com,
        qiangming.xia@mediatek.com, ot_daolong.zhu@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 15, 2021 at 10:32 AM Kewei Xu <kewei.xu@mediatek.com> wrote:
> When clock-div is 0 or greater than 1, the bus speed
> calculated by the old speed calculation formula will be
> larger than the target speed. So we update the formula.
The patch sounds like a fix up.  Need a "Fixes" tag.

>         for (clk_div = 1; clk_div <= max_clk_div; clk_div++) {
>                 clk_src = parent_clk / clk_div;
> +               i2c->ac_timing.inter_clk_div = clk_div - 1;
Using the way to pass the parameter "inter_clk_div" to
mtk_i2c_calculate_speed() looks like a hack.  inter_clk_div is set
again[1] next to the for loop.

[1]: https://elixir.bootlin.com/linux/v5.14-rc1/source/drivers/i2c/busses/i2c-mt65xx.c#L831



I have no domain knowledge of what/how the patch fixes.  But if this
is a standalone fixup patch, suggest separating to an independent
patch.
