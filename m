Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E973C6A04FB
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 10:35:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233836AbjBWJfu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 04:35:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234085AbjBWJfk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 04:35:40 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE698515FF
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:35:13 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id t13so10053996wrv.13
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kodxLk0TphMCC/ILhmEdQpCuhgaRqKfJim+OppTyRX8=;
        b=Zzd89Zw6wko4wqATcT9BNDJurIT3/QbFN2jbs7NBTiGJX1+Jf2/UGL9vstIHfZpQUK
         P+u4WJT9dnPTjfRPvd4hXP375isEexXHYOb1w9mZxrS2B26qr4anliwFBJ+GFftEokHc
         +/U/Z56pfflc4tOlqVSVqDYKCK7zF8Up9dOowH2ZeseoevvZdbuz9g8FUvDCSzY7b2d9
         iAIBWuoNE0qgudzTqH8dcie4YpeOYHMJirFYttSLqNdivu9tzneBfNZIZohcxxqdZom0
         2cDj8Ifx6uO2ajpw3ajFaXYgLFNUPOUSvSODMgeGtS5p6snqy3k7XDJRA8VVN4NGbpyk
         BaTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kodxLk0TphMCC/ILhmEdQpCuhgaRqKfJim+OppTyRX8=;
        b=Xkb6gSjzBpLi5vPzPa7uBuUa6PhoOSgIdS/NeyBX9sSucB4BLctAa07T+NNNeO/zgq
         qhsFEgnKJAa50wZ9S7rxAS0JLxuZtDchbbSoqvRiR8j/sAzL5VYmKZkqUD+JUOJKY7cN
         JXOTMGxRvkyaZc6QPnYNpYGTIpPEA4TIPALouaYABrRac8K2KoZJEylj6qONSAVCObaQ
         M0kkJK5KiVUINNx80SQ0gNkqvA3T/8SFm6rkAcpu6aOmpoYrL/VzaVl2qtssJWzFR5Mj
         TktKhXKgiflOSf08t/fQCZo4Y1YAeRkOnqvbUQWYDpuKFOA0mFgyMMO54JQq5qu1zGNl
         /gIQ==
X-Gm-Message-State: AO0yUKUNWTk26f/fsxKBTzHPWAOAv3ITaJTz31VSFJQxfYSTBDErzZGt
        KzHKuivpwwTuwkHfN1AoH7IRbA==
X-Google-Smtp-Source: AK7set9LfPC+y15/HCPLxFQg6FFtdgu588ulqjgOUtmqsP0MC2RyvpOauIzF6oSt3Pd47LKQnkt0cg==
X-Received: by 2002:a5d:5512:0:b0:2c7:1210:feaa with SMTP id b18-20020a5d5512000000b002c71210feaamr1034652wrv.26.1677144906381;
        Thu, 23 Feb 2023 01:35:06 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u9-20020a5d5149000000b002c550eb062fsm8500225wrt.14.2023.02.23.01.35.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 01:35:04 -0800 (PST)
Message-ID: <50b6fb73-afb2-051b-7969-d7fbbe1e6175@linaro.org>
Date:   Thu, 23 Feb 2023 10:35:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 2/3] clk: starfive: Add StarFive JH7110 PLL clock
 driver
Content-Language: en-US
To:     Xingyu Wu <xingyu.wu@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Emil Renner Berthing <kernel@esmil.dk>
Cc:     Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Hal Feng <hal.feng@starfivetech.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20230221141147.303642-1-xingyu.wu@starfivetech.com>
 <20230221141147.303642-3-xingyu.wu@starfivetech.com>
 <3f50066b-f967-b9fa-1e0d-5337ec1ed194@linaro.org>
 <5e4007b7-6522-4c81-ca15-15a98c586aad@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5e4007b7-6522-4c81-ca15-15a98c586aad@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/02/2023 10:32, Xingyu Wu wrote:
> On 2023/2/23 16:56, Krzysztof Kozlowski wrote:
>> On 21/02/2023 15:11, Xingyu Wu wrote:
>>> Add driver for the StarFive JH7110 PLL clock controller and
>>> modify the JH7110 system clock driver to rely on this PLL clocks.
>>>
>>> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
>>> ---
>>
>>
>>> +
>>> +static int jh7110_pll_clk_probe(struct platform_device *pdev)
>>> +{
>>> +	int ret;
>>> +	struct of_phandle_args args;
>>> +	struct regmap *pll_syscon_regmap;
>>> +	unsigned int idx;
>>> +	struct jh7110_clk_pll_priv *priv;
>>> +	struct jh7110_clk_pll_data *data;
>>> +	char *pll_name[JH7110_PLLCLK_END] = {
>>> +		"pll0_out",
>>> +		"pll1_out",
>>> +		"pll2_out"
>>> +	};
>>> +
>>> +	priv = devm_kzalloc(&pdev->dev,
>>> +			    struct_size(priv, data, JH7110_PLLCLK_END),
>>> +			    GFP_KERNEL);
>>> +	if (!priv)
>>> +		return -ENOMEM;
>>> +
>>> +	priv->dev = &pdev->dev;
>>> +	ret = of_parse_phandle_with_fixed_args(pdev->dev.of_node, "starfive,sysreg", 0, 0, &args);
>>
>> 1. Wrong wrapping. Wrap code at 80 as coding style asks.
>>
>> 2. Why you are using syscon for normal, device MMIO operation? Your DTS
>> also points that this is incorrect, hacky representation of hardware.
>> Don't add devices to DT to fake places and then overuse syscon to fix
>> that fake placement. The clock is in system registers, thus it must be
>> there.
>>
>> 3. Even if this stays, why so complicated code instead of
>> syscon_regmap_lookup_by_phandle()?
>>
> 
> Thanks for your advice. Will use syscon_regmap_lookup_by_phandle instead it
> and remove useless part.

So you ignored entirely part 2? This was the main comment... I am going
to keep NAK-ing it then.

Best regards,
Krzysztof

