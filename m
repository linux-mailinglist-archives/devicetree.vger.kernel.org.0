Return-Path: <devicetree+bounces-822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 796447A3442
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 10:22:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32443281937
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 08:22:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFF68184F;
	Sun, 17 Sep 2023 08:22:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9068115BA
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 08:22:46 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24A06130
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 01:22:43 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b962c226ceso56456611fa.3
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 01:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694938961; x=1695543761; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UKJQdmUO+2e6eXt5x8oNFwJaRXFDIfNhfyn01aL90+s=;
        b=wzKHXfxyb1OFlP/hAPZLw7pZtRHhgf3FYt3aHEgWdtHlt1yD+tiB+bfuoZa18F/ReX
         lmUEg978Wjr+V9N2tC5GiJbRAe8t3CMDoAHxxa8ULKVV0NcceIgyAz3C5N55Z/AUePOm
         fu7S0flpa2Ll+2OGTVKS6lxqrYLeJZbmA2Dvi5nzOytTjKaA1bwP+WyAne8RqW5yvjJG
         wJq1oRz8RTUF+Zd6EtTvy+7wFR/ByO3RofPuthAEay0hIVaOG3QpY2bBuhrHAq+FEzdm
         EnO/wtisqItT/a23L9KBUztbLawHzOJVKTyXQyrIC4AC2+9NJe8DDAqDhsLy+4nHwqrI
         VFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694938961; x=1695543761;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UKJQdmUO+2e6eXt5x8oNFwJaRXFDIfNhfyn01aL90+s=;
        b=jHtyO1FaUKrPsKKpaozEgct+D5Kdn3wYK3ZCWmtvaZ1EoRBOFD2K5ZUK7hKbprBnDY
         XSUzRRawPKd8o5shDq0N/9rdLtsJWdZnWoSuhx0bXKmf6HgqU0M0HcO4E71taSUFIMKS
         YMsJ4ZkvWEL2IRlvleHV7QoZcU2BqT6YPuY+XPzDu+PyB+HQ9zcFhql9mFk5dw4MnVuU
         8a+7QNNmky5YotTm/P6P9Cslb7qSJsZLmBPViW0IQ1w5c/ywwoleH+5L01glLNmOeCIz
         pqbBrVJ+gtudpZMaXcDBKXfD0ZnWLyuSpLHNfYowNlMLcq/hUQ8R4S673wR7VdNgHTEF
         lVcw==
X-Gm-Message-State: AOJu0YzkVo+tln33RqmCFVGpwTR6PNA7RXukqq63rOlg4vGP33M/Sqei
	1CUqRmXhDGmH+GFiIzY4qPiUZQ==
X-Google-Smtp-Source: AGHT+IHhKmI2AHVuwE1u4od36FAcoAVoqNik+gwDo4HPAZycohFbezmVf25FmXnTpiN7CXkAeqnU3A==
X-Received: by 2002:a05:651c:1a27:b0:2bf:f5c9:2dce with SMTP id by39-20020a05651c1a2700b002bff5c92dcemr2603321ljb.30.1694938961251;
        Sun, 17 Sep 2023 01:22:41 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id g21-20020a170906595500b00992f2befcbcsm4667110ejr.180.2023.09.17.01.22.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 01:22:40 -0700 (PDT)
Message-ID: <6166b695-25af-54b0-9d30-36c75189b0c5@linaro.org>
Date: Sun, 17 Sep 2023 10:22:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v1 1/1] ARM: dts: hpe: BUG: Correct GXP register ranges
Content-Language: en-US
To: charles.kearney@hpe.com, verdun@hpe.com, nick.hawkins@hpe.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230915165436.3118284-1-charles.kearney@hpe.com>
 <20230915165436.3118284-2-charles.kearney@hpe.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915165436.3118284-2-charles.kearney@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 18:54, charles.kearney@hpe.com wrote:
> From: Charles Kearney <charles.kearney@hpe.com>
> 
> Bug fix to correct memory ranges on GXP to include host registers. This
> corrects a issue where the host interrupt controller is not available.

Then you miss Fixes tag. Maybe also Cc-stable tag.

> 
> Signed-off-by: Charles Kearney <charles.kearney@hpe.com>
> ---
>  arch/arm/boot/dts/hpe/hpe-gxp.dtsi | 39 +++++++++++++++---------------
>  1 file changed, 20 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/hpe/hpe-gxp.dtsi b/arch/arm/boot/dts/hpe/hpe-gxp.dtsi
> index cf735b3c4f35..18230a4754a6 100644
> --- a/arch/arm/boot/dts/hpe/hpe-gxp.dtsi
> +++ b/arch/arm/boot/dts/hpe/hpe-gxp.dtsi
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
> - * Device Tree file for HPE GXP
> + * Device Tree for HPE

How is this related to bug?

>   */
>  
>  /dts-v1/;
> @@ -52,73 +52,74 @@ L2: cache-controller@b0040000 {
>  			cache-level = <2>;
>  		};
>  
> -		ahb@c0000000 {
> +		ahb@80000000 {
>  			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
> -			ranges = <0x0 0xc0000000 0x30000000>;
>  			dma-ranges;
> +			ranges = <0x0 0x80000000 0x20000000>,
> +			<0x40000000 0xc0000000 0x3fff0000>;

Missing proper alignment.


Best regards,
Krzysztof


