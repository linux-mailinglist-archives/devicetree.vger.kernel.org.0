Return-Path: <devicetree+bounces-367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C6C7A1690
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:54:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C644B1C20FD5
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 06:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 213C863C1;
	Fri, 15 Sep 2023 06:54:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98A2F809
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 06:54:35 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43CC6270E
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 23:54:29 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99c136ee106so235416666b.1
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 23:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694760868; x=1695365668; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S6WVho0fElE4c64ct66zLA/nnqT4mJSmOZg3ImlHyzo=;
        b=KpeJROtqp9IgKHSvtC5VgOCBvm2wCXOgoNeJkabHpfzLfXIptEqGJsAReyMpe0FTz/
         xGzAaoe0KpN6ComcLVdIQvY6nWy+3SGwFBySC04X84+mrEPD32vldgEbxy4hy0jNAfUn
         pu+QWsO+Y2L1ONSKyVVgpDyR8vZPfLWFW8AYMOu4Fe1jT3hB6HG9lzbNdt01mfp+5pkW
         WXL1E/QHqIJeSn0jQxIyOav3W99SHvbgo7Z3iUB6lfSs5J7otfxKqs9//izNgkpijF/F
         EAAqHgGFt/jmxG3LvThaFNIcky8a9aYUJ9ckoSCNeO8foqhpzlqQ7a6nzHBXrcdyF+sv
         /JzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694760868; x=1695365668;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S6WVho0fElE4c64ct66zLA/nnqT4mJSmOZg3ImlHyzo=;
        b=W6Yxbc0glqt2bqJWgjKx+Y4+dQHBtt8WJL07Lben5My3OW5f7fJaOOrEQt0D1vRR0P
         eT49L65kCJmjZgrLYx7Hd6IMpMqd+H3uVw3m5/78GDZNKfAt1d7SkfoeWBHlrki8u+P4
         2fz7YnYFQ+hiPRE4R467OLy0qyoY5PBzjGotzxj/eqyDODuJZAuR3EwAW0LStf5DuxyZ
         P/1+7v51Qjp9PUHNDr2ASK0reEGvjyPWy10H+PWvbxXNhHs2XfYmJuxFcSl8ok6im176
         gOTwzEKnE/m/CSwQCVDC0wvS4n/gwC7agdUdT0VY2mPrfccFOs5DwN9pSh3XbeDD8bRL
         CrbA==
X-Gm-Message-State: AOJu0YxBKPAcjndnDcotsrblmTLW1J4p7SHRCTThslO/YZ+JwdTdjXOT
	KM0LjozPX4CSZYL+QTd42y04qA==
X-Google-Smtp-Source: AGHT+IGUmUX5ymKGBxE7AJVTkBya5stljNtMVKHGVtoTRcH+rGL56+r6ZOOEgEaSdQ/c8jS0wN1+og==
X-Received: by 2002:a17:907:2722:b0:9a1:d67c:b4f3 with SMTP id d2-20020a170907272200b009a1d67cb4f3mr571528ejl.77.1694760867725;
        Thu, 14 Sep 2023 23:54:27 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id uz3-20020a170907118300b009ad8acac02asm2020727ejb.172.2023.09.14.23.54.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 23:54:27 -0700 (PDT)
Message-ID: <ea5456fb-082c-1c1b-c233-5827bdafe8d0@linaro.org>
Date: Fri, 15 Sep 2023 08:54:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [EXT] Re: [PATCH 2/2] arm64: dts: imx93: add DDR controller node
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Cc: "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>, dl-linux-imx
 <linux-imx@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Ye Li <ye.li@nxp.com>
References: <20230914102038.2944844-1-xu.yang_2@nxp.com>
 <20230914102038.2944844-2-xu.yang_2@nxp.com>
 <3e0df2c9-f4c5-ce7b-5b19-de8530a25d95@linaro.org>
 <DB7PR04MB45055334986EFB4EBE31AB1D8CF6A@DB7PR04MB4505.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DB7PR04MB45055334986EFB4EBE31AB1D8CF6A@DB7PR04MB4505.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 04:39, Xu Yang wrote:
> Hi Krzysztof,
> 
>> On 14/09/2023 12:20, Xu Yang wrote:
>>> Add DDR controller node which will be used by EDAC driver later, also
>>> move the DDR PMU node as the subnode of the DDR controller.
>>>
>>> Signed-off-by: Ye Li <ye.li@nxp.com>
>>> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
>>> ---
>>>  arch/arm64/boot/dts/freescale/imx93.dtsi | 18 ++++++++++++++----
>>>  1 file changed, 14 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
>>> index 6f85a05ee7e1..992bdeef70cd 100644
>>> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
>>> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
>>> @@ -917,10 +917,20 @@ media_blk_ctrl: system-controller@4ac10000 {
>>>                       status = "disabled";
>>>               };
>>>
>>> -             ddr-pmu@4e300dc0 {
>>> -                     compatible = "fsl,imx93-ddr-pmu";
>>> -                     reg = <0x4e300dc0 0x200>;
>>> -                     interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
>>> +             ddr: memory-controller@4e300000 {
>>> +                     compatible = "simple-mfd";
>>
>> No, that's not allowed alone.
> 
> Well, then how should I modify this compatible?

You need specific compatible, just like everywhere else. You can use
"git grep simple-mfd" or "git grep simple-mfd -- arch/arm*" or on
bindings to figure this out.

Just remember that simple-mfd means children do not depend on anything
provided by the parent. You cannot later remove it "just because" or
"oh, now I want driver". That would affect users of DTS.

> 
>>
>> It does not look like you tested the DTS against bindings. Please run
>> `make dtbs_check W=1` 
>>
> 
> I just run the check script, it seems no warnings for this node.

Right, I always forget we did not convert simple-mfd to DT schema, so
the warnings are only for syscon.

Best regards,
Krzysztof


