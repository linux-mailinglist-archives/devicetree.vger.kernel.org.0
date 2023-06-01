Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2309D7195B2
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 10:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232215AbjFAIfj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 04:35:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232336AbjFAIey (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 04:34:54 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F8691711
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 01:33:30 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-96f9cfa7eddso64398866b.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 01:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685608408; x=1688200408;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7BF4PtOkqXGCIjG5sZKC2cc3dbGT96AwN/tCA5yl4J8=;
        b=H8kqwOz1+oeAMAnwWRIn6XbrBpxt92VOI8IVd92jpNDPNug0aqr0htiUtWi/3Fbg2A
         vn/NI9DbSGe8OiuS5z6EvO69a2up2iOGx1LKNVYiUVjhN9gwgm32TM0DoGE2HKECOSuZ
         rdysxreDH55Bb44PVnwumb1vhfEPjFma2V/M86VlsRdbcOKTGovQQ693irZ2zNbvDLuY
         pIvCq/dWxH+K4ehfTHUx9D1cFLowKiwLpUcg9K0VnaxaHqmTEGe+ioDVwih6M/5D92ju
         LQSEDgbLN778UPxceff5jHwdr/10ppAGJR+JLpb+sB+RYH11Tf8/AgYmWVUEybZCdyWp
         e5yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685608408; x=1688200408;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7BF4PtOkqXGCIjG5sZKC2cc3dbGT96AwN/tCA5yl4J8=;
        b=EVS9PJgbREVRJcq5RkWWzTgNqI1Eyoue2OtBovYgBOlXA4WNLeaiC48wfnl/HndBxE
         zF0vPtF2aP9djtNJ7jVpgERwV6KNIfZ6ubK5kUilJPFerpVZmlzhRRLl8VsLg7OJk8VT
         pHoN/gekaDIakp8xcsVvTVv28ZICtj97kSbYFLzFVNFiAa+6m1o7iyMUiw9ULWpYpzlD
         tVecWv5HPLXcUagEyENMtNxj010gy7cU7CFXTDeQVBmsRHrAej51gSRjNGObsswHMhvt
         d8BL0Mvd9+XyFVOE+5CH41i0h8/K2hFa5azLUibpSx3G5+VmkgnnLlQvWM3tXJ45yKUH
         ANFA==
X-Gm-Message-State: AC+VfDxEcOGlpJRk8EOu+bITikRFk4/7g1PwD2ig23b3GWGYGE+i83P4
        jo1r/XBtoRx1BpZAZjDpA1Zw/g==
X-Google-Smtp-Source: ACHHUZ5W5YuWUPGwqtAYMza3MvhyXmFhj9gL70htopC+b47t/2eJYICooxV4xCv4TdVFXyomVgWfqA==
X-Received: by 2002:a17:907:7e8c:b0:96f:c676:a917 with SMTP id qb12-20020a1709077e8c00b0096fc676a917mr8035429ejc.35.1685608408688;
        Thu, 01 Jun 2023 01:33:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id lf4-20020a170907174400b0096f7500502csm10224090ejc.199.2023.06.01.01.33.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 01:33:28 -0700 (PDT)
Message-ID: <147fba8a-8c3b-6ed5-22ef-599d9f52ca1d@linaro.org>
Date:   Thu, 1 Jun 2023 10:33:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v1 42/43] ARM: dts: ep93xx: Add EDB9302 DT
Content-Language: en-US
To:     Nikita Shubin <nikita.shubin@maquefel.me>,
        Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Michael Peters <mpeters@embeddedTS.com>,
        Kris Bahnsen <kris@embeddedTS.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230424123522.18302-1-nikita.shubin@maquefel.me>
 <20230601054549.10843-24-nikita.shubin@maquefel.me>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230601054549.10843-24-nikita.shubin@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2023 07:45, Nikita Shubin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> 
> Add device tree for Cirrus EDB9302.
> 
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> ---
> 
> Notes:
>     v0 -> v1:
>     
>     - added USB
>     - dropped 'Missing USB' in commit message
>     - add mdio + eth phy
> 
>  arch/arm/boot/dts/ep93xx-edb9302.dts | 160 +++++++++++++++++++++++++++
>  1 file changed, 160 insertions(+)
>  create mode 100644 arch/arm/boot/dts/ep93xx-edb9302.dts
> 
> diff --git a/arch/arm/boot/dts/ep93xx-edb9302.dts b/arch/arm/boot/dts/ep93xx-edb9302.dts
> new file mode 100644
> index 000000000000..3ec89f7587db
> --- /dev/null
> +++ b/arch/arm/boot/dts/ep93xx-edb9302.dts
> @@ -0,0 +1,160 @@
> +// SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +/*
> + * Device Tree file for Cirrus Logic EDB9302 board based on EP9302 SoC
> + */
> +/dts-v1/;
> +#include "ep93xx.dtsi"
> +
> +/ {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +	compatible = "cirrus,edb9302", "cirrus,ep9301";
> +	model = "cirrus,edb9302";
> +
> +	chosen {
> +	};
> +
> +	memory {
> +		device_type = "memory";
> +	};
> +
> +	soc {
> +		flash@60000000 {

Same comments - override by label/phandle.

> +			compatible = "cfi-flash";
> +			reg = <0x60000000 0x1000000>;

Are you sure that your board adds things to the SoC? The code suggests
that, but I would like to see such circuit.

> +			bank-width = <2>;
> +		};
> +	};
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "EDB93XX";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,mclk-fs = <256>;
> +		simple-audio-card,convert-channels = <2>;
> +		simple-audio-card,convert-sample-format = "s32_le";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s>;
> +			system-clock-direction-out;
> +			frame-master;
> +			bitclock-master;
> +			dai-sample-format = "s32_le";
> +			dai-channels = <2>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&codec>;
> +		};
> +	};
> +};
> +
> +&pinctrl {
> +	compatible = "cirrus,ep9301-pinctrl";
> +};
> +
> +&gpio0 {
> +	gpio-ranges = <&pinctrl 0 153 1>,
> +		      <&pinctrl 1 152 1>,
> +		      <&pinctrl 2 151 1>,
> +		      <&pinctrl 3 148 1>,
> +		      <&pinctrl 4 147 1>,
> +		      <&pinctrl 5 146 1>,
> +		      <&pinctrl 6 145 1>,
> +		      <&pinctrl 7 144 1>;
> +};
> +
> +&gpio1 {
> +	gpio-ranges = <&pinctrl 0 143 1>,
> +		      <&pinctrl 1 142 1>,
> +		      <&pinctrl 2 141 1>,
> +		      <&pinctrl 3 140 1>,
> +		      <&pinctrl 4 165 1>,
> +		      <&pinctrl 5 164 1>,
> +		      <&pinctrl 6 163 1>,
> +		      <&pinctrl 7 160 1>;
> +};
> +
> +&gpio2 {
> +	gpio-ranges = <&pinctrl 0 115 1>;
> +	/delete-property/ status;

???

> +	/delete-property/ pinctrl-0;
> +	/delete-property/ pinctrl-names;

???

I have no clue what you are trying to achieve here but this is a proof
your DTSI is bogus.

You should never remove statuses. You should never need to remove
pinctrl as these are board dependent, not SoC. If you remove them, it
means they are not part of SoC in the first place!
Best regards,
Krzysztof

