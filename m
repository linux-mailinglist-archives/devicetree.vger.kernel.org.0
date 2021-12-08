Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FB0F46D911
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 17:59:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbhLHRCw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 12:02:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231438AbhLHRCv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 12:02:51 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDF52C061746
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 08:59:19 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id t5so10730161edd.0
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 08:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w86H3BBpNfyHLG7QWUfndDqHv0Jg3L2Gk9QWzHF4RqE=;
        b=CCZnHcYHpc/0wDV0aTywVVs1kp8B3AotY9AmekQDD9fbzwK/ZrLSNhD6lIvFs/4g9G
         QGhukUg9nwwFjC6Vb+PvMjhrvmrWYHInpvC6AOOBBjOxnqvsFkkdJf5PXjfSgLiUDmZZ
         r7z5raDJXf3GV7ALUNtfl/ZX5T/U0/6U3AAVPWC1uFkXvRnRB3Dctk6Hl9R6gqF1OIYt
         zjpMA2NHAKhWEcHNaM5IMVG4Kqg9KnhS8PNdeTgse9X8T/byPHgXC3IzHBuwnWPUjUEx
         5P3sGVrd04v/+Uusd1xVzqYasjVJcVN+XSMkMM09XlboRFvWLTnBHmV7RUty22+RA8gX
         N2og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w86H3BBpNfyHLG7QWUfndDqHv0Jg3L2Gk9QWzHF4RqE=;
        b=obde0z2KEphH5IhbFOcxB8senH4+rI+o+a1AMe7XCx0YmzGe7jK90/l7Tx8EdaqPhx
         576/OED6NsxbDVCN6Hv5qeHP/lWENfuSh2fRs53pbWWVLv6Yw4RQylCiVVqxsETnlu8y
         zTHnRS1c3Tp7IcrJbGd07tyVbQZKE7mnn/4vzDcyrorHDDoETHqqSw7tkNIwFXpAxJtz
         DY4hlnCexhZ+lTQfD3HMgNKmjDMdIAhNp8AZoATU4c5c5zNXOPyOdcCXdJHDcILBYNlD
         02bSUyAxSlY6SjQ6i3LQbqfdDC99OnmxO1w7HOAPCffcDj4fvrkr9PJlunFMx5ylo+gS
         i8uQ==
X-Gm-Message-State: AOAM531R0oO0OvpBKQgLjofVDBNj525WfEnMYH1JvK32fw6GEe/sDaOx
        nOv5e8rp4XU9YT13IOWMsIk=
X-Google-Smtp-Source: ABdhPJzfUjXv8dBljCfZuAvNNB1SANokJnsfTQ+rvo88d1D93aZf8zhiXI2IQptVGUCSkUvQjdyFIQ==
X-Received: by 2002:a17:906:538d:: with SMTP id g13mr8946894ejo.62.1638982758085;
        Wed, 08 Dec 2021 08:59:18 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id i10sm1850558ejw.48.2021.12.08.08.59.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Dec 2021 08:59:17 -0800 (PST)
Subject: Re: [PATCH 17/18] drm: rockchip: Add VOP2 driver
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-18-s.hauer@pengutronix.de>
From:   Johan Jonker <jbx6244@gmail.com>
Message-ID: <bd576949-a42b-9750-fe97-b9b567c7ea75@gmail.com>
Date:   Wed, 8 Dec 2021 17:59:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211208151230.3695378-18-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 12/8/21 4:12 PM, Sascha Hauer wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> It replaces the VOP unit found in the older Rockchip SoCs.
> 
> This driver has been derived from the downstream Rockchip Kernel and
> heavily modified:
> 
> - All nonstandard DRM properties have been removed
> - dropped struct vop2_plane_state and pass around less data between
>   functions
> - Dropped all DRM_FORMAT_* not known on upstream
> - rework register access to get rid of excessively used macros
> - Drop all waiting for framesyncs
> 
> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> board. Overlay support is tested with the modetest utility. AFBC support
> on the cluster windows is tested with weston-simple-dmabuf-egl on
> weston using the (yet to be upstreamed) panfrost driver support.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

[..]

> +
> +static const struct of_device_id vop2_dt_match[] = {
> +	{
> +		.compatible = "rockchip,rk3568-vop",
> +		.data = &rk3568_vop
> +	}, {

> +		.compatible = "rockchip,rk3568-vop",

Maybe use:
.compatible = "rockchip,rk3566-vop",

> +		.data = &rk3566_vop
> +	}, {
> +	},

Maybe sort this list alphabetical based on compatible in case later more
SoCs are added.

rk3566
rk3568

===

The structure layout size above could be reduced for if we get more
compatible strings additions.

Example vop1:

static const struct of_device_id vop_driver_dt_match[] = {
	{ .compatible = "rockchip,rk3036-vop",
	  .data = &rk3036_vop },
	{ .compatible = "rockchip,rk3126-vop",
	  .data = &rk3126_vop },
	{ .compatible = "rockchip,px30-vop-big",
	  .data = &px30_vop_big },
	{ .compatible = "rockchip,px30-vop-lit",
	  .data = &px30_vop_lit },
	{ .compatible = "rockchip,rk3066-vop",
	  .data = &rk3066_vop },
	{ .compatible = "rockchip,rk3188-vop",
	  .data = &rk3188_vop },
	{ .compatible = "rockchip,rk3288-vop",
	  .data = &rk3288_vop },
	{ .compatible = "rockchip,rk3368-vop",
	  .data = &rk3368_vop },
	{ .compatible = "rockchip,rk3366-vop",
	  .data = &rk3366_vop },
	{ .compatible = "rockchip,rk3399-vop-big",
	  .data = &rk3399_vop_big },
	{ .compatible = "rockchip,rk3399-vop-lit",
	  .data = &rk3399_vop_lit },
	{ .compatible = "rockchip,rk3228-vop",
	  .data = &rk3228_vop },
	{ .compatible = "rockchip,rk3328-vop",
	  .data = &rk3328_vop },
	{},
};

> +};
> +MODULE_DEVICE_TABLE(of, vop2_dt_match);
> +
> +static int vop2_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +
> +	return component_add(dev, &vop2_component_ops);
> +}
> +
> +static int vop2_remove(struct platform_device *pdev)
> +{
> +	component_del(&pdev->dev, &vop2_component_ops);
> +
> +	return 0;
> +}
> +
> +struct platform_driver vop2_platform_driver = {
> +	.probe = vop2_probe,
> +	.remove = vop2_remove,
> +	.driver = {
> +		.name = "rockchip-vop2",
> +		.of_match_table = of_match_ptr(vop2_dt_match),
> +	},
> +};
> 
