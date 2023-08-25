Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D907C787FB5
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 08:20:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235820AbjHYGTw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 02:19:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234652AbjHYGTf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 02:19:35 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E70091BF2
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 23:19:32 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-500913779f5so822843e87.2
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 23:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692944371; x=1693549171;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3OvkT3Z0KfNNmbGikZj97H1hwqaycrzDTaDpACXf6YA=;
        b=bvI/h3oYjARxBhcx2gAUnY0OmpxRjHCDnFhJj3iBaT4ivDc062at/yKszxwLodPg/P
         z6FOSUUuBAMvfcjvWdeuYR7DfYKUdmx+QUJdohTSefZzAaOJyKs0hq8+WTrcsh7EcUXR
         zS/mfG1wwwPyiVrnR5N/vy2IIyqnxSlfb7w+kZyM/C3/oPk5+/Vx+2LB0XOyihfOMBhK
         +OoZeu6xl0MW4rKjSLVyIZn8R+t/8MY4kzZfuWkjpHjl7yuFJsUYjL2rImt0gtXLMqdH
         0uQqEnDU2MCEVlhErtDYJ63qu6R7mf4ALoA7Hn6R+YDFcp7yQKJr/J1J1JVcIsvEzGZC
         hYSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692944371; x=1693549171;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3OvkT3Z0KfNNmbGikZj97H1hwqaycrzDTaDpACXf6YA=;
        b=H11EYR5XAfB6VUye3KFrykxSb+aFru+TtfeFcU40PXmzlJbUP9Tvu4nFS4sFvsPOty
         UboXtrWrB8u6VxqtH9EWMCgSdzzaDTf3qC0GkuT+vhTwyGZnJ26VW4XNn5Rviifsdip5
         hVu6TqQ9qwDM89LaB8ioZMjiKZ7n7f4LY2edTAJ3JorxTUq6UVmV2bVSCbNmOb7UJQgz
         /7RCHZtbjqzQIxgVlt1rVt+KO3GO4RjbNyGNoqQvhx3+fVjl3Gw5czK/RAYuGP7H+XIh
         BKVuXuwE/KqnMbiOUE8eCkRN8m9WfTC+ubVG6cyH8Nu4Wn6e7zjztR3JGCClm6jgaqvr
         3sng==
X-Gm-Message-State: AOJu0Yw7IOgwmalQhD6BXvvbLMcJRQg2HN55RWpiX6iK+V+VsXg1BlIe
        N9z02JQinXe3L2HxJrIBa0DdxQ==
X-Google-Smtp-Source: AGHT+IHJo9ECuER4vgAUWKW7gADLJpu+CPX5GLOGcHcEocLE44CuYzpz5xqqIZMthKOJ1+i6AoTUYw==
X-Received: by 2002:a05:6512:3406:b0:4f8:7781:9870 with SMTP id i6-20020a056512340600b004f877819870mr14983315lfr.60.1692944370837;
        Thu, 24 Aug 2023 23:19:30 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id e10-20020aa7d7ca000000b005256994e335sm629033eds.92.2023.08.24.23.19.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 23:19:30 -0700 (PDT)
Message-ID: <fb09f5e6-8381-312f-2f1e-f2b471cec68a@linaro.org>
Date:   Fri, 25 Aug 2023 08:19:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] Add Meta openBMC Minerva dts file.
Content-Language: en-US
To:     peteryin <peteryin.openbmc@gmail.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, joel@jms.id.au, andrew@aj.id.au,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     cosmo.chou@quantatw.com, potin.lai@quantatw.com,
        daniel-hsu@quantatw.com
References: <20230825032945.1649050-1-peteryin.openbmc@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825032945.1649050-1-peteryin.openbmc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,WEIRD_QUOTING
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2023 05:29, peteryin wrote:
> This is for Meta openBMC Minerva dts.
> 
> Signed-off-by: peteryin <peteryin.openbmc@gmail.com>
> ---
>  .../boot/dts/aspeed-bmc-facebook-minerva.dts  | 330 ++++++++++++++++++>  1 file changed, 330 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-minerva.dts
> 
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-minerva.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-minerva.dts
> new file mode 100644
> index 000000000000..4fb9b5f72942
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-minerva.dts
> @@ -0,0 +1,330 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// Copyright (c) 2023 Facebook Inc.
> +/dts-v1/;
> +
> +#include "aspeed-g6.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +
> +/ {
> +	model = "Facebook Minerva";
> +	compatible = "facebook, minerva-bmc", "aspeed,ast2600";

Missing bindings and that's not correct compatible.

> +
> +	aliases {
> +		serial0 = &uart1;
> +		serial4 = &uart5;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS4,57600n8";

Drop, use stdout path instead.

> +	};
> +

...

> +&gpio0 {
> +	pinctrl-names = "default";
> +	gpio-line-names =
> +	/*A0-A7*/	"","","","","","","","",
> +	/*B0-B7*/	"","","","","","","","",
> +	/*C0-C7*/	"","","","","","","","",
> +	/*D0-D7*/	"","","SOL_UART_SET","","","","","",
> +	/*E0-E7*/	"","","","","","","","",
> +	/*F0-F7*/	"","","","","","","","",
> +	/*G0-G7*/	"","","","","","","","",
> +	/*H0-H7*/	"","","","","","","","",
> +	/*I0-I7*/	"","","","","","","","",
> +	/*J0-J7*/	"","","","","","","","",
> +	/*K0-K7*/	"","","","","","","","",
> +	/*L0-L7*/	"","","","","","","","",
> +	/*M0-M7*/	"","","","","","","","",
> +	/*N0-N7*/	"LED_POSTCODE_0","LED_POSTCODE_1",
> +			"LED_POSTCODE_2","LED_POSTCODE_3",
> +			"LED_POSTCODE_4","LED_POSTCODE_5",
> +			"LED_POSTCODE_6","LED_POSTCODE_7",
> +	/*O0-O7*/	"","","","","","","","",
> +	/*P0-P7*/	"","","","","","","","",
> +	/*Q0-Q7*/	"","","","","","","","",
> +	/*R0-R7*/	"","","","","","","","",
> +	/*S0-S7*/	"","","","","","","","",
> +	/*T0-T7*/	"","","","","","","","",
> +	/*U0-U7*/	"","","","","","","","",
> +	/*V0-V7*/	"","","","","","","","",
> +	/*W0-W7*/	"","","","","","","","",
> +	/*X0-X7*/	"","","","","","","","",
> +	/*Y0-Y7*/	"","","","","","","","",
> +	/*Z0-Z7*/	"","","","","","","","";
> +};
> +

Stray blank line.

Best regards,
Krzysztof

