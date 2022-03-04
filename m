Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4778C4CD07F
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 09:52:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233562AbiCDIxQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 03:53:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235085AbiCDIxP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 03:53:15 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAA2D19E08C
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 00:52:24 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id j7so12953061lfu.6
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 00:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JVS7H4RjB5XseP/Xjap3fzMX0Z4jiKkznceF9UGo7Zs=;
        b=BC9k+77wH7iWvQo4xoNDRfhzbdUBsksudCgI5FMkYhI6yPGZsN5yG/cANwi/w3qP/P
         iHbEtuCTyne3zPZkM6BsdZYRudql0R2D1VkE0665hJT3Col8QNxjrKQs4Dt/O2lJT0bR
         bwyAPjoWWnKwpenXrZvwTRR5vdofYEb98Dj8Sq/eMrQ3xhtPdnHqBaMmXDxuOiRFLxrF
         yhaiQXv8M0A/AUqQfGc2zc54Mf9yNyg/TgDPxC72NwsANh94bSgeQBX8lZSeUPgDfAB5
         d6BPJpPT9rfW2XLl5E3qyeIVOdTuFgK6liM7anWH+pjz83wRo7YKloFvi3oD3ASnP3Ju
         BvOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JVS7H4RjB5XseP/Xjap3fzMX0Z4jiKkznceF9UGo7Zs=;
        b=JR6nmQH/q4xUBqkUqUJFxS3RMtdhnGnezljQgepVLhHadMpuu/rYv6kxzcQrG0VaFv
         OWIkV7XmHsiAzx0JJaoBgn8lh9EpSLfeQ+Cqas7tgR4KHKsIlEP32BFxwn64JgtDJlXZ
         wvr6GVv9VL7xoh7zFGFvma+udEQ/XERpJ6DYD09kZUTsJglBBPI4TcaPCiYBWCyx4PYq
         YehGGLNHeHBbQWRvYyjQpWfeY+VhlqyhURYVc/lko38FHWyC6uvadA6GBFS9cwjOhM6U
         S5K0W+sesSXQgp0Ydel84DqDELpG7IhQyn+mjDCb32kqndpjxCFzKG/nUthvIFsG7ql8
         AYbQ==
X-Gm-Message-State: AOAM533pDXmaYShhJ7e1kuGRai4BNw+o5eB4Z7hZvTlLpHvskHScGV8W
        ioC55QEEd9R7Wjoh2y28CsiTI8EeAz/waB+DSJtmJw==
X-Google-Smtp-Source: ABdhPJziXGuvZzENri3frf+wrhfF9pwsHIxWKUsgNiKEGNqwpEsa/j3uYsWTAYwfR2t/w1cQqzDdrE/DKG99LbtagsU=
X-Received: by 2002:a05:6512:2387:b0:43d:165:b5d1 with SMTP id
 c7-20020a056512238700b0043d0165b5d1mr23767900lfv.510.1646383942830; Fri, 04
 Mar 2022 00:52:22 -0800 (PST)
MIME-Version: 1.0
References: <CANXhq0p-Jv2HMNu9NaG=03yudanoqV6MH=LhiCspHbj5nTn+GQ@mail.gmail.com>
 <mhng-956767d2-f9fc-4d96-8a05-f7a618e3a16b@palmer-ri-x1c9>
In-Reply-To: <mhng-956767d2-f9fc-4d96-8a05-f7a618e3a16b@palmer-ri-x1c9>
From:   Zong Li <zong.li@sifive.com>
Date:   Fri, 4 Mar 2022 16:52:11 +0800
Message-ID: <CANXhq0o6=z0e18MGgTvVhWMP8pabV29pdJe-n=ey-p50krGZ8w@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] dmaengine: sf-pdma: Get number of channel by
 device tree
To:     Palmer Dabbelt <palmer@dabbelt.com>
Cc:     Vinod <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Bin Meng <bin.meng@windriver.com>,
        Green Wan <green.wan@sifive.com>,
        dmaengine <dmaengine@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>
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

