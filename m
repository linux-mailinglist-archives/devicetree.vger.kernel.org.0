Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E91B64DA14
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 12:10:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230133AbiLOLKn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 06:10:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229829AbiLOLKf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 06:10:35 -0500
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CCF3240BD
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 03:10:33 -0800 (PST)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-1443a16b71cso20450396fac.13
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 03:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aRto0bZxVVcjkpJwpAaqpQJPNIkhGaRdbAHEq1bO1W4=;
        b=tguM4k0ZVIq7MU6CANzSDbUbT8H5e9aNxOzp+qDUd5q5zsp2P5k8iBa2SMlTOQTeLe
         mpIqpdPvPWzmZThOeMVVwSBI9D0/2V0qDtCb0JQx93xw1j5pR7h4M1zGL8s0P46Ha+Pp
         1KAN8cqTnT9RczsO38nIDF+1OxIGOYEhUqZRZ2batQgmoRxrkxplV63iwj54NthqLVxh
         Zbq002RWJpPzm6Ebgc0UXX9K1E+i5l6VoieK+aLzbertOiRlt0Cq9h84H4SNmR772p1z
         47Luk6LdxO2NnAwvGcegP2/gNmqKwyshy/pmdZQZWzFGXPEovVmVxcmcMcLjGsfJ+jHY
         7GOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aRto0bZxVVcjkpJwpAaqpQJPNIkhGaRdbAHEq1bO1W4=;
        b=kj/s9knU8/WHl4dJrsOpK+IkhAy+0UQDSmRrkSP8Osw3O+L8GgIj0WRZbaosJihPt/
         Lcs7jGk/2JCLGf9sL05DRYnZ0HSpUGf37GOgqjgcDOAHez9TikXPdOFvlKxRl1nQLO3Q
         aSEEmtgrElCwGDLBXhMjEvDiMAjtmT9pFkf8HMq+a8qnzU7JWlVepGVQ8zjR1P+yRM+m
         LfQ938jqJ1HCRE08uegkyJX+1CI7VrAH5niYiLj/Yq2trrVgrVzpCHtrp1WjXANXRCOk
         zKPvJuP8JdlKpBRGNXyOl44e0jtJ9rFfDN1CZAiQraLuQ20KBQqA6Dw+J0Fkk6siO9EL
         /1hg==
X-Gm-Message-State: AFqh2kp5lKGM6Nm+AYQR5CPLgB/SIGl0rBozLjKnlP9Pa7oya6KMlDO3
        esmA9aAfwFYavFnhPgkhRreOtB1b1v78Ak5GULs3CU/GJfQRCw==
X-Google-Smtp-Source: AA0mqf68Sk+5tLWaXbcHhE/bSQNqfhEV2ngdiH+3BTGVVdHM1vDmMlOvk1gMHnYUv8mmj005k0gjGg/4n7TupCvCbD0=
X-Received: by 2002:a05:6870:2393:b0:144:b04d:1669 with SMTP id
 e19-20020a056870239300b00144b04d1669mr182044oap.155.1671102632452; Thu, 15
 Dec 2022 03:10:32 -0800 (PST)
MIME-Version: 1.0
References: <20221214125821.12489-1-paul@crapouillou.net> <20221214125821.12489-5-paul@crapouillou.net>
In-Reply-To: <20221214125821.12489-5-paul@crapouillou.net>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Thu, 15 Dec 2022 12:10:21 +0100
Message-ID: <CAG3jFyubct-L6vr3G0r+1+DX7D43raG-Rgx2-xi+JP7bVPesNQ@mail.gmail.com>
Subject: Re: [PATCH 04/10] drm: bridge: it66121: Write AVI infoframe with regmap_bulk_write()
To:     Paul Cercueil <paul@crapouillou.net>
Cc:     Phong LE <ple@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        list@opendingux.net, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 14 Dec 2022 at 13:58, Paul Cercueil <paul@crapouillou.net> wrote:
>
> Since all AVI infoframe registers are contiguous in the address space,
> the AVI infoframe can be written in one go with regmap_bulk_write().
>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  drivers/gpu/drm/bridge/ite-it66121.c | 27 +++++++--------------------
>  1 file changed, 7 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/ite-it66121.c b/drivers/gpu/drm/bridge/ite-it66121.c
> index 12222840df30..0a4fdfd7af44 100644
> --- a/drivers/gpu/drm/bridge/ite-it66121.c
> +++ b/drivers/gpu/drm/bridge/ite-it66121.c
> @@ -773,24 +773,9 @@ void it66121_bridge_mode_set(struct drm_bridge *bridge,
>                              const struct drm_display_mode *mode,
>                              const struct drm_display_mode *adjusted_mode)
>  {
> -       int ret, i;
>         u8 buf[HDMI_INFOFRAME_SIZE(AVI)];
>         struct it66121_ctx *ctx = container_of(bridge, struct it66121_ctx, bridge);
> -       const u16 aviinfo_reg[HDMI_AVI_INFOFRAME_SIZE] = {
> -               IT66121_AVIINFO_DB1_REG,
> -               IT66121_AVIINFO_DB2_REG,
> -               IT66121_AVIINFO_DB3_REG,
> -               IT66121_AVIINFO_DB4_REG,
> -               IT66121_AVIINFO_DB5_REG,
> -               IT66121_AVIINFO_DB6_REG,
> -               IT66121_AVIINFO_DB7_REG,
> -               IT66121_AVIINFO_DB8_REG,
> -               IT66121_AVIINFO_DB9_REG,
> -               IT66121_AVIINFO_DB10_REG,
> -               IT66121_AVIINFO_DB11_REG,
> -               IT66121_AVIINFO_DB12_REG,
> -               IT66121_AVIINFO_DB13_REG
> -       };
> +       int ret;
>
>         mutex_lock(&ctx->lock);
>
> @@ -810,10 +795,12 @@ void it66121_bridge_mode_set(struct drm_bridge *bridge,
>         }
>
>         /* Write new AVI infoframe packet */
> -       for (i = 0; i < HDMI_AVI_INFOFRAME_SIZE; i++) {
> -               if (regmap_write(ctx->regmap, aviinfo_reg[i], buf[i + HDMI_INFOFRAME_HEADER_SIZE]))
> -                       goto unlock;
> -       }
> +       ret = regmap_bulk_write(ctx->regmap, IT66121_AVIINFO_DB1_REG,
> +                               &buf[HDMI_INFOFRAME_HEADER_SIZE],
> +                               HDMI_AVI_INFOFRAME_SIZE);
> +       if (ret)
> +               goto unlock;
> +
>         if (regmap_write(ctx->regmap, IT66121_AVIINFO_CSUM_REG, buf[3]))
>                 goto unlock;
>
> --
> 2.35.1
>

Reviewed-by: Robert Foss <robert.foss@linaro.org>
