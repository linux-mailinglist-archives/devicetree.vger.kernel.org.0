Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EED057F145
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:07:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235796AbiGWUHv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:07:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230273AbiGWUHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:07:50 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 468E714099
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:07:49 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id b16so133159lfb.7
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=j9VSWHIcv9hhynHCEzG7vb8lC7yvj8c0Ge1sWGzb0Cs=;
        b=BFaBJJnTqnds8wT4Lm0ea+UJNv30fjjrETs1d3sQR8RD5GDbX8icemqJReUqfLAET1
         4VxArjhAGLYDgAydEGMo5JQmRn9cGRwD1FgJhu2x0yQ4++aAVqlf00d3d9Z0qtPFSjKy
         wdJIna6eX6Re7pPSL8EWctIg/JlBx+FQqX64r1308VaRvHTIHBWk4bZmuZiGRg0tv1xV
         CsbPTSwBakTHcVTuXSS6uJcyKVBeZuuDpZWsENp7wMdEZmVOyZ7RCOwf5CMxBOWqiz+O
         CsnxXRnLC4Lq8427wp+khfjM/3q++9NhMG9ot7VYY0WLPcr6aNVVyDBt261lXfx4BnKW
         QL4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=j9VSWHIcv9hhynHCEzG7vb8lC7yvj8c0Ge1sWGzb0Cs=;
        b=GOjnOiVx0DIItPyz9AXkHd4aRBsmH/OKoXHmyznpZYDzcIL3QeuZX0cGe1m6UedSAH
         Y4yVdHL0LL3SHAigAd1X4OQ5DREdzPSWtAzdym1nCUJV/G+zDNHF/fo6HO2nZzdagV0I
         hjrQS1zxrpPJh9Qp5dQLoVrAZkKswFGKMziZCFdMjI8vpKRi3mP8H3aX704rP+DEnOfB
         tR5we5Q93T7Li2LY0gK+tX/KuuX/IfGwB0dyHcSl1vOiWquQXPwrDDzDpX9q9+OusDrS
         G1IRYAeaOmHF8RBx+NjVhRFTbkxGDsmFKXJUBQmB45bKhcf1HdeXrnw2F0JmTrAQP/kA
         hntA==
X-Gm-Message-State: AJIora9ugjEHOHmnxxZmnAFduGUOEwD3fVF0vbJQhR/ysSK/LhYBxI4O
        DS1tbna1/da06IJyZH+GPTVwMA==
X-Google-Smtp-Source: AGRyM1tg37vPm/+++7hhfX7YF+j0Jl/N0B+x7rATGaGq7vW/TmyEIxSRISYZCg1/DUrwSNEjiVxIOg==
X-Received: by 2002:a05:6512:1328:b0:489:e2c1:f309 with SMTP id x40-20020a056512132800b00489e2c1f309mr2386525lfu.555.1658606867552;
        Sat, 23 Jul 2022 13:07:47 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id 15-20020ac2482f000000b0048a7b50e301sm841375lft.297.2022.07.23.13.07.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 13:07:47 -0700 (PDT)
Message-ID: <f05045fa-9ecd-d312-0eaa-5d19498453fc@linaro.org>
Date:   Sat, 23 Jul 2022 22:07:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 2/3] dt-bindings: SPI: Add Ingenic SFC bindings.
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>, Mike Yang <reimu@sudomaker.com>
Cc:     Zhou Yanjie <zhouyanjie@wanyeetech.com>,
        tudor.ambarus@microchip.com, p.yadav@ti.com, michael@walle.cc,
        miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-mtd@lists.infradead.org, linux-spi@vger.kernel.org,
        linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, aidanmacdonald.0x0@gmail.com,
        tmn505@gmail.com, paul@crapouillou.net, dongsheng.qiu@ingenic.com,
        aric.pzqi@ingenic.com, rick.tyliu@ingenic.com,
        jinghui.liu@ingenic.com, sernia.zhou@foxmail.com
References: <1658508510-15400-1-git-send-email-zhouyanjie@wanyeetech.com>
 <1658508510-15400-3-git-send-email-zhouyanjie@wanyeetech.com>
 <487a93c4-3301-aefd-abba-aabf4cb8ec90@linaro.org>
 <37062a5d-9da3-fbaf-89bd-776f32be36d9@wanyeetech.com>
 <d1a0dd15-3621-14e9-b931-417cefaab017@linaro.org>
 <b5505a46-ce76-d0aa-009e-81d9ba16e1d5@sudomaker.com>
 <YtxLoPOykLDTzTn9@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YtxLoPOykLDTzTn9@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/07/2022 21:27, Mark Brown wrote:
> On Sun, Jul 24, 2022 at 02:47:14AM +0800, Mike Yang wrote:
>> On 7/24/22 01:43, Krzysztof Kozlowski wrote:
>>> On 23/07/2022 18:50, Zhou Yanjie wrote:
> 
>>>> No offense, does it really need to be named that way?
>>>> I can't seem to find documentation with instructions on this :(
> 
> ...
> 
>>> All bindings are to follow this rule, so I don't understand why you
>>> think it is an exception for you?
> 
>> Zhou didn't ask you to make an exception. They have a valid
>> point and they're asking why.
> 
>> You may want to avoid further incidents of this kind by stop
>> being bossy and actually writing a guideline of naming these
>> .yaml files and publish it somewhere online.
> 
> Yeah, I do have to say that I was also completely unaware that
> there was any enforced convention here.

Indeed, it's not a enforced pattern. But there are many other
insignificant ones which we also tend to forget during review, like
using words "Device Tree bindings" in title or using unnecessary quotes
around "refs" (also in ID of schema). It's not a big deal, but I ask
when I notice it.


Best regards,
Krzysztof
