Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42A264F4415
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 00:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240847AbiDEPZL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 11:25:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344712AbiDEOXe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 10:23:34 -0400
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 950666E34F
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 06:09:50 -0700 (PDT)
Received: by mail-qt1-f178.google.com with SMTP id t2so10831722qtw.9
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 06:09:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EGI2XlMb81S56rKwRy0xEXUSzTZk2s0w4gj7pjWv3DM=;
        b=saJyVPxZeBNYrB2MCJRNpOojhl23Nj0cgLB9WZqBnq0WTJ21mfY6au/wgeTfkkXEgc
         pxZBzOI3D24AKohyoujb6zeef+zKXkBp5UBOkee5VlTFuFf262IQc6smqLLbhRIpqQGC
         Siao5j31+SbNIahu03+RiUNHyfmHRI0xYcuH6O24Yy3IhA0TZKE8F45qjWAYHEVT2kHc
         FqRe9wVw6yS3/yBnzI3UdlRIvZSLh6BHDniBBGSIBTnRkCFUmZ/YQ6kRKLhu5uRM9VPO
         HzURWs5Pxk8lW3KgA08rzMHNE4bo27LSfZqHVMl7J1t5i7lT/6+YBCVCxb3HjKoitRXI
         4qiQ==
X-Gm-Message-State: AOAM530CQWmMviddQtQ7USu1Et9uQP3Z+yI0HLp4rpLMXzSy695dqEU0
        c98U2ZeRB8ia+BS5yTVBitDrFuQhToLiPQ==
X-Google-Smtp-Source: ABdhPJxIQ3FPgIiRs35tPi8TVKQUS0Jlps3dxZ4hKSSCW7/2fWWVjaRAkQagretZSiiMP101qpEvLg==
X-Received: by 2002:a05:620a:371d:b0:67d:4f5c:119b with SMTP id de29-20020a05620a371d00b0067d4f5c119bmr1996463qkb.75.1649164188877;
        Tue, 05 Apr 2022 06:09:48 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id w10-20020a05620a424a00b00680c0c0312dsm8127437qko.30.2022.04.05.06.09.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Apr 2022 06:09:47 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id f23so23195274ybj.7
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 06:09:47 -0700 (PDT)
X-Received: by 2002:a5b:24e:0:b0:63d:cba0:3d55 with SMTP id
 g14-20020a5b024e000000b0063dcba03d55mr2315479ybp.613.1649164187073; Tue, 05
 Apr 2022 06:09:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220308132806.96095-1-Niklas.Cassel@wdc.com> <CAMuHMdW4BKSxucwgZS0TUAKd26kmrWbpsMbDmDYSs9yo5tWH=A@mail.gmail.com>
 <Ykw9+03YFl2Yd982@x1-carbon>
In-Reply-To: <Ykw9+03YFl2Yd982@x1-carbon>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Tue, 5 Apr 2022 15:09:35 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVswU_BiMwLHSB5YD9XZB4=AqEgqMRNLWYDaFSyQSwoKA@mail.gmail.com>
Message-ID: <CAMuHMdVswU_BiMwLHSB5YD9XZB4=AqEgqMRNLWYDaFSyQSwoKA@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: dts: canaan: Fix SPI3 bus width
To:     Niklas Cassel <Niklas.Cassel@wdc.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Niklas,

On Tue, Apr 5, 2022 at 3:03 PM Niklas Cassel <Niklas.Cassel@wdc.com> wrote:
> On Tue, Apr 05, 2022 at 02:26:53PM +0200, Geert Uytterhoeven wrote:
> > On Tue, Mar 8, 2022 at 2:30 PM Niklas Cassel <Niklas.Cassel@wdc.com> wrote:
> > > From: Niklas Cassel <niklas.cassel@wdc.com>
> > > According to the K210 Standalone SDK Programming guide:
> > > https://canaan-creative.com/wp-content/uploads/2020/03/kendryte_standalone_programming_guide_20190311144158_en.pdf
> > >
> > > Section 15.4.3.3:
> > > SPI0 and SPI1 supports: standard, dual, quad and octal transfers.
> > > SPI3 supports: standard, dual and quad transfers (octal is not supported).
> > >
> > > In order to support quad transfers (Quad SPI), SPI3 must have four IO wires
> > > connected to the SPI flash.
> > >
> > > Update the device tree to specify the correct bus width.
> > >
> > > Tested on maix bit, maix dock and maixduino, which all have the same
> > > SPI flash (gd25lq128d) connected to SPI3. maix go is untested, but it
> > > would not make sense for this k210 board to be designed differently.
> > >
> > > Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> > > ---
> > > Changes since v1:
> > > -Add the new properties directly after spi-max-frequency for all DT board
> > >  files.
> >
> > Thanks for your patch, which is now commit 6846d656106add3a ("riscv:
> > dts: canaan: Fix SPI3 bus width") in v5.18-rc1.
> >
> > > --- a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> > > +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> > > @@ -203,6 +203,8 @@ flash@0 {
> > >                 compatible = "jedec,spi-nor";
> > >                 reg = <0>;
> > >                 spi-max-frequency = <50000000>;
> > > +               spi-tx-bus-width = <4>;
> > > +               spi-rx-bus-width = <4>;
> > >                 m25p,fast-read;
> > >                 broken-flash-reset;
> > >         };
> >
> > On MAiX BiT, I get:
> >
> >     +spi spi1.0: setup: ignoring unsupported mode bits a00
> >      spi-nor spi1.0: gd25lq128d (16384 Kbytes)
>
> The device tree is supposed to describe the hardware.
>
> The Synopsys SPI controller and the Gigadevice SPI flash both support quad
> transfers.
>
> It would be incorrect to adapt the device tree based on current limitations
> of the drivers/spi/spi-dw-core.c driver.
>
> Likewise, we shouldn't need to update the device tree if the dwc driver
> ever adds support for quad transfers.

I fully agree with that.

I was just wondering whether work is underway to add quad support
to the SPI controller driver.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
