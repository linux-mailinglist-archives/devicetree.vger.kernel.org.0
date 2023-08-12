Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1B15779C59
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 03:44:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236553AbjHLBo1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 21:44:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236441AbjHLBo1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 21:44:27 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ADF3170E
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 18:44:27 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D8531613B3
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 01:44:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59F45C433C7;
        Sat, 12 Aug 2023 01:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691804665;
        bh=H2IZQQ+vj9D8xRCynyiBhx9XGPXZnSAbjcezB36aKGo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kMCZZqmgiT44gZdzPymL8goRe5xAO1p8jcoeet48frNy1t7ZOngBIdCzbX/gjMyRK
         k0opedzk3vBMME5VzHaN8ZDMXo4cim1agMfDPC8YyHWe5zFNiHsL5DVuXMw/QOtHjO
         R1E2aQpqyCy+UU6Hn3cC9drV0vbjYL9gxKHUcNFwQGfTnVBING0eYuDtDNyTGzr5XL
         1TqyJ86Qn4Avona+Gjg02njPWStJTH9+cKzuWMM/Ne5MRsDWD3aWdl56poscA3Gk3t
         /E1p66TSdpXnr1sciS0mKSP1ygT4p6JjnOqFGlFxbvdz0CfF+l6SwbFATqDOPkqgO9
         l4gJ/T+8TifEw==
Date:   Sat, 12 Aug 2023 09:44:14 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/3] ARM: dts: imx6ul: mba6ulx: Fix gpio-keys button node
 names
Message-ID: <20230812014414.GE151430@dragon>
References: <20230810095541.720489-1-alexander.stein@ew.tq-group.com>
 <20230810095541.720489-3-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230810095541.720489-3-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 10, 2023 at 11:55:40AM +0200, Alexander Stein wrote:
> Numbers are separated by dashes. Fixes the warnings:
> arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2-mba6ulx.dtb: gpio-keys:
> 'button1', 'button2', 'button3' do not match any of the regexes:
> '^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-9-]+-(button|event|key|switch))$', 'pinctrl-[0-9]+'
>  from schema $id: http://devicetree.org/schemas/input/gpio-keys.yaml#
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

It doesn't apply to my imx/dt branch.

Shawn

> ---
>  arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
> index 632ceadcca41..5a8b867d7d79 100644
> --- a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
> @@ -35,21 +35,21 @@ gpio_buttons: gpio-keys {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pinctrl_buttons>;
>  
> -		button1 {
> +		button-1 {
>  			label = "s14";
>  			linux,code = <KEY_1>;
>  			gpios = <&expander_in0 0 GPIO_ACTIVE_LOW>;
>  			wakeup-source;
>  		};
>  
> -		button2 {
> +		button-2 {
>  			label = "s6";
>  			linux,code = <KEY_2>;
>  			gpios = <&expander_in0 1 GPIO_ACTIVE_LOW>;
>  			wakeup-source;
>  		};
>  
> -		button3 {
> +		button-3 {
>  			label = "s7";
>  			linux,code = <KEY_3>;
>  			gpios = <&expander_in0 2 GPIO_ACTIVE_LOW>;
> -- 
> 2.34.1
> 
