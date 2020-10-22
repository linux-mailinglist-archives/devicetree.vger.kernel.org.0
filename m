Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4F1529630D
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 18:49:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2902025AbgJVQtH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 12:49:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898067AbgJVQtG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Oct 2020 12:49:06 -0400
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FE1EC0613CF
        for <devicetree@vger.kernel.org>; Thu, 22 Oct 2020 09:49:06 -0700 (PDT)
Received: by mail-io1-xd44.google.com with SMTP id q25so2344204ioh.4
        for <devicetree@vger.kernel.org>; Thu, 22 Oct 2020 09:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=kojjrYIgLi9atE3HNeKW+cJYZwBv9lJxNp3JGQTWaRE=;
        b=K5mKBqv7cFoRmE22R/SIBPXgp7gvRB4sBDus74dJx6EmpRVudHOEVDoogQnspJqgXK
         H1+0glvjt/unvvGqucop/d2nz3n2nfx33WbtnVA4BnPNI3dcL6JkqJ0qQt6UpV8EKYPJ
         rWS6KSPUHGtGC3xjgm5Cw4sKACUyGO902TBx2Y/N6g9Y56VbPw0jbMXl344rCGF9OZig
         Hv/Dp4/6U4Cdajs5wMQNivLMVRiVubZij2UhC7tylU1qo6fpuSee2/6nhkK7heeaHm59
         7Xp9pYjYEPMby7cdkhG6LVymKnqxEu/fvw0AQke7RKF7pfK1vx8NMgnB0ynKi+oPPaE3
         wI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=kojjrYIgLi9atE3HNeKW+cJYZwBv9lJxNp3JGQTWaRE=;
        b=hyhxyNU36M1YTxqzz59ij/3yHSmfCu7rfnAwPlXbEP7IgVJVppV2BJ8Huc1P66jZ4h
         dEvizGAlcNHNmC83gjupir/8qzMKbi0V8U27PutrMAY1ggskYtZJQSNtihfTy1One2Es
         2cA12OdQfgMpKR0Ti6mZwOztITaGs66pcR/Rm0AO6TwMI6PRjPK94+P7wcPWg/mRHZJc
         VqmW7Lt6OCY7Yhp/ziMZqcva+9sjuk9QQGexNXHv0aYAe+ihf4aflz7vlbWpW+Htfpda
         HGA4YZgvpVZmPSelEdcnsyOyNPFWfxWrX3/3Q95XNFyBI6+hECibLHkLNEntB8n0oZUv
         GM3A==
X-Gm-Message-State: AOAM533y3N4RRe7qiHoFLRdjHGjS7qWzA5tGpaaCoF6br2QeoFfo8SlI
        TIpTNSyokDF61TurLu9UCohjNHtWG5zH8WXjEG51NF4ub/I=
X-Google-Smtp-Source: ABdhPJzzXab4wojjo0aZU7//8U9GW/iQAWpNHIt2AGa+iJXMyyAIuiUtYo/vxW5cBuLPfvukrTY8jeMKX0DFbYpGYeg=
X-Received: by 2002:a5e:c112:: with SMTP id v18mr2520610iol.195.1603385345691;
 Thu, 22 Oct 2020 09:49:05 -0700 (PDT)
MIME-Version: 1.0
References: <20201020174253.3757771-1-fparent@baylibre.com>
 <20201020174253.3757771-5-fparent@baylibre.com> <CAAOTY_9Y98yHq7GcypUMryG4jMEdrDJeCeRXEKX3mb5g39y+sg@mail.gmail.com>
In-Reply-To: <CAAOTY_9Y98yHq7GcypUMryG4jMEdrDJeCeRXEKX3mb5g39y+sg@mail.gmail.com>
From:   Fabien Parent <fparent@baylibre.com>
Date:   Thu, 22 Oct 2020 18:48:54 +0200
Message-ID: <CAOwMV_yybF9j6GZpHfz3WjAHSQhQo=Ot+2frSkN6dpODe3nwCQ@mail.gmail.com>
Subject: Re: [PATCH 4/8] drm/mediatek: dsi: add pdata variable to start clk in
 HS mode
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc:     "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        DRI Development <dri-devel@lists.freedesktop.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Chun-Kuang,

On Wed, Oct 21, 2020 at 7:07 PM Chun-Kuang Hu <chunkuang.hu@kernel.org> wro=
te:
>
> Hi, Fabien:
>
> Fabien Parent <fparent@baylibre.com> =E6=96=BC 2020=E5=B9=B410=E6=9C=8821=
=E6=97=A5 =E9=80=B1=E4=B8=89 =E4=B8=8A=E5=8D=881:43=E5=AF=AB=E9=81=93=EF=BC=
=9A
> >
> > On MT8167, DSI seems to work fine only if we start the clk in HS mode.
> > If we don't start the clk in HS but try to switch later to HS, the
> > display does not work.
> >
> > This commit adds a platform data variable to be used to start the
> > DSI clk in HS mode at power on.
>
> This patch looks like a hack patch. If you cowork with Mediatek,
> please find out the correct solution or give a reasonable explanation.
> If you could not get help from Mediatek, I would wait for comment on
> this patch.

It seems that this workaround is because of a specific display and not
because of a specific issue of the MT8167 DSI IP. I will drop this
patch in v2.

> Regards,
> Chun-Kuang.
>
> >
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_dsi.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/media=
tek/mtk_dsi.c
> > index 4a188a942c38..461643c05689 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > @@ -175,6 +175,7 @@ struct mtk_dsi_driver_data {
> >         const u32 reg_cmdq_off;
> >         bool has_shadow_ctl;
> >         bool has_size_ctl;
> > +       bool use_hs_on_power_on;
> >  };
> >
> >  struct mtk_dsi {
> > @@ -671,7 +672,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
> >
> >         mtk_dsi_clk_ulp_mode_leave(dsi);
> >         mtk_dsi_lane0_ulp_mode_leave(dsi);
> > -       mtk_dsi_clk_hs_mode(dsi, 0);
> > +       mtk_dsi_clk_hs_mode(dsi, !!dsi->driver_data->use_hs_on_power_on=
);
> >
> >         return 0;
> >  err_disable_engine_clk:
> > --
> > 2.28.0
> >
