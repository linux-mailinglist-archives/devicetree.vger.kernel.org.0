Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5319B5BF6FD
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:07:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbiIUHHV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:07:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbiIUHHS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:07:18 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0546491E3
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:07:16 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id s6so7670303lfo.7
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=YtABP0DqM9zEJdk0m73nlx/TsH7lbCUoL8cujDQ7aNE=;
        b=ox1fKOJ9o4w+DrZbYs2Po526yD7gucfmp0rf6GjudyDGT9Xjg9ClRm7XN/fZBOPuiw
         eqVORFG4AlfL9Hnf39Smw8yszHPExASgSZxpMH6G+bJr7YmcDwUaA2MZqg3D7dXdm4dg
         gog7imypWLTgIQ+NsSqc7IYfR/2RBKfaj9fyAnXp0Qi7gdgSfs9kMgTir58NioFt36hF
         GciOhfaOU3NdV2GV7be/Oyr5UGnGmPL29IH2G6Ygwk2ibGnWbCylI/dZaUU7zD0Hwd3n
         e5mJbfuiPj+CFnHu8hs0zpS7w3iyCDb4Aua8LpmGvSSMHsdHSin8O0GWcPD7Sya6u+7s
         jwqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=YtABP0DqM9zEJdk0m73nlx/TsH7lbCUoL8cujDQ7aNE=;
        b=HrfozagPXRehOjijBSv0d9cKeCgmm/b26Ojw0m/Vey7mK9z6BjgYS8pnhVnTDjMLNz
         S5pkQX7bJQZ/ZlkjJhcI6TfYDNsUM8v2RgI8rxtaJP1a5T1FvRg5bPgOqDJNOCtjW6Wq
         bGIoQKZ94KNlJQejEQIzTGOcb/d5D3CaryEx/lY3Kbucv67WwDaFUFCs2OPmB4aCob3x
         K2QBSsK2I62fk//0ByiDwlycqtGwblgbAgfJCGUE90mF6HzYHfPmWKGwpwchnFhkqVzM
         BnByPOx5oh0WZ8poVrc+E8uNNCyAlB2A5xPMdwnWrjRU1BF7piTYSJh3Aa26m5/WFp3s
         9M8Q==
X-Gm-Message-State: ACrzQf22nqe7bAzEq87dS8tZh31oJWd13YKBch+y2WYW1ZS2+dMYYWVQ
        kgS7n6hImXuZbT2B3+J0pP/oPg==
X-Google-Smtp-Source: AMsMyM6ky8xTFCHnJtDxE68NR/SX+6TXHFxmF3SpTO8jQWt25fPgViaf2XPaDuOjRc3qEOhxL1jN7g==
X-Received: by 2002:a05:6512:3408:b0:49a:b195:7ab5 with SMTP id i8-20020a056512340800b0049ab1957ab5mr9107648lfr.92.1663744035087;
        Wed, 21 Sep 2022 00:07:15 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d19-20020ac24c93000000b00497ab34bf5asm318239lfl.20.2022.09.21.00.07.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:07:14 -0700 (PDT)
Message-ID: <98d70040-f442-98dd-eb50-39e2f39a9be3@linaro.org>
Date:   Wed, 21 Sep 2022 09:07:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3] ARM: dts: aspeed: Add AMD DaytonaX BMC
Content-Language: en-US
To:     Konstantin Aladyshev <aladyshev22@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20220920165404.14099-1-aladyshev22@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920165404.14099-1-aladyshev22@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 18:54, Konstantin Aladyshev wrote:
> Add initial version of device tree for the BMC in the AMD DaytonaX
> platform.
> 
> AMD DaytonaX platform is a customer reference board (CRB) with an
> Aspeed ast2500 BMC manufactured by AMD.
> 
> Signed-off-by: Konstantin Aladyshev <aladyshev22@gmail.com>
> ---
>  .../bindings/arm/aspeed/aspeed.yaml           |   1 +
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/aspeed-bmc-amd-daytonax.dts | 319 ++++++++++++++++++
>  3 files changed, 321 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-amd-daytonax.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> index 1895ce9de461..191a52595fea 100644
> --- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> +++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> @@ -30,6 +30,7 @@ properties:
>          items:
>            - enum:
>                - amd,ethanolx-bmc
> +              - amd,daytonax-bmc

Alphabetical order.

>                - ampere,mtjade-bmc
>                - aspeed,ast2500-evb
>                - asrock,e3c246d4i-bmc

This is always a separate patch.

> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 05d8aef6e5d2..9eff88d410aa 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1575,6 +1575,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-ast2600-evb-a1.dtb \
>  	aspeed-ast2600-evb.dtb \
>  	aspeed-bmc-amd-ethanolx.dtb \
> +	aspeed-bmc-amd-daytonax.dtb \
>  	aspeed-bmc-ampere-mtjade.dtb \
>  	aspeed-bmc-arm-stardragon4800-rep2.dtb \
>  	aspeed-bmc-asrock-e3c246d4i.dtb \
> diff --git a/arch/arm/boot/dts/aspeed-bmc-amd-daytonax.dts b/arch/arm/boot/dts/aspeed-bmc-amd-daytonax.dts
> new file mode 100644
> index 000000000000..89634dda8e5f
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-amd-daytonax.dts
> @@ -0,0 +1,319 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/dts-v1/;
> +
> +#include "aspeed-g5.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +/ {
> +	model = "AMD DaytonaX BMC";
> +	compatible = "amd,daytonax-bmc", "aspeed,ast2500";
> +
> +	memory@80000000 {
> +		reg = <0x80000000 0x20000000>;
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		video_engine_memory: jpegbuffer {
> +			size = <0x02000000>;	/* 32M */
> +			alignment = <0x01000000>;
> +			compatible = "shared-dma-pool";
> +			reusable;
> +		};
> +	};
> +
> +	aliases {
> +		serial0 = &uart1;
> +		serial4 = &uart5;
> +	};
> +
> +	chosen {
> +		stdout-path = &uart5;
> +		bootargs = "console=ttyS4,115200 earlycon";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		fault {

No improvements here, so you did not test your DTS. You received comment
asking you to do it.

Please run `make dtbs_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Best regards,
Krzysztof
