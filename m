Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E940768727
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 20:44:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229437AbjG3SoE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 14:44:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbjG3SoD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 14:44:03 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ED0D10EB
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 11:44:02 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-58451ecf223so40545887b3.1
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 11:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1690742641; x=1691347441;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mV4wFSEyjoEY9pYdwsrYWeY+hPWaapNTWL+un8R4OrA=;
        b=jG4aTcAoSTtL0EJHFxlyogO9Q4sljHMv1PMWAp/NnG7+dBnvUNI/rRJi1bL56pkLbe
         VD0wqhGdjcK84qcFFLfzpF+ZhyBVM+FjirfISTqJboWspkM/naqp+3UO1Kock92Epjbm
         S0W1aGipCh44lhM6wDSRvJLnQjTtZRnHoY4TE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690742641; x=1691347441;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mV4wFSEyjoEY9pYdwsrYWeY+hPWaapNTWL+un8R4OrA=;
        b=brNyvlWVAiHRqYu9IB3dLnBL/Bb7vdr/M/hgHn1mx53XIrx0mHychKzJ/xngurCLFn
         dYco105Osrl89J0g6lflqmeGVd0Aqpy0siTNx9JNl1BPqvwX9v53JjHZwQoU5wrzBo4q
         fvB8q6Rk79EWO48FYO9MxxOQU7Z1Zu0EKdOdyjpBSmW93WiJVkPC6kpRnvy+49OGHSsH
         g4WBuloLfOTP310f+e8Of/M0En3m4xCXRzzVUix2eDxsuFiBNBEcLGIQgIfk/koBR9DP
         rS7YR5g0EDu5LULy58iDRqiBNsFI9K7dHtvPw4YGt5E5PX0lL6WzLw9hmg6ksZEwgddP
         RmzQ==
X-Gm-Message-State: ABy/qLYFxUGZ2TIFjPc32cE6p6nCN2eI6GaKF1gLcU3mXN9eT4bkpZCj
        kIvW1HqB/BXmsb/rxesJyUFHbter3oFapbfnB4MlfQ==
X-Google-Smtp-Source: APBJJlGuUwZcoYHVfSP7Pg9L7UJYwZqgSYNijNwHqZ3gvdLFBu+pcGziBVKxeLz2wlFEX1rjZg3cbxGNRI+AzUjmWyU=
X-Received: by 2002:a0d:d9c9:0:b0:586:9ab:5cc with SMTP id b192-20020a0dd9c9000000b0058609ab05ccmr4114704ywe.42.1690742641568;
 Sun, 30 Jul 2023 11:44:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230720071430.259892-1-victor.liu@nxp.com> <20230720071430.259892-3-victor.liu@nxp.com>
In-Reply-To: <20230720071430.259892-3-victor.liu@nxp.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Mon, 31 Jul 2023 00:13:49 +0530
Message-ID: <CAMty3ZABMfRPiXM-N0d=AK8+CJZgBqd4zUeFz5-R8GY3fQQRrA@mail.gmail.com>
Subject: Re: [PATCH v2 2/9] drm/bridge: synopsys: dw-mipi-dsi: Add input bus
 format negotiation support
To:     Ying Liu <victor.liu@nxp.com>
Cc:     "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
        "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
        "rfoss@kernel.org" <rfoss@kernel.org>,
        "Laurent.pinchart@ideasonboard.com" 
        <Laurent.pinchart@ideasonboard.com>,
        "jonas@kwiboo.se" <jonas@kwiboo.se>,
        "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
        "airlied@gmail.com" <airlied@gmail.com>,
        "daniel@ffwll.ch" <daniel@ffwll.ch>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
        "sam@ravnborg.org" <sam@ravnborg.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 20, 2023 at 12:40=E2=80=AFPM Ying Liu <victor.liu@nxp.com> wrot=
e:
>
> Introduce ->get_input_bus_fmts() callback to struct dw_mipi_dsi_plat_data
> so that vendor drivers can implement specific methods to get input bus
> formats for Synopsys DW MIPI DSI.
>
> While at it, implement a generic callback for ->atomic_get_input_bus_fmts=
(),
> where we try to get the input bus formats through pdata->get_input_bus_fm=
ts()
> first.  If it's unavailable, fall back to the only format - MEDIA_BUS_FMT=
_FIXED,
> which matches the default behavior if ->atomic_get_input_bus_fmts() is no=
t
> implemented as ->atomic_get_input_bus_fmts()'s kerneldoc indicates.
>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v1->v2:
> * No change.
>
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 30 +++++++++++++++++++
>  include/drm/bridge/dw_mipi_dsi.h              | 11 +++++++
>  2 files changed, 41 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/=
drm/bridge/synopsys/dw-mipi-dsi.c
> index 57eae0fdd970..8580b8a97fb1 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -12,6 +12,7 @@
>  #include <linux/component.h>
>  #include <linux/debugfs.h>
>  #include <linux/iopoll.h>
> +#include <linux/media-bus-format.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
>  #include <linux/pm_runtime.h>
> @@ -536,6 +537,34 @@ static const struct mipi_dsi_host_ops dw_mipi_dsi_ho=
st_ops =3D {
>         .transfer =3D dw_mipi_dsi_host_transfer,
>  };
>
> +static u32 *
> +dw_mipi_dsi_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
> +                                            struct drm_bridge_state *bri=
dge_state,
> +                                            struct drm_crtc_state *crtc_=
state,
> +                                            struct drm_connector_state *=
conn_state,
> +                                            u32 output_fmt,
> +                                            unsigned int *num_input_fmts=
)
> +{
> +       struct dw_mipi_dsi *dsi =3D bridge_to_dsi(bridge);
> +       const struct dw_mipi_dsi_plat_data *pdata =3D dsi->plat_data;
> +       u32 *input_fmts;
> +
> +       if (pdata->get_input_bus_fmts)
> +               return pdata->get_input_bus_fmts(pdata->priv_data,
> +                                                bridge, bridge_state,
> +                                                crtc_state, conn_state,
> +                                                output_fmt, num_input_fm=
ts);

Why do we need platform-controlled bus formats? The supported bridge
formats are common across all platforms and it is specific to the list
of formats supported by DW-MIPI DSI. isn't it?

Thanks,
Jagan.
