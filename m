Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C56C63529F
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 09:30:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236049AbiKWI3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 03:29:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236523AbiKWI3j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 03:29:39 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B02BFCDD1
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 00:29:38 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id DA660B81EDF
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 08:29:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9308FC433C1;
        Wed, 23 Nov 2022 08:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1669192175;
        bh=1BVaOqfXuj4I5Ypqc1c1M244A6McDU05cdjjlMqBUnI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=cW7PM2K93a9HEr+v4oAeFnlAfmVPagtNm6qktvIdE06dttAHAnQne6QYgOoLr3rPA
         ATMhio0lrgehcp7s9mB39e3CXvn1FRBVyKW121KgZTPIfFpVPHmpeifmtR6WAYDSJU
         TPZMN9nPinclJjp49wCAw1a5ozBX7D+yB8kHn8vUTno9IhyRiBWSNyHmaCr4zrBL/4
         fRJvExMsOh8XjttnNvD7MP7Y8OGnFGmBG5Zsp5K/i541brLXtsSnw6kVmHbwKLDgQP
         YKEg4Miq59pu83ay9vMF71m5YMj/3JdSTDxMGWz9Qh96S86cyfqeDRWt+A5+9HzN5O
         nj4N23KLjT9kw==
Message-ID: <d26d3a65-ce71-7b4c-27d3-45f5ccf50e02@kernel.org>
Date:   Wed, 23 Nov 2022 10:29:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 2/2] phy: ti: phy-j721e-wiz: add j721s2-wiz-10g module
 support
To:     Matt Ranostay <mranostay@ti.com>, r-gunasekaran@ti.com,
        vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20221123032413.1193961-1-mranostay@ti.com>
 <20221123032413.1193961-3-mranostay@ti.com>
Content-Language: en-US
From:   Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20221123032413.1193961-3-mranostay@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 23/11/2022 05:24, Matt Ranostay wrote:
> Add support for j721s2-wiz-10g device which is similar to j721e-wiz-10g but
> uses clock-names interface versus explicitly defining clock nodes within
> device tree node.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---

Reviewed-by: Roger Quadros <rogerq@kernel.org>

>  drivers/phy/ti/phy-j721e-wiz.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> index 141b51af4427..ddce5ef7711c 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -322,6 +322,7 @@ enum wiz_type {
>  	AM64_WIZ_10G,
>  	J7200_WIZ_10G,  /* J7200 SR2.0 */
>  	J784S4_WIZ_10G,
> +	J721S2_WIZ_10G,
>  };
>  
>  struct wiz_data {
> @@ -1000,6 +1001,7 @@ static void wiz_clock_cleanup(struct wiz *wiz, struct device_node *node)
>  	case AM64_WIZ_10G:
>  	case J7200_WIZ_10G:
>  	case J784S4_WIZ_10G:
> +	case J721S2_WIZ_10G:
>  		of_clk_del_provider(dev->of_node);
>  		return;
>  	default:
> @@ -1132,6 +1134,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
>  	case AM64_WIZ_10G:
>  	case J7200_WIZ_10G:
>  	case J784S4_WIZ_10G:
> +	case J721S2_WIZ_10G:
>  		ret = wiz_clock_register(wiz);
>  		if (ret)
>  			dev_err(dev, "Failed to register wiz clocks\n");
> @@ -1214,6 +1217,7 @@ static int wiz_phy_fullrt_div(struct wiz *wiz, int lane)
>  		break;
>  	case J721E_WIZ_10G:
>  	case J7200_WIZ_10G:
> +	case J721S2_WIZ_10G:
>  		if (wiz->lane_phy_type[lane] == PHY_TYPE_SGMII)
>  			return regmap_field_write(wiz->p0_fullrt_div[lane], 0x2);
>  		break;
> @@ -1318,6 +1322,15 @@ static struct wiz_data j784s4_10g_data = {
>  	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
>  };
>  
> +static struct wiz_data j721s2_10g_data = {
> +	.type = J721S2_WIZ_10G,
> +	.pll0_refclk_mux_sel = &pll0_refclk_mux_sel,
> +	.pll1_refclk_mux_sel = &pll1_refclk_mux_sel,
> +	.refclk_dig_sel = &refclk_dig_sel_10g,
> +	.clk_mux_sel = clk_mux_sel_10g,
> +	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
> +};
> +
>  static const struct of_device_id wiz_id_table[] = {
>  	{
>  		.compatible = "ti,j721e-wiz-16g", .data = &j721e_16g_data,
> @@ -1334,6 +1347,9 @@ static const struct of_device_id wiz_id_table[] = {
>  	{
>  		.compatible = "ti,j784s4-wiz-10g", .data = &j784s4_10g_data,
>  	},
> +	{
> +		.compatible = "ti,j721s2-wiz-10g", .data = &j721s2_10g_data,
> +	},
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, wiz_id_table);

--
cheers,
-roger
