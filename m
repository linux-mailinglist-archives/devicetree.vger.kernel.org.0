Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBD6E32F58D
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 22:52:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbhCEVvv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 16:51:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbhCEVvt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 16:51:49 -0500
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5146FC06175F
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 13:51:49 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4DshJy076tz1rwtx;
        Fri,  5 Mar 2021 22:51:46 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4DshJx5sTLz1qr4f;
        Fri,  5 Mar 2021 22:51:45 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id 6X9gwMVB49vc; Fri,  5 Mar 2021 22:51:43 +0100 (CET)
X-Auth-Info: qhpkLmOj9S85Ko1ZTaGma9HfMQrER1CXafE6q9cZuKo=
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Fri,  5 Mar 2021 22:51:43 +0100 (CET)
Subject: Re: [PATCH v3 2/2] drm: bridge: Add TI SN65DSI83/84/85 DSI to LVDS
 bridge
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
References: <20210214174453.104616-1-jagan@amarulasolutions.com>
 <20210214174453.104616-2-jagan@amarulasolutions.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <3fe11764-7eee-50ec-2da2-cbf24b268016@denx.de>
Date:   Fri, 5 Mar 2021 22:51:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210214174453.104616-2-jagan@amarulasolutions.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/14/21 6:44 PM, Jagan Teki wrote:

[...]

> +static const struct regmap_config sn65dsi_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +	.max_register = SN65DSI_CHA_ERR,
> +	.name = "sn65dsi",
> +	.cache_type = REGCACHE_RBTREE,
> +};

You might want to look at the driver I posted one more time, it defines 
the regmap precisely and limits each register access, see:
[PATCH 2/2] drm/bridge: ti-sn65dsi83: Add TI SN65DSI83 driver
that way it can be dumped via debugfs and the regmap does not cache 
registers which do not exist, like it does here.

[...]

> +static int sn65dsi_get_clk_range(int min, int max, unsigned long clock,
> +				 unsigned long start, unsigned long diff)
> +{
> +	unsigned long next;
> +	int i;
> +
> +	for (i = min; i <= max; i++) {
> +		next = start + diff;
> +		if (start <= clock && clock < next)
> +			return i;
> +
> +		start += diff;
> +	}
> +
> +	return -EINVAL;
> +}

The clock rates can be calculated in linear time, see the driver above, 
it is implemented there.

> +static void sn65dsi_enable(struct drm_bridge *bridge)
> +{
> +	struct sn65dsi *sn = bridge_to_sn65dsi(bridge);
> +	struct drm_display_mode *mode = bridge_to_mode(bridge);
> +	int bpp = mipi_dsi_pixel_format_to_bpp(sn->dsi->format);
> +	unsigned int lanes = sn->dsi->lanes;
> +	unsigned int pixel_clk = mode->clock * 1000;
> +	unsigned int dsi_clk = pixel_clk * bpp / (lanes * 2);
> +	unsigned int val;
> +
> +	/* reset SOFT_RESET bit */
> +	regmap_write(sn->regmap, SN65DSI_SOFT_RESET, 0x0);
> +
> +	msleep(10);

Why is there msleep(10) all over the place ?
I don't see such a requirement listed anywhere in the DSI83 datasheet.

> +	/* reset PLL_EN bit */
> +	regmap_write(sn->regmap, SN65DSI_CLK_PLL, 0x0);
> +
> +	msleep(10);

Here too.

[...]

You also want to check the feedback on the driver I posted, it deals 
with polling for the PLL to be ready, which seems to be missing here. 
That should remove most of the msleep() calls.
