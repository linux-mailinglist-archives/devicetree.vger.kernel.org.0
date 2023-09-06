Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A7BA793EA2
	for <lists+devicetree@lfdr.de>; Wed,  6 Sep 2023 16:22:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232532AbjIFOWF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Sep 2023 10:22:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240842AbjIFOWF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Sep 2023 10:22:05 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 176661732
        for <devicetree@vger.kernel.org>; Wed,  6 Sep 2023 07:22:01 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-52bcd4db4bdso5434437a12.3
        for <devicetree@vger.kernel.org>; Wed, 06 Sep 2023 07:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694010119; x=1694614919; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aH4htNzKGyY0NdJjI9Mh9TCs3stuoDgE8Vga1mOypZE=;
        b=B1M2mycWyOr51VgXntoehG9uufrIAzFv28rjZl/9qZGtg9+keev98X4Ef3v1Kgnp26
         qUzb5X6HFSeMGaUWWI4o17eo9xjmToBoHx+bSm+u+QJMxfPZe29rvp9KWgel3eZx8Q31
         XLLUmcs5WdpWARkdZqoCEUXxG5iIADSJ3ANwTv3I3fNVCmrxxm4wMDNRynrRjIpBzvWi
         Cvk6GwWtWcOBNzAdrer4MS6KurywSwA8KmbBTQ7ejdiEDbN8QvmoXjdN5hPPexuKq0Lo
         UUie34i3HkPuafIqNLV7/eiwJ3pq4i2sMN9bQsSgPbmLHEsDU3+6w2+2tBSTxb6WMxOc
         s8xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694010119; x=1694614919;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aH4htNzKGyY0NdJjI9Mh9TCs3stuoDgE8Vga1mOypZE=;
        b=AaEVOdsfNPNazLxQztJghD6CCwOVSpIyLQVeuBNgqd5xYKN3YMyTSJwAEocoKI1mDC
         r7f23q/ILuhrMGUtV2U7SpMp8DPZYt3vcmIiE42bT44oRPuChymKzXUqEYW+YnUViNp4
         kSsyN3/KSRaSUXRzkoHupxh2gTciZ/EzqROGQiXelO9+LHFXVwrNon0V99OtYsZgiQ59
         p7g7JIyAmJgfnw6RW9p3wn5rMw2RKaEmYQvNLhDqEVFz2lv+2Nw/zvjuR8q8904VV7qO
         eX5laDSGQRHpdtvLK4XdIKOu9SRU9eV2s+oI/Q25jN/YOT5KphBxRVurr5N4Wo0MMPnG
         GDyQ==
X-Gm-Message-State: AOJu0YwfR5JezCt+UxKf07Vv1Swh08bdpolasr21kAxJNwrkhtyyX/mv
        +2cAAq0RQ0+Zeaw8SQ6mDEXzG746M+uKz1NWQfI=
X-Google-Smtp-Source: AGHT+IFi+OpUFkhb9ey5NOFeAogtUpHwnCW7LVTTvZROsam4q2ZF0lAdYYLSknDRZ3B3wuhs91z/Uw==
X-Received: by 2002:a17:906:76da:b0:9a1:8a54:145f with SMTP id q26-20020a17090676da00b009a18a54145fmr2460169ejn.40.1694010119371;
        Wed, 06 Sep 2023 07:21:59 -0700 (PDT)
Received: from [192.168.0.107] ([79.115.63.137])
        by smtp.gmail.com with ESMTPSA id x10-20020a1709064a8a00b009937e7c4e54sm9041491eju.39.2023.09.06.07.21.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 07:21:58 -0700 (PDT)
Message-ID: <d84e5757-a8b6-4b32-b326-6114e55ee5ea@linaro.org>
Date:   Wed, 6 Sep 2023 15:21:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: at91/trivial: fix typo in crypto DT naming
Content-Language: en-US
To:     nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org
Cc:     Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Conor Dooley <conor.dooley@microchip.com>,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org
References: <20230906135838.59247-1-nicolas.ferre@microchip.com>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230906135838.59247-1-nicolas.ferre@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 9/6/23 14:58, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Fix typo in DT name for TDES node.
> 
> Fixes: 4b6140b96dfe ("ARM: dts: at91: Use the generic "crypto" node name for the crypto IPs")
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

> ---
>  arch/arm/boot/dts/microchip/sama5d4.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/sama5d4.dtsi b/arch/arm/boot/dts/microchip/sama5d4.dtsi
> index 41284e013f53..cbfc60fed37c 100644
> --- a/arch/arm/boot/dts/microchip/sama5d4.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama5d4.dtsi
> @@ -694,7 +694,7 @@ aes: crypto@fc044000 {
>  				clock-names = "aes_clk";
>  			};
>  
> -			tdes: crpyto@fc04c000 {
> +			tdes: crypto@fc04c000 {
>  				compatible = "atmel,at91sam9g46-tdes";
>  				reg = <0xfc04c000 0x100>;
>  				interrupts = <14 IRQ_TYPE_LEVEL_HIGH 0>;
