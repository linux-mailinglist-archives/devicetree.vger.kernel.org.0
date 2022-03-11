Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 339C14D64DB
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 16:46:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349392AbiCKPrI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 10:47:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348804AbiCKPrE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 10:47:04 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 455B11C665A
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 07:45:59 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id z26so12532309lji.8
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 07:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=10XF3Sb+t0GCaPOcQ9XoyXqUIC9CjyYdWscRYcObAxw=;
        b=MqSyuOe34h+f5EWwR/oM3slrJ38qINF04yiqUGK9i44Eg7rBVyesJHW1EnFC5kq8Fz
         lk+2YfR6+b43HpQckMotOid77fcXOQCYnCzxj1VBwif0v7RCPtuA/XLZTOUL3TGLQ5aP
         rQQEfHcA3U6Ckvf/b/iG+3oXnpYqaTOumz8wAkXkJ28WbzSqpcBZIFq8ncUer5twWgks
         FOJuSVG0lF2of7EiLc6kYvyyb0pg3ayR7my6BVOGNSBBms3Z+ikWZdLDJdqgvWdJqhJe
         L4QlwgEkOq4Qz46/Q/RRjPefsiQTSwFPLy5q6vZRgKOnqEz3+Npwf2GWlZojgDZgRcgm
         baow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=10XF3Sb+t0GCaPOcQ9XoyXqUIC9CjyYdWscRYcObAxw=;
        b=DYEMNK8rK4ITaWPwnA1tETROai70BL5ZxpbbMSJQhUpL3arUpAd75ECKu7PUCtkW1H
         KBSnyXNcg5Lm3ceKVzIT5j4txTT2xTscoxbFA+Hf3xqVeiKfOSdAI55HEw+kl69N4t/A
         zAFSg2L5jupPj4G351YVBhNkdLz9EObgsr7CdR2XeubghAGKAf5k7bu18Z5RS37rTxTu
         mwuWvVW0VV+W/XjfU70yqNOTgqklb6yV9PW46s24oLOBAWCU6Ua17k+z1P3z9rQ6iDrW
         /nFE6cylSEPU4+Hkjr62swxCq3qPNbac8qB7/aosnQAh5wJapoqVgsxaD7EN34F/5805
         Rntw==
X-Gm-Message-State: AOAM530HlT1QG+QUsq8ehYlZiY8rv/NB7WSQ+6Cg/FUtF+W4BeRjGsAf
        ArG436kMKBx5GxP9AtQFD3leO6FCdHbtzwYMuPj0Gm2TPV0=
X-Google-Smtp-Source: ABdhPJyKLXL/cjixS70H+wB5WRjtfcEBo2CKEa89VicVYZWBqrQ7uCDzqe5Ilvrer3zvBAGc4wkBHELro4zTjGulY/w=
X-Received: by 2002:a2e:8603:0:b0:246:24c:b79c with SMTP id
 a3-20020a2e8603000000b00246024cb79cmr6543962lji.367.1647013557376; Fri, 11
 Mar 2022 07:45:57 -0800 (PST)
MIME-Version: 1.0
References: <20220304135134.47827-1-yann.gautier@foss.st.com>
 <20220304135134.47827-2-yann.gautier@foss.st.com> <CAPDyKFq_TsBLjW2WxC-Fvu6qDs9MJ1=QPo9gOLRykJ5p2pJbGw@mail.gmail.com>
 <b465353f-9291-f159-ba0b-4cd9577fc676@foss.st.com>
In-Reply-To: <b465353f-9291-f159-ba0b-4cd9577fc676@foss.st.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 11 Mar 2022 16:45:21 +0100
Message-ID: <CAPDyKFqu_Y2ixbw380t5qA_rXTPLMWasqpBmaMqP0nHUOqzQhw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: mmc: mmci: add a property to disable DMA LLI
To:     Yann Gautier <yann.gautier@foss.st.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mmc@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Ludovic Barre <ludovic.barre@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>, kernel@dh-electronics.com,
        Manivannan Sadhasivam <mani@kernel.org>,
        Grzegorz Szymaszek <gszymaszek@short.pl>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Mar 2022 at 17:00, Yann Gautier <yann.gautier@foss.st.com> wrote:
>
> On 3/8/22 11:57, Ulf Hansson wrote:
> > Hi Yann,
> >
> > On Fri, 4 Mar 2022 at 14:52, Yann Gautier <yann.gautier@foss.st.com> wrote:
> >>
> >> On STMicroelectronics variant of PL18x, the DMA Linked Lists are supported
> >> starting from revision v2 of the peripheral. But it has limitations,
> >> as all the buffers should be aligned on block size (except the last one).
> >> But this cannot be guaranteed with SDIO. We should then have a property
> >> to disable the support of LLI.
> >
> > Indeed, the buffer handling with SDIO is somewhat special, which also
> > has been discussed several times on LKML before. In principle, we need
> > the SDIO func drivers to respect buffer limitations that should be
> > specified by the mmc host drivers. Quite similar to what we already
> > have for block devices, like ->max_seg_size, ->max_seg, etc, that is
> > set per mmc host.
> >
> > I realize that implementing something like the above requires bigger
> > changes, which is why mmc host drivers instead validates the sglists
> > and the elements. In some cases that means returning an error code and
> > in others it could mean falling back to a non-DMA based I/O mode.
> >
> > For the stm32_sdmmc variant, it looks like the sglist validation is
> > being managed in sdmmc_idma_validate_data() already. Can it be
> > extended to cover this case too, rather than using a DT property?
> >
> > Kind regards
> > Uffe
>
> Hi Ulf,
>
> OK, I'll check what can be done for this. Patches 1 and 2 can be
> dropped, they will be reworked.

Okay.

> But patch 3 of this series could be taken, as not linked to LLI
> management. Should I push it again alone, or could you review it directly?

I have some comments/questions on it, but perhaps it makes it easier
for people to follow the discussion if it is done separately. So
please push it alone, then I will review it.

[...]

Kind regards
Uffe
