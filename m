Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75F3F4B928D
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 21:42:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbiBPUm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 15:42:29 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:45886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229723AbiBPUm2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 15:42:28 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAEA697B94
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 12:42:13 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nKR7q-0001N5-A6; Wed, 16 Feb 2022 21:42:10 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     devicetree@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc:     robh+dt@kernel.org, jon.lin@rock-chips.com,
        linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct clock-output-names for rk817
Date:   Wed, 16 Feb 2022 21:42:09 +0100
Message-ID: <44462609.a43xROnmBz@diego>
In-Reply-To: <20220216165837.4721-1-macroalpha82@gmail.com>
References: <20220216165837.4721-1-macroalpha82@gmail.com>
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

Hi,

Am Mittwoch, 16. Februar 2022, 17:58:37 CET schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> According to the datasheet for the rk817 there is only a single output
> clock for the PMIC. I don't believe this is causing any harm though
> and testing this change doesn't appear to have any noticeable effects.

hmm, looking at the go2's schematics, I'd disagree:

- yes, the rk817 has only one clock output
- but no, it is used for the clkout_32k signal, which gets piped back into
  the SoC. As that clock dynamically appears at some unspecified point
  when the rk817 probes, the clock controller expects it to be named
  xin32k to bind into its clock-tree.

The driver (drivers/clk/clk-rk808.c) really puts that rk817-clk32k at
position 2 but I'm not sure if that simply papers over some implementation


Heiko

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> index ea0695b51ecd..5b23e607876e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> @@ -296,7 +296,7 @@ rk817: pmic@20 {
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> -		clock-output-names = "rk808-clkout1", "xin32k";
> +		clock-output-names = "rk808-clkout1";
>  		clock-names = "mclk";
>  		clocks = <&cru SCLK_I2S1_OUT>;
>  		pinctrl-names = "default";
> 




