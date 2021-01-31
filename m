Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17127309A54
	for <lists+devicetree@lfdr.de>; Sun, 31 Jan 2021 06:17:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229500AbhAaFQj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jan 2021 00:16:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbhAaFOa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jan 2021 00:14:30 -0500
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F409C061574
        for <devicetree@vger.kernel.org>; Sat, 30 Jan 2021 21:13:24 -0800 (PST)
Received: by mail-io1-xd36.google.com with SMTP id z22so13795106ioh.9
        for <devicetree@vger.kernel.org>; Sat, 30 Jan 2021 21:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=b9M8TJmZDwyrtjgKsvEvlpRNCVzQ223973tsROYzwTA=;
        b=dgFZhpJBVExa60g6NPDWpTo3obDotp5pfBHVxA9v4HbUiWa3Huxe3MlCrzTZ4ebVhC
         cTLkgIkO5OoDI62oV5J+63IGlN9Ew36mEV5j6hJr3itHJXE4S6QNLyaNADk7kn362Iec
         696G4Gs3oIS88/BfRPkZM6enoSFP7VytE2iIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=b9M8TJmZDwyrtjgKsvEvlpRNCVzQ223973tsROYzwTA=;
        b=VT1sYqac+crntE02uUi71m9Ri7+X5z/7O0nh7nSvQwMv5V/thTOOk8pIYFXpvCYqI5
         zNKnhy5ZebokTdhvwDYW9RPaoJ+8qKO7b2U4AkK4OVOdt5ZknkKp6M1P07vXbXNjiQAs
         enECts/iP2B6cJrIm/JqfzZjjZfX03ptqFq6eoboPu4qQcSspsSyOGAWp3KXvpj8GcZ/
         fyasOpDFQYh+4k9I7KmAzRuFMLOBsA3/FJo+wUa2AGMrL8UwEFCVvNDLBE2i61UENIhg
         YebwgBkXGmlLvjcZDC8+GjXnnbJCAb7Vl49qyfce7UtXSCrEeBjzasQPpy7S4FDjp+5w
         OgAQ==
X-Gm-Message-State: AOAM530mHpery5J5HS5NppD+4cvpdkyudaTRP3XAnz2iPTj5J/fSu5kq
        Qt3CA6fcEJL95hcsaeYCx6NFelC5o3kxTaUpWuf4ww==
X-Google-Smtp-Source: ABdhPJy92p4HESpnK7UKEIXXh4uQju71DMtrL4a7+osh3AUpuoLO1ym8islGZrNUyu2litzDwwEozvwGgin7xj6Dug4=
X-Received: by 2002:a05:6638:619:: with SMTP id g25mr9720692jar.43.1612070003530;
 Sat, 30 Jan 2021 21:13:23 -0800 (PST)
MIME-Version: 1.0
References: <20210129092209.2584718-1-hsinyi@chromium.org> <20210129092209.2584718-7-hsinyi@chromium.org>
 <CAAOTY_8rAAiiwtUJ_8nkp3WZKZ05Mo4oGxWnncywabGNHu3Ffg@mail.gmail.com>
In-Reply-To: <CAAOTY_8rAAiiwtUJ_8nkp3WZKZ05Mo4oGxWnncywabGNHu3Ffg@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Sun, 31 Jan 2021 13:12:57 +0800
Message-ID: <CAJMQK-hCuvpfAKMiLzi6DiFHdnrMcJ_gCOdoAt_PjKtGmAo1_A@mail.gmail.com>
Subject: Re: [PATCH v13 6/8] drm/mediatek: enable dither function
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        DTML <devicetree@vger.kernel.org>,
        Yongqiang Niu <yongqiang.niu@mediatek.com>,
        David Airlie <airlied@linux.ie>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        DRI Development <dri-devel@lists.freedesktop.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 31, 2021 at 11:40 AM Chun-Kuang Hu <chunkuang.hu@kernel.org> wr=
