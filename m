Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06B28308605
	for <lists+devicetree@lfdr.de>; Fri, 29 Jan 2021 07:55:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232241AbhA2Grw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jan 2021 01:47:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231942AbhA2Gru (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jan 2021 01:47:50 -0500
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF1D8C061573
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 22:47:10 -0800 (PST)
Received: by mail-io1-xd2e.google.com with SMTP id p72so8206642iod.12
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 22:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ruNpGaoKu1dgmqBVSbSLSnQiARAMcjSIrv4Avg5O3MQ=;
        b=dXjVH3+tVaF8iIhIEF2dsAXoI5HY4uWHATq/S2lnZqb26T4dz4D26pgVXXu5ruBbo0
         LJeDJhHqDMTAMay0YTk3wWOOFZYh3ekGGSRPvfFNiJVdgH3l7CuteXJAiAY4Rt3AeYTI
         8YeOIhx9PSf1EUvU3G3Jf5FnLO93sYUa5j0uc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ruNpGaoKu1dgmqBVSbSLSnQiARAMcjSIrv4Avg5O3MQ=;
        b=ax/LGclZXURAwbqSPo+iz3FqL1yH1yNJ92U88BFHSYy0w5E/2kBLkbmLOrW/TAHNJm
         rxrLHJDHGS+ivQBww3w6cKeaNLBszwwB84e3l+Gf8QnEsD3AgoXLi51DZbuEg4m5KM/i
         zykSxemjYJ/wy6UTSPgzuLtYN7C5I2Gdo0KAW/sNSGylMFnK9iIKW0DUOvOjEJpFV5WD
         iGdl7f/lwMQ7+XwSxS52FdUKev0nttVPujg+UnxdNlo16akeNBGY9scHZGLSoPGo6cXP
         Ovtl/Aa7vBjBFR540A0TaUfWsRtKIvKukYspvbCY94dsLGLThezamjfEJj8d1eghMxKB
         Jvhw==
X-Gm-Message-State: AOAM530KJDAn0BPS9A14jShRkFMj5GQ47ZkagKGZkYy2p+R7u+PV1l6k
        KBeVaU2U1i9ISPTNJPCc/OZaxX/XyM1PjswTBjv/8Q==
X-Google-Smtp-Source: ABdhPJxkBOTtaYtKaUYyK3d20nT2ufqMqpQmxgNN9Z8BchYpupwidxSHhGg+Id6vxv/zqm8a4z/nzuU79ktpPdKnD8k=
X-Received: by 2002:a6b:2d4:: with SMTP id 203mr2621478ioc.0.1611902830115;
 Thu, 28 Jan 2021 22:47:10 -0800 (PST)
MIME-Version: 1.0
References: <20210128112314.1304160-1-hsinyi@chromium.org> <20210128112314.1304160-7-hsinyi@chromium.org>
 <1611883982.5226.12.camel@mtksdaap41> <CAJMQK-gKKjLJ5xOAKOx5BM5dL2MxgFq72FVCfGTfzK4ZXzRJfA@mail.gmail.com>
 <1611901808.1947.16.camel@mhfsdcap03>
In-Reply-To: <1611901808.1947.16.camel@mhfsdcap03>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 29 Jan 2021 14:46:44 +0800
Message-ID: <CAJMQK-hLf6f0mofWMF6eEKtTRTmK4Pm-mkYjAAGzD80uTpZLug@mail.gmail.com>
Subject: Re: [PATCH v12 6/8] drm/mediatek: enable dither function
To:     Yongqiang Niu <yongqiang.niu@mediatek.com>
Cc:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 29, 2021 at 2:30 PM Yongqiang Niu
<yongqiang.niu@mediatek.com> wrote:
>
> On Fri, 2021-01-29 at 14:24 +0800, Hsin-Yi Wang wrote:
> > On Fri, Jan 29, 2021 at 9:33 AM CK Hu <ck.hu@mediatek.com> wrote:
> > >
> > > Hi, Hsin-Yi:
> > >
> > > On Thu, 2021-01-28 at 19:23 +0800, Hsin-Yi Wang wrote:
> > > > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > > >
> > > > for 5 or 6 bpc panel, we need enable dither function
> > > > to improve the display quality
> > > >
> > > > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > > ---
> > > >  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 15 +++++++++++++--
> > > >  1 file changed, 13 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > > > index ac2cb25620357..6c8f246380a74 100644
> > > > --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > > > +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > > > @@ -53,6 +53,7 @@
> > > >  #define DITHER_EN                            BIT(0)
> > > >  #define DISP_DITHER_CFG                              0x0020
> > > >  #define DITHER_RELAY_MODE                    BIT(0)
> > > > +#define DITHER_ENGINE_EN                     BIT(1)
> > > >  #define DISP_DITHER_SIZE                     0x0030
> > > >
> > > >  #define LUT_10BIT_MASK                               0x03ff
> > > > @@ -314,9 +315,19 @@ static void mtk_dither_config(struct device *dev, unsigned int w,
> > > >                             unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
> > > >  {
> > > >       struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
> > > > +     bool enable = (bpc == 5 || bpc == 6);
> > >
> > > I strongly believe that dither function in dither is identical to the
> > > one in gamma and od, and in mtk_dither_set_common(), 'bpc >=
> > > MTK_MIN_BPC' is valid, so I believe we need not to limit bpc to 5 or 6.
> > > But we should consider the case that bpc is invalid in
> > > mtk_dither_set_common(). Invalid case in gamma and od use different way
> > > to process. For gamma, dither is default relay mode, so invalid bpc
> > > would do nothing in mtk_dither_set_common() and result in relay mode.
> > > For od, it set to relay mode first, them invalid bpc would do nothing in
> > > mtk_dither_set_common() and result in relay mode. I would like dither,
> > > gamma and od to process invalid bpc in the same way. One solution is to
> > > set relay mode in mtk_dither_set_common() for invalid bpc.
> > >
> > > Regards,
> > > CK
> > >
> >
> > I modify the mtk_dither_config() to follow:
> >
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > index ac2cb25620357..5b7fcedb9f9a8 100644
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
> > @@ -166,6 +167,8 @@ void mtk_dither_set_common(void __iomem *regs,
> > struct cmdq_client_reg *cmdq_reg,
> >                               DITHER_ADD_LSHIFT_G(MTK_MAX_BPC - bpc),
> >                               cmdq_reg, regs, DISP_DITHER_16);
> >                 mtk_ddp_write(cmdq_pkt, dither_en, cmdq_reg, regs, cfg);
> > +       } else {
> > +               mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, cmdq_reg, regs, cfg);
> >         }
> >  }
> >
> > @@ -315,8 +318,12 @@ static void mtk_dither_config(struct device *dev,
> > unsigned int w,
> >  {
> >         struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
> >
> > -       mtk_ddp_write(cmdq_pkt, h << 16 | w, &priv->cmdq_reg,
> > priv->regs, DISP_DITHER_SIZE);
> > -       mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, &priv->cmdq_reg,
> > priv->regs, DISP_DITHER_CFG);
> > +       mtk_ddp_write(cmdq_pkt, h << 16 | w, &priv->cmdq_reg, priv->regs,
> > +                     DISP_DITHER_SIZE);
> > +       mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, &priv->cmdq_reg, priv->regs,
> > +                     DISP_DITHER_CFG);
> > +       mtk_dither_set_common(priv->regs, &priv->cmdq_reg, bpc, DISP_DITHER_CFG,
> > +                              DITHER_ENGINE_EN, cmdq_pkt);
> >  }
> >
> > So now, not only bpc==5 or 6, but all valid bpc, dither config will
> > call mtk_dither_set_common() with the flag DITHER_ENGINE_EN(BIT(1)).
> > od config will call mtk_dither_set_common() with the flag
> > DISP_DITHERING(BIT(2)).
> > Additionally for 8173, gamma config will call mtk_dither_set_common()
> > with the flag DISP_DITHERING (BIT(2))
> >
> > For invalid mode all of them will be DITHER_RELAY_MODE.
> >
> > Just to make sure that this follows the spec? thanks
> >
>
> for mt8173 gamma, there is no relay mode, only dither enable or not(bit
> 2).
> for mt8183 dither, there is dither enable bit 1, and relay mode bit 0
>
CK suggested to set relay mode for invalid cases. Or should I just set
invalid case in mtk_dither_config()? So that invalid case for gamma
and od would remain its default mode?

Besides that, the major difference of this patch and original version
is that not only bpc ==5 or 6 will set dither enable bit 1. Does this
looks good to you?
>
> > > >
> > > > -     mtk_ddp_write(cmdq_pkt, h << 16 | w, &priv->cmdq_reg, priv->regs, DISP_DITHER_SIZE);
> > > > -     mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, &priv->cmdq_reg, priv->regs, DISP_DITHER_CFG);
> > > > +     if (enable) {
> > > > +             mtk_dither_set_common(priv->regs, &priv->cmdq_reg, bpc,
> > > > +                                   DISP_DITHER_CFG, DITHER_ENGINE_EN,
> > > > +                                   cmdq_pkt);
> > > > +     } else {
> > > > +             mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, &priv->cmdq_reg,
> > > > +                           priv->regs, DISP_DITHER_CFG);
> > > > +     }
> > > > +
> > > > +     mtk_ddp_write(cmdq_pkt, h << 16 | w, &priv->cmdq_reg, priv->regs,
> > > > +                   DISP_DITHER_SIZE);
> > > >  }
> > > >
> > > >  static void mtk_dither_start(struct device *dev)
> > >
>
