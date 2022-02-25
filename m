Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C1D34C4318
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 12:10:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239888AbiBYLKi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 06:10:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229903AbiBYLKh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 06:10:37 -0500
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32C1B197B51
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 03:10:05 -0800 (PST)
Received: by mail-oo1-xc36.google.com with SMTP id k13-20020a4a948d000000b003172f2f6bdfso5819038ooi.1
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 03:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=uCe/+8iKUxzMUiuInd3yAhEeQs4vdxnzQkm5bIEbNEw=;
        b=3quStgJE4CNplUYYKndunJnY4NULD271ISTymr6In2H9wvWQ46ynTFUwPSh3NKVoKO
         XO4uix0XDRtyEYj7qkgyNbao0VNsn/v9DyTp5E6MeOCrYZ7UHnrZSG25ljWcwzNZXWtM
         CK25RXGKu7gtNKH69yAXi2/cmw/9laIfo+AIvEyQXQO0M+yNR7o7LR3kCYQ0GhecodX3
         0Yf39evCS/HIrNRyUizqYBNSZK0dgtE8NmgJi1WqVMQsdFuWPWRcekxxZDZoDZzegsrZ
         eGdZk0yx/7/PS7SJ3+IWqErs4rB+57192rbUR/75nCEiwVLsRQAgfLPhmb5NU7fcOvcj
         rAqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=uCe/+8iKUxzMUiuInd3yAhEeQs4vdxnzQkm5bIEbNEw=;
        b=5KeM5W263j5xkIGOPGeiAEkFF5jUcnm1mAZgcjMKsL3ozJh70WYEX6UErWM73RlYrp
         DBw9pf0AIRok0+NqI2QHGZ9OufsGpnmExYo4PodmeAt6lOj8zvkSwrP17hyyvB6VZMWT
         /5v8BPgFXxBSyV7u8wrHxT/6jR5kQAEVLDPVDCIzWWPfs4bLoxaZVREu4AnpXWhKH+TF
         wXWY9gBWWcEsFD7oOrTeEUwG0Z44CVfiXJ2onooVavSFJgS2TybKunYnSZqCR8vXvsQP
         vJSsyV39Wm1ZjRgjULoRwRkUPYJAabU4kna0J5r0393XFDLAXtsctaZhjh2x6jhPtB4d
         Q29A==
X-Gm-Message-State: AOAM530+1CaR2gw50ybxO4fRS+9hA+f6h/JSPVaL099ZNmCXW4xQUEh4
        ShVr5gpj9/3tlaK+kjRxzwtFkf2Wmx59IZ0RWRFWwA==
X-Google-Smtp-Source: ABdhPJxQVXm0aOfETMn/jYI9liemPaFUC9qpKMV22X3YKscJ2KB1O1xhKAWhMyhOXCXayIJus//3i7D2cxvCV3+EqA4=
X-Received: by 2002:a05:6870:3112:b0:ce:c0c9:62b with SMTP id
 v18-20020a056870311200b000cec0c9062bmr1047419oaa.125.1645787404480; Fri, 25
 Feb 2022 03:10:04 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Feb 2022 03:10:03 -0800
MIME-Version: 1.0
In-Reply-To: <CAAOTY_9cOLJnTK0tSqfzyK4tUn_LUAywRPa+z7tTCOSien2j1Q@mail.gmail.com>
References: <20220218145437.18563-1-granquet@baylibre.com> <20220218145437.18563-11-granquet@baylibre.com>
 <CAAOTY_9cOLJnTK0tSqfzyK4tUn_LUAywRPa+z7tTCOSien2j1Q@mail.gmail.com>
From:   Guillaume Ranquet <granquet@baylibre.com>
User-Agent: alot/0.10
Date:   Fri, 25 Feb 2022 03:10:03 -0800
Message-ID: <CABnWg9secW5CO=wfo68mA9Z+v=iB50uZRUQGjm=jrGiS379nJA@mail.gmail.com>
Subject: Re: [PATCH v8 10/19] drm/mediatek: dpi: move swap_shift to board config
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, deller@gmx.de,
        CK Hu <ck.hu@mediatek.com>, Jitao Shi <jitao.shi@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        DRI Development <dri-devel@lists.freedesktop.org>,
        "ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-phy@lists.infradead.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Chun-Kuang Hu (2022-02-21 04:24:32)
> Hi, Guillaume:
>
> Guillaume Ranquet <granquet@baylibre.com> =E6=96=BC 2022=E5=B9=B42=E6=9C=
=8818=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=8810:56=E5=AF=AB=E9=81=93=
=EF=BC=9A
> >
> > Add flexibility by moving the swap shift value to board config
> >
> > Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_dpi.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/media=
tek/mtk_dpi.c
> > index 0d3acd08ea358..ec221e24e0fee 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
> > @@ -131,6 +131,7 @@ struct mtk_dpi_conf {
> >         u32 dimension_mask;
> >         // Mask used for HSIZE and VSIZE (no shift)
> >         u32 hvsize_mask;
> > +       u32 channel_swap_shift;
> >         const struct mtk_dpi_yc_limit *limit;
> >  };
> >
> > @@ -349,7 +350,8 @@ static void mtk_dpi_config_channel_swap(struct mtk_=
dpi *dpi,
> >                 break;
> >         }
> >
> > -       mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, val << CH_SWAP, CH_SWAP_M=
ASK);
> > +       mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, val << CH_SWAP,
> > +                    CH_SWAP_MASK << dpi->conf->channel_swap_shift);
>
> This may be wrong because of these definition:
>
> #define DPINTF_CH_SWAP BIT(1)
> #define DPINTF_CH_SWAP_MASK (0x7 << 1)
>
> Regards,
> Chun-Kuang.
>

You are right, DPINTF_CH_SWAP_MASK is unused, which is wrong on multiple le=
vels.

> >  }
> >
> >  static void mtk_dpi_config_yuv422_enable(struct mtk_dpi *dpi, bool ena=
ble)
> > @@ -821,6 +823,7 @@ static const struct mtk_dpi_conf mt8173_conf =3D {
> >         .swap_input_support =3D true,
> >         .dimension_mask =3D HPW_MASK,
> >         .hvsize_mask =3D HSIZE_MASK,
> > +       .channel_swap_shift =3D CH_SWAP,
> >         .limit =3D &mtk_dpi_limit,
> >  };
> >
> > @@ -835,6 +838,7 @@ static const struct mtk_dpi_conf mt2701_conf =3D {
> >         .swap_input_support =3D true,
> >         .dimension_mask =3D HPW_MASK,
> >         .hvsize_mask =3D HSIZE_MASK,
> > +       .channel_swap_shift =3D CH_SWAP,
> >         .limit =3D &mtk_dpi_limit,
> >  };
> >
> > @@ -848,6 +852,7 @@ static const struct mtk_dpi_conf mt8183_conf =3D {
> >         .swap_input_support =3D true,
> >         .dimension_mask =3D HPW_MASK,
> >         .hvsize_mask =3D HSIZE_MASK,
> > +       .channel_swap_shift =3D CH_SWAP,
> >         .limit =3D &mtk_dpi_limit,
> >  };
> >
> > @@ -861,6 +866,7 @@ static const struct mtk_dpi_conf mt8192_conf =3D {
> >         .swap_input_support =3D true,
> >         .dimension_mask =3D HPW_MASK,
> >         .hvsize_mask =3D HSIZE_MASK,
> > +       .channel_swap_shift =3D CH_SWAP,
> >         .limit =3D &mtk_dpi_limit,
> >  };
> >
> > --
> > 2.34.1
> >
