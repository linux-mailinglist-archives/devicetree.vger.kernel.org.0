Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FDB0478434
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 05:49:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232829AbhLQEtH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 23:49:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232492AbhLQEtG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 23:49:06 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A19CEC06173F
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 20:49:05 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id z9so3246718edb.5
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 20:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6GJxpDiLpbpPINaOcBipsmIBKGtNQ+pTxcsj8dWvqKk=;
        b=XYX28P5JN9Qi9AqY6RdU8NHuKgyb2ni3yWGjFXejI92Mjdz2ktEGfEELSSPmDUvvYi
         VwQtocGg4rHGd9xMk3Bi7dczQ0gTHV5gGIrlx7knTiCdNgY+HQZBz3LLpZ4Hmn7qVHes
         b6+7t6q1ga50czfzqpOCqajlT9bPCwJePv67e86JcPtB3x8/o2wmaOaJh+aSsocy2jIW
         uiJmVzeCGY4indD/+XgNQjohvs6YD7OA6wjDxp4Lislknx/3m2e9qrNEXEnMidcoVu6P
         3mA3ziprDkCer2OKiwRwYJdJ6zmntOfz6XUSs3BPscVTzwRuSZ3YtGD/NsqR1YnuqO3r
         v4bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6GJxpDiLpbpPINaOcBipsmIBKGtNQ+pTxcsj8dWvqKk=;
        b=BVw8Vr5uu1I+zcYkBF2O0bibBw7XWJKLzHBjMcUnmrRpGXS3V/CtfEU6Dv2Ea8E5Xx
         LB+aBJc1JircnUtqMgKY1wj73vtxtYLYBwKdipbdl+23OJshIfXvCOtvs5cphGV2HkHA
         ZNSS+a7zYwBfSgWKZ99WZ/kFE9V8Pq3ey9UMjILhVnrpAPadKgHb4myg2/DFFljbkE+D
         mL9QrU7dt9jtwVpWxOemm6bBBVAeNUT7khiOx3OXLAS9TutZuBv5Kzc9ZCmrfhEeDFAy
         IUuKe26bQNU5OqTcdbIVyqVBfv6LW3jA6ATbInY7VQh5Zs0xFu1ct0czspFEwKnQe14E
         J58Q==
X-Gm-Message-State: AOAM5331M+rV0RtvfGIfLvxbHl5Uc3OCBjmDrvoLRazVc0yIpb+vGO5M
        7BQIH7RB3YPVNe3qEkA5QSuzaK4duurxDq+nrHtdxA==
X-Google-Smtp-Source: ABdhPJzaIuToc0djVyjp+VsjCbme0PeMuRClgq6NqRenM+df1YY9uQXZCbxUdpPkTSZu7ypDqPFBB+GLvvmn9r8MBmg=
X-Received: by 2002:a17:907:16ac:: with SMTP id hc44mr1138627ejc.363.1639716544065;
 Thu, 16 Dec 2021 20:49:04 -0800 (PST)