ote:
>
> Hi, Hsin-Yi:
>
> Hsin-Yi Wang <hsinyi@chromium.org> =E6=96=BC 2021=E5=B9=B41=E6=9C=8829=E6=
=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=885:23=E5=AF=AB=E9=81=93=EF=BC=9A
> >
> > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> >
> > Enable dither function to improve the display quality for dither
> > supported bpc 4, 6, 8. For not supported bpc, use relay mode.
> >
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 15 ++++++++++++---
> >  1 file changed, 12 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/=
drm/mediatek/mtk_drm_ddp_comp.c
> > index ac2cb25620357..5761dd15eedf2 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > @@ -53,6 +53,7 @@
> >  #define DITHER_EN                              BIT(0)
> >  #define DISP_DITHER_CFG                                0x0020
> >  #define DITHER_RELAY_MODE                      BIT(0)
> > +#define DITHER_ENGINE_EN                       BIT(1)
> >  #define DISP_DITHER_SIZE                       0x0030
> >
> >  #define LUT_10BIT_MASK                         0x03ff
> > @@ -314,9 +315,17 @@ static void mtk_dither_config(struct device *dev, =
unsigned int w,
> >                               unsigned int bpc, struct cmdq_pkt *cmdq_p=
kt)
> >  {
> >         struct mtk_ddp_comp_dev *priv =3D dev_get_drvdata(dev);
> > -
> > -       mtk_ddp_write(cmdq_pkt, h << 16 | w, &priv->cmdq_reg, priv->reg=
s, DISP_DITHER_SIZE);
> > -       mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, &priv->cmdq_reg, pri=
v->regs, DISP_DITHER_CFG);
> > +       bool valid_bpc =3D (bpc =3D=3D 4 || bpc =3D=3D 6 || bpc =3D=3D =
8);
> > +
> > +       mtk_ddp_write(cmdq_pkt, h << 16 | w, &priv->cmdq_reg, priv->reg=
s,
> > +                     DISP_DITHER_SIZE);
> > +       if (valid_bpc)
> > +               mtk_dither_set_common(priv->regs, &priv->cmdq_reg, bpc,
> > +                                     DISP_DITHER_CFG, DITHER_ENGINE_EN=
,
> > +                                     cmdq_pkt);
> > +       else
> > +               mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, &priv->cmdq_=
reg,
> > +                             priv->regs, DISP_DITHER_CFG);
>
> od has relay mode,
>
> static void mtk_od_config(struct mtk_ddp_comp *comp, unsigned int w,
>   unsigned int h, unsigned int vrefresh,
>   unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
> {
> mtk_ddp_write(cmdq_pkt, w << 16 | h, comp, DISP_OD_SIZE);
> mtk_ddp_write(cmdq_pkt, OD_RELAYMODE, comp, DISP_OD_CFG);
> mtk_dither_set(comp, bpc, DISP_OD_CFG, cmdq_pkt);
> }
>
> and it does not check valid bpc (I think drm core already set bpc to
> 4, 6, 8 or 0), so align implementation of mtk_dither_config() with
> mtk_od_config().
> gamma also has relay mode (refer to [1] page 689), but we need to
> enable gamma's gamma function, so we do not set gamma to relay mode.
> So I think maybe we could implement mtk_dither_config() as:
>
> mtk_dither_config()
> {
>         mtk_ddp_write(cmdq_pkt, h << 16 | w, &priv->cmdq_reg,
> priv->regs, DISP_DITHER_SIZE);
>         mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, &priv->cmdq_reg,
> priv->regs, DISP_DITHER_CFG);
>         mtk_dither_set_common(priv->regs, &priv->cmdq_reg, bpc,
> DISP_DITHER_CFG, DITHER_ENGINE_EN, cmdq_pkt);
> }
>
> [1] https://www.96boards.org/documentation/consumer/mediatekx20/additiona=
l-docs/docs/MT6797_Register_Table_Part_2.pdf
>
> Regards,
> Chun-Kuang.
>
Hi CK,

I send the patch here:
https://patchwork.kernel.org/project/linux-mediatek/patch/20210131051058.34=
07985-1-hsinyi@chromium.org/
as others are already merged to the tree.

Thanks

> >  }
> >
> >  static void mtk_dither_start(struct device *dev)
> > --
> > 2.30.0.365.g02bc693789-goog
> >
> >
> > _______________________________________________
> > Linux-mediatek mailing list
> > Linux-mediatek@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-mediatek
