Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 746495B318B
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 10:21:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231326AbiIIIVg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 04:21:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229961AbiIIIVf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 04:21:35 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E269BD2B19
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 01:21:33 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id x10so944329ljq.4
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 01:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=VIOofoEHYZmULXPTWVPGHc4pkhqvtC/tMOM+JD3igag=;
        b=h1FG2nMj6e9S5512GyMcPIKesaliGmRKaXgVBLNQER9TuQ+CU9BcsTY9CmMNBvMeHV
         gaVtUE2506qGQMtNji9+xRUrEnEGauYBHnEyCOZQf2G8qTiep/DuDPa/aygCCENsGdIZ
         7sPOOSAcUCavibVyqsqUVmfK/FnymyJOl6UyjUyMbpvyQxsXi1vL3OlPdAV1KOZere7D
         QG5khTFtrf0++WHA8O7/M/PZDs9pyh7rnT7CVFAGRnD2uIo5AgR2JOgRzbgTibYEjKVM
         mJdYUJ9ArSVt4ALUHuqoVNKu6jnELbzbu/FvzcOIrA0EdejdhvNKYd8OXp+aLpcW8y50
         QISg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VIOofoEHYZmULXPTWVPGHc4pkhqvtC/tMOM+JD3igag=;
        b=GVUeyN3llBCIETWvukNxN0R/Tl41o0yzfeHcLYZYkN6LthYiv+TIeiQgcdCpcWi+Ai
         taqoT3s2w1T0fgNp+PcJ0ML6sm8coIZk7FvAYfV3UxDvplie/isAsoiFf3K4kmmsLeP6
         1FT0G/f6YyKMkCW5B1pFTo4GOBg+SHnesX5qpssczll4yRAT09t2fb030n6tvW4pwBga
         BhHpzg17QQ2yzf+CMEx1sAJlmAN8PI5dQqdxHdw7ddp0n25S3+1eQS5sFCQmihfNc/yT
         vcVYqP2aeVdVxNKGmDEWhGzt7T6Yt8JUCsdCYYsTFHkqky9xZmBwLTVqiz4c7rc/zj0P
         ijaw==
X-Gm-Message-State: ACgBeo1mOTCfLVdF0PTU1dm1U2ABGF89G43Df+v+9gnfUqGaV7rK+SmK
        DhDrvpHnIYPbQMEn+Cz15vymrfd3ssb+oQ==
X-Google-Smtp-Source: AA6agR7Jar9ldUV3gwhxvjF2xUIm+NzQJ3cd0ihIdQCNH34VPmDvaDFUKs5QG+gPdVUMh8Y8lJLxCg==
X-Received: by 2002:a2e:944a:0:b0:24f:10bd:b7e8 with SMTP id o10-20020a2e944a000000b0024f10bdb7e8mr3866304ljh.238.1662711692268;
        Fri, 09 Sep 2022 01:21:32 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p13-20020a2eb98d000000b0026ac2fffda4sm180761ljp.105.2022.09.09.01.21.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 01:21:31 -0700 (PDT)
Message-ID: <9a72bd22-9298-65ce-a894-540f98745a7e@linaro.org>
Date:   Fri, 9 Sep 2022 10:21:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: sound: ts3a227e: add control of debounce
 times
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     Astrid Rost <astrid.rost@axis.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        kernel@axis.com,
        alsa-devel-mejlinglistan <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220907135827.16209-1-astrid.rost@axis.com>
 <2b81d814-f47a-e548-83dc-b1e38857e8ce@linaro.org>
 <Yxn9o1MVMPnFO3PM@sirena.org.uk>
 <ac2bcca1-6997-2d17-b1d6-a5e81ced2613@linaro.org>
In-Reply-To: <ac2bcca1-6997-2d17-b1d6-a5e81ced2613@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2022 09:23, Krzysztof Kozlowski wrote:
> On 08/09/2022 16:35, Mark Brown wrote:
>> On Thu, Sep 08, 2022 at 02:20:42PM +0200, Krzysztof Kozlowski wrote:
>>
>>> Anyway new properties cannot be accepted. This has to be converted to DT
>>> schema (YAML).
>>
>> Doing a whole binding conversion feels like a bit of a steep requirement
>> when people are just adding a simple property, it's a lot of stop energy
>> to figure out the tooling, do the conversion and deal with all the
>> bikeshedding that the tools don't catch.  It's definitely nice if people
>> want to look at that, for more complex binding changes it gets more
>> reasonable but for trivial properties it's disproportionate.
> 
> It's more than one property here and many patch submitters are using
> this reason as well. In an effect few bindings TXT grew from 5 to 10
> properties in one year and still no conversion to YAML.
> 
> I understand your concerns however I have stronger motivation to do the
> conversion is stronger for me, than for accepting new features.

Eh, that was still during drinking coffee, so it barely reminds English
sentences. Let me try one more time:

It's more than one property and many other patch submitters were using
this reason as well. As a result, few TXT bindings grew from 5 to 10
properties within one year and there was still no conversion to YAML.

I understand your concerns however I have stronger motivation to do the
conversion, than for accepting new features.

Best regards,
Krzysztof
