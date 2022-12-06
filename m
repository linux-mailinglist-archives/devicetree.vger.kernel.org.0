Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADBD2644590
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 15:24:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbiLFOYt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 09:24:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiLFOYs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 09:24:48 -0500
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FADBD7E
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 06:24:47 -0800 (PST)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-3e78d07ab4fso83036597b3.9
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 06:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+I8r/Ikze/i7BezWa/uQmhkUP93gWEH0lvmItkZak28=;
        b=vt415P28FdlKBt2TqF2bJBATY1Ngpsn4MQSzo0T7ynONJIuaJ3lkF8BFTZ7DN89PkM
         j97el6G9iNyM0GXZzsQ6t8G4KKANekmq14xqLHja9BZrsvsCtrBJ/ssPce1LJXO1Umaf
         KRvr3tYbR6PIFWcsRDUSZp7v5w5anIV2mMr5iiPjB0zqrYYgWT0TcioDSX/L9XaEOgbX
         T+4E59QUbIQTeotu9pAA4Q8zdalqeR/rsQg3M/AXnYHSMi/tYAn4ZtnBuLIQL6jYLktr
         OwRwmXRJZAACLuuYihtduXhWIme6Q6Udth6zC5A0PO8HfW04byONHgSjniwnKzohQ1Jg
         1JyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+I8r/Ikze/i7BezWa/uQmhkUP93gWEH0lvmItkZak28=;
        b=ALr6yLJ8pX53iu4kkpYKekwbyP+bSXXvtKeUr5QUPV5xsyXaPrjxGNc17hcPh6hftv
         2ThuR1TQkCsOeinewVRO4kpVWu4eAzK0/cvRYboVbFK8w4XGRLN7CWTZtkNnR+GDGpA1
         v1GXHIoXmLp6u8OtGD3C9BMWEENMFN22qdCxdp1zJ6f85/Mx+lPRIgsJL7LraeNnmeqv
         SYOacg9rKbz5bmEK5Bic69PowD08mf7EJ/g9DSIzGY6bwDv9H6RIMnxihKMY0EXYVl7F
         7jyhD0UonvWlrHo6hwBBzo5KciI8g1ZFaoWEa2K4x5ayfqHkcQUjJyNJEji+lRom5eKU
         a/2w==
X-Gm-Message-State: ANoB5pn4+cY2hUaCWRsyaUbZVt8jQgx2OiE2xuTv4AS8FkOmPO6AOOOo
        yW9cDoRj0RR/9FSchnhWi8pVfE18UIhzHyFEh3MlWQ==
X-Google-Smtp-Source: AA0mqf5mKBQw8iA17xoosolG2+26c+SqRDj88aSFWvi0sjxJlJW4K2uJT0cUQT+DFP5YzgGbD8WR9TpjDM9XKp6LwOo=
X-Received: by 2002:a0d:e645:0:b0:3bb:6406:3df1 with SMTP id
 p66-20020a0de645000000b003bb64063df1mr47631212ywe.319.1670336686630; Tue, 06
 Dec 2022 06:24:46 -0800 (PST)
MIME-Version: 1.0
References: <20221129172912.9576-1-macroalpha82@gmail.com> <20221129172912.9576-3-macroalpha82@gmail.com>
 <CACRpkdZK9=Z1i3Uv=fwS=t=NXHJkucg9FYOCfog_qhomf9GV=w@mail.gmail.com> <638b9d23.4a0a0220.37bf5.143c@mx.google.com>
In-Reply-To: <638b9d23.4a0a0220.37bf5.143c@mx.google.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 6 Dec 2022 15:24:34 +0100
Message-ID: <CACRpkdZC_TLj2K8FaSLmFp-YBn3HxmW0zUKYvQpRafavNDoWpw@mail.gmail.com>
Subject: Re: [PATCH V4 2/3] drm/panel: Add Samsung AMS495QA01 MIPI-DSI LCD panel
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, maccraft123mc@gmail.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Dec 3, 2022 at 8:01 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> Will do. I'll make the changes and resubmit. For what it's worth the
> documentation says this one is a Samsung AMS495QA01 panel on a
> Magnachip D53E6EA8966 controller IC.

I would name the driver panel-magnachip-d53e6ea8966.c and
KConfig PANEL_MAGNACHIP_D53E6EA8966 for now
but keep the Samsung compatible string & match.

Maybe this driver will match more magnachips in the future,
maybe not. Sometimes people get hold of datasheets and submit
proper code and #defines etc.

> > > +       if (db->reg_elvdd) {
> >
> > Do you really need to if() this? I thought the regulator
> > framework would just ignore the calls for an optional
> > regulator.
>
> I don't know for sure, but I'll make the change if you request it. I
> think other drivers had an if in this scenario which is why I did it.

Okay but I don't think that is necessary.

> > > +               mode->type = DRM_MODE_TYPE_DRIVER;
> > > +               if (panel_info->num_modes == 1)
> > > +                       mode->type |= DRM_MODE_TYPE_PREFERRED;
> >
> > I think you should probably set the preferred mode even
> > if there are several of them? But maybe just on the first
> > or something. (A bit unsure here, Sam?)
>
> I'll keep 60hz as the preferred. 50hz was added at the request of some
> userspace folks for running PAL based emulators and stuff.

OK

> This is the path that "works", but I'll happily change to something
> else.
>
> > > +       db->dsi_dev->lanes = 2;
> > > +       db->dsi_dev->format = MIPI_DSI_FMT_RGB888;
> > > +       db->dsi_dev->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> > > +                         MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET;
> > > +
> > > +       drm_panel_init(&db->panel, dev, &ams495qa01_drm_funcs,
> > > +                      DRM_MODE_CONNECTOR_DSI);
> >
> > Pixel data passes to the display using DSI but all display control
> > is done over SPI, and the core will not help with this.
> >
> > So from the display controller POV this is a DSI display
> > and from the display POV this is an SPI-controlled display.
> > So it sits on two buses. Data path is on DSI, control path
> > is on SPI.
> >
> > This would be kind of odd actually, normally DSI displays
> > do the display control over DSI as well. SPI control is usually
> > used on DPI displays. But I'm not surprised.
> >
> > If this is necessary, isn't this something we need to teach the
> > core to handle instead of adding quirks like this to all drivers that
> > have this characteristic?
> >
>
> You are correct, this panel is controlled via 3-wire SPI in my example.
> The panel can be controlled either by 3-wire SPI or DSI commands
> depending on whether or not pin 15 is driven high or low. Unfortunately
> in my case it's hardwired high, so I am forced to do it via 3-wire SPI.
> I have no way of testing it with pure DSI but that would simplify
> things quite a bit. Pixel data is transmitted soley through DSI.

OK

> The way I have it implemented currently is to put the panel on the SPI
> bus as a DBI panel; traverse through the DT bindings to find the
> associated DSI controller, then attach it as a DSI device so the DSI
> bus can transmit the pixel data.
>
> I'm absolutely cool with making those functions part of the core and
> not just specific to this panel, only I might need a bit of help on
> that part to make sure I do it the right way. I just wasn't sure how
> often that would be needed since this is the only panel I've ever seen
> driven this way, especially since it seems like any sane person would
> just want to do the whole control data/pixel data over DSI to keep
> things simple.

It doesn't seem all that unique.

Can you put some helper in drivers/gpu/drm/drm_of.c with the rest
and it will (hopefully) not be linked in unless used anyway.

Yours,
Linus Walleij
