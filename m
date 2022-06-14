Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C62EF54ACEB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 11:09:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240296AbiFNJIP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 05:08:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239845AbiFNJIO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 05:08:14 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A5AF3F300
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 02:08:13 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id z9so4275638wmf.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 02:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QhvvxqBDc4O6cqtxNWaREqrfN92rGnha8HhGfNJEYIY=;
        b=douVYUlsdf+Xh3MuzIfeY0X8Ce+uwGOB4VX1fszrw5WlSXQfxYVaK7H0LCFX+l06al
         G5Pt7vxmjI/oNJX86GkWkmt9jVl9oIs5040FZFsPravjzgf3NF8nQgvJXGT86lajFlGA
         a5M9bPfdwTcVtYWDnAAyvWPcyA0DlWZOO4P5g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QhvvxqBDc4O6cqtxNWaREqrfN92rGnha8HhGfNJEYIY=;
        b=BhGX0k0dMh6As6tgeOMJEgm6zVrw7lDXbj84Lor4k9JFikeQU6fsgGCpQb1ISyHDDJ
         PIIT6kIdl979tblm4WH9+vOP6/lRPe8I2wPoO0F8J8u06COrLEcyh8EFASyFl2ekmWJX
         c4CWlZGAHLeyVtPXvSeGSmhvGVhos1+XTnU9FpHSGmXRbcr3LC8oTv8iYqqW4qjxAmce
         0smRd0V9vK1k8U/hPMOSFZ4YO4bXDjwfnE3q4meGfqLCWnHkc5YrTFvsbL0FngjK4pCf
         9kkOmueElvvXCVs/b/po0VCgeyWRhH6lf8Y9jud379uO4DLeEK0uG5NyxlGxganXmDl6
         HhPQ==
X-Gm-Message-State: AOAM532Y3cnS4a84kwCqgQE+cLdpn8S2w+sl/PZS+jub9r1VrkG08JHv
        ZzwNsRQOImfhPpwLuuvapgcS++rF3tQqFJXBHlQw/A==
X-Google-Smtp-Source: ABdhPJzczygOemileGdbX/PhVogBffmdzEt2dLPD4YNk/wLgn4+GD2v0/Oo2U5JXPZWuJzgBaJNoBRQP9hjSU6+IahI=
X-Received: by 2002:a05:600c:3cd:b0:39c:880e:dc7b with SMTP id
 z13-20020a05600c03cd00b0039c880edc7bmr2968699wmd.168.1655197691993; Tue, 14
 Jun 2022 02:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220609181106.3695103-1-pmalani@chromium.org>
 <20220609181106.3695103-8-pmalani@chromium.org> <1191703c-efa5-7fe6-7dd0-e3e786b58411@collabora.com>
In-Reply-To: <1191703c-efa5-7fe6-7dd0-e3e786b58411@collabora.com>
From:   Pin-yen Lin <treapking@chromium.org>
Date:   Tue, 14 Jun 2022 17:08:00 +0800
Message-ID: <CAEXTbpfh3aKS8DZ9T0KPNLfWJ4EsLxcJpP8aLYU-iQYC1N4sRQ@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] drm/bridge: anx7625: Add typec_mux_set callback function
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Prashant Malani <pmalani@chromium.org>,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        heikki.krogerus@linux.intel.com,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        David Airlie <airlied@linux.ie>,
        "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Tzung-Bi Shih <tzungbi@google.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Jonas Karlman <jonas@kwiboo.se>,
        swboyd@chromium.org, Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Xin Ji <xji@analogixsemi.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Robert Foss <robert.foss@linaro.org>,
        =?UTF-8?B?Sm9zw6kgRXhww7NzaXRv?= <jose.exposito89@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi AngeloGioacchino,


