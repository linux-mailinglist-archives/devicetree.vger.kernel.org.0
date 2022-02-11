Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4C454B1D02
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 04:42:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233277AbiBKDm1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 22:42:27 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:34230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235126AbiBKDm0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 22:42:26 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A10EC26DF
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 19:42:26 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3D5C161278
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 03:42:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CA45C340E9;
        Fri, 11 Feb 2022 03:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644550945;
        bh=2iBwPof/C1ljCkQx/bkoZitehExlZ4VjBjuwOnMrmlU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VPrxC9JgTuLtwpGP2XtHbsE6qN30B4MCEDRAuU86JDdTWbQdjSXCGdN4qb55QbWPB
         K+fQmRFruzOWOoadDCPIHgpae3G3IvJs1u/QjzdRCShgkz68CfNQzedjEsI43gPgY2
         f0ctQK1OQeBRiAfrH5djwNGZke7BQU5IPxt7aKBwMr9hUJOX5IY/VYZXiC/WGcsBsD
         RrSALnJfb+evHV9/Dm0qfyYKrI0dZML4CG6d/OV4cR9V+JmQN+bH01cZH8hLzKtC8E
         BCY76j0u8f8ZxAP9dw75NmVSzL5pYWDSdjXYq0YUJSEiQVyl9Spy+t+7pvMnX/VOAd
         HwRgKBDTZEeAA==
Date:   Fri, 11 Feb 2022 11:42:20 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/8] ARM: dts: imx6ul: add missing properties for sram
Message-ID: <20220211034219.GJ4909@dragon>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
 <20220125135014.3041002-2-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220125135014.3041002-2-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 25, 2022 at 02:50:07PM +0100, Alexander Stein wrote:
> All 3 properties are required by sram.yaml. Fixes the dt_binding_check

I guess it's dtbs_check rather than dt_binding_check?

Shawn

> warning:
> sram@900000: '#address-cells' is a required property
> sram@900000: '#size-cells' is a required property
> sram@900000: 'ranges' is a required property
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm/boot/dts/imx6ul.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index afeec01f6522..1d435a46fc5c 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -149,6 +149,9 @@ soc {
>  		ocram: sram@900000 {
>  			compatible = "mmio-sram";
>  			reg = <0x00900000 0x20000>;
> +			ranges = <0 0x00900000 0x20000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
>  		};
>  
>  		intc: interrupt-controller@a01000 {
> -- 
> 2.25.1
> 
