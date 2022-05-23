Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF4AD5312A5
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 18:22:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238421AbiEWQGQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 12:06:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238432AbiEWQGO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 12:06:14 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8547215714
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 09:06:11 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id h186so14070054pgc.3
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 09:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=e7s4FvKYqhrIHrfJIpxpjB/w24p/UdFVYWYWqUaWKCk=;
        b=u+/2mCLf6J1KoFIelxvEXFdSh+jzSICBISVLI//JWNo14YyvAtMd+uX8X8iD/e1aoa
         fQXmAEVpeFJuFcRR8TmCaETYwyz92alhGttYY10gtz6DFZUKDEAvsbuiQ8PLIQlm7Apf
         Puy2AmshCtrB/5CF9y8MnlDJRHQOm+gQo87KIkWvBTYonePUjdkXmp4fBuQqEgK1hDuW
         ZopWDEGPHj9aBmoCu+NsIBqFxoA2ohlyKykn8L2/zrMxCMh6UE55yEg4VqGU0uTCe8HV
         ZNXsRNK8UnxkJYnjh6VxjVAooHu3tCwDlw1g+RIwhqwh9q/qP1SR1rfjnOpsDm2E8S/i
         QaFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=e7s4FvKYqhrIHrfJIpxpjB/w24p/UdFVYWYWqUaWKCk=;
        b=rF7SZI9Jclbxw7Xmspww0j0zjBtjErnWrgLJFEuNHGQGUH84IJXXq56WgHkFB/hrB7
         aeEEZDfpNiuPD+0PAl7jl7L1vK/91qstNNliUNEVlPkMLUVUoI+izo1OKYlyP7L/UiVD
         hxv/kYtMNYnsFfEQ8hc/dErcu4uZbY3hzUX4y6ss4HlcfWR8Gz8KXGB0IlIn6imEGC10
         84dMKEwW+G2xNwNV9iKldVVbA4S2C9Tn0LjSKsoiKFjCzBWX+hjOsWmDp+c7o29ArlXM
         nt1Pf2hoKBSBqMd/jJrci47Uoeiv/d+yWXF7NMkleGD4TQTjtoAIa39s8mjz5Dz2qDEM
         NbIg==
X-Gm-Message-State: AOAM530SEZx3lVhR8byHeX4aCfMa9M786ex5wVPGQ0zaF0n1FpSUhAcd
        NyU5ObKVJJgPgxES34+fKneEcdEytbH+i+OGHKEXHQ==
X-Google-Smtp-Source: ABdhPJxYg9Yh2GQWHiZaU+6ZG0i119MD2rlka3d2WGblGGuHQ6wLbqOifgvk6vMY4clWHQGKswYOx7D+Pjege3lot0g=
X-Received: by 2002:a63:6901:0:b0:3f9:caa5:cffc with SMTP id
 e1-20020a636901000000b003f9caa5cffcmr13163645pgc.324.1653321971054; Mon, 23
 May 2022 09:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220523084615.13510-1-robert.foss@linaro.org>
 <CAG3jFytkFcmYjj6AHye3imsTDyP1LxHQvAzjswuRBsVVHRTnKg@mail.gmail.com> <CAG3jFytGDm29GVAQ5bs7XQ+hMDABd7btggFGN2pASBEzRPE50A@mail.gmail.com>
In-Reply-To: <CAG3jFytGDm29GVAQ5bs7XQ+hMDABd7btggFGN2pASBEzRPE50A@mail.gmail.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Mon, 23 May 2022 18:05:59 +0200
Message-ID: <CAG3jFyuRXLp3iS53rhXc9_-mT18kGcxNDHAA6UjMk7y_p_mwkQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] Revert "drm/bridge: anx7625: Use DPI bus type"
To:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, xji@analogixsemi.com,
        hsinyi@chromium.org, sam@ravnborg.org, tzimmermann@suse.de,
        maxime@cerno.tech, jose.exposito89@gmail.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 23 May 2022 at 14:54, Robert Foss <robert.foss@linaro.org> wrote:
>
> These two patches need to be reverted since they were part (3/4 & 4/4)
> of a series, that was partially (1/4 + 2/4) on the linux-media tree.
> These two patches depend on the patches in the media tree, and will
> not build without them, which leaves linux-drm-misc-next in a broken
> state. Let's revert the two latter patches until rc1 has been branched
> and the dependency wont cause issues any more.
>
> On Mon, 23 May 2022 at 14:50, Robert Foss <robert.foss@linaro.org> wrote:
> >
> > On Mon, 23 May 2022 at 10:46, Robert Foss <robert.foss@linaro.org> wrote:
> > >
> > > This reverts commit a77c2af0994e24ee36c7ffb6dc852770bdf06fb1.
> > > ---
> > >  drivers/gpu/drm/bridge/analogix/anx7625.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > > index 01f46d9189c1..53a5da6c49dd 100644
> > > --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> > > +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > > @@ -1623,14 +1623,14 @@ static int anx7625_parse_dt(struct device *dev,
> > >
> > >         anx7625_get_swing_setting(dev, pdata);
> > >
> > > -       pdata->is_dpi = 0; /* default dsi mode */
> > > +       pdata->is_dpi = 1; /* default dpi mode */
> > >         pdata->mipi_host_node = of_graph_get_remote_node(np, 0, 0);
> > >         if (!pdata->mipi_host_node) {
> > >                 DRM_DEV_ERROR(dev, "fail to get internal panel.\n");
> > >                 return -ENODEV;
> > >         }
> > >
> > > -       bus_type = 0;
> > > +       bus_type = V4L2_FWNODE_BUS_TYPE_PARALLEL;
> > >         mipi_lanes = MAX_LANES_SUPPORT;
> > >         ep0 = of_graph_get_endpoint_by_regs(np, 0, 0);
> > >         if (ep0) {
> > > @@ -1640,8 +1640,8 @@ static int anx7625_parse_dt(struct device *dev,
> > >                 mipi_lanes = of_property_count_u32_elems(ep0, "data-lanes");
> > >         }
> > >
> > > -       if (bus_type == V4L2_FWNODE_BUS_TYPE_DPI) /* bus type is DPI */
> > > -               pdata->is_dpi = 1;
> > > +       if (bus_type == V4L2_FWNODE_BUS_TYPE_PARALLEL) /* bus type is Parallel(DSI) */
> > > +               pdata->is_dpi = 0;
> > >
> > >         pdata->mipi_lanes = mipi_lanes;
> > >         if (pdata->mipi_lanes > MAX_LANES_SUPPORT || pdata->mipi_lanes <= 0)
> > > --
> > > 2.34.1
> > >
> >
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
