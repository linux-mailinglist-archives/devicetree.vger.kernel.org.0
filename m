Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3CE5752AB8
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 21:06:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232796AbjGMTGO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 15:06:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230249AbjGMTGO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 15:06:14 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24A4B1993
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 12:06:13 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AD7AA61B32
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 19:06:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAC94C433C8;
        Thu, 13 Jul 2023 19:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689275172;
        bh=1/SQDI0lrpFNaj1kD1wXToWCct8/1LatXpxd/+ZzmF4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=chr85u/11Dy7nR6AFFY0LXD5s987a+1PjTK6seY4XIwDzdqj32xWug4CdR7/MXaZP
         uABRvKS4pXVmueJbjJYpOdgiNOoKLBww5qMnekOQ1A2c+sF56jyKUGVq2XEMSm+Btx
         RR/cYq0tKClOC4FwncMgOtKyjsU9XD4eCo0KRAKmC8Lk6Ayd9X+nJ7JK64spovV2mW
         47bpzomEDACxOUUURM/hXhvE18o0ebNQlVkrhsmuQiveEdJ0TvDl20w30AVuPLCtlr
         UipOKGfepsaTxDLocU0UjlmngXQIuCyyX7MWm58EQ1y2QI8unxJNQlkVvYCdeUgsMl
         n4dvprsYfjDXA==
Message-ID: <83d4d054-fa17-2d3e-e6bd-bf7416702dbf@kernel.org>
Date:   Thu, 13 Jul 2023 21:06:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: add device tree bindings for mxl-8611x PHY
To:     Nate Drude <nate.d@variscite.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     Eran Matityahu <eran.m@variscite.com>
References: <322ede0d-7cc5-6878-4aed-af4c120b4de9@variscite.com>
 <6e9346b2-e241-a5c5-c74d-36ff98d20258@variscite.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <6e9346b2-e241-a5c5-c74d-36ff98d20258@variscite.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2023 15:23, Nate Drude wrote:
> The MXL8611X driver has custom bindings for configuring the LEDs
> and RGMII internal delays. This patch adds the documentation and
> defines necessary to configure it from the device tree.
> 
> Signed-off-by: Nate Drude <nate.d@variscite.com>
> ---
>   .../net/phy/mxl-8611x.txt                     | 37 +++++++++++++++++++
>   include/dt-bindings/net/mxl-8611x.h           | 27 ++++++++++++++
>   2 files changed, 64 insertions(+)
>   create mode 100644 doc/device-tree-bindings/net/phy/mxl-8611x.txt

You did not CC DT maintainers, so kind of funny way to ask them to
review something.

In general I will not provide full review for projects other than Linux.
Submit bindings to the Linux, following proper Linux kernel process, if
you wish them to be fully reviewed.


>   create mode 100644 include/dt-bindings/net/mxl-8611x.h
> 
> diff --git a/doc/device-tree-bindings/net/phy/mxl-8611x.txt 
> b/doc/device-tree-bindings/net/phy/mxl-8611x.txt
> new file mode 100644
> index 00000000000..462fdf61666
> --- /dev/null
> +++ b/doc/device-tree-bindings/net/phy/mxl-8611x.txt
> @@ -0,0 +1,37 @@
> +* MaxLinear MXL8611x PHY Device Tree binding
> +
> +Required properties:
> +- reg: PHY address
> +
> +Optional properties:
> +- mxl-8611x,ledN_cfg: Register configuration for COM_EXT_LED0_CFG,

That's not correct vendor name. Neither property name - underscores are
not allowed. The property itself does not describe any feature or
hardware. We do not program registers in DT.

> +	COM_EXT_LED1_CFG, and COM_EXT_LED2_CFG
> +- mxl-8611x,rx-internal-delay-ps: RGMII RX Clock Delay used only when 
> PHY operates
> +	in RGMII mode with internal delay (phy-mode is 'rgmii-id' or
> +	'rgmii-rxid') in pico-seconds.
> +- mxl-8611x,tx-internal-delay-ps-100m: RGMII TX Clock Delay used only 

Use correct unit suffixes.

> when PHY operates
> +	in 10/100M RGMII mode with internal delay (phy-mode is 'rgmii-id' or
> +	'rgmii-txid') in pico-seconds.
> +- mxl-8611x,tx-internal-delay-ps-1g: RGMII TX Clock Delay used only 
> when PHY operates
> +	in 1G RGMII mode with internal delay (phy-mode is 'rgmii-id' or
> +	'rgmii-txid') in pico-seconds.

Same problem.

> +
> +Example:
> +
> +	ethernet-phy@0 {
> +		reg = <0>;
> +
> +		mxl-8611x,led0_cfg = <(
> +			MXL8611X_LEDX_CFG_LINK_UP_RX_ACT_ON |
> +			MXL8611X_LEDX_CFG_LINK_UP_TX_ACT_ON |
> +			MXL8611X_LEDX_CFG_TRAFFIC_ACT_BLINK_IND
> +		)>;
> +		mxl-8611x,led1_cfg = <(
> +			MXL8611X_LEDX_CFG_LINK_UP_10MB_ON |
> +			MXL8611X_LEDX_CFG_LINK_UP_100MB_ON |
> +			MXL8611X_LEDX_CFG_LINK_UP_1GB_ON
> +		)>;
> +		mxl-8611x,rx-internal-delay-ps = <0>;
> +		mxl-8611x,tx-internal-delay-ps-100m = <2250>;
> +		mxl-8611x,tx-internal-delay-ps-1g = <150>;
> +	};
> diff --git a/include/dt-bindings/net/mxl-8611x.h 
> b/include/dt-bindings/net/mxl-8611x.h
> new file mode 100644
> index 00000000000..cb0ec0f8bd0
> --- /dev/null
> +++ b/include/dt-bindings/net/mxl-8611x.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Device Tree constants for MaxLinear MXL8611x PHYs
> + *
> + * Copyright 2023 Variscite Ltd.
> + * Copyright 2023 MaxLinear Inc.
> + */
> +
> +#ifndef _DT_BINDINGS_MXL_8611X_H
> +#define _DT_BINDINGS_MXL_8611X_H
> +
> +#define MXL8611X_LEDX_CFG_TRAFFIC_ACT_BLINK_IND		(1 << 13)

Register values are not bindings.


Best regards,
Krzysztof

