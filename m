Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA9D253125F
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 18:22:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238774AbiEWQRu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 12:17:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238822AbiEWQRd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 12:17:33 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7794C6669C
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 09:17:28 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d22so13533648plr.9
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 09:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gVNiD7vP0L3vCHj36O4S/xcAq9fOvgGBuSkh3JaXOYE=;
        b=RWk6SuCADsteqryMbQGonZW8ugJLR0+nv3OTEZ1uCbffYsTcSuVqdso5JgZ8W3242o
         RN1FsTLhcwAu5xlb4KXNOCeLVDPBlFEevAR7XmLwMy7o4abbmCcpy1la2E6vng3M96Lb
         rouIWSDIYLek4Q6fi7PFuPDA1gpmlfwrFrcfCjibFVZmYrAIvkOFLNoI/Pu1zGwPTUGC
         LkDNIDxF2KZen43mQpFHQje5nePqY9oZyTrmRO319hMgohKDlrd4cDLJ8WeMWQU+Iiz6
         AqnlZ1W5uQqNDCU2igUpxf8UU+14OqFxspscIsOT3oifv6vUIdf3oP5juMLUKVlx1ERD
         Sg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gVNiD7vP0L3vCHj36O4S/xcAq9fOvgGBuSkh3JaXOYE=;
        b=Kv/9nIcJZ2Kr6uqAN5exvjKVHuxANblxf8QeUVC9H1QDvNQ7HwK2YRN1/F90JeH94v
         fxeeW2gyelO4SsJGIhO+NUH4W2hM5ko8qji0v3CcJQLCAxN0/jJO+o15Me6Bquy3rTh2
         ENXhbNu13rgKGcxSEcRyGuVJ1wsvfaQJnQdOiqoAY/YApFT1DgZSqNQMBYvCNuu30ZWd
         JOIUV/gENIPOkHtpytNRIHAQ48Yuh95nNfy35UcfGQ4+lkN3n4EZCFC/wT2rFQrAgBOq
         f/S2IKRLAzK9Op73JdrNowKvN51Y8nSPIHshMxdTu/8RtL32Rbswoq5i21ngUxJAuOBV
         DusQ==
X-Gm-Message-State: AOAM5329Z9QimWu7docc8j0XfaUeurcAIpyOxVwTYODo4YYiLTNuuPby
        GpTX7Vu4FZTOhZJIqIS7ps3+nY/MhJtB0iIo31jHlw==
X-Google-Smtp-Source: ABdhPJyKf5MFfX+ZAnTFHA7p3LFDFK6zdI6kyxKzzlK8T2QiqbCeqyYwWZSaB8q7ekysEndtAEdUUlXRmo7QNdOfVc8=
X-Received: by 2002:a17:90b:380f:b0:1e0:aa6:9e24 with SMTP id
 mq15-20020a17090b380f00b001e00aa69e24mr15998545pjb.232.1653322647652; Mon, 23
 May 2022 09:17:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220523161520.354687-1-robert.foss@linaro.org>
In-Reply-To: <20220523161520.354687-1-robert.foss@linaro.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Mon, 23 May 2022 18:17:16 +0200
Message-ID: <CAG3jFyv=9xPh58Z2BOA-_t2CCPR4TOM43VuhE-_0C2OOaoUHAA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] Revert "drm/bridge: anx7625: Use DPI bus type"
To:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, xji@analogixsemi.com,
        hsinyi@chromium.org, sam@ravnborg.org, maxime@cerno.tech,
        tzimmermann@suse.de, jose.exposito89@gmail.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 23 May 2022 at 18:15, Robert Foss <robert.foss@linaro.org> wrote:
>
> This reverts commit a77c2af0994e24ee36c7ffb6dc852770bdf06fb1.
>
> This patch depends on the patches just aplied to the media tree, and will
> not build without them, which leaves drm-misc-next in a broken state.
> Let's revert the two latter patches until rc1 has been branched,
> and rc1 has been backmerged into drm-misc-next.
>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> index 0fab2aa47c67..e92eb4a40745 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> @@ -1623,14 +1623,14 @@ static int anx7625_parse_dt(struct device *dev,
>
>         anx7625_get_swing_setting(dev, pdata);
>
> -       pdata->is_dpi = 0; /* default dsi mode */
> +       pdata->is_dpi = 1; /* default dpi mode */
>         pdata->mipi_host_node = of_graph_get_remote_node(np, 0, 0);
>         if (!pdata->mipi_host_node) {
>                 DRM_DEV_ERROR(dev, "fail to get internal panel.\n");
>                 return -ENODEV;
>         }
>
> -       bus_type = 0;
> +       bus_type = V4L2_FWNODE_BUS_TYPE_PARALLEL;
>         mipi_lanes = MAX_LANES_SUPPORT;
>         ep0 = of_graph_get_endpoint_by_regs(np, 0, 0);
>         if (ep0) {
> @@ -1641,8 +1641,8 @@ static int anx7625_parse_dt(struct device *dev,
>                 of_node_put(ep0);
>         }
>
> -       if (bus_type == V4L2_FWNODE_BUS_TYPE_DPI) /* bus type is DPI */
> -               pdata->is_dpi = 1;
> +       if (bus_type == V4L2_FWNODE_BUS_TYPE_PARALLEL) /* bus type is Parallel(DSI) */
> +               pdata->is_dpi = 0;
>
>         pdata->mipi_lanes = mipi_lanes;
>         if (pdata->mipi_lanes > MAX_LANES_SUPPORT || pdata->mipi_lanes <= 0)
> --
> 2.34.1
>

Series applied to drm-misc-next.
