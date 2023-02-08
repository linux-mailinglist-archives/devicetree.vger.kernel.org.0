Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF6B168EE64
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 13:01:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230025AbjBHMBc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 07:01:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbjBHMBb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 07:01:31 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1698046160
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 04:01:30 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id d14so16486305wrr.9
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 04:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5qad9qfr6xeRM+umDGpr9M+cfEjndgPjP7JWCYE+lXA=;
        b=OYDGtqEigsQkH3blONz2B4KtY/XEJ89esODLrNCJekrtR9MKWl/pUI1Y2CX0YUElah
         Dqeq+FVBV1ZoQ+n0lQiBO8Yx+97Q8Qk5ujkS7nA5S95XwYjSqNMORX6G9t0x/gIDCaFw
         S8JRnvkIGiCUZDdOJ5efntDM3fyioJwb54hyRBF/8/P9/m3xoaECVJgTFNp4mEYhWwi0
         tB4YFQMz3MWOQ7PVrgPpZAGqbVPFIb7WFMpUenOFhWXwLG3Gt3r8MqYSqkS8rZ+/nBxu
         7ZQ9SzWZHsXjWj2ttFP65G17aO/zqZmo8wH3PM4zUwKGQtp/dklJ9ACwQyB0PZyYC5tK
         frIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5qad9qfr6xeRM+umDGpr9M+cfEjndgPjP7JWCYE+lXA=;
        b=ONLDrImACjQQmvcm9pJwawy0fNX0J5NeBctWjICV1m3aLlyftAfLm01RfyDMjQYHJO
         +JXEP/bSaSQjgWCehI/9l4kYjtA3ZUg4NYq2UvYONSWAa07Ad/oGErUAcj/fHyROMjIi
         FsIDXPSfcdpZtIcsd1Vzj+hnKKj2aidOwiT/JpBdhNIHG3Il88ktDzutcizHR3spBjQx
         gQtDr0VKOcZbhwslRPgkwltbqLT9EPni1m8JsrF5AiBeC6y8yi3NwnzslNqJFPluqyfX
         kjfS8krFEb9mSFE19rkbZ124PTW4eeUkCdoswuhYBfId/UBMzEVjdbJ9hS+Z9VZWhPCF
         lOJw==
X-Gm-Message-State: AO0yUKUGHt6ODmWu3/dr3JqgWZiGMJXwCcCdYSmEVS4o3GurDP/lXege
        X7TzjQXWHN1nmjS1aqF9JP5P1A==
X-Google-Smtp-Source: AK7set+xgJ6WrfTLrSZ0x7p/NvqlO7QbXsza7mf18Q5eO28H3/W9GsfeBeIyt6eeYsdSXFIb8afm+A==
X-Received: by 2002:adf:f344:0:b0:2c3:ff6c:ea5 with SMTP id e4-20020adff344000000b002c3ff6c0ea5mr1540941wrp.68.1675857688691;
        Wed, 08 Feb 2023 04:01:28 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a18-20020a5d4572000000b002c3e7474b0fsm7861604wrc.13.2023.02.08.04.01.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 04:01:28 -0800 (PST)
Message-ID: <7bb3e201-954d-c8eb-9430-19626c43fe75@linaro.org>
Date:   Wed, 8 Feb 2023 13:01:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 3/3] arm64: tegra: Add Tegra234 pinmux device
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Prathamesh Shete <pshete@nvidia.com>, jonathanh@nvidia.com,
        linus.walleij@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-gpio@vger.kernel.org,
        smangipudi@nvidia.com
References: <20230207115617.12088-1-pshete@nvidia.com>
 <20230207115617.12088-3-pshete@nvidia.com>
 <f0d58e5b-74df-26cf-592e-302a00d08eee@linaro.org> <Y+OAthBgds9InvKp@orome>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y+OAthBgds9InvKp@orome>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2023 12:00, Thierry Reding wrote:
> On Tue, Feb 07, 2023 at 04:33:42PM +0100, Krzysztof Kozlowski wrote:
>> On 07/02/2023 12:56, Prathamesh Shete wrote:
>>> This change adds pinmux node for Tegra234.
>>>
>>> Signed-off-by: Prathamesh Shete <pshete@nvidia.com>
>>> ---
>>>  arch/arm64/boot/dts/nvidia/tegra234.dtsi | 14 ++++++++++++++
>>>  1 file changed, 14 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
>>> index eaf05ee9acd1..c91b88bc56d1 100644
>>> --- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
>>> +++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
>>> @@ -701,6 +701,13 @@
>>>  			interrupt-controller;
>>>  			#gpio-cells = <2>;
>>>  			gpio-controller;
>>> +			gpio-ranges = <&pinmux 0 0 164>;
>>> +		};
>>> +
>>> +		pinmux: pinmux@2430000 {
>>> +			compatible = "nvidia,tegra234-pinmux";
>>> +			reg = <0x2430000 0x19100>;
>>> +			status = "okay";
>>
>> Why? Anything disabled it?
>>
>>>  		};
>>>  
>>>  		mc: memory-controller@2c00000 {
>>> @@ -1664,6 +1671,13 @@
>>>  			interrupt-controller;
>>>  			#gpio-cells = <2>;
>>>  			gpio-controller;
>>> +			gpio-range = <&pinmux_aon 0 0 32>;
>>> +		};
>>> +
>>> +		pinmux_aon: pinmux@c300000 {
>>> +			compatible = "nvidia,tegra234-pinmux-aon";
>>> +			reg = <0xc300000 0x4000>;
>>> +			status = "okay";
>>
>> Also why?
> 
> These are probably copy-pasted from Tegra194 where these snuck in. I can
> drop those when applying. I'll also prepare a patch to drop these from
> the tegra194.dtsi.
> 
> I wonder if there's a good way to detect these. We'd have to run checks
> on the DT source files, so that's a bit difficult. I do have an
> experimental script that tries to capture some common pitfalls on
> sources but it's quite ugly and slow, but I guess I could add something
> like this. But perhaps there are better ways?

One way to easy spot them is to override always by label, thus every
node defined like above is a new node. However I think we talked about
this and you do not follow this practice, thus there is no way to tell -
is the status reasonable or not.

Automated tools could help here as well - run fdtdump on DTB and look
for status=okay.

Best regards,
Krzysztof

