Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C67014ADDF9
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 17:09:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382709AbiBHQJi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 11:09:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343745AbiBHQJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 11:09:38 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE4A0C061579
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 08:09:36 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7B9903F1E7
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 16:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644336575;
        bh=0cmGyEgLW06PWk38sipSMt8UVzL/BGuK+PAiSi74b70=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=dmqXmwkM0X/enmVDhIiHfrs/6tMbXQWtc7MVJKmDuv6MgCE32Wy09EtM20zNITeIR
         xMT/p0FklcarkzIhgkCGb9nhYinJZl5UDTDgYdLSi4g0MzWRwBaIOtQCeqbpjLxtd7
         ItzP39KmBRgy+iaNR+LItIctuXkA71cgUtxpSaN5pPIfuJzViLj8KRP45x1xq5nMo4
         jJkcul3zyhb86i22/wTbsEe1LA3qTwLEzZzNh/hjaHUzbyYnrG1HcPhhfG1nLNXf1x
         +c2FV40cGodq79H0EfR5plqyoVcuVjx+bKPVkNZryiKVbhgXhjp6SjiVH9VC5KpD3X
         NemjO7/fSfJ/g==
Received: by mail-ed1-f70.google.com with SMTP id en7-20020a056402528700b00404aba0a6ffso9971634edb.5
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 08:09:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0cmGyEgLW06PWk38sipSMt8UVzL/BGuK+PAiSi74b70=;
        b=1cD3OozRG65FiURwCN6KXN+SvhFXMtG8cdyKDLAXK3iAAOrDPWZTTTt7QQQcY0P5AT
         r9QpS0wIn9C1qSnulK0g8OwWibp5qSHNQ0tBVwZUDklqD51HTUjVKLLzQgCfUWKiaAUz
         7mJByP9E9jS9VWvaAb6hTb+8UkzgHiqPuTolYRcHhekvDl0ADbYPzeI+BVFTOGPpJZwW
         eCYNZ9siQF5tI2UzysGAkdSEIjHHKt8aWCcJvKq4Y7rZBkxuttNTzDE+m4Cc4UujcJak
         /cRnvLe4rVdcwFuyR8Rfaycu/9gY+I33QF6egn1Zu1zaIx24GF1HLE9Hi3B843vcJWC9
         0RJA==
X-Gm-Message-State: AOAM5331yi0RtRPvi1tsgsrxQYC3gxr+M9cyCdoW4Dil7j4G0FwPtLVG
        05JMtOmgtIVTrXIHX+VteB45BpVr/Jxio1s9n53hMYUC4T42rNIznl8dgvCDjw7bpt4bvilcNqI
        g30B/xaVPAp0gwJMKTyt0EKG1E2mhTVUN6VC3VGQ=
X-Received: by 2002:a05:6402:881:: with SMTP id e1mr5192730edy.234.1644336575218;
        Tue, 08 Feb 2022 08:09:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxRTAxTQWu2B/rBOAhSXA0rJLYq5MRIEa9z/O+oCE1TeucgcXfmxUNAhWvDrtXZTbfuAcwpSQ==
X-Received: by 2002:a05:6402:881:: with SMTP id e1mr5192718edy.234.1644336575069;
        Tue, 08 Feb 2022 08:09:35 -0800 (PST)
Received: from [192.168.0.94] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id j9sm1425151ejb.189.2022.02.08.08.09.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Feb 2022 08:09:34 -0800 (PST)
Message-ID: <0c84c2af-045d-54bc-ef46-296390e58c14@canonical.com>
Date:   Tue, 8 Feb 2022 17:09:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 5/5] ARM: dts: imx6ull: add TQ-Systems MBa6ULLxL device
 trees
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220208134223.908757-1-alexander.stein@ew.tq-group.com>
 <20220208134223.908757-6-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220208134223.908757-6-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2022 14:42, Alexander Stein wrote:
> Add device trees for the MBa6ULx mainboard with TQMa6ULLxL SoMs.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm/boot/dts/Makefile                    |  1 +
>  .../boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts   | 15 ++++
>  arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi     | 76 +++++++++++++++++++
>  3 files changed, 92 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
>  create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 3a6eccb6371a..9bf89273ae71 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -710,6 +710,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>  	imx6ull-phytec-segin-ff-rdk-emmc.dtb \
>  	imx6ull-phytec-segin-lc-rdk-nand.dtb \
>  	imx6ull-tqma6ull2-mba6ulx.dtb \
> +	imx6ull-tqma6ull2l-mba6ulx.dtb \
>  	imx6ulz-14x14-evk.dtb \
>  	imx6ulz-bsh-smm-m2.dtb
>  dtb-$(CONFIG_SOC_IMX7D) += \
> diff --git a/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts b/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
> new file mode 100644
> index 000000000000..33437aae9822
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +/*
> + * Copyright 2018-2022 TQ-Systems GmbH
> + * Author: Markus Niebel <Markus.Niebel@tq-group.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "imx6ull-tqma6ull2l.dtsi"
> +#include "mba6ulx.dtsi"
> +
> +/ {
> +	model = "TQ Systems TQMa6ULL2L SoM on MBa6ULx board";
> +	compatible = "tq,imx6ull-tqma6ull2l-mba6ulx", "tq,imx6ull-tqma6ull2l", "fsl,imx6ull";
> +};
> diff --git a/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi b/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
> new file mode 100644
> index 000000000000..8e4d5cd18614
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
> @@ -0,0 +1,76 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +/*
> + * Copyright 2018-2022 TQ-Systems GmbH
> + * Author: Markus Niebel <Markus.Niebel@tq-group.com>
> + */
> +
> +#include "imx6ull.dtsi"
> +#include "imx6ul-tqma6ul-common.dtsi"
> +#include "imx6ul-tqma6ulxl-common.dtsi"
> +
> +/ {
> +	model = "TQ Systems TQMa6ULL2L SoM";
> +	compatible = "tq,imx6ull-tqma6ull2l", "fsl,imx6ull";
> +};
> +

This entire file is exactly the same as tqma6ull2l.dtsi. What's the
point of creating additional flavor which is exactly the same? The
models look compatible, don't they?


Best regards,
Krzysztof
