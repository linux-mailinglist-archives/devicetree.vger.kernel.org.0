Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2C2765A441
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 13:58:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235605AbiLaM6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 07:58:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235669AbiLaM6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 07:58:09 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C9F0DF45
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 04:58:08 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D7387B8075C
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 12:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79F30C433D2;
        Sat, 31 Dec 2022 12:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672491485;
        bh=jfouaBFZY7D744CnAjd/T1uUdUhpkpQAziqm9aDdJr0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Yb+r5SB3wVnitCiAf4Qgw49wWaVKeeUMIYT0drFdVclFLFQCg+NRbsXXuMu1hv47R
         LoJKARJz8yjX6cVNloQhEJ67pZkI2HWkWWsU+L47ZvhhgBAwrHTlUyNFx6QarfU1Uk
         57i0w8SuaHf71YUQZjpOiQHNUzMNMXejtxxbHppmDbivDLyr6W9mJphxIMHVvKNKpZ
         1UkseNB7EMmtMY+xzcxtqw1ep5VoJXBMWhxcgA7Zm+DCgrHPdnijbhrn69H4y83x3G
         eBFqQcaJs7Pemiznfhr9k++6UYBLTXORhOvGnP6pSjRKznSpZhguL1CmxuHnD/VANo
         zfmYJ/jiid+gQ==
Date:   Sat, 31 Dec 2022 20:57:58 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux@ew.tq-group.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/7] arm64: dts: tqma8mpql: Fix temperature sensor
 compatible
Message-ID: <20221231125758.GZ6112@T480>
References: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 07, 2022 at 01:41:59PM +0100, Alexander Stein wrote:
> Use the correct compatible 'nxp,se97b' as it is an SE97BTP chip.
> While at it, fix the node name according to device tree spec
> recommendations. The EEPROM is a separate node anyway.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Could you combine the series into two patches, one for arm64 and the
other for ARM?

Shawn

> ---
>  arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 5 ++---
>  arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi         | 5 ++---
>  2 files changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> index a3340814099aa..f7f657b007a18 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> @@ -516,9 +516,8 @@ tlv320aic3x04: audio-codec@18 {
>  		ldoin-supply = <&reg_vcc_3v3>;
>  	};
>  
> -	/* NXP SE97BTP with temperature sensor + eeprom */
> -	se97_1c: temperature-sensor-eeprom@1c {
> -		compatible = "nxp,se97", "jedec,jc-42.4-temp";
> +	se97_1c: temperature-sensor@1c {
> +		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
>  		reg = <0x1c>;
>  	};
>  
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
> index 7bd680a926ce7..ebc29a950ba9a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
> @@ -63,9 +63,8 @@ &i2c1 {
>  	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status = "okay";
>  
> -	/* NXP SE97BTP with temperature sensor + eeprom */
> -	se97: temperature-sensor-eeprom@1b {
> -		compatible = "nxp,se97", "jedec,jc-42.4-temp";
> +	se97: temperature-sensor@1b {
> +		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
>  		reg = <0x1b>;
>  	};
>  
> -- 
> 2.34.1
> 
