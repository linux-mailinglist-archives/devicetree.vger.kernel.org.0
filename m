Return-Path: <devicetree+bounces-169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 365AE7A0082
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 11:40:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1D9E280F55
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 09:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7106D20B3E;
	Thu, 14 Sep 2023 09:40:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE65224E4
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 09:40:00 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70B2565B9
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 02:39:59 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-31c4d5bd69cso680009f8f.3
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 02:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694684398; x=1695289198; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wkRr2Iy0+K6vIJnTucCFmAy5l/T/0tpW8rzsNiTNhmA=;
        b=aWWc3x+zJHk9/KstU8EfdH2PZW74892FCdzvpy0WleeQEnZyzmamuK9dbHCdKs2/kk
         ALeyojv0SCghWWg7t1HzmReOuIayQKTu6d4TWfG/gvwNnkjWfCInkRynQwDa46DkU9sX
         ZXl2WIUEP+I6ofV5zHIB6KdOIHk6nsnrmrAcDYL7P5Em+jnZkwHU3NlUxP0NS9XgguvY
         GrQI81ClA87NM/cRIyro6YBTZkUBHOEObdFgybyCUSjQTIEe081m7uWXXwaqX0VylA0x
         +eo4Sc4xzs+wPGy8TRztPZNqrIn4KeRcfjPl0mKOuP5iuS9kyPZl7Y4M9G4tSsbiaFZY
         cgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694684398; x=1695289198;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wkRr2Iy0+K6vIJnTucCFmAy5l/T/0tpW8rzsNiTNhmA=;
        b=DMSeg5qFdeOWOnXKhfF1Cp5U3bWSp4gxyM7l5taSQxoReuZ4FbdhxXFgRNS7hdaLZt
         Izz/HIw9KhJD8i7P6OiWe0its+GN4OUL7lu6+Pyv/+ZXM5o02yj5Wh2LtiQgkML0buUz
         W/Uoy78u5MR4w04QoT5ikEl41DNRVoi7E3Psi7zSFfGxbUzXhm/pJHBiUWoRXOJdRXPQ
         s9o2G4qfmWU6Ar5zjiE/d09Hocd0AgcGj9emFWx/j010bZUVkuFmg7sYyHSU3c4VrQlV
         slpYx/O/nc/tCjrZOKYbUbPvlXrLgKtMAP5V4i3GBZPddLBNPEAqZlR3UevQy40Tr8Nl
         VnDg==
X-Gm-Message-State: AOJu0YxvodPV8nUwTOcSyr2XE7pUoMIqJ6OStHucyViG4KtlwUGORizD
	uvBVYk6KzSNxFWYU2cKAvGfOGA==
X-Google-Smtp-Source: AGHT+IGVe3Woa/BzotTOKXLgtxPUhPiSS0CBrX4NQmlul1TMSNsNw4zct4KzyDU4ZGekV2TbD1NJIw==
X-Received: by 2002:a05:6000:1816:b0:313:fe1b:f441 with SMTP id m22-20020a056000181600b00313fe1bf441mr4019402wrh.29.1694684397782;
        Thu, 14 Sep 2023 02:39:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id b12-20020adfe64c000000b003177074f830sm1277684wrn.59.2023.09.14.02.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 02:39:57 -0700 (PDT)
Message-ID: <02e25e44-1146-bb59-58de-800b11d30e7b@linaro.org>
Date: Thu, 14 Sep 2023 11:39:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 3/5] gpio: vf610: add i.MX8ULP of_device_id entry
Content-Language: en-US
To: Peng Fan <peng.fan@nxp.com>, Linus Walleij <linus.walleij@linaro.org>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20230914-vf610-gpio-v1-0-3ed418182a6a@nxp.com>
 <20230914-vf610-gpio-v1-3-3ed418182a6a@nxp.com>
 <b97ff9b6-97df-2c62-1946-06cd4ac79c95@linaro.org>
 <CACRpkdYJFp72o=c1OxN9Kcd7-Ee-id8+O2m0ag-rrT-nfq1Srg@mail.gmail.com>
 <48e46de0-0996-b715-9d17-e1e10c0e44be@linaro.org>
 <DU0PR04MB9417CA28C25B68DEF9930DC488F7A@DU0PR04MB9417.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DU0PR04MB9417CA28C25B68DEF9930DC488F7A@DU0PR04MB9417.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 14/09/2023 11:08, Peng Fan wrote:
>> Subject: Re: [PATCH 3/5] gpio: vf610: add i.MX8ULP of_device_id entry
>>
>> On 14/09/2023 10:48, Linus Walleij wrote:
>>> On Thu, Sep 14, 2023 at 7:48 AM Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>> On 14/09/2023 04:20, Peng Fan (OSS) wrote:
>>>>> From: Peng Fan <peng.fan@nxp.com>
>>>>>
>>>>> i.MX8ULP supports two interrupts, while i.MX7ULP supports one
>> interrupt.
>>>>> So from hardware perspective, they are not compatible.
>>>>>
>>>>> So add entry for i.MX8ULP.
>>>>>
>>>>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>>>>> ---
>>>>>  drivers/gpio/gpio-vf610.c | 1 +
>>>>>  1 file changed, 1 insertion(+)
>>>>>
>>>>> diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
>>>>> index dbc7ba0ee72c..88f7215cdf4b 100644
>>>>> --- a/drivers/gpio/gpio-vf610.c
>>>>> +++ b/drivers/gpio/gpio-vf610.c
>>>>> @@ -67,6 +67,7 @@ static const struct fsl_gpio_soc_data imx_data = {
>>>>> static const struct of_device_id vf610_gpio_dt_ids[] = {
>>>>>       { .compatible = "fsl,vf610-gpio",       .data = NULL, },
>>>>>       { .compatible = "fsl,imx7ulp-gpio",     .data = &imx_data, },
>>>>> +     { .compatible = "fsl,imx8ulp-gpio",     .data = &imx_data, },
>>>>
>>>> Why? It is the same as imx7. No need.
>>>
>>> Because compatible = "fsl,imx7ulp-gpio" is not what is going to be in
>>> the device tree, but compatible = "fsl,imx8ulp-gpio"?
>>>
>>> What am I missing here? Maybe the commit message is weird.
>>>
>>
>> If the devices used before and are still going to use same driver data, they
>> look compatible from OS point of view. Therefore usually we express such
>> compatibility and do not add unneeded device_id entries.
>>
>> Now whether the devices are truly compatible or not, I don't know and with
>> some recent emails I am bit confused.
> 
> Some tricks in dtb are made to make the driver could work for both i.MX7ULP,
> i.MX8ULP, i.MX93 with fsl,imx7ulp-gpio.
> 
> Such as i.MX8ULP:
> reg = <0x2d000080 0x1000>, <0x2d000040 0x40>;
> Actually the two regs are belong to one physical continuous space,
> <0x2d000000 0x1000>
> Just to i.MX8ULP could reuse the vf610 gpio driver, the regs are partitioned
> into two with some offset added
> 
> So from hw, I think they are not compatible, just some sw tricks to
> make the linux driver could work for both platform.

OK, that sounds like reason to clean this up - drivers, bindings and
finally DTS - all with proper explanation justifying affected DTS users.

Best regards,
Krzysztof


