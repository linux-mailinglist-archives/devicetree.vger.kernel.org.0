Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE8833E034D
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 16:33:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236592AbhHDOdG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 10:33:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238941AbhHDObf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 10:31:35 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F342C06179A
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 07:31:07 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id x90so3775700ede.8
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 07:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l42CD9aNxmWCDqyKDw8ejVgOtpb5ScrNq5SzMybM1qQ=;
        b=zaXymW+e4obQlH0cqEj5J3hZ9mqXpRSDiAF2YV5UyHWMUiJ2UIXlk8I7YUbUzdy7Eu
         djlvP8W6Wj5PGaTXv0XqAOOuBbgAGehKWXNdIrGSgEEJyP8fdSH0Z5934ckVHjgj60Jj
         vY1SgxRZbAemsnG10U/gdQ/sAO6R0WIKSgeY/bKjixueMMSjYhJpLpgD39H15ChSnH/X
         n3FmxsLsIznOVndJvlldEvDCRnRltHoINQ19i3AkF0enyWfNNiaeri+Kfr/+XJdPuP+A
         X0xzwvnfI8VNIwaa49tQvspYq5Y5f98iV55IMt1+d7E40YL6kTZ0k2cqdh4Dpey8BYkB
         mABQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l42CD9aNxmWCDqyKDw8ejVgOtpb5ScrNq5SzMybM1qQ=;
        b=rGCgJnGicJCN6fg6q/t/3kMQ+6RLza5LwpdKhOOY+1yah4CrFBXvQgyXUpMU+oQyb2
         2pf0O1M5H0cSfOHhY8fa5yoPMrPVaniGK9iPfz1T75jUAAyWR0XmAFbf+C6/N0gav7sA
         L0YoAbYk82/IJh4P1ueMVyH2VIyODpa2tlzJNRkeA8qN169i52jEbVYjKC+ljF9vGsnc
         fKJw06mdd1yoowfX1lAD2LOgwjZoXLq5m13M1PC4GQlpTXRHf77iWgZeOnnZSNcsJn7R
         /8a2B/n7HQY5Inu3I8+JfG+advdgZ1t4NZL9MrF2eIwIOVWQ6e8L5LsCcWKhHTlj8kOo
         NNiA==
X-Gm-Message-State: AOAM531Wr/w8kmN1IePm00DT4ndwJstAR/ohuKqLeP3keLO4d6tZPBVV
        IsRHPVHdWzLXYHHpYPbmR0o7+fT7Q1swDDTILKKObg==
X-Google-Smtp-Source: ABdhPJxaJfMuj5BlHRTDkOTUk6YyWJu/nb4hudLgHPYcHYgFr8FtkMmCMO32Vl630YlfQ6BdVdjQXC5Xs+8EeJn2hLQ=
X-Received: by 2002:a05:6402:1766:: with SMTP id da6mr7361edb.322.1628087466017;
 Wed, 04 Aug 2021 07:31:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210506010440.7016-1-peng.fan@oss.nxp.com>
In-Reply-To: <20210506010440.7016-1-peng.fan@oss.nxp.com>
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date:   Wed, 4 Aug 2021 11:30:54 -0300
Message-ID: <CAAEAJfDfjkHF164x2qRnZg3e5JRN0pHjxyAq+d5+-3JFYwEEOQ@mail.gmail.com>
Subject: Re: [PATCH V2 00/13] soc: imx: gpcv2: support i.MX8MM
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Lucas Stach <l.stach@pengutronix.de>, krzk@kernel.org,
        agx@sigxcpu.org, Marek Vasut <marex@denx.de>,
        andrew.smirnov@gmail.com, devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        ping.bai@nxp.com, frieder.schrempf@kontron.de, aford173@gmail.com,
        abel.vesa@nxp.com, Peng Fan <peng.fan@nxp.com>,
        linux-media <linux-media@vger.kernel.org>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peng, Lucas,

On Wed, 5 May 2021 at 21:32, Peng Fan (OSS) <peng.fan@oss.nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
>
> V2:
>  - Add R-b/A-b tag
>  - Merge V1 patch 13 to V2 patch 6
>  - Drop V1 patch 15
>  - Merge V1 patch 16 to V2 patch 5 and add comments in patch 5 to explain
>  details
>  - Add explaination in patch 8 for "why the resets are not defined"
>
> This patchset is a pick up Lucas's gpcv2 work for i.MX8MM and several
> minor changes from me to make it could work with i.MX BLK-CTL driver.
>
> Thanks for Lucas's work and suggestion, Frieder Schrempf for collecting
> all the patches, Jacky Bai on help debug issues.
>
> Lucas Stach (12):
>   soc: imx: gpcv2: move to more ideomatic error handling in probe
>   soc: imx: gpcv2: move domain mapping to domain driver probe
>   soc: imx: gpcv2: switch to clk_bulk_* API
>   soc: imx: gpcv2: split power up and power down sequence control
>   soc: imx: gpcv2: wait for ADB400 handshake
>   soc: imx: gpcv2: add runtime PM support for power-domains
>   soc: imx: gpcv2: allow domains without power-sequence control
>   dt-bindings: imx: gpcv2: add support for optional resets
>   soc: imx: gpcv2: add support for optional resets
>   dt-bindings: power: add defines for i.MX8MM power domains
>   soc: imx: gpcv2: add support for i.MX8MM power domains
>   soc: imx: gpcv2: Add support for missing i.MX8MM VPU/DISPMIX power
>     domains
>

It's nice to see this finally moving forward!

As you know, Hantro G2 support for i.MX8MQ (and i.MX8MP, i.MX8MM) is currently
blocked, as you have requested:

https://lore.kernel.org/driverdev-devel/5aa5700b862234895a7a6eb251ca3c80fdc1a6d3.camel@collabora.com/

So, I think we really need to include i.MX8MP and i.MX8MQ on this series.
It's been quite a while and we really need to have that. To be honest,
I fear that
if we merge this series as-is, MX8MP and MX8MP support will fall in
the oblivion,
and Hantro G2 VPU will remain unusable.

We are planning to submit Hantro G2 VP9 support soon, and we've been testing
on various platforms, but it will also be blocked by lack of power-domains.

In the future, please Cc the linux-media mailing list, as well as
Benjamin, Andrzej and myself, so we can follow this.

Thanks a lot for the hard work!
Ezequiel
