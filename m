Return-Path: <devicetree+bounces-929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C1E7A3FDA
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 06:08:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64D3F1C209A2
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 04:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F1093FDB;
	Mon, 18 Sep 2023 04:08:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA2E1FDC
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 04:08:15 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCBCAFF
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 21:08:13 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-404773f2501so35306665e9.0
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 21:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695010092; x=1695614892; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ez612mLc6i/GdCgxr8aU9W0YYLQrGi5wZNJ79KpTovo=;
        b=E0Ee4xOhxJN7qDyhcZtNpGUmxkciCU30Aj+H3/C3xL1ZxCIP1pmanqIQHIPdR3Towu
         x8b9S44EFEpVom2yaLlBPeXV8ejVusuF/tiKSuDwY5oc4o4rsXhdpdZU6jzePDJNCvNw
         1eyTSO9/APquyka/QfrzwmVGaggWPe6ovasO3ofQ/lx8KCQFkqxubQtXEzXlTJq5wDDw
         y0hjsoz0H6/5YEG80Xygw5Q9+Dw6x8GkqNAu/I0INeJSMRBSUtU8czWXm4pKYqQOvKVZ
         +VmIrcW4hdBiwc99JUFpLz0VCS0nsbHBFavEoUW0BwYb+70ZNHlLnWN9H/yUdhDMrSMm
         uXPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695010092; x=1695614892;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ez612mLc6i/GdCgxr8aU9W0YYLQrGi5wZNJ79KpTovo=;
        b=ESkLaRa2Q1HAqdTLwC0DOzNV8LItXuCWuKmIj6gTXmGxeMDBMGddmqbAlb84GYEm7c
         6xWvrxM1iwnKKYgHLS8M1fKBwCnwFeUrcmek+QTK5pwEorEXNYb3nqpzRXzZmD/8yoQH
         OIMezvtsjpzFU6RF/NVcAOZT4t8t9IIxWYlCfFtohFpRYgh9jXfrooNJ5fNoN5R9n0sJ
         /iS3wzrypPUI62Faf+9PIN8mCyLIZLV2W869FmSd38wiokbtS1UhoORHA3Ge9UpiKIMJ
         7EC70EWyvMlv04o1pzEodZlK3t5+zRGHsSbTuYHeYB6+QlhhUlFqdSRa4ZEL5F5dpB0A
         8HWQ==
X-Gm-Message-State: AOJu0Yw95XmUKtgMw4wriNwct9RLgW8YJuD9oF7KqrRg339VJty5xpm7
	cJIaC6VhIUXqeoobrJxRM9p6UA==
X-Google-Smtp-Source: AGHT+IGZar+PiSUcNuJ1lLQ9xuEptIIG5nA5eGx3IXYeILOsG9JLq1k54ufDfQiz2Ug3wmZ1PShVpQ==
X-Received: by 2002:a1c:f717:0:b0:403:b86:f624 with SMTP id v23-20020a1cf717000000b004030b86f624mr6477577wmh.23.1695010092274;
        Sun, 17 Sep 2023 21:08:12 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id z20-20020a7bc7d4000000b003feae747ff2sm14040321wmk.35.2023.09.17.21.08.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 21:08:11 -0700 (PDT)
Message-ID: <7d1b2f5d-cbbb-810f-b511-84d6d4682fa1@tuxon.dev>
Date: Mon, 18 Sep 2023 07:08:10 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] ARM: dts: at91/trivial: fix typo in crypto DT naming
Content-Language: en-US
To: nicolas.ferre@microchip.com, Tudor Ambarus <tudor.ambarus@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 devicetree@vger.kernel.org
References: <20230906135838.59247-1-nicolas.ferre@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20230906135838.59247-1-nicolas.ferre@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 06.09.2023 16:58, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Fix typo in DT name for TDES node.
> 
> Fixes: 4b6140b96dfe ("ARM: dts: at91: Use the generic "crypto" node name for the crypto IPs")
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Applied, thanks!

Hi, Nicolas,

Also, I've removed the fixes tag as the node is not referenced anywhere by
its name thus no need for fixes in this case. Let me know if you consider
differently.

Thank you,
Claudiu Beznea
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