On Fri, Mar 4, 2022 at 4:43 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Tue, 15 Feb 2022 22:52:14 PST (-0800), zong.li@sifive.com wrote:
> > On Tue, Feb 15, 2022 at 8:06 PM Vinod Koul <vkoul@kernel.org> wrote:
> >>
> >> On 07-02-22, 14:30, Zong Li wrote:
> >> > It currently assumes that there are always four channels, it would
> >> > cause the error if there is actually less than four channels. Change
> >> > that by getting number of channel from device tree.
> >> >
> >> > For backwards-compatibility, it uses the default value (i.e. 4) when
> >> > there is no 'dma-channels' information in dts.
> >> >
> >> > Signed-off-by: Zong Li <zong.li@sifive.com>
> >> > ---
> >> >  drivers/dma/sf-pdma/sf-pdma.c | 21 ++++++++++++++-------
> >> >  drivers/dma/sf-pdma/sf-pdma.h |  8 ++------
> >> >  2 files changed, 16 insertions(+), 13 deletions(-)
> >> >
> >> > diff --git a/drivers/dma/sf-pdma/sf-pdma.c b/drivers/dma/sf-pdma/sf-pdma.c
> >> > index f12606aeff87..2ae10b61dfa1 100644
> >> > --- a/drivers/dma/sf-pdma/sf-pdma.c
> >> > +++ b/drivers/dma/sf-pdma/sf-pdma.c
> >> > @@ -482,9 +482,7 @@ static void sf_pdma_setup_chans(struct sf_pdma *pdma)
> >> >  static int sf_pdma_probe(struct platform_device *pdev)
> >> >  {
> >> >       struct sf_pdma *pdma;
> >> > -     struct sf_pdma_chan *chan;
> >> >       struct resource *res;
> >> > -     int len, chans;
> >> >       int ret;
> >> >       const enum dma_slave_buswidth widths =
> >> >               DMA_SLAVE_BUSWIDTH_1_BYTE | DMA_SLAVE_BUSWIDTH_2_BYTES |
> >> > @@ -492,13 +490,21 @@ static int sf_pdma_probe(struct platform_device *pdev)
> >> >               DMA_SLAVE_BUSWIDTH_16_BYTES | DMA_SLAVE_BUSWIDTH_32_BYTES |
> >> >               DMA_SLAVE_BUSWIDTH_64_BYTES;
> >> >
> >> > -     chans = PDMA_NR_CH;
> >> > -     len = sizeof(*pdma) + sizeof(*chan) * chans;
> >> > -     pdma = devm_kzalloc(&pdev->dev, len, GFP_KERNEL);
> >> > +     pdma = devm_kzalloc(&pdev->dev, sizeof(*pdma), GFP_KERNEL);
> >> >       if (!pdma)
> >> >               return -ENOMEM;
> >> >
> >> > -     pdma->n_chans = chans;
> >> > +     ret = of_property_read_u32(pdev->dev.of_node, "dma-channels",
> >> > +                                &pdma->n_chans);
> >> > +     if (ret) {
> >> > +             dev_notice(&pdev->dev, "set number of channels to default value: 4\n");
> >>
> >> This is useful for only debug i think, so dev_dbg perhaps
> >>
> >
> > Thanks for your suggestion, let me change it in the next version.
>
> Not sure if I'm missing something, but I don't see a v6.  I'm going to
> assume that one will be sent, but the suggested changes look minor
> enough so
>

I have been sending the v6 patchset, thank you for the review.

> Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
>
> LMK if you guys were expecting this to go in via the RISC-V tree,
> otherwise I'll assume this aimed at the dmaengine tree.  Probably best to keep
> all three together, so feel free to take the DTS updates as well -- having some
> shared tag never hurts, but the DTs don't move that much so any conflicts
> should be straight-forward to just fix at merge time.
>

Yes, if the v6 version is good enough and you could pick them into
RISC-V tree, I'd appreciate that. Thanks!

> Thanks!
>
> >> > +             pdma->n_chans = PDMA_MAX_NR_CH;
> >> > +     }
> >> > +
> >> > +     if (pdma->n_chans > PDMA_MAX_NR_CH) {
> >> > +             dev_err(&pdev->dev, "the number of channels exceeds the maximum\n");
> >> > +             return -EINVAL;
> >> > +     }
> >> >
> >> >       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >> >       pdma->membase = devm_ioremap_resource(&pdev->dev, res);
> >> > @@ -556,7 +562,7 @@ static int sf_pdma_remove(struct platform_device *pdev)
> >> >       struct sf_pdma_chan *ch;
> >> >       int i;
> >> >
> >> > -     for (i = 0; i < PDMA_NR_CH; i++) {
> >> > +     for (i = 0; i < pdma->n_chans; i++) {
> >> >               ch = &pdma->chans[i];
> >> >
> >> >               devm_free_irq(&pdev->dev, ch->txirq, ch);
> >> > @@ -574,6 +580,7 @@ static int sf_pdma_remove(struct platform_device *pdev)
> >> >
> >> >  static const struct of_device_id sf_pdma_dt_ids[] = {
> >> >       { .compatible = "sifive,fu540-c000-pdma" },
> >> > +     { .compatible = "sifive,pdma0" },
> >> >       {},
> >> >  };
> >> >  MODULE_DEVICE_TABLE(of, sf_pdma_dt_ids);
> >> > diff --git a/drivers/dma/sf-pdma/sf-pdma.h b/drivers/dma/sf-pdma/sf-pdma.h
> >> > index 0c20167b097d..8127d792f639 100644
> >> > --- a/drivers/dma/sf-pdma/sf-pdma.h
> >> > +++ b/drivers/dma/sf-pdma/sf-pdma.h
> >> > @@ -22,11 +22,7 @@
> >> >  #include "../dmaengine.h"
> >> >  #include "../virt-dma.h"
> >> >
> >> > -#define PDMA_NR_CH                                   4
> >> > -
> >> > -#if (PDMA_NR_CH != 4)
> >> > -#error "Please define PDMA_NR_CH to 4"
> >> > -#endif
> >> > +#define PDMA_MAX_NR_CH                                       4
> >> >
> >> >  #define PDMA_BASE_ADDR                                       0x3000000
> >> >  #define PDMA_CHAN_OFFSET                             0x1000
> >> > @@ -118,7 +114,7 @@ struct sf_pdma {
> >> >       void __iomem            *membase;
> >> >       void __iomem            *mappedbase;
> >> >       u32                     n_chans;
> >> > -     struct sf_pdma_chan     chans[PDMA_NR_CH];
> >> > +     struct sf_pdma_chan     chans[PDMA_MAX_NR_CH];
> >>
> >> why waste memory allocating max, we know number of channels in probe,
> >> why not allocate runtime?
> >>
> >
> > I kept it there because I'd like to do minimum change in this patch
> > set. You're right, let me change it in the next version.
> >
> >> --
> >> ~Vinod
