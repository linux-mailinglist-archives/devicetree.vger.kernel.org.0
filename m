Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E17865A304
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 08:04:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbiLaHEs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 02:04:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiLaHEr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 02:04:47 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96B495F6F
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 23:04:46 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id D22D4CE1253
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 07:04:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB770C433D2;
        Sat, 31 Dec 2022 07:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672470283;
        bh=zvRyrmx+2Hq9iIMaYY4/vjHYtYuCtwO8HIq7Zaxxqtg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ze2AC25W3RQuj1pec3u1wVXE81dTdom6LxAWNmm4TxGdeGBeUd1YOf4duYYaiYxuX
         QFReRatPSqwIA/sVVhI33gzwD5qTu7zHcuq63s5V3BkS9PjupBs6dI59EOMtuGy6jH
         ca/sHefPD1PU5F9hkD2VsgKUnqP6k7b+SXx9hTSPbjn7Yy+flo9pSweZdDBC1doP+b
         E+QAV+/Ouj/LDawuw7FEOKuTNu8Uzhfpr58l8yC0oDvx1ggiu6EihXD5S2GnF5KEDx
         KxtPbxGZEyNKIlEmldMaLA6mS+VZmk9PFV97M9dZBaEB2IEZfxQmMBwZVOiBsIMu8h
         UzA1KKiG4c4hg==
Date:   Sat, 31 Dec 2022 15:04:37 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Tim Harvey <tharvey@gateworks.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [RFC] ARM: dts: imx6qdl-gw560x: Remove incorrect
 'uart-has-rtscts'
Message-ID: <20221231070436.GF6112@T480>
References: <20221119212436.2028208-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221119212436.2028208-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 19, 2022 at 06:24:36PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The following build warning is seen when running:
> make dtbs_check DT_SCHEMA_FILES=fsl-imx-uart.yaml
> 
> arch/arm/boot/dts/imx6dl-gw560x.dtb: serial@2020000: rts-gpios: False schema does not allow [[20, 1, 0]]
> 	From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
> 
> The imx6qdl-gw560x board does not expose the UART RTS and CTS
> as native pins, so 'uart-has-rtscts' should not be used.
> 
> Fix the problem by removing the 'uart-has-rtscts' property.
> 
> Fixes: b8a559feffb2 ("ARM: dts: imx: add Gateworks Ventana GW5600 support")
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Hi,
> 
> My understanding is that uart-has-rtscts indicates that the UART RTS
> and CTS pins are used natively and we cannot use uart-has-rtscts with
> rts-gpios.
> 
> If this is correct, then I can also submit a patch fixing the arm64 Gateworks
> boards too.

Tim,

Any comments?

Shawn

> 
>  arch/arm/boot/dts/imx6qdl-gw560x.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> index 4bc4371e6bae..4b81a975c979 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> @@ -632,7 +632,6 @@ &ssi1 {
>  &uart1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_uart1>;
> -	uart-has-rtscts;
>  	rts-gpios = <&gpio7 1 GPIO_ACTIVE_HIGH>;
>  	status = "okay";
>  };
> -- 
> 2.25.1
> 