On Tue, Jun 14, 2022 at 4:15 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 09/06/22 20:09, Prashant Malani ha scritto:
> > From: Pin-Yen Lin <treapking@chromium.org>
> >
> > Add the callback function when the driver receives state
> > changes of the Type-C port. The callback function configures the
> > crosspoint switch of the anx7625 bridge chip, which can change the
> > output pins of the signals according to the port state.
> >
> > Signed-off-by: Pin-Yen Lin <treapking@chromium.org>
> > Signed-off-by: Prashant Malani <pmalani@chromium.org>
> > ---
> >
> > Changes since v2:
> > - No changes.
> >
> >   drivers/gpu/drm/bridge/analogix/anx7625.c | 58 +++++++++++++++++++++++
> >   drivers/gpu/drm/bridge/analogix/anx7625.h | 13 +++++
> >   2 files changed, 71 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > index d41a21103bd3..2c308d12fab2 100644
> > --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> > +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > @@ -15,6 +15,7 @@
> >   #include <linux/regulator/consumer.h>
> >   #include <linux/slab.h>
> >   #include <linux/types.h>
> > +#include <linux/usb/typec_dp.h>
> >   #include <linux/usb/typec_mux.h>
> >   #include <linux/workqueue.h>
> >
> > @@ -2582,9 +2583,66 @@ static void anx7625_runtime_disable(void *data)
> >       pm_runtime_disable(data);
> >   }
> >
> > +static void anx7625_set_crosspoint_switch(struct anx7625_data *ctx,
> > +                                       enum typec_orientation orientation)
> > +{
> > +     if (orientation == TYPEC_ORIENTATION_NORMAL) {
> > +             anx7625_reg_write(ctx, ctx->i2c.tcpc_client, TCPC_SWITCH_0,
> > +                               SW_SEL1_SSRX_RX1 | SW_SEL1_DPTX0_RX2);
> > +             anx7625_reg_write(ctx, ctx->i2c.tcpc_client, TCPC_SWITCH_1,
> > +                               SW_SEL2_SSTX_TX1 | SW_SEL2_DPTX1_TX2);
> > +     } else if (orientation == TYPEC_ORIENTATION_REVERSE) {
> > +             anx7625_reg_write(ctx, ctx->i2c.tcpc_client, TCPC_SWITCH_0,
> > +                               SW_SEL1_SSRX_RX2 | SW_SEL1_DPTX0_RX1);
> > +             anx7625_reg_write(ctx, ctx->i2c.tcpc_client, TCPC_SWITCH_1,
> > +                               SW_SEL2_SSTX_TX2 | SW_SEL2_DPTX1_TX1);
> > +     }
> > +}
> > +
> > +static void anx7625_typec_two_ports_update(struct anx7625_data *ctx)
> > +{
> > +     if (ctx->typec_ports[0].dp_connected && ctx->typec_ports[1].dp_connected)
> > +             /* Both ports available, do nothing to retain the current one. */
> > +             return;
> > +     else if (ctx->typec_ports[0].dp_connected)
> > +             anx7625_set_crosspoint_switch(ctx, TYPEC_ORIENTATION_NORMAL);
> > +     else if (ctx->typec_ports[1].dp_connected)
> > +             anx7625_set_crosspoint_switch(ctx, TYPEC_ORIENTATION_REVERSE);
> > +}
> > +
> >   static int anx7625_typec_mux_set(struct typec_mux_dev *mux,
> >                                struct typec_mux_state *state)
> >   {
> > +     struct anx7625_port_data *data = typec_mux_get_drvdata(mux);
> > +     struct anx7625_data *ctx = data->ctx;
> > +     struct device *dev = &ctx->client->dev;
> > +
> > +     bool old_dp_connected = (ctx->typec_ports[0].dp_connected ||
> > +                              ctx->typec_ports[1].dp_connected);
>
> So the old connection state is "either port0 or port1 are currently connected"...
>
> > +     bool new_dp_connected;
> > +
> > +     if (ctx->num_typec_switches == 1)
> > +             return 0;
> > +
> > +     dev_dbg(dev, "mux_set dp_connected: c0=%d, c1=%d\n",
> > +             ctx->typec_ports[0].dp_connected, ctx->typec_ports[1].dp_connected);
> > +
> > +     data->dp_connected = (state->alt && state->alt->svid == USB_TYPEC_DP_SID &&
> > +                           state->alt->mode == USB_TYPEC_DP_MODE);
> > + > + new_dp_connected = (ctx->typec_ports[0].dp_connected ||
> > +                         ctx->typec_ports[1].dp_connected);
>
> ...and the new connection state is the same as the old one, because I don't see
> anything that could ever modify it in this function's flow, until reaching this
> assignment.

The typec mux driver data (`struct anx7625_port_data *data =
typec_mux_get_drvdata(mux)`) is set to one of the
`ctx->typec_ports[*]` in `anx7625_register_mode_switch` (see patch 6
of this series).

So, the `data->dp_connected = ...` assignment may change the new
connection state.

Best regards,
Pin-yen

>
> > +
> > +     /* dp on, power on first */
> > +     if (!old_dp_connected && new_dp_connected)
> > +             pm_runtime_get_sync(dev);
>
> ...so that will never happen...
>
> > +
> > +     anx7625_typec_two_ports_update(ctx);
> > +
> > +     /* dp off, power off last */
> > +     if (old_dp_connected && !new_dp_connected)
> > +             pm_runtime_put_sync(dev);
>
> ...and same here.
>
> Regards,
> Angelo
