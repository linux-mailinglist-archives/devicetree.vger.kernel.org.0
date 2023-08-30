Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ED8E78D92F
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:33:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236594AbjH3Scb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:32:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244365AbjH3NFN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 09:05:13 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51814185
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 06:05:10 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-522dd6b6438so7330365a12.0
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 06:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693400709; x=1694005509; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HEKRlFZUS3dyupZ+kK+mkGNYk/gW0Ty72y8W+FwpGBU=;
        b=TsEfs7qIFDVpFHZA9bZLzHrJO/o5Tjxonxx1V5tXmlX20EeuddICu/yZ+zxQnGgowX
         5I7S+D8LMLMCxwv5TCywzCTskZHNBsxIwW3Q/sLNPp5hoXrEEdCjW4OkQhsI1VBNvtM6
         /j6lMW+mVsgBcyO5v8FGNfOh+S9GLjw1Nvs/jmnoCXw1LFEpR9Hnt6kxuWHonqJQ//tT
         diwBVrQRTCwyUbQZ4HrgdjMQJKAQlPwGWzwDM2ZYwj+/Sm7mJp+5MgQnAgwQ6YRwQWxL
         b8S2yMpTfRMLCLCvsZcsCJdwDAua3epm22vpxc4z3NFTkJtRAhGYUYznKOMEBTadrSIA
         MhEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693400709; x=1694005509;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HEKRlFZUS3dyupZ+kK+mkGNYk/gW0Ty72y8W+FwpGBU=;
        b=WvhhzWKHbDyjqEALE+1qOcPOT2bGYG0wxNuP5IL8TKEJZoYPsNHbKOl313qNVaj1XN
         uUXFIxYsho9jcwZYLZPo7NRvLwa1cQDr60dMMJrgvsYlLm1b2Kw6lbkCp5mSBrnaw+vT
         Xa85VxhNKStr/YfMjuG3puwZ3eHGNEX506RbpH9TrvYu3/MR0lFYQ3NdwX4oflGsFbOi
         euhLm9zzuapHDxa2kjXjxCp6/ZTshcFCIbYh13c1n48BENMxL3JlEm5UCmOwFTkAa5d6
         i7kx+5VA6cZBXEeYfwTMHyR116TSumEsfH0LoQ3KT+2341Nl/25xQ1SHKbABRqPKYXnN
         Pfyg==
X-Gm-Message-State: AOJu0YyeiUiB/oPNt6FPOpS9h2kUFDxNrVp+A4QOcthhxBCGzJmQZ60X
        b32LOJUmfklB0ub2dHqr1tUWMw==
X-Google-Smtp-Source: AGHT+IG6tuWBogY1getqOWrJLQDobdIhDHQe+O6MXdBwyeWVbJP1FM/i5KkUVahXRdHtVbpn5qnMfg==
X-Received: by 2002:aa7:d311:0:b0:523:bfec:4912 with SMTP id p17-20020aa7d311000000b00523bfec4912mr1838174edq.11.1693400708725;
        Wed, 30 Aug 2023 06:05:08 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id c6-20020a056402120600b005232c051605sm6740478edw.19.2023.08.30.06.05.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 06:05:08 -0700 (PDT)
Message-ID: <f40497d1-3547-9434-459f-050f592937ca@linaro.org>
Date:   Wed, 30 Aug 2023 15:05:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] ARM: dts: stm32: Add MyirTech MYD-YA15XC-T development
 board support
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Alexander Shiyan <eagle.alexander923@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
References: <20230830114335.106344-1-eagle.alexander923@gmail.com>
 <e2dc91a9-d027-dc69-14bf-3a1184045254@linaro.org>
Content-Language: en-US
In-Reply-To: <e2dc91a9-d027-dc69-14bf-3a1184045254@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2023 14:51, Krzysztof Kozlowski wrote:
> On 30/08/2023 13:43, Alexander Shiyan wrote:
>> Add support for the MyirTech MYD-YA15XC-T development board.
>>
>> General features:
>>  - STM32MP151
>>  - 256MB RAM
>>  - 2xUSB HOST
>>  - USB-C OTG
>>  - Gigabit ethernet
>>  - UART
>>  - Boot from NAND, eMMC, SD
>>
>> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
>> ---
>>  arch/arm/boot/dts/st/Makefile                 |   3 +-
>>  .../boot/dts/st/stm32mp15x-myirtech-myc.dtsi  | 351 ++++++++++++++
>>  .../boot/dts/st/stm32mp15x-myirtech-myd.dts   | 457 ++++++++++++++++++

Also naming looks wrong. This is stm32mp151, not 15x.

Best regards,
Krzysztof

