Return-Path: <devicetree+bounces-93-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 118E179FC09
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:32:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F27FCB20AF4
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF415250EC;
	Thu, 14 Sep 2023 06:32:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30D43FED
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:32:00 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01FB1E78
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:32:00 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-307d58b3efbso505413f8f.0
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694673118; x=1695277918; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OqMv56oIlyq1yZUHYezHOhINRufdy3f4MtOJTEMiAsI=;
        b=UcHSsd0QJJS5AF08mpp46jgYBcgzN7GLhjCdv+Azo5LQMiIFXMjWdOWZXyyx0LFIx5
         OsOKFpnvpE0VVkd1dYI6p81IOcANf5Q2utvCXQi3SXxCLe960itY1WMg4YOT8+9g7BMx
         TmqRfhCG6QOUZditzf7/bi/c+Nn9z33NGuDjB4rj/LNXL0dKyPEZGIT5CRs2265mOQCg
         XDWMIEsxKV32UlgnIus9OuQ/9qeJyGLKxjYh3pdKxofn3Czb/rmNnEfX6sXdoloy0nXZ
         Pw/AoRhALw2VRBnlyn+/8uvzrQ5e9E+8SSHh3ZafLEv+sXVm8a8RsXXPwvzi8v0WlCOy
         wtGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694673118; x=1695277918;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OqMv56oIlyq1yZUHYezHOhINRufdy3f4MtOJTEMiAsI=;
        b=jSdJfcBweCEgkYIzBlOzDpWZ80yzk/O9PplGcr/Eng+MC4Y6KxgBUgTLRazm9zuw4K
         rNgli15ReCQpau0XC+LA7iMnAnqm8Cc4H3TQ8TvXQmJTg8K2HQPE/kFgvz361jhuUuDN
         dOKOlP73QwSEDmAtEkWY/u5yJX+V3ohYW6r0w8aC+OxsmL1sQbLtCPjr+5r2Rg4JXe+L
         kcHldevw0ezCrZMuI33/TyxfJSZsPOfhx1LhbaNN7+865g2uoJOHiq9dTIZrn14uRrKg
         mrU9lAq0DZG/Nz5ho4sIN1b4zltL8pDgr0nX6kQLTEIMO43J0zMCOjxVaw1UaumeGgqa
         2f4Q==
X-Gm-Message-State: AOJu0YxtOlJQMWs98C56/oRcM2JN1qJjTEFp8p22aI4yjl2kWwvjYDWz
	zdBel5PzZUmoU/9tNFJsiyVngw==
X-Google-Smtp-Source: AGHT+IH/ckypx3vpKLPW6uGJks68NV9sYYN9vT0iwO7z8Oo36uYXId5kT/9X7Oj/IcnxZ00H7qkRlw==
X-Received: by 2002:adf:cf08:0:b0:317:2574:c2b1 with SMTP id o8-20020adfcf08000000b003172574c2b1mr4150728wrj.30.1694673118411;
        Wed, 13 Sep 2023 23:31:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id b12-20020adfe64c000000b003177074f830sm832026wrn.59.2023.09.13.23.31.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 23:31:57 -0700 (PDT)
Message-ID: <9fc4817d-00ae-aaf4-bfb6-b24361f55799@linaro.org>
Date: Thu, 14 Sep 2023 08:31:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 5/5] arm64: dts: imx93: update gpio node
Content-Language: en-US
To: Peng Fan <peng.fan@nxp.com>, "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20230914-vf610-gpio-v1-0-3ed418182a6a@nxp.com>
 <20230914-vf610-gpio-v1-5-3ed418182a6a@nxp.com>
 <bc122417-6d59-4c1d-3f73-c20711f9a32f@linaro.org>
 <DU0PR04MB941722CE1A9BF9F87946DE0A88F7A@DU0PR04MB9417.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DU0PR04MB941722CE1A9BF9F87946DE0A88F7A@DU0PR04MB9417.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/09/2023 08:04, Peng Fan wrote:
>> Subject: Re: [PATCH 5/5] arm64: dts: imx93: update gpio node
>>
>> On 14/09/2023 04:21, Peng Fan (OSS) wrote:
>>> From: Peng Fan <peng.fan@nxp.com>
>>>
>>> Per binding doc, i.MX93 GPIO supports two interrupts, and not
>>> compatible with i.MX7ULP. So update the node
>>>
>>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>>> ---
>>>  arch/arm64/boot/dts/freescale/imx93.dtsi | 20 ++++++++++++--------
>>>  1 file changed, 12 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
>>> b/arch/arm64/boot/dts/freescale/imx93.dtsi
>>> index 6f85a05ee7e1..011c34a57c53 100644
>>> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
>>> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
>>> @@ -825,11 +825,12 @@ usdhc3: mmc@428b0000 {
>>>  		};
>>>
>>>  		gpio2: gpio@43810080 {
>>> -			compatible = "fsl,imx93-gpio", "fsl,imx7ulp-gpio";
>>> +			compatible = "fsl,imx93-gpio", "fsl,imx8ulp-gpio";
>>
>> As your driver change points, it is breaking users, so no :(
> 
> ok. Although i.MX93 GPIO is not compatible with i.MX7ULP from HW
> perspective, the compatible string should keep as it is now and binding

If it is not compatible, then how could it work before?



Best regards,
Krzysztof


