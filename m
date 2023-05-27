Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2044871333A
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 10:16:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbjE0IQR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 04:16:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjE0IQQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 04:16:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15E18BB
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 01:16:13 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9BA18608D5
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 08:16:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEE22C433D2;
        Sat, 27 May 2023 08:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685175371;
        bh=Nf87McTdWnxnqdeVJsKDBOsVIW6lHBZ+1FljMuDQfAw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=l7oHEz1dbOld6kgkE2xS/AP/LQdjxuLzS6o1+JH49/wlBQ31LRQEyMWCyjNgO6tT5
         egk+Mifn8SCCqB6POHU+0GHaY1vRWIfydcys9y9sy7DA/KgPBcs2ci6+NyFY1mjkRv
         dO5Q1Q8Uaqau3OKElVY8UiTgHqBh3GaxnggUr2dqaOkIwSkaG0IEEaGmklxxKUB2DU
         J3MX1i9nGeodzfvfw5bQS6ay6TJrbr0fkj3HG18Q/Bit0FOWa4Mv1Yl9ZUv0OHHUNl
         leD++btPtslgW4b8Nc/BjjN+TnwmFWNJEI7Qbe64CozKLFhHC663H0obI8cbC2actq
         l5kpq7OJmGrhA==
Date:   Sat, 27 May 2023 16:15:59 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] ARM: dts: imx6qdl-mba6: add mac address for USB
 ethernet controller
Message-ID: <20230527081559.GA528183@dragon>
References: <20230515054429.14736-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230515054429.14736-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 15, 2023 at 07:44:29AM +0200, Alexander Stein wrote:
> The mac address is stored in mainboard eeprom.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Changes in v2:
> * Fix indentation
> 
>  arch/arm/boot/dts/imx6qdl-mba6.dtsi  | 16 ++++++++++++++++
>  arch/arm/boot/dts/imx6qdl-mba6a.dtsi |  6 ++++++
>  arch/arm/boot/dts/imx6qdl-mba6b.dtsi |  6 ++++++
>  3 files changed, 28 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
> index 7b7e6c2ad190..9d90d7647024 100644
> --- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
> @@ -272,6 +272,22 @@ &uart5 {
>  &usbh1 {
>  	disable-over-current;
>  	status = "okay";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	hub@1 {
> +		compatible = "usb424,2517";
> +		reg = <1>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethernet@1 {
> +			compatible = "usb424,9e00";

These two usb424 compatible strings are undocumented?

Shawn

> +			reg = <1>;
> +			nvmem-cells = <&mba_mac_address>;
> +			nvmem-cell-names = "mac-address";
> +		};
> +	};
>  };
>  
>  &usbotg {
> diff --git a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
> index df8fa169e9f6..27fec340c380 100644
> --- a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
> @@ -21,6 +21,12 @@ m24c64_57: eeprom@57 {
>  		compatible = "atmel,24c64";
>  		reg = <0x57>;
>  		pagesize = <32>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		mba_mac_address: mac-address@20 {
> +			reg = <0x20 0x6>;
> +		};
>  	};
>  
>  	rtc0: rtc@68 {
> diff --git a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
> index 7d1cd7454c7f..0a9f076eeb36 100644
> --- a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
> @@ -31,6 +31,12 @@ m24c64_57: eeprom@57 {
>  		compatible = "atmel,24c64";
>  		reg = <0x57>;
>  		pagesize = <32>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		mba_mac_address: mac-address@20 {
> +			reg = <0x20 0x6>;
> +		};
>  	};
>  
>  	rtc0: rtc@68 {
> -- 
> 2.34.1
> 
