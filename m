Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0614B1D06
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 04:47:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232876AbiBKDrO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 22:47:14 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235382AbiBKDrO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 22:47:14 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2826B26DF
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 19:47:14 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B41BF614D5
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 03:47:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99534C340EB;
        Fri, 11 Feb 2022 03:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644551233;
        bh=n6LXWY4TUQcJESygP1g3zkfQbUXqOIHKO0VHd2yZleQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pgOdfOijYC2btXXi+LK/vemu6ihdkR+E2sV4ESO5rn8/wx7VkLmLvAUbH1ZQWtQxl
         yrb3YQoG786plwgrsGIkUmiA8VGq0Lu+vQl4ZuHWI62DP8eCVX2D5lvvkqXtaW1mMR
         Yuwm1XeCYTQtvn3zg5vFDzHPmFLSa4jJwZm0AX3HDsEtWQgKckJN8ISJDjMyGYy1yk
         fGEdOFfgyPJ3qkPqRbdNqUr0lzRxqGz3+Xnzc87oGGPU1zYgh2W0BE5dSqd3JO8Uvf
         /4Y/c7BL7W0FqINJmo6XbKAuO8zS2rt/v/QtAbZokrwFl3F5urqWdeZjofkC/IqW4Q
         sXJk4TxXWSxKw==
Date:   Fri, 11 Feb 2022 11:47:07 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 4/8] ARM: dts: imx6ul: fix adc node compatible
Message-ID: <20220211034707.GK4909@dragon>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
 <20220125135014.3041002-5-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220125135014.3041002-5-alexander.stein@ew.tq-group.com>
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

On Tue, Jan 25, 2022 at 02:50:10PM +0100, Alexander Stein wrote:
> fsl,imx6ul-adc is not listed in the binding, so remove it. Fixes the
> dt_binding_check warning:
> adc@2198000: compatible:0: 'fsl,vf610-adc' was expected
> adc@2198000: compatible: ['fsl,imx6ul-adc', 'fsl,vf610-adc'] is too long
> adc@2198000: compatible: Additional items are not allowed ('fsl,vf610-adc'
> was unexpected)
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm/boot/dts/imx6ul.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index df8b4ad62418..d6c2b0ad3eac 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -920,7 +920,7 @@ usdhc2: mmc@2194000 {
>  			};
>  
>  			adc1: adc@2198000 {
> -				compatible = "fsl,imx6ul-adc", "fsl,vf610-adc";
> +				compatible = "fsl,vf610-adc";

Maybe we should add compatible "fsl,imx6ul-adc" to bindings?

Shawn

>  				reg = <0x02198000 0x4000>;
>  				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6UL_CLK_ADC1>;
> -- 
> 2.25.1
> 
