Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2AFD23461B
	for <lists+devicetree@lfdr.de>; Fri, 31 Jul 2020 14:49:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733218AbgGaMtU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 08:49:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730643AbgGaMtT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jul 2020 08:49:19 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A2CFC061574
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 05:49:19 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id o10so12589124edh.6
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 05:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oKmO2ZAvewEBOR4kyQ9VDj8a4Brdi56V8Gl0PxTOBWk=;
        b=M+csR49iDfxo6UoiXSocjp8GH38x/wp8SHIku/n1gRdFm7qloMmf72l2fFrkx2nHna
         vo9sUTwCKgwQ8pb5XQez3od4wwkP50GX0j5bBNqFwXIe4MebvxsiEKV08LeITrovK9zx
         G2SD+Fjj4b33BOJZoNLjiQtoU3DeWwnfhzlfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oKmO2ZAvewEBOR4kyQ9VDj8a4Brdi56V8Gl0PxTOBWk=;
        b=iA0RE0oyqrE19FxRJoUxsFxyVvT+tg+UD2vzOss1S3J/9bU6j5tFzrcfRuMEw1Zx0D
         Y0pUp2FDdDh8dhgbkGsYUR1jcc0GQYkERTd/hA9NAWt8xSBmJPx9/J5YPdXxBfVyJ2GX
         TDkY2frXqJy1oDNpgFLgY3rQE4+2zUFQVsVcoTSrDRsEFOQHcdm1JqH0hnu7tsPSqwDZ
         ACYv/DJ1XgupuNyAPrelaTbJ9sxo80q6JCWrMnm4PYFm61Itowp5ggdzfcWLuBVWbnJv
         /YC1cwde5NQ67w8sK9x9Esfq9fHIRLnyfK8nPRbKgBRqmZA7RtRg2Qe91Ha50hxPAbxE
         BaYQ==
X-Gm-Message-State: AOAM533LIkFBnkEex0h5OW7xtl+tPcU7vXL6HNaiEXSMDAloalCoOYQd
        WJ9hCuDL2yDzrTKDYk+sYdhlStziBBj0nw==
X-Google-Smtp-Source: ABdhPJz3Mr5no7JwhUERRSwnapMf9NSaSTLE10HMwElW7pTN/Yy5YbLlRx8eEAWrVgRw0OCCWnIhZw==
X-Received: by 2002:a05:6402:cb3:: with SMTP id cn19mr3863330edb.368.1596199757590;
        Fri, 31 Jul 2020 05:49:17 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by smtp.gmail.com with ESMTPSA id g23sm8678155ejb.24.2020.07.31.05.49.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 05:49:15 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id k8so9147232wma.2
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 05:49:15 -0700 (PDT)
X-Received: by 2002:a7b:cf08:: with SMTP id l8mr3555747wmg.183.1596199754613;
 Fri, 31 Jul 2020 05:49:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200723030451.5616-1-xia.jiang@mediatek.com> <20200723030451.5616-23-xia.jiang@mediatek.com>
 <20200730163419.GA3779380@chromium.org> <1596165602.17247.10.camel@mhfsdcap03>
In-Reply-To: <1596165602.17247.10.camel@mhfsdcap03>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Fri, 31 Jul 2020 14:49:03 +0200
X-Gmail-Original-Message-ID: <CAAFQd5C4hpz8DR101WYQ=9xeq3=yMbtbCasAUqGPpg9fLNORgA@mail.gmail.com>
Message-ID: <CAAFQd5C4hpz8DR101WYQ=9xeq3=yMbtbCasAUqGPpg9fLNORgA@mail.gmail.com>
Subject: Re: [PATCH v10 22/28] media: platform: Change the call functions of
 getting/enable/disable the jpeg's clock
To:     Xia Jiang <xia.jiang@mediatek.com>
Cc:     Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rick Chang <rick.chang@mediatek.com>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Sergey Senozhatsky <senozhatsky@chromium.org>,
        mojahsu@chromium.org, Nicolas Boichat <drinkcat@chromium.org>,
        =?UTF-8?B?TWFvZ3VhbmcgTWVuZyAo5a2f5q+b5bm/KQ==?= 
        <maoguang.meng@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 31, 2020 at 5:20 AM Xia Jiang <xia.jiang@mediatek.com> wrote:
>
> On Thu, 2020-07-30 at 16:34 +0000, Tomasz Figa wrote:
> > Hi Xia,
> >
> > On Thu, Jul 23, 2020 at 11:04:45AM +0800, Xia Jiang wrote:
> > > Use the generic of_property_* helpers to get the clock_nums and clocks
> > > from device tree.
> > > Use the generic clk_bulk_* helpers to enable and disable clocks.
> > >
> > > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > > ---
> > > v10: new add patch
> > > ---
> > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 47 +++++++++++++++----
> > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.h   |  8 ++--
> > >  2 files changed, 42 insertions(+), 13 deletions(-)
> > >
> >
> > Thank you for the patch. Please see my comments inline.
> >
> > > diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > > index 7881e9c93df7..921ed21f7db3 100644
> > > --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > > +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > > @@ -783,14 +783,15 @@ static void mtk_jpeg_clk_on(struct mtk_jpeg_dev *jpeg)
> > >     ret = mtk_smi_larb_get(jpeg->larb);
> > >     if (ret)
> > >             dev_err(jpeg->dev, "mtk_smi_larb_get larbvdec fail %d\n", ret);
> > > -   clk_prepare_enable(jpeg->clk_jdec_smi);
> > > -   clk_prepare_enable(jpeg->clk_jdec);
> > > +
> > > +   ret = clk_bulk_prepare_enable(jpeg->num_clks, jpeg->clks);
> > > +   if (ret)
> > > +           dev_err(jpeg->dev, "Failed to open jpeg clk: %d\n", ret);
> > >  }
> > >
> > >  static void mtk_jpeg_clk_off(struct mtk_jpeg_dev *jpeg)
> > >  {
> > > -   clk_disable_unprepare(jpeg->clk_jdec);
> > > -   clk_disable_unprepare(jpeg->clk_jdec_smi);
> > > +   clk_bulk_disable_unprepare(jpeg->num_clks, jpeg->clks);
> > >     mtk_smi_larb_put(jpeg->larb);
> > >  }
> > >
> > > @@ -939,6 +940,7 @@ static int mtk_jpeg_clk_init(struct mtk_jpeg_dev *jpeg)
> > >  {
> > >     struct device_node *node;
> > >     struct platform_device *pdev;
> > > +   int ret, i;
> > >
> > >     node = of_parse_phandle(jpeg->dev->of_node, "mediatek,larb", 0);
> > >     if (!node)
> > > @@ -952,12 +954,39 @@ static int mtk_jpeg_clk_init(struct mtk_jpeg_dev *jpeg)
> > >
> > >     jpeg->larb = &pdev->dev;
> > >
> > > -   jpeg->clk_jdec = devm_clk_get(jpeg->dev, "jpgdec");
> > > -   if (IS_ERR(jpeg->clk_jdec))
> > > -           return PTR_ERR(jpeg->clk_jdec);
> > > +   jpeg->num_clks =
> > > +           of_property_count_strings(jpeg->dev->of_node, "clock-names");
> > > +
> > > +   if (jpeg->num_clks > 0) {
> > > +           jpeg->clks = devm_kcalloc(jpeg->dev, jpeg->num_clks,
> > > +                                     sizeof(struct clk_bulk_data),
> > > +                                     GFP_KERNEL);
> > > +           if (!jpeg->clks)
> > > +                   return -ENOMEM;
> > > +   } else {
> > > +           dev_err(&pdev->dev, "Failed to get jpeg clock count\n");
> > > +           return -EINVAL;
> > > +   }
> > > +
> > > +   for (i = 0; i < jpeg->num_clks; i++) {
> > > +           ret = of_property_read_string_index(jpeg->dev->of_node,
> > > +                                               "clock-names", i,
> > > +                                               &jpeg->clks->id);
> >
> > The names of the clocks must be explicitly specified in the driver, as per
> > the DT bindings.
> Dear Tomasz,
>
> Thank you for your reply.
> You mean that I should keep the v9 version about names of the clocks in
> the match data.
> The v10 version about the names of the clocks follows the upstreamed
> mtk_venc/vdec.I think that this method is more generic. For example,when
> other project has more clocks, we can get the names of clocks from dtsi
> without changing the driver code.
> What about your further opinion?

The problem with that method is that one can put any random names in
the DT and the driver will happily accept them, without any
correctness checking. Moreover, if the other project has more clocks,
it already requires a different compatible string in the DT bindings,
so the kernel needs to be changed anyway.

Actually this is something that needs to be fixed in the mtk_venc/vdec
driver as well. I believe someone just overlooked it when the driver
was being reviewed.

Best regards,
Tomasz
