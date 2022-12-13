Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2589C64B0A8
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 08:57:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229884AbiLMH5T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 02:57:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234582AbiLMH5R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 02:57:17 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1776C167F1
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 23:57:12 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id j4so3688122lfk.0
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 23:57:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/dar9naTk3opKNr/31opSpuYcO8iqDCgdiECO1Hzq5c=;
        b=JeOsiAt8OVutXLC7NMJCGCU/Fl3BTl9N+4si+9Y2uUGgbf4LZZecwcmdIx8PvlLrzj
         OZqwUANqv8V5iRUjkGkuhIDdBc25duVTuTrVjBHOACasRzzPkxjXIxzyaSfCaUQpr1rD
         JUCSuz2x5hEPpNq/VKWIMlwFF5gJZaXkyGAkVIVaxPiAeQ2NomoYBdesv8TyqjI/wYDK
         7Qg5dwVIgGpGRT6JDw68BKDJ2sts/xHrRAwKlXUfvlZOYE/MosGfCPmFmyxTbD7FisBo
         0sSh4Cf/pqwLb5/rx0UkdKzgRBEVb17I8Fr3wHEll9HtcnW1LWdIg1Z2npxPtySnKVV0
         Jh8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/dar9naTk3opKNr/31opSpuYcO8iqDCgdiECO1Hzq5c=;
        b=L/L0YCWAI/NcDHFVdShw6gIYtJcSU3MowdtI4eqsHSv301p5hXS0/TKdeTe3WlA3eW
         aDcOR0nAFlR9pZPys6UoX/ShXQJWr1co4mEfwSNWYOX8LdurL7ucN3TrTF+5DpkjqAfG
         6gqoPz4yLvXMdsLOYR32yBX43YIII/dg27GocFgoQuiYxqmob9G1uKIZYaQxyJOcKHxa
         9kOagt07V2wtOZ3seeLHXEvlxKdS3llFOACCpVdXEVMtLS9Z1Z7RyrVTsn6dMl/s3yZf
         9BRAiS6rXZEDo6/clh9uHVCqga7q935dv/qwjkxLEsusWycGYmK5Q+OcXtomcrSjiOfi
         Optw==
X-Gm-Message-State: ANoB5pl5o3ShoBVE6OUt2vjT7hoJMXrsFpx689O7H1n46vEGVTfncpGv
        WfqsaeYY+5+7cvIMIqR9YXUDaA==
X-Google-Smtp-Source: AA0mqf4obA+/icUtE3PQu4GN3RnC5M1QmKR1hhU8Z2SqoQR6VeKI4WZrTdaNgBChw5x/qsrqOLla6w==
X-Received: by 2002:a05:6512:4cb:b0:4b5:6417:43bb with SMTP id w11-20020a05651204cb00b004b5641743bbmr4488135lfq.51.1670918230444;
        Mon, 12 Dec 2022 23:57:10 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a15-20020ac25e6f000000b00494942bec60sm264259lfr.17.2022.12.12.23.57.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 23:57:09 -0800 (PST)
Message-ID: <94cc48cf-c6eb-b626-88ab-18e9dfcb5fb1@linaro.org>
Date:   Tue, 13 Dec 2022 08:57:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3] dt-bindings: mxsfb: Document i.MX8M/i.MX6SX/i.MX6SL
 power-domains property
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20221212055137.270638-1-marex@denx.de>
 <CAL_Jsq+Cz7Ea7k1cTYEoXcEyg+1JQCyQnZqhJG5kL-BE4Wj-rQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAL_Jsq+Cz7Ea7k1cTYEoXcEyg+1JQCyQnZqhJG5kL-BE4Wj-rQ@mail.gmail.com>
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

On 12/12/2022 13:54, Rob Herring wrote:
> On Sun, Dec 11, 2022 at 11:51 PM Marek Vasut <marex@denx.de> wrote:
>>
>> The power-domains property is mandatory on i.MX8M Mini, Nano, Plus
>> and i.MX6SX, i.MX6SL. Document the property and mark it as required
>> on the aforementioned variants of the IP, present in those SoCs.
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: Liu Ying <victor.liu@nxp.com>
>> Cc: Lucas Stach <l.stach@pengutronix.de>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: linux-arm-kernel@lists.infradead.org
>> To: devicetree@vger.kernel.org
>> ---
>> V2: - Add AB from Krzysztof
>>     - Add mx6sx power domain into the list
>> V3: - Update commit message
>>     - Add i.MX6SL
>>     - Update example
>> ---
>>  .../devicetree/bindings/display/fsl,lcdif.yaml  | 17 +++++++++++++++++
>>  1 file changed, 17 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>> index 876015a44a1e6..1f17be501749b 100644
>> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>> @@ -52,6 +52,9 @@ properties:
>>    interrupts:
>>      maxItems: 1
>>
>> +  power-domains:
>> +    maxItems: 1
>> +
> 
> This conflicts with adding 'power-domains' for i.MX8MP in my tree.

Yes, this is a duplicated patch.

Please either check for already submitted works in lore (dfn:) or use
linux-next as your base...

Unack.

Best regards,
Krzysztof

