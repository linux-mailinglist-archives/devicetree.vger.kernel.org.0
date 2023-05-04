Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 778506F6D18
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 15:43:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230380AbjEDNn4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 09:43:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230038AbjEDNnz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 09:43:55 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B34387D81
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 06:43:53 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-956ff2399c9so87654166b.3
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 06:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683207832; x=1685799832;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q84mWcYMxDEvd8YZPYKI5dHtMMY1HQ2x8IlzEX6KNjQ=;
        b=Iw0fvW2W/ZRyO+X1d5fC8dre5uYE900wTxM9cVMADy9syUIV6R7HL/uXHHwJa28thf
         LVvTHtieL7jB2k/0P02K7Q79hgK5WGcMpHy+lHKlps8kehOFdrOcEaCTtQdUJcGG56Pd
         Z3Na0pGviZV9mhLuUBmgtIO5vYQixJA3YdSnwoi9fVXyt6qq+adq2jribijGE5f3yDDz
         YKQ2C3DYMfeM/aN2/Rzi5XuNwv4A6GrtSD9HMWcUsD88mXBYsvjtNSK6unDEkr5DPkyQ
         9gOmMGZvtWRsyIjC6PP/PQypEk+mpXRtxpve/MZ3k8GV+hL/OUYFxvLQQlUzatioL5QP
         0xBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683207832; x=1685799832;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q84mWcYMxDEvd8YZPYKI5dHtMMY1HQ2x8IlzEX6KNjQ=;
        b=j1hFJXcvNptpuNg1BplZYDJwUKvIgC+iFWKoXWzd/se0j1KacdrXemcsJCXKGGhPL9
         QQ49SqUW7ScDWXTiMbLhRX58cqGAjEwjWB8zuajdKKgMaYJwkrWIo0CAGhGvmyuwewpY
         NRwLj3LX0D37r+a30tKIIp7D5iUXFw57iPf9oCLlAgm+iretgk0LKRwTuP3RtjYAHI4W
         ULiRQqiEF9WBLwzf86hchvVGxbIztA5waQ0IfRxiCxLBeZPt+Dc9ARxE8ugY08tj1C2C
         29vC+BgkLo7wsfUtoTZ9WOGeRWWpljRPzFq9sZ93VDww2f+wg4Wrj0KYvuOVPZ7PBqNY
         2TEA==
X-Gm-Message-State: AC+VfDyf6CLwJBU8eGZ8gNiYeTLelco5xtUuNZOEpUWJtRKc9H8V8ucp
        usEBjTQPKJfXIt0T76ilHN9CFA==
X-Google-Smtp-Source: ACHHUZ5+6vZD8DQEcDcllibUIlq4Uqnivo5RlCCxosmsuQPc56WsPLj23s6NCbCu+fXymcz5/4uZwQ==
X-Received: by 2002:a17:907:9304:b0:94b:958c:8827 with SMTP id bu4-20020a170907930400b0094b958c8827mr6255020ejc.56.1683207832130;
        Thu, 04 May 2023 06:43:52 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id v8-20020a17090610c800b0093313f4fc3csm18730621ejv.70.2023.05.04.06.43.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 06:43:51 -0700 (PDT)
Message-ID: <31377f4b-56e3-4600-3171-a795c940e74d@linaro.org>
Date:   Thu, 4 May 2023 15:43:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v5 1/2] dt-bindings: hwmon: add MAX31827
Content-Language: en-US
To:     Daniel Matyas <daniel.matyas@analog.com>
Cc:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-doc@vger.kernel.org
References: <20230504161714.6281-1-daniel.matyas@analog.com>
 <20230504161714.6281-2-daniel.matyas@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230504161714.6281-2-daniel.matyas@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2023 18:17, Daniel Matyas wrote:
> MAX31827 is a low-power temperature switch with I2C interface.
> 
> The device is a ±1°C accuracy from -40°C to +125°C
> (12 bits) local temperature switch and sensor with I2C/SM-
> Bus interface. The combination of small 6-bump wafer-lev-
> el package (WLP) and high accuracy makes this temper-
> ature sensor/switch ideal for a wide range of applications.
> 
> Signed-off-by: Daniel Matyas <daniel.matyas@analog.com>

Hm, now I see the tag - did you just ignore it or did you change something?

Standard message follows:

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.


Best regards,
Krzysztof

