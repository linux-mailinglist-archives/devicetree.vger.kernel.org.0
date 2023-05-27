Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EE4F713441
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 13:23:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232239AbjE0LXr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 07:23:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229730AbjE0LXq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 07:23:46 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 841C3EB
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 04:23:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1EB8A612CC
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 11:23:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B413C433EF;
        Sat, 27 May 2023 11:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685186624;
        bh=Bvm+8s9c3XmFnq59jdPw9V2xpR3k0kGuxHLB+wFYk2Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TgBDipoaIJHj11ZO2qAJxpaGv2J1DFibCGlDQ/Sqn/UZxg4AHJyj5ljABi/3e0Ora
         er5V8EY+0WlbNOFHXHSaI0iORp0gYRt5kWAJilnMJ0akbb27aNV5d/0isZYuslE9MV
         2HHs9n+aLyZruRbMjcwOcrmPKfgvAYoJ4Htm8S/1zGpqJTXB+Bq2ZAOYX+KznSxnbX
         MNy5qNoor9tzns+anRy3L2Swn02kI1xcr3TzYyNKVUmVysv/54b4jvxkL3ZP6xKUeL
         OfK1XRK4zDTxPy/5SL1TT2pkeAnv5pCcKVFLNglp5HB56vA1SmCpd7yRnD/kJki1M2
         zo+/y1Z3gqWNg==
Date:   Sat, 27 May 2023 19:23:32 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, ye.li@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/2] ARM: dts: imx7d-sdb: Describe the SD card regulator
Message-ID: <20230527112332.GP528183@dragon>
References: <20230518215447.180298-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230518215447.180298-1-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 18, 2023 at 06:54:46PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Improve the devicetree description by adding the SD card regulator
> that is controlled via GPIO5_2.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm/boot/dts/imx7d-sdb.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
> index 25681c430393..6e45f1154611 100644
> --- a/arch/arm/boot/dts/imx7d-sdb.dts
> +++ b/arch/arm/boot/dts/imx7d-sdb.dts
> @@ -60,6 +60,17 @@ extended_io: gpio-expander@0 {
>  		};
>  	};
>  
> +	reg_sd1_vmmc: regulator-sd1-vmmc {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VDD_SD1";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio5 2 GPIO_ACTIVE_HIGH>;
> +		startup-delay-us = <200000>;
> +		off-on-delay-us = <20000>;
> +		enable-active-high;

Can we put this right after 'gpio'?

Shawn

> +	};
> +
>  	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
>  		compatible = "regulator-fixed";
>  		regulator-name = "usb_otg1_vbus";
> @@ -477,6 +488,7 @@ &usdhc1 {
>  	pinctrl-0 = <&pinctrl_usdhc1>;
>  	cd-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
>  	wp-gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
> +	vmmc-supply = <&reg_sd1_vmmc>;
>  	wakeup-source;
>  	keep-power-in-suspend;
>  	status = "okay";
> -- 
> 2.34.1
> 
