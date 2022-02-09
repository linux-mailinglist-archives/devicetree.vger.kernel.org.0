Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9573D4AF0E0
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 13:08:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231288AbiBIMH2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 07:07:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232758AbiBIMGJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 07:06:09 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A31BDC094CB1
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 03:05:29 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nHjsD-0008UB-T1; Wed, 09 Feb 2022 11:06:53 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Douglas Anderson <dianders@chromium.org>,
        Yakir Yang <ykk@rock-chips.com>
Subject: Re: [PATCH v5 12/23] drm/rockchip: dw_hdmi: Use auto-generated tables
Date:   Wed, 09 Feb 2022 11:06:52 +0100
Message-ID: <2784361.GuOZkLzhrA@diego>
In-Reply-To: <20220209095350.2104049-13-s.hauer@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de> <20220209095350.2104049-13-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, 9. Februar 2022, 10:53:39 CET schrieb Sascha Hauer:
> From: Douglas Anderson <dianders@chromium.org>
> 
> The previous tables for mpll_cfg and curr_ctrl were created using the
> 20-pages of example settings provided by the PHY vendor.  Those
> example settings weren't particularly dense, so there were places
> where we were guessing what the settings would be for 10-bit and
> 12-bit (not that we use those anyway).  It was also always a lot of
> extra work every time we wanted to add a new clock rate since we had
> to cross-reference several tables.
> 
> In <https://crrev.com/c/285855> I've gone through the work to figure
> out how to generate this table automatically.  Let's now use the
> automatically generated table and then we'll never need to look at it
> again.
> 
> We only support 8-bit mode right now and only support a small number
> of clock rates and and I've verified that the only 8-bit rate that was
> affected was 148.5.  That mode appears to have been wrong in the old
> table.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Yakir Yang <ykk@rock-chips.com>

missing Signed-off-by: Sascha Hauer <...>

> ---
> 
> Notes:
>     Changes since v3:
>     - new patch
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 130 +++++++++++---------
>  1 file changed, 69 insertions(+), 61 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index b9928e622adf..160107b333ef 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -87,80 +87,88 @@ struct rockchip_hdmi {
>  
>  static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
>  	{
> -		27000000, {
> -			{ 0x00b3, 0x0000},
> -			{ 0x2153, 0x0000},
> -			{ 0x40f3, 0x0000}
> +		30666000, {
> +			{ 0x00b3, 0x0000 },
> +			{ 0x2153, 0x0000 },
> +			{ 0x40f3, 0x0000 },
>  		},
> -	}, {
> -		36000000, {
> -			{ 0x00b3, 0x0000},
> -			{ 0x2153, 0x0000},
> -			{ 0x40f3, 0x0000}
> +	},  {
> +		36800000, {
> +			{ 0x00b3, 0x0000 },
> +			{ 0x2153, 0x0000 },
> +			{ 0x40a2, 0x0001 },
>  		},
> -	}, {
> -		40000000, {
> -			{ 0x00b3, 0x0000},
> -			{ 0x2153, 0x0000},
> -			{ 0x40f3, 0x0000}
> +	},  {
> +		46000000, {
> +			{ 0x00b3, 0x0000 },
> +			{ 0x2142, 0x0001 },
> +			{ 0x40a2, 0x0001 },
>  		},
> -	}, {
> -		54000000, {
> -			{ 0x0072, 0x0001},
> -			{ 0x2142, 0x0001},
> -			{ 0x40a2, 0x0001},
> +	},  {
> +		61333000, {
> +			{ 0x0072, 0x0001 },
> +			{ 0x2142, 0x0001 },
> +			{ 0x40a2, 0x0001 },
>  		},
> -	}, {
> -		65000000, {
> -			{ 0x0072, 0x0001},
> -			{ 0x2142, 0x0001},
> -			{ 0x40a2, 0x0001},
> +	},  {
> +		73600000, {
> +			{ 0x0072, 0x0001 },
> +			{ 0x2142, 0x0001 },
> +			{ 0x4061, 0x0002 },
>  		},
> -	}, {
> -		66000000, {
> -			{ 0x013e, 0x0003},
> -			{ 0x217e, 0x0002},
> -			{ 0x4061, 0x0002}
> +	},  {
> +		92000000, {
> +			{ 0x0072, 0x0001 },
> +			{ 0x2145, 0x0002 },
> +			{ 0x4061, 0x0002 },
>  		},
> -	}, {
> -		74250000, {
> -			{ 0x0072, 0x0001},
> -			{ 0x2145, 0x0002},
> -			{ 0x4061, 0x0002}
> +	},  {
> +		122666000, {
> +			{ 0x0051, 0x0002 },
> +			{ 0x2145, 0x0002 },
> +			{ 0x4061, 0x0002 },
>  		},
> -	}, {
> -		83500000, {
> -			{ 0x0072, 0x0001},
> +	},  {
> +		147200000, {
> +			{ 0x0051, 0x0002 },
> +			{ 0x2145, 0x0002 },
> +			{ 0x4064, 0x0003 },
>  		},
> -	}, {
> -		108000000, {
> -			{ 0x0051, 0x0002},
> -			{ 0x2145, 0x0002},
> -			{ 0x4061, 0x0002}
> +	},  {
> +		184000000, {
> +			{ 0x0051, 0x0002 },
> +			{ 0x214c, 0x0003 },
> +			{ 0x4064, 0x0003 },
>  		},
> -	}, {
> -		106500000, {
> -			{ 0x0051, 0x0002},
> -			{ 0x2145, 0x0002},
> -			{ 0x4061, 0x0002}
> +	},  {
> +		226666000, {
> +			{ 0x0040, 0x0003 },
> +			{ 0x214c, 0x0003 },
> +			{ 0x4064, 0x0003 },
>  		},
> -	}, {
> -		146250000, {
> -			{ 0x0051, 0x0002},
> -			{ 0x2145, 0x0002},
> -			{ 0x4061, 0x0002}
> +	},  {
> +		272000000, {
> +			{ 0x0040, 0x0003 },
> +			{ 0x214c, 0x0003 },
> +			{ 0x5a64, 0x0003 },
>  		},
> -	}, {
> -		148500000, {
> -			{ 0x0051, 0x0003},
> -			{ 0x214c, 0x0003},
> -			{ 0x4064, 0x0003}
> +	},  {
> +		340000000, {
> +			{ 0x0040, 0x0003 },
> +			{ 0x3b4c, 0x0003 },
> +			{ 0x5a64, 0x0003 },
>  		},
> -	}, {
> +	},  {
> +		600000000, {
> +			{ 0x1a40, 0x0003 },
> +			{ 0x3b4c, 0x0003 },
> +			{ 0x5a64, 0x0003 },
> +		},
> +	},  {
>  		~0UL, {
> -			{ 0x00a0, 0x000a },
> -			{ 0x2001, 0x000f },
> -			{ 0x4002, 0x000f },
> +			{ 0x0000, 0x0000 },
> +			{ 0x0000, 0x0000 },
> +			{ 0x0000, 0x0000 },
>  		},
>  	}
>  };
> 




