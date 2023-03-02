Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ADFE6A8531
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 16:35:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbjCBPfc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 10:35:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229778AbjCBPfb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 10:35:31 -0500
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5207C2FCCD
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 07:35:30 -0800 (PST)
Received: from booty (unknown [77.244.183.192])
        (Authenticated sender: luca.ceresoli@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 2538220017;
        Thu,  2 Mar 2023 15:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1677771328;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=e1Q3VzDdtq38jCkye2XRaQaGuIqM92awA4W/uJScnFg=;
        b=LqNDVsSpLTIKw+lPxdAUKR2BvgvHxvgssXXydPybqVhNvb3a1jY4ONce2UfyjW6KDcW3dO
        +qjXFP0N9JBMSUpWDWk0f8fxfF5K3gg1Yyo0+E2c6DD4P9+SgfWrGVyG3y/xRiF+JRPgpy
        MDoNPQxIOE+GmuJKmL37IGU6tfQEVl+FLg/7nIeMVPHFB0po8zu5TfHia3Ig3qG/VPLfVa
        tk+wRrhilBRJjVPSejP6dOXxt33mDrJ9TtaZAK15eiKHX6e/Mo0luYmA7YHiHPdBr7Svsc
        TLlFLpLkBLSR8uvoXpLn4JUvZelORP5e/451RJwpz5hQaa6fGlJwoWHMnbKV0g==
Date:   Thu, 2 Mar 2023 16:35:25 +0100
From:   Luca Ceresoli <luca.ceresoli@bootlin.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de, kernel@pengutronix.de
Subject: Re: [PATCH 4/4] arm64: dts: imx8mp-evk: enable HDMI
Message-ID: <20230302163525.007503e4@booty>
In-Reply-To: <20220826192932.3217260-4-l.stach@pengutronix.de>
References: <20220826192932.3217260-1-l.stach@pengutronix.de>
        <20220826192932.3217260-4-l.stach@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Lucas,

On Fri, 26 Aug 2022 21:29:32 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Enable the DT nodes for HDMI TX and PHY and add the pinctrl for the few
> involved pins that are configurable.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

I'm joining late to this party... Is this the latest version of this
series? I haven't found any more recent, but if it is not the case
would you point me to the most recent one please?

> +	pinctrl_hdmi: hdmigrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x1c3
> +			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x1c3

Is the low nibble (0x3) right?BIT(0) is reserved according too the
reference manual.

Also, all the non-reserved bits in that nibble are bits 1 and 2, which
set the drive strength. For an I2C line it seems that the minimum drive
strength (0x0) should be enough for an I2C line: with any drive
strength setting the supported frequency is >= 65 MHz.

> +			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD		0x19
> +			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC		0x19

Here as well, bits 0 and 3 are reserved.

Best regards,
Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
