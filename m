Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88489548632
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 17:56:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243936AbiFMPUF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 11:20:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241573AbiFMPTd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 11:19:33 -0400
Received: from mail.tkos.co.il (golan.tkos.co.il [84.110.109.230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3AC112C960
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 05:46:29 -0700 (PDT)
Received: from tarshish (unknown [10.0.8.3])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.tkos.co.il (Postfix) with ESMTPS id CAD964403F3;
        Mon, 13 Jun 2022 15:46:09 +0300 (IDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tkos.co.il;
        s=default; t=1655124370;
        bh=LsUK9pXawHmxW/GVVl0GlKkmANUcsm9qT8VXxDdSCwY=;
        h=References:From:To:Cc:Subject:Date:In-reply-to:From;
        b=LuW5tUwji7iyzLLjQDaguzTyI7S/IUMiJ/uCopPlQVYbDxsV1gfYjkA4d8o5s+Zxy
         2CqtwMvrdNIQKiMmoJaqJTcO0jgJNydzjVsdU061qg10RvZUj22DHw9Ypi6BKdYeKd
         8XrKP9D49qfqdVs6znwO6AdZdRJj0bKfkMGuFarfsFSo6RTu5O0mgBkbYTVB9go/2X
         FvGz9Y5k0GkZ9MQ/d5E4e/rAoGTAHuFcTrUDbDDki3iyNjrHr3q55f8dOpIig15ZtJ
         iNULwsFtdq/5HIv63WI0TlMt+BTHTCH1tEGIUD4XD3GWuOH1edF3x8TM2EDrchw95x
         6fU133dYjEOhg==
References: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
 <20220613123357.441779-4-alexander.stein@ew.tq-group.com>
User-agent: mu4e 1.6.10; emacs 27.1
From:   Baruch Siach <baruch@tkos.co.il>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 4/7] ARM: dts: imx6ul: remove unsupported adc property
Date:   Mon, 13 Jun 2022 15:44:09 +0300
In-reply-to: <20220613123357.441779-4-alexander.stein@ew.tq-group.com>
Message-ID: <87k09kwx26.fsf@tarshish>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

On Mon, Jun 13 2022, Alexander Stein wrote:
> 'num-channels' is not supported by binding, nor driver, remove it. Fixes
> the dt_binding_check warning:
> adc@2198000: 'num-channels' does not match any of the regexes:
> 'pinctrl-[0-9]+'
>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Shawn's imx/dt branch has commit 71b81f1cac29297 that removes
num-channels from all imx6ul DT files:

  https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git/commit/?h=imx/dt&id=71b81f1cac29297769ec81fe29a3fcc40bc2c31c

baruch

> ---
>  arch/arm/boot/dts/imx6ul.dtsi | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index df8b4ad62418..b951bdb793d2 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -924,7 +924,6 @@ adc1: adc@2198000 {
>  				reg = <0x02198000 0x4000>;
>  				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6UL_CLK_ADC1>;
> -				num-channels = <2>;
>  				clock-names = "adc";
>  				fsl,adck-max-frequency = <30000000>, <40000000>,
>  							 <20000000>;


-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -
