Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 543715BCA15
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 12:56:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229907AbiISK4p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 06:56:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229604AbiISK40 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 06:56:26 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D4609FD9
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 03:53:31 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id l9so6803270lji.4
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 03:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=qLOGU7d+lIQSDPJzsMnxlD973fc53aln2WVJqsjkqBM=;
        b=P2qW41sBVRPQ2lEgUTS0GkiUT6A9KqWC4fIiX1raNf38iKzfAwaQ7NIyOSAFYmTqbx
         7tllylqUk2xsXuLQwoR88mbmkHqr/9ut77jSCndoFQZG4gqe7ygddBrve4z4IGdO9wej
         lIUaB/Pq/pIgpT8qRQo/JCvV2QMwREMjiAeRpy6m0cdtUw4cXFT+49mEPcZcSbl1QLAv
         +ICgheU1bAFNtbp6yp1icxB1cw8nMSZ5qc5mf4rfZ34xlNPxTXLK9ViTWqdDkb6660qb
         qV9xFvmDpIikZRwupmYLGxvG8RhfeyjtiswtrazlmV2M3qa5nsr7DcIHXcDhc5EXWdct
         +nUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=qLOGU7d+lIQSDPJzsMnxlD973fc53aln2WVJqsjkqBM=;
        b=UGtKAIX3TG4aBXe20MqksTtZ+Lq0CTs1tw6MWYB6gj/JbUFLVisJ6ZLJREd3bRB0Dm
         ytrRG2GsXiSx6ilxW5jym0eYgdMBQz9fltDaTCUe3XqEyVtC92E1kR57/nB+v6Tbvkdj
         9yJrglCwNjtLCtpjAjKCJHKxLBOvisYvAKeaJfTs643amnyR/JUQXzSyvndsZ//OYIyO
         GH/nNR8ZgexTwCAIGlL5bp5e3XB9A9HCwzkmF5SPQxTzBFDquhalUZh/dxHt8UFp2K5I
         GMWFu84bSy81VujJe17YtztU6hQ+KXRgMR28jWD6uLj0+ClVtf4DqylNBYPtNahjvx5X
         jHDw==
X-Gm-Message-State: ACrzQf0jX2F6w6NI9F83he1HQihAPYzxvhmGA6zSzZuW+C56+tU2zGt7
        U7kM0MZh1AWuer3+/KyDMttG/g==
X-Google-Smtp-Source: AMsMyM7zH4qGVZpWeI300JbTTxcmiUSCys077XLPw1tBuHGQYHyfNagMHgxoZbolY19e+IBGUG4mzA==
X-Received: by 2002:a05:651c:2212:b0:26c:2baf:652e with SMTP id y18-20020a05651c221200b0026c2baf652emr5367027ljq.84.1663584809671;
        Mon, 19 Sep 2022 03:53:29 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 8-20020a05651c00c800b0026c0f6be5dasm1627799ljr.116.2022.09.19.03.53.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 03:53:28 -0700 (PDT)
Message-ID: <cead9aaa-9a59-27af-5004-85f7526753f0@linaro.org>
Date:   Mon, 19 Sep 2022 12:53:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 3/3] arm64: dts: freescale: Add InnoComm i.MX8MM based
 WB15 SoM and EVK
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
References: <20220919082434.1184673-1-s.hauer@pengutronix.de>
 <20220919082434.1184673-4-s.hauer@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919082434.1184673-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 10:24, Sascha Hauer wrote:
> Add the InnoComm i.MX8MM based WB15 SoM and its EVK. The WB15 is a
> half credit card sized board featuring:
> 
> - i.MX8MM CPU
> - LPDDR4, 1GiB
> - eMMC, 8GiB
> - 1Gb Ethernet RGMII interface
> - WiFi 802.11 a/b/g/n/ac, Bluetooth 4.2

(...)

> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15-evk.dts
> @@ -0,0 +1,147 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2018 Bang & Olufsen
> + * Copyright 2022 Pengutronix
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8mm-innocomm-wb15.dtsi"
> +
> +/ {
> +	model = "InnoComm WB15-EVK";
> +	compatible = "innocomm,wb15-evk", "fsl,imx8mm";
> +
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_leds>;
> +		status = "okay";

okay is by default

> +
> +		led-0 {
> +			label = "debug";
> +			gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +	};
> +



Best regards,
Krzysztof
