Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A02194E72C3
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 13:11:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356683AbiCYMMg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 08:12:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345960AbiCYMMf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 08:12:35 -0400
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61BA3D4C89
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 05:11:01 -0700 (PDT)
Received: by mail-ej1-f53.google.com with SMTP id o10so14990594ejd.1
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 05:11:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3ZWXvCs/Q6kxcr/JmHxNuvohTupQgzCSrmsL9q3KkKg=;
        b=D0AwxdT77W3S9pN6AxrvXZbSxYb3UzXcJFim/Zb9vcsl6bk42duglBMO4GssViISO2
         kPvXRMAb/3BAY1unpA2zOa+I7/9foGfKDYKsJchk/VVl9wnY7kl+/meXzEqavhvcxsdP
         PiLYRFNVR+Vde+/5vh2VfKP0h1m098kipyKa2D/Wx054BDvtbImwrKvykhs35tyLPvuF
         e/dHf0/uME6pS8PgRlCvpu2YMdSrI24xKybMA1hqRw2UqhuyWJpJyxs6n8oJ4TBy8YaM
         x+GGevBpOG475+Dk1h0qbVj9SvzWkaKI6Z2NiT6dZbXGSjCVMEemlMYcqBQuK84vIM6M
         0X9g==
X-Gm-Message-State: AOAM533BVJcF9VoHoj4jafbvx+W/usfLgPdshu45cgaiDR+GbIb7YNRh
        KfMtlS0xX97bWY4D2L6hzQI=
X-Google-Smtp-Source: ABdhPJz6udRZv1zxb/GwFg1uDoKALI3TINJjhCbOR0thlbYDWbZ1g9Qt5Elr5zk4wg6nB0QgOQADCg==
X-Received: by 2002:a17:907:1c82:b0:6e0:acef:d238 with SMTP id nb2-20020a1709071c8200b006e0acefd238mr1968938ejc.96.1648210259859;
        Fri, 25 Mar 2022 05:10:59 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.googlemail.com with ESMTPSA id cr19-20020a170906d55300b006df6b316e29sm2343511ejc.208.2022.03.25.05.10.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Mar 2022 05:10:59 -0700 (PDT)
Message-ID: <37768dc5-16ac-23ea-61a0-27f44e2fbd84@kernel.org>
Date:   Fri, 25 Mar 2022 13:10:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] ARM: dts: aspeed: add Nuvia DC-SCM BMC
Content-Language: en-US
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, Andrew Lunn <andrew@lunn.ch>
Cc:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
References: <20220325010316.451471-1-quic_jaehyoo@quicinc.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220325010316.451471-1-quic_jaehyoo@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/03/2022 02:03, Jae Hyun Yoo wrote:
> From: Graeme Gregory <quic_ggregory@quicinc.com>
> 
> Add initial version of device tree for Nuvia DC-SCM BMC which is
> equipped with Aspeed AST2600 BMC SoC.
> 
> Signed-off-by: Graeme Gregory <quic_ggregory@quicinc.com>
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
> ---
> Changes in v2:
> * Added a comment to explain 'rgmii' phy mode setting. (Andrew)
> 
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts | 189 ++++++++++++++++++
>  2 files changed, 190 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 7c16f8a2b738..e63cd6ed0faa 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1546,6 +1546,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-lenovo-hr630.dtb \
>  	aspeed-bmc-lenovo-hr855xg2.dtb \
>  	aspeed-bmc-microsoft-olympus.dtb \
> +	aspeed-bmc-nuvia-dc-scm.dtb \
>  	aspeed-bmc-opp-lanyang.dtb \
>  	aspeed-bmc-opp-mihawk.dtb \
>  	aspeed-bmc-opp-mowgli.dtb \
> diff --git a/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts b/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
> new file mode 100644
> index 000000000000..1984d545b66e
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
> @@ -0,0 +1,189 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// Copyright (c) 2021-2022 Qualcomm Innovation Center, Inc. All rights reserved.

This does not look like DTS comment style (Only SPDX should be in //).

> +
> +/dts-v1/;
> +
> +#include "aspeed-g6.dtsi"
> +
> +/ {
> +	model = "Nuvia DC-SCM BMC";
> +	compatible = "nuvia,dc-scm-bmc", "aspeed,ast2600";
> +
> +	aliases {
> +		serial4 = &uart5;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS4,115200n8";

You should use stdout path instead.


Best regards,
Krzysztof
