Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AAB6493D57
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 16:38:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355797AbiASPiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 10:38:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352437AbiASPiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 10:38:54 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64C63C06161C
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 07:38:54 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id d5so387933pjk.5
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 07:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ca2VVrnwlbvkOz2O67u7fxspTtkKF37Zaj8dip0NjTQ=;
        b=D1jpejDpd9SMLs89An6WE28gBHy6FegBK7DonnMALByufJSIEcSb5p5hKjTI5MLl+4
         iVi34d4vAd5Nc6xAEQk+tXbttiqJpqF6nCwqpIuEpUTyiLzHiGd3XGWYfJnvmAiyWs+h
         ZAJ+N06nw7rDTplqkQnap/3m0bVd3LFKDRasAYV1DjbPbey3+1usvZABiFJKJUeCQI4i
         m+l2ERGlwqscy0w1cWO0EuBZ6/y+S3+X4pAFCn0F3lw1ezfdKJdNhvva0shcKaiwqfSe
         oLbLxHsWF06qBzzDvKZ1j1VZlyckuV3Eyf698jGbB1s6DmBpBA+btW+abEGT+nG9FPML
         iCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ca2VVrnwlbvkOz2O67u7fxspTtkKF37Zaj8dip0NjTQ=;
        b=2vR82Ywku6OpK51QSJRSVkAp6DtgBwd4SXuwSmAnXAowPOa/ac8ZZWhok5RqRVYWc9
         Cv3yHTJh7WRpEOBYtd1ySM1tkzgLYAR62c9xVKsDdiGZ6TBqsBmz22GmYc51o9afzq7z
         1TE21Fc4SybJIJ09+lyNsK9bIqVcn8m/CB68yJptyI89EsOjQoED7OB/DKMNvcOl4eo2
         mpFBx3Orx1Kr3tfam0B2iTCk2w+N51qiepbZkBD3aKl7Tg6Q1iWlF3pwvcNRrZOG9hoc
         2OGh5IB+CWZi82uPEkKFcdoVc8o6FySHOuqZd1doyaZUXIX2pA04R4xvBQUB9c8hULBa
         KBXg==
X-Gm-Message-State: AOAM533r0HLoDArP709GlC8nOrBplJyFp3Yh1ZiK5Pq0EZQI4kpBij2h
        gvJz+ACXsVRfvKHAO4DFPo3BJRJJgS879b0TVAWWqA==
X-Google-Smtp-Source: ABdhPJyckmQwC/qNjWRRotvjJu/qG2q60dVDPU3XeJd75TWb7Jx+auxcDK3Hpfc+XfNGFfDj++T0IN+8JFs6IuRIuqk=
X-Received: by 2002:a17:90b:3e8e:: with SMTP id rj14mr5020906pjb.179.1642606733843;
 Wed, 19 Jan 2022 07:38:53 -0800 (PST)
MIME-Version: 1.0
References: <20220119151751.986185-1-hsinyi@chromium.org>
In-Reply-To: <20220119151751.986185-1-hsinyi@chromium.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Wed, 19 Jan 2022 16:38:42 +0100
Message-ID: <CAG3jFys5_jo68Arot=qYXjk0yL-5Z9-ybTipOTrS1Aa-C4PrNQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] drm/bridge: anx7625: send DPCD command to downstream
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 Jan 2022 at 16:17, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> From: Xin Ji <xji@analogixsemi.com>
>
> Send DPCD command to downstream before anx7625 power down,
> let downstream monitor enter into standby mode.
>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Hsin-Yi: Can you supply a r-b tag to this patch if it looks good to you?

> ---
> v3->v4:
> Use common DP_AUX_NATIVE_READ/WRITE
>
> Previously in:
> https://patchwork.kernel.org/project/dri-devel/patch/1f36f8bf0a48fb2bba17bacec23700e58c1d407d.1641891874.git.xji@analogixsemi.com/
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 42 +++++++++++++++++++----
>  drivers/gpu/drm/bridge/analogix/anx7625.h |  2 --
>  2 files changed, 35 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> index 76662fce4ce61d..17b23940549a42 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> @@ -129,6 +129,23 @@ static int anx7625_reg_write(struct anx7625_data *ctx,
>         return ret;
>  }
>
> +static int anx7625_reg_block_write(struct anx7625_data *ctx,
> +                                  struct i2c_client *client,
> +                                  u8 reg_addr, u8 len, u8 *buf)
> +{
> +       int ret;
> +       struct device *dev = &client->dev;
> +
> +       i2c_access_workaround(ctx, client);
> +
> +       ret = i2c_smbus_write_i2c_block_data(client, reg_addr, len, buf);
> +       if (ret < 0)
> +               dev_err(dev, "write i2c block failed id=%x\n:%x",
> +                       client->addr, reg_addr);
> +
> +       return ret;
> +}
> +
>  static int anx7625_write_or(struct anx7625_data *ctx,
>                             struct i2c_client *client,
>                             u8 offset, u8 mask)
> @@ -214,8 +231,8 @@ static int wait_aux_op_finish(struct anx7625_data *ctx)
>         return 0;
>  }
>
> -static int anx7625_aux_dpcd_read(struct anx7625_data *ctx,
> -                                u32 address, u8 len, u8 *buf)
> +static int anx7625_aux_dpcd_trans(struct anx7625_data *ctx, u8 op,
> +                                 u32 address, u8 len, u8 *buf)
>  {
>         struct device *dev = &ctx->client->dev;
>         int ret;
> @@ -231,8 +248,7 @@ static int anx7625_aux_dpcd_read(struct anx7625_data *ctx,
>         addrm = (address >> 8) & 0xFF;
>         addrh = (address >> 16) & 0xFF;
>
> -       cmd = DPCD_CMD(len, DPCD_READ);
> -       cmd = ((len - 1) << 4) | 0x09;
> +       cmd = DPCD_CMD(len, op);
>
>         /* Set command and length */
>         ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> @@ -246,6 +262,9 @@ static int anx7625_aux_dpcd_read(struct anx7625_data *ctx,
>         ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
>                                  AP_AUX_ADDR_19_16, addrh);
>
> +       if (op == DP_AUX_NATIVE_WRITE)
> +               ret |= anx7625_reg_block_write(ctx, ctx->i2c.rx_p0_client,
> +                                              AP_AUX_BUFF_START, len, buf);
>         /* Enable aux access */
>         ret |= anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
>                                 AP_AUX_CTRL_STATUS, AP_AUX_CTRL_OP_EN);
> @@ -255,14 +274,17 @@ static int anx7625_aux_dpcd_read(struct anx7625_data *ctx,
>                 return -EIO;
>         }
>
> -       usleep_range(2000, 2100);
> -
>         ret = wait_aux_op_finish(ctx);
>         if (ret) {
>                 dev_err(dev, "aux IO error: wait aux op finish.\n");
>                 return ret;
>         }
>
> +       /* Write done */
> +       if (op == DP_AUX_NATIVE_WRITE)
> +               return 0;
> +
> +       /* Read done, read out dpcd data */
>         ret = anx7625_reg_block_read(ctx, ctx->i2c.rx_p0_client,
>                                      AP_AUX_BUFF_START, len, buf);
>         if (ret < 0) {
> @@ -845,7 +867,7 @@ static int anx7625_hdcp_enable(struct anx7625_data *ctx)
>         }
>
>         /* Read downstream capability */
> -       anx7625_aux_dpcd_read(ctx, 0x68028, 1, &bcap);
> +       anx7625_aux_dpcd_trans(ctx, DP_AUX_NATIVE_READ, 0x68028, 1, &bcap);
>         if (!(bcap & 0x01)) {
>                 pr_warn("downstream not support HDCP 1.4, cap(%x).\n", bcap);
>                 return 0;
> @@ -918,6 +940,7 @@ static void anx7625_dp_stop(struct anx7625_data *ctx)
>  {
>         struct device *dev = &ctx->client->dev;
>         int ret;
> +       u8 data;
>
>         DRM_DEV_DEBUG_DRIVER(dev, "stop dp output\n");
>
> @@ -929,6 +952,11 @@ static void anx7625_dp_stop(struct anx7625_data *ctx)
>         ret |= anx7625_write_and(ctx, ctx->i2c.tx_p2_client, 0x08, 0x7f);
>
>         ret |= anx7625_video_mute_control(ctx, 1);
> +
> +       dev_dbg(dev, "notify downstream enter into standby\n");
> +       /* Downstream monitor enter into standby mode */
> +       data = 2;
> +       ret |= anx7625_aux_dpcd_trans(ctx, DP_AUX_NATIVE_WRITE, 0x000600, 1, &data);
>         if (ret < 0)
>                 DRM_DEV_ERROR(dev, "IO error : mute video fail\n");
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.h b/drivers/gpu/drm/bridge/analogix/anx7625.h
> index 56165f5b254c14..64a8ab56529404 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.h
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.h
> @@ -242,8 +242,6 @@
>
>  #define AP_AUX_COMMAND 0x27  /* com+len */
>  #define LENGTH_SHIFT   4
> -#define DPCD_READ      0x09
> -#define DPCD_WRITE     0x08
>  #define DPCD_CMD(len, cmd)     ((((len) - 1) << LENGTH_SHIFT) | (cmd))
>
>  /* Bit 0&1: 3D video structure */
> --
> 2.34.1.703.g22d0c6ccf7-goog
>
