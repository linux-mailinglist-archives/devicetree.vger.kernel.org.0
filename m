Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C9CC4E896E
	for <lists+devicetree@lfdr.de>; Sun, 27 Mar 2022 20:55:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbiC0S4r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Mar 2022 14:56:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbiC0S4q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Mar 2022 14:56:46 -0400
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27A3213CC5
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 11:55:04 -0700 (PDT)
Received: by mail-ej1-f48.google.com with SMTP id a8so24479951ejc.8
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 11:55:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YwbLSkhAhv71b7BqMWwMTjCUozmugKwUkYZsOSrVljw=;
        b=1pLgRZWHLKevbBGDthd2Zqqo9S+b4WRT+R5XcJZn8VesNDXZUSLIGKemj90iFmlS+o
         uihOUXgRoPMHYMNTN3DWLCVubOSG9spfXTLWMK1cY0vAXZfPE4/D2Fyx/xPojLfDnvjF
         XlmWN/T51WG+bLDbzXiXat9sQ/dZnTb5N07/9ZqQCTXV0/C23iln/WcE1zMXXSgSDosz
         3WjsEki59mwa2LdGkgExfO8zm4Tt0w75ginbLKitI9noAe3GxA8hc0ht3K5derv02S8B
         pzkCJ/PqXwijai47hjcGnvLRdAMAUIoHi66nIWwYaPzzewpmUYzMmgO0mXpkzdVCN3Ki
         9L0A==
X-Gm-Message-State: AOAM530Y32o4it1LL8lKx91yKhd06PvF6bRGMaUzUb7QRqLaJFxd07e4
        cQI2ThE/3Qw/CACMby1UjqM=
X-Google-Smtp-Source: ABdhPJw6QwVCren7Lfi876IHWRqngigrVpnqRQinWfkHvPVEfEPpKV1HrCuuFajuAHep7X3NzFX58Q==
X-Received: by 2002:a17:907:6e93:b0:6df:8c1a:d08b with SMTP id sh19-20020a1709076e9300b006df8c1ad08bmr23020679ejc.557.1648407302601;
        Sun, 27 Mar 2022 11:55:02 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.googlemail.com with ESMTPSA id i25-20020a056402055900b004191a652e3bsm6093309edx.30.2022.03.27.11.55.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Mar 2022 11:55:02 -0700 (PDT)
Message-ID: <d0044322-72d8-1348-9898-dc91e3192e94@kernel.org>
Date:   Sun, 27 Mar 2022 20:55:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3] ARM: dts: aspeed: add Nuvia DC-SCM BMC
Content-Language: en-US
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, Andrew Lunn <andrew@lunn.ch>
Cc:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
References: <20220325190247.468079-1-quic_jaehyoo@quicinc.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220325190247.468079-1-quic_jaehyoo@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/03/2022 20:02, Jae Hyun Yoo wrote:
> From: Graeme Gregory <quic_ggregory@quicinc.com>
> 
> Add initial version of device tree for Nuvia DC-SCM BMC which is
> equipped with Aspeed AST2600 BMC SoC.
> 
> Signed-off-by: Graeme Gregory <quic_ggregory@quicinc.com>
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
> ---
> Changes in v3:
> * Added 'stdout-path'. (Krzysztof)
> 
> Changes in v2:
> * Added a comment to explain 'rgmii' phy mode setting. (Andrew)
> 
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts | 190 ++++++++++++++++++
>  2 files changed, 191 insertions(+)
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
> index 000000000000..f4a97cfb0f23
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
> @@ -0,0 +1,190 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// Copyright (c) 2021-2022 Qualcomm Innovation Center, Inc. All rights reserved.
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
> +		stdout-path = &uart5;
> +		bootargs = "console=ttyS4,115200n8";

After adding stdout-path, please remove bootargs.

Best regards,
Krzysztof
