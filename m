Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D748770A699
	for <lists+devicetree@lfdr.de>; Sat, 20 May 2023 11:10:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229663AbjETJKH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 May 2023 05:10:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229946AbjETJKG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 May 2023 05:10:06 -0400
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A76C51A1
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 02:10:04 -0700 (PDT)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4QNdFv2f5nz9sWx;
        Sat, 20 May 2023 11:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
        t=1684573795;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=GB/sAV5UP+UJQM6JgKqzpSyfK+DbAo7k1NdGLIS5M5Y=;
        b=JhGyUS0kxLgzrZjA6rKZDNne0BkfO9GhXMa5g3i6ai/Moo57TD/eYluWETttqMS9NkeBoY
        3AQs3D6tHocCNXOSwmex8re34bxeiWA7w2oo6bVUwENqhSR2Ad/lV0ILBETLduUF3fx+c9
        Gz3v/wn0Jn2JjS32gMkvx4ihRzojxpxNvFnSi+DZKWA0hcQR0t1EO20/0ay578+mvjNcRX
        txyHO0Nwz94hapSNbjVnqmFoO52bOii1ibt4i24hTkF0hQj/DBSoEzeqdVvK3E9jRmaVYG
        4Dj1BiO5GtnN82aAIX+v0NhGA92uYpFtZwV8MopljpEeqeNjqJHGmE52mcgI2w==
Message-ID: <04858ca3-e3ce-c777-d48e-7fe82acade49@hauke-m.de>
Date:   Sat, 20 May 2023 11:09:53 +0200
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] ARM: dts: BCM5301X: Relicense AXI interrupts code to
 the GPL 2.0+ / MIT
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230515151921.25021-1-zajec5@gmail.com>
 <20230515151921.25021-2-zajec5@gmail.com>
From:   Hauke Mehrtens <hauke@hauke-m.de>
In-Reply-To: <20230515151921.25021-2-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4QNdFv2f5nz9sWx
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/15/23 17:19, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Those entries were added by:
> 1. Hauke in commits dec378827c4a ("ARM: BCM5301X: Add IRQs to Broadcom's
>     bus-axi in DTS file") and 1f80de6863ca ("ARM: BCM5301X: add IRQ
>     numbers for PCIe controller")
> 2. Florian in the commit 2cd0c0202f13 ("ARM: dts: BCM5301X: Add SRAB
>     interrupts")
> 
> Move them to the bcm-ns.dtsi which uses dual licensing. That syncs more
> Northstar code to be based on the same licensing schema.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Cc: Hauke Mehrtens <hauke@hauke-m.de>
> Cc: Florian Fainelli <f.fainelli@gmail.com>

Acked-by: Hauke Mehrtens <hauke@hauke-m.de>

> ---
>   arch/arm/boot/dts/bcm-ns.dtsi   | 73 ++++++++++++++++++++++++++++++++
>   arch/arm/boot/dts/bcm5301x.dtsi | 75 ---------------------------------
>   2 files changed, 73 insertions(+), 75 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dtsi
> index 58c30e3a142f..3f8220a7a54d 100644
> --- a/arch/arm/boot/dts/bcm-ns.dtsi
> +++ b/arch/arm/boot/dts/bcm-ns.dtsi
> @@ -92,6 +92,79 @@ axi@18000000 {
>   		#address-cells = <1>;
>   		#size-cells = <1>;
>   
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0x000fffff 0xffff>;
> +		interrupt-map =
> +			/* ChipCommon */
> +			<0x00000000 0 &gic GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
> +
> +			/* Switch Register Access Block */
> +			<0x00007000 0 &gic GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 1 &gic GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 2 &gic GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 3 &gic GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 4 &gic GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 5 &gic GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 6 &gic GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 7 &gic GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 8 &gic GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 9 &gic GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 10 &gic GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 11 &gic GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00007000 12 &gic GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
> +
> +			/* PCIe Controller 0 */
> +			<0x00012000 0 &gic GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00012000 1 &gic GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00012000 2 &gic GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00012000 3 &gic GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00012000 4 &gic GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00012000 5 &gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +
> +			/* PCIe Controller 1 */
> +			<0x00013000 0 &gic GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00013000 1 &gic GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00013000 2 &gic GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00013000 3 &gic GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00013000 4 &gic GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00013000 5 &gic GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
> +
> +			/* PCIe Controller 2 */
> +			<0x00014000 0 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00014000 1 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00014000 2 &gic GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00014000 3 &gic GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00014000 4 &gic GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00014000 5 &gic GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
> +
> +			/* USB 2.0 Controller */
> +			<0x00021000 0 &gic GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>,
> +
> +			/* USB 3.0 Controller */
> +			<0x00023000 0 &gic GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>,
> +
> +			/* Ethernet Controller 0 */
> +			<0x00024000 0 &gic GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
> +
> +			/* Ethernet Controller 1 */
> +			<0x00025000 0 &gic GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> +
> +			/* Ethernet Controller 2 */
> +			<0x00026000 0 &gic GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>,
> +
> +			/* Ethernet Controller 3 */
> +			<0x00027000 0 &gic GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>,
> +
> +			/* NAND Controller */
> +			<0x00028000 0 &gic GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00028000 1 &gic GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00028000 2 &gic GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00028000 3 &gic GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00028000 4 &gic GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00028000 5 &gic GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00028000 6 &gic GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
> +			<0x00028000 7 &gic GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
> +
>   		chipcommon: chipcommon@0 {
>   			reg = <0x00000000 0x1000>;
>   
> diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
> index d6c31ead0398..0f40812eb5a4 100644
> --- a/arch/arm/boot/dts/bcm5301x.dtsi
> +++ b/arch/arm/boot/dts/bcm5301x.dtsi
> @@ -3,8 +3,6 @@
>    * Generic DTS part for all BCM53010, BCM53011, BCM53012, BCM53014, BCM53015,
>    * BCM53016, BCM53017, BCM53018, BCM4707, BCM4708 and BCM4709 SoCs
>    *
> - * Copyright 2013-2014 Hauke Mehrtens <hauke@hauke-m.de>
> - *
>    * Licensed under the GNU/GPL. See COPYING for details.
>    */
>   
> @@ -72,79 +70,6 @@ periph_clk: periph_clk {
>   	};
>   
>   	axi@18000000 {
> -		#interrupt-cells = <1>;
> -		interrupt-map-mask = <0x000fffff 0xffff>;
> -		interrupt-map =
> -			/* ChipCommon */
> -			<0x00000000 0 &gic GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
> -
> -			/* Switch Register Access Block */
> -			<0x00007000 0 &gic GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 1 &gic GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 2 &gic GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 3 &gic GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 4 &gic GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 5 &gic GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 6 &gic GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 7 &gic GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 8 &gic GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 9 &gic GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 10 &gic GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 11 &gic GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00007000 12 &gic GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
> -
> -			/* PCIe Controller 0 */
> -			<0x00012000 0 &gic GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00012000 1 &gic GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00012000 2 &gic GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00012000 3 &gic GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00012000 4 &gic GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00012000 5 &gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> -
> -			/* PCIe Controller 1 */
> -			<0x00013000 0 &gic GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00013000 1 &gic GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00013000 2 &gic GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00013000 3 &gic GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00013000 4 &gic GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00013000 5 &gic GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
> -
> -			/* PCIe Controller 2 */
> -			<0x00014000 0 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00014000 1 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00014000 2 &gic GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00014000 3 &gic GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00014000 4 &gic GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00014000 5 &gic GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
> -
> -			/* USB 2.0 Controller */
> -			<0x00021000 0 &gic GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>,
> -
> -			/* USB 3.0 Controller */
> -			<0x00023000 0 &gic GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>,
> -
> -			/* Ethernet Controller 0 */
> -			<0x00024000 0 &gic GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
> -
> -			/* Ethernet Controller 1 */
> -			<0x00025000 0 &gic GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> -
> -			/* Ethernet Controller 2 */
> -			<0x00026000 0 &gic GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>,
> -
> -			/* Ethernet Controller 3 */
> -			<0x00027000 0 &gic GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>,
> -
> -			/* NAND Controller */
> -			<0x00028000 0 &gic GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00028000 1 &gic GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00028000 2 &gic GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00028000 3 &gic GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00028000 4 &gic GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00028000 5 &gic GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00028000 6 &gic GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
> -			<0x00028000 7 &gic GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
> -
>   		pcie2: pcie@14000 {
>   			reg = <0x00014000 0x1000>;
>   		};

