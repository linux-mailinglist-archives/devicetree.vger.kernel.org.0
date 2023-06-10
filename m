Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECBAA72AE8C
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 22:09:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231397AbjFJUJU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 16:09:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231128AbjFJUJT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 16:09:19 -0400
Received: from mailrelay1-1.pub.mailoutpod2-cph3.one.com (mailrelay1-1.pub.mailoutpod2-cph3.one.com [IPv6:2a02:2350:5:400::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F6A5358E
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 13:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=yLyqVuPNmYn560LJ8hNcn/MBjZm/96KJyYeJkyUOKJU=;
        b=rDPWQ4vkfh7j742s1jK1YRPQA9J/Dx7Jn8U6Qk+Pk1RKqNYVehCSch+Y/VO1dDx/PvVMW2HyZlK8p
         5m8yxxbK4kleJVnJCmePuyFryO0AUhOsI4RlMrcI4FJVR67xsB+wcvOIdXkh1FrdlsfVo4VbPx/Gm7
         LP8nwgNhdlV61gCecB9KWPaSJXq1sqFlxGWdCySDUWMF/+IydctFvXtpdnzlqc+X0akGdSquGopnwg
         NwOn255Nijq5x54xK0lNtK+jWz3jCAjG12EfDhjHCkTUrLPkHY3i+j/cY9n+2PJho/PVIAx8p0w8q3
         I+8Ne268MEG/LLA3er89qsqnSrxIzjw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=yLyqVuPNmYn560LJ8hNcn/MBjZm/96KJyYeJkyUOKJU=;
        b=LQ03XMKS5OMonju0JFw74Q6a5TfmnbplC+138ngBzVsXAecDC3o65mM35mZBIcpVr1howYsXHUYuI
         w9rY7SECg==
X-HalOne-ID: ac592a42-07ca-11ee-b3b0-99461c6a3fe8
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
        by mailrelay1 (Halon) with ESMTPSA
        id ac592a42-07ca-11ee-b3b0-99461c6a3fe8;
        Sat, 10 Jun 2023 20:09:16 +0000 (UTC)
Date:   Sat, 10 Jun 2023 22:09:15 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 2/7] drm/panel: sitronix-st7789v: Use 9 bits per spi word
 by default
Message-ID: <20230610200915.GC1041001@ravnborg.org>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
 <20230609145951.853533-3-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230609145951.853533-3-miquel.raynal@bootlin.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 09, 2023 at 04:59:46PM +0200, Miquel Raynal wrote:
> The Sitronix controller expects 9-bit words, provide this as default at
> probe time rather than specifying this in each and every access.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/gpu/drm/panel/panel-sitronix-st7789v.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> index c67b9adb157f..e9ca7ebb458a 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> @@ -138,7 +138,6 @@ static int st7789v_spi_write(struct st7789v *ctx, enum st7789v_prefix prefix,
>  	spi_message_init(&msg);
>  
>  	xfer.tx_buf = &txbuf;
> -	xfer.bits_per_word = 9;
>  	xfer.len = sizeof(txbuf);
>  
>  	spi_message_add_tail(&xfer, &msg);
> @@ -365,6 +364,13 @@ static int st7789v_probe(struct spi_device *spi)
>  	spi_set_drvdata(spi, ctx);
>  	ctx->spi = spi;
>  
> +	spi->bits_per_word = 9;
> +	ret = spi_setup(spi);
> +	if (ret < 0) {
> +		dev_err(&spi->dev, "spi_setup failed: %d\n", ret);
> +		return ret;
> +	}

Use dev_err_probe().
With this change:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

> +
>  	drm_panel_init(&ctx->panel, &spi->dev, &st7789v_drm_funcs,
>  		       DRM_MODE_CONNECTOR_DPI);
>  
> -- 
> 2.34.1
