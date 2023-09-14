Return-Path: <devicetree+bounces-140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 640CF79FDCB
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:03:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D5F8FB20A19
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9B7CA60;
	Thu, 14 Sep 2023 08:03:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC06EBC
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:03:38 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85D8A9B
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:03:37 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso86015266b.1
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694678616; x=1695283416; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4NRB4alMY1NVgea7TozYUMItQUlkCZKiIlDqxQtzmM8=;
        b=Unc+nWjND6ZGB0WKXskuSUQ75iChOQoisCFygUyR2s+F6ZZY68pYqatSeI8VFq5D2W
         QTIGbmPmOCmZHvDVqWv0ihyefbz0GAbt6WglYpw2Vgolc6xgcP4rB63s363/kmnhMBmy
         xk+hbatpweg5XLXvzT+zg4xFPSzVYo/GxgPbS8/A5pJMIl8MpGyhM9e1TAnT9P6Q2Nuq
         6vYYZe28cp3MfzWRdPuwDW7RwLeStQP7M8oyzTSPTZrsqzYvcW6/r9xQD8wSuy4xVmgr
         HPn5+HjgCW4JVAELnPQddT1FR4hhtiNK5LOx7CdDgbwSlurAVoCxLB/nLS2uOkSgFmqM
         L4Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694678616; x=1695283416;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4NRB4alMY1NVgea7TozYUMItQUlkCZKiIlDqxQtzmM8=;
        b=VjxYXENNcmYnZJwBn96rOPLfwLfQHunuH2p219geoBSkbgxrdNrDRH+CeqKU/HYlxJ
         rVPAUQZBdHEwqqe+AoiT3FsugzkGBnX6K5wn9SedljffKcWWlRFx00kMpliU4SqE7DY4
         uPxyvQVQ3Eo89WvM65C//eO6Zaayg43uLft4Sve1EwaCr0Jn7BLkTuN09GuQoUgsVoNf
         o5zmSasypHKCcCgWTruXxDK+kqh86WfoVOjDIYGuacMsRSTUbBkSxhZsaNro1uVuf0uY
         C5c7VeNW4ZH8ayCGoNzS5G5qprkQElio1z5mQnrQhGGdVpZAh1duSbBALB+hi7+EmP9f
         4SQA==
X-Gm-Message-State: AOJu0YyLID8vsUuUtP1vWaeqO3l6xP1JrvVrGzWYHW859wBw39CLARrK
	2VYoTQxQi5s/vJcb/stiEK7BSg==
X-Google-Smtp-Source: AGHT+IFV4DfNqYLwUOKA3yGGXOAhUvrZ0uU0sDJrGix/jT6KMxNQwV//CEpyKC2hA+lZLd08e7+uJA==
X-Received: by 2002:a17:906:5a5f:b0:9aa:20b2:35e7 with SMTP id my31-20020a1709065a5f00b009aa20b235e7mr3762342ejc.9.1694678615900;
        Thu, 14 Sep 2023 01:03:35 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id v4-20020a17090690c400b00992b1c93279sm619880ejw.110.2023.09.14.01.03.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 01:03:34 -0700 (PDT)
Message-ID: <f69b4727-679f-7874-2d0e-137d17e5841f@linaro.org>
Date: Thu, 14 Sep 2023 10:03:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2] ARM: dts: exynos: enable polling in Exynos 4210
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Mateusz Majewski <m.majewski2@samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
References: <CGME20230911133431eucas1p2631e7060cecb0914933ed45b837cf8eb@eucas1p2.samsung.com>
 <20230911133417.14042-1-m.majewski2@samsung.com>
 <e30a38fd-ea70-d5de-795f-9c8ea3177ac4@linaro.org>
In-Reply-To: <e30a38fd-ea70-d5de-795f-9c8ea3177ac4@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/09/2023 10:01, Krzysztof Kozlowski wrote:
> On 11/09/2023 15:34, Mateusz Majewski wrote:
>> It seems that thermal in Exynos 4210 is broken without this, as it will
>> never decrease cooling after increasing it.
>>
>> Signed-off-by: Mateusz Majewski <m.majewski2@samsung.com>
>> ---
>> v1 -> v2: Just uploaded separately from all the thermal: exynos:
>>   patches with a shorter recipient list, no change otherwise.
>>
>>  arch/arm/boot/dts/samsung/exynos4210.dtsi | 10 ++++++++--
>>  1 file changed, 8 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/samsung/exynos4210.dtsi b/arch/arm/boot/dts/samsung/exynos4210.dtsi
>> index 0e27c3375e2e..aae185b7f91c 100644
>> --- a/arch/arm/boot/dts/samsung/exynos4210.dtsi
>> +++ b/arch/arm/boot/dts/samsung/exynos4210.dtsi
>> @@ -391,8 +391,14 @@ &cpu_alert2 {
>>  };
>>  
>>  &cpu_thermal {
>> -	polling-delay-passive = <0>;
>> -	polling-delay = <0>;
>> +	/* Exynos 4210 supports thermal interrupts, but only for the rising threshold.
> 
> This is a friendly reminder during the review process.
> 
> It seems my previous comments were not fully addressed. Maybe my
> feedback got lost between the quotes, maybe you just forgot to apply it.
> Please go back to the previous discussion and either implement all
> requested changes or keep discussing them.
> 
> I fixed it up and applied.
> 

BTW, line wrapping was also not correct :/ Please follow coding style -
it is still 80, unless exception makes things readable. There is no need
for exception here.

Best regards,
Krzysztof


