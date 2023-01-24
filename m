Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FEC9679203
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 08:31:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232850AbjAXHbl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 02:31:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232609AbjAXHbk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 02:31:40 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3BEC3E626
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 23:31:38 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id g10so10713674wmo.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 23:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UQNqeCXmtiQgmPcMhaFAPMtaUFTTX5wWNRH6BwiutWc=;
        b=eXcSNF2vrC6YgNHfXvCrPPlyPz9k7KHkzssaf8TI+pVmgVfXJLroT19d6TZGs5k++c
         6Va8TuFTXkLCQ44qxPBOBbZ7jsABd17n01qqniy0yViDzjzChxciYPeBkkMC9tsRlKhb
         xbWdSYT5NnvJCphxu8i+t3Yiosi6Sds1yrx+sAVKpm59nWmoQoMILjpqUZ3gTDkYz/Hg
         sNUT/+ZY8SNVhQsON3WoYqHKeamImbNNiPl5A7zeLKdgfUNkbkpKj9qA1fqygn4Z32uc
         /j+U/vv82YXlaiVL1U8kDTqCFddwKtmeaC2wzCi2p3rCFFFAUWz7is74Ee89RDUasjXa
         zT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UQNqeCXmtiQgmPcMhaFAPMtaUFTTX5wWNRH6BwiutWc=;
        b=ZZ6PP1GpcsvOY7PWHpyJvutHoxOvJj5VImJRveMUgSkTSPZgJG6Fe81/xDsIxOaNKk
         rZIBNfAAfIewGsv8N4RnpEGKQ0IXggI5vtMB6WT7XRHG/YE6tj2C9QAUlFEdyQVCtqU+
         LuHwAFNw1rvoCdYtApkiWNfV7Hm3k1+17hBhhFKEyB64BUwiPteBL3NOsTFYYzqPbyhS
         turKgZzl41lCIWYxid7QWD9oA92+rw8QJLYDM1Aa+lH0clrUsmd7RDAflA/MxNhkT6ib
         lS4YG1lLEFvrXuX3Ij4NBfAi2uUDqEdqF2ohSZ/L8BNC8w0F3p8c7REIkZHwQXjiRFdD
         2+Lg==
X-Gm-Message-State: AFqh2kr212pHkiDi+k0WfWBajmnnj0LKWo+frK1wJjIjzd3ffGgHY1jP
        6UHUbck2Ctwod6361yU8X5445A==
X-Google-Smtp-Source: AMrXdXuVdJiCJNgVeAUJ4+quCLVDcfMNVGlt2FSy5dKhFdYSPuGajB1LP91xxjcu69QAWjzpBO9RLQ==
X-Received: by 2002:a05:600c:4395:b0:3da:2829:2935 with SMTP id e21-20020a05600c439500b003da28292935mr26718696wmn.11.1674545497172;
        Mon, 23 Jan 2023 23:31:37 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0a4700b003d1e1f421bfsm13818469wmq.10.2023.01.23.23.31.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 23:31:36 -0800 (PST)
Message-ID: <2c20f28d-9d66-7f5d-a419-a2366f536107@linaro.org>
Date:   Tue, 24 Jan 2023 08:31:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 2/2] dt-bindings: trivial-devices: document SPI dev
 compatibles
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mark Brown <broonie@kernel.org>
References: <20230120075618.153664-1-krzysztof.kozlowski@linaro.org>
 <20230120075618.153664-2-krzysztof.kozlowski@linaro.org>
 <20230123220258.GA2710799-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123220258.GA2710799-robh@kernel.org>
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

On 23/01/2023 23:02, Rob Herring wrote:
> On Fri, Jan 20, 2023 at 08:56:18AM +0100, Krzysztof Kozlowski wrote:
>> Document existing SPI dev compatibles.
>>
>> Cc: Mark Brown <broonie@kernel.org>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  Documentation/devicetree/bindings/trivial-devices.yaml | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
>> index b13f280f36fa..6d1dc1e2484a 100644
>> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
>> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
>> @@ -65,6 +65,8 @@ properties:
>>            - capella,cm3232
>>              # CM3323: Ambient Light Sensor
>>            - capella,cm3323
>> +            # Cisco SPI Petra
>> +          - cisco,spi-petra
>>              # High-Precision Digital Thermometer
>>            - dallas,ds1631
>>              # Total-Elapsed-Time Recorder with Alarm
>> @@ -169,6 +171,8 @@ properties:
>>            - isil,isl29030
>>              # Intersil ISL68137 Digital Output Configurable PWM Controller
>>            - isil,isl68137
>> +            # Linear Technology LTC2488
>> +          - lineartechnology,ltc2488
>>              # 5 Bit Programmable, Pulse-Width Modulator
>>            - maxim,ds1050
>>              # 10 kOhm digital potentiometer with I2C interface
>> @@ -227,6 +231,8 @@ properties:
>>            - memsic,mxc6655
>>              # Menlo on-board CPLD trivial SPI device
>>            - menlo,m53cpld
>> +            # Micron SPI NOR Authenta
>> +          - micron,spi-authenta
> 
> Not a simple device and something we don't want to endorse:
> 
> https://lore.kernel.org/all/CAL_Jsq+2xGdPnrCnQwf12k37DeZxekS6-wp6qrp3iDa7WLWsCw@mail.gmail.com/

It already made its way to SPI dev driver, but sure, I can drop it.

Best regards,
Krzysztof