MIME-Version: 1.0
References: <20211106183802.893285-1-aford173@gmail.com> <718f7f6d6cd564d031c1963f1590c62d549ae725.camel@ndufresne.ca>
 <CAHCN7xKM9RUE7z-+ug1on+D=nDoEm589R4m03ofys92Aq75ZVQ@mail.gmail.com>
 <8db00a4b6faa99c940d9bc86e17161eb0db5efe3.camel@ndufresne.ca>
 <CAJ+vNU28UJffFv9jQ2KryJMudqYxvCaoVOVcU5dPqRA209iN6A@mail.gmail.com>
 <d91532c2c0772f9aa708ead36b2a97203727a7ea.camel@ndufresne.ca>
 <CAJ+vNU3H-V+bPoZ3qKead45h=W7AhQK6Lhjrx5ssdF4c_qfe=A@mail.gmail.com>
 <CAHCN7x+0LwwU_rEST+TZxGquswGKL19gnTy9WLofsXtGAtWqdw@mail.gmail.com>
 <7f94eaacfddb8c5434c17f1e069ea87a17657ce9.camel@ndufresne.ca>
 <CAHCN7xKRzxMBmPbDobWTuvNNSpTXk5XENvfBnfkhRY3eZKhn6w@mail.gmail.com>
 <CAHCN7xJFLNi_g+HX8PCy1Rkgf0jnWpO5QGYVz8nH19xrJkwHrA@mail.gmail.com>
 <CAJ+vNU3zFd=6k_Emc5aafxKkGwCPp4crgOFezQ-E_MbWsn1_EA@mail.gmail.com>
 <fed6c2fd7cf4971062c417ce41ed1e3812b900e0.camel@ndufresne.ca>
 <CAHCN7xK+wROHaqDcsY-3WYFQ82qX17L-LHNL3siSWnWvwFShzQ@mail.gmail.com>
 <CAAEAJfC1xXvemaFP+vTFVJ3S-SpYtrxyZgDamSOgLC1F3ua5xw@mail.gmail.com>
 <CAHCN7x+UMMP6RXsNm0=OC=UTQzh=RKqQo6B7FD5e4eoJAEfmpg@mail.gmail.com>
 <CAJ+vNU1epi9SwPMHkuDmKcb68RLemYF=bsp7AVnzz06zKc2efw@mail.gmail.com>
 <CAAEAJfCpjk5nWWkJYjjDT-YEpJi4pTZqZbzp_if9OGC0HKspzw@mail.gmail.com>
 <CAJ+vNU2we5mGXgYsR6CfimvFXZsc0zktR3fDa-h6RRa02jTT0g@mail.gmail.com> <CAHCN7xJrM9uZUnmx65uTxWEo6HAkjozd3kD3UoEv-pYd5DV4QA@mail.gmail.com>
In-Reply-To: <CAHCN7xJrM9uZUnmx65uTxWEo6HAkjozd3kD3UoEv-pYd5DV4QA@mail.gmail.com>
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date:   Fri, 17 Dec 2021 01:48:52 -0300
Message-ID: <CAAEAJfBXU-AiKKhkhXzgUSR4p1yefysNuHFycBz3F-GzNewS6w@mail.gmail.com>
Subject: Re: [RFC 0/5] arm64: imx8mm: Enable Hantro VPUs
To:     Adam Ford <aford173@gmail.com>
Cc:     Tim Harvey <tharvey@gateworks.com>,
        Nicolas Dufresne <nicolas@ndufresne.ca>,
        linux-media <linux-media@vger.kernel.org>,
        Schrempf Frieder <frieder.schrempf@kontron.de>,
        Marek Vasut <marek.vasut@gmail.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Adam Ford-BE <aford@beaconembedded.com>,
        cstevens@beaconembedded.com,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Lucas Stach <l.stach@pengutronix.de>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Alice Guo <alice.guo@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        "open list:HANTRO VPU CODEC DRIVER" 
        <linux-rockchip@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Adam,

>
> I will post a V2 last today with the Mini's post-processing removed.
> Someone, I apologize that I forget who, mentioned it was fused out of
> the Mini, so the testing I've been doing was with that removed and I
> removed the H1 encoder since the Mini doesn't support JPEG encoding.
>
[...]

Resurrecting this thread here. IMX8MMRM Rev. 0, 02/2019 mentions
post-processor features for G1 and G2.

Have you checked the fuse and synth registers to see if they throw
any useful information about the hardware? For instance,
comparing PP fuse register (SWREG99) and
Synthesis configuration register post-processor (SWREG100)
in both 8MQ and 8MM could be useful.

As I mentioned on my previous mail, even if G1 PP is disabled
on the Mini, I would imagine the G2 can do linear NV12 (aka raster-scan)
which in our hantro driver jargon is a  "post-processed" format :-)

Thanks,
Ezequiel
