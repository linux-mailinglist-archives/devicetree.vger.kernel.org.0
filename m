Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EFE5637553
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 10:36:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229907AbiKXJgv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 04:36:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbiKXJgs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 04:36:48 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8BC7125224
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 01:36:45 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id s24so1335082ljs.11
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 01:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eQoxUqheIIUXkBBHc597S7FcX3x5ol0V65y9COFeJmM=;
        b=ELaGzy52J+9x+jIHZFcSmYA5AY2T/zwoXMooAQYVyMcZNgJa7pVamgalTD5Mjb0Jua
         ZDDA0f3b0ULsl4EaHY/OCE31UOdJr8jsZUWoh7RuXaUfOAUXGX+4sDCqZQzPSn3aSM0Y
         udjI/95KAiANwL0nCZgScS2bQHPtI4oe2hVPjhEQzH6qXzpXrgLKeh4pL7tGrsoujbCp
         gM4Jg0tZtrpMR6LDazx5nLf85Vr+UofN6y4e/H1u2GDvQGPbA1xZNeddzR0oSLXveMwa
         2moOmn67AbDVsGRH4kI+GGYWRT/T6CXhEMQzxYBiNOPdwU+C5K0dYgB/7elTM/mS7nb/
         HhXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eQoxUqheIIUXkBBHc597S7FcX3x5ol0V65y9COFeJmM=;
        b=Lue8/TvMgOStV6pufkORRKBWTtmAjyPVfhgp/tM2jJRxYnwJ7ymtdvq92Ia7JeA3Pi
         57T/tvDNICaGY9t/OGqolUo5759KtRFsGnipHTJxknsSLbPZnjstmP1kMlfCILHXeBX6
         z0+dgGF5l6MALrvpCgkRQrTK+o8s0j51dx8s0PE+Sv0Ds1hStr7toSZQfLds+jylzqC7
         ryu5XqJ9Vk6nKMwy3uUy8WCLe85qu3tf/e5cTcGYJnRDK7aXvALzW3uNngjZDvKV4Ay/
         tDR6Xx0hgvgSLlX/2AZK43szMpGITH2OqNa4XH3Zap6CdRhba9w8DWho01gitRlw0nWy
         HU+g==
X-Gm-Message-State: ANoB5pmy7zWA6ruOP2eC+QUA7Ek8ZVMsuJQzeCH1PgJwYZmOItM+QHmR
        HWs7fV71OxXiQQBRYPhue2JGQg==
X-Google-Smtp-Source: AA0mqf5l5Dag0MyizsyxNs7sSnAb2cu5cjqpk1wqcO2Kw7BnlOzl2/suy+6nY+p3dwXJxV2OeIGlxA==
X-Received: by 2002:a2e:bd88:0:b0:279:86e:7a09 with SMTP id o8-20020a2ebd88000000b00279086e7a09mr10444801ljq.277.1669282603721;
        Thu, 24 Nov 2022 01:36:43 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p5-20020ac24ec5000000b00494603953b6sm71345lfr.6.2022.11.24.01.36.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 01:36:43 -0800 (PST)
Message-ID: <1f8eb33b-1979-ec28-e3cf-6e6552959b3a@linaro.org>
Date:   Thu, 24 Nov 2022 10:36:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jon Lin <jon.lin@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-7-jagan@edgeble.ai>
 <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org>
 <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
 <149c2614-d87a-4406-5552-f444709a6e09@linaro.org>
 <CA+VMnFybPA=6-LvSDd=7EXk6fo4oY_hNBwCcDURgnFs4DP_hzA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFybPA=6-LvSDd=7EXk6fo4oY_hNBwCcDURgnFs4DP_hzA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/11/2022 17:35, Jagan Teki wrote:

>>>>> +     aliases {
>>>>> +             i2c0 = &i2c0;
>>>>> +             serial0 = &uart0;
>>>>> +             serial1 = &uart1;
>>>>> +             serial2 = &uart2;
>>>>> +             serial3 = &uart3;
>>>>> +             serial4 = &uart4;
>>>>> +             serial5 = &uart5;
>>>>
>>>> These are not properties of a SoC but board. They depend on the
>>>> particular routing on the board... unless this SoC is an exception from
>>>> all others?
>>>
>>> Was this a new feature to follow, didn't see this before at least
>>> rockchip SoC's.
>>>
>>
>> It's not exactly new comment, but rather not always enforced/given.
> 
> It seems like i2c0 and serial aliases are required across SoC instead
> of the specific board. An example of which i2c0 connected via PMIC
> which indeed require aliases to get a probe, which is common across
> SoC.
> 
> [    1.778941] i2c_dev: i2c /dev entries driver
> [    1.780877] rk3x-i2c ff3f0000.i2c: rk3x-i2c needs i2cX alias
> [    1.781410] rk3x-i2c: probe of ff3f0000.i2c failed with error -22
> [    1.791312] Bluetooth: HCI UART driver ver 2.3

I2C driver indeed seems to require them, so then it's fine. That's not
the argument for serials though.

Best regards,
Krzysztof

