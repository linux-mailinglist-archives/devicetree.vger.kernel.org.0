Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A11B506D39
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 15:12:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243038AbiDSNNK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 09:13:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352473AbiDSNM5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 09:12:57 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E66D13CF0
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 06:10:14 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id ks6so32845741ejb.1
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 06:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6CuIgS1BfUtpTM+Pz1fHGr+8MNQCk51/yx0AK7OcWBc=;
        b=xsQTOgA49u/fP3Mugg9NyZY3BW9owhYCMISUkWzhH1AkqNDclSJ2uiUjQSmbnVStup
         08R1SyVoVojZRZCDHQ1QcrowgMyJ93gK1DKXie4yiEomulQHoZHdur0URpNroKFX0ZXg
         twbnVdM7rSCjDYy1yUEYVzeqYGwGecYx3EtAtaXAmDUGx3dhWPatMDUeKFN4YATsg4XK
         u3tBvty3pQ4oS/eWISZsrNAhxZ66XfN4tdtHAlGKaKqGZqVfzf1olCVrYXBoy9gSFgot
         YtvJrqMdKTAuq8lk8okqZGOJ+EOaAyiJWIiiUvcQkZ+rt7Fnq0NhzGX9CRd0wlOuhpfx
         jMfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6CuIgS1BfUtpTM+Pz1fHGr+8MNQCk51/yx0AK7OcWBc=;
        b=apLxyAZz+OXmeI/yLm8s4Frfbgu7OY5s687JecWqn/w6lg9lqYaKChMW4HiRKoEWRR
         EKp69YjvjZUNWqhZzQLtLP8FyP2/PJQDIjVxZ0p/ufGyyU45Fxmkc/jrSqTdGEUVgVBI
         8b079/1HXlyNyeAwBFHi+ddr5yCwKJ8aGi6yIXnhRwDS/TTpTVd5AdRm/IoUr1v9ngNR
         UGp68dL32j8BhpBOLZEFBCAoZnEAbAhZXZp9dY+dlf0vyyoG4N0a0VQEx6bW4CeMdeNe
         jFO+zz73DevZuHNPpl69eQVv15z2HCt83OTjuoWha0OErZnFiOOeMaUEYMA5QXigYpu7
         K3ng==
X-Gm-Message-State: AOAM530jH4N90UCMAzxZaSqtVACYnI7V2oEgbeb3wWT7jhVOmcNoLf46
        OxJSEgzLGjZ8UOdDYdySws/hnw==
X-Google-Smtp-Source: ABdhPJyvlrN/AdAcX6QIeIHMg6GFnCLyKvjTlPMI3hvoWRbMQn2WS4LiM6SxMAH1J+hjlm5Z5zfQSw==
X-Received: by 2002:a17:907:7f08:b0:6e8:b005:5f4e with SMTP id qf8-20020a1709077f0800b006e8b0055f4emr13499539ejc.177.1650373812715;
        Tue, 19 Apr 2022 06:10:12 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b23-20020a05640202d700b00422da9b980esm6337505edx.22.2022.04.19.06.10.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 06:10:12 -0700 (PDT)
Message-ID: <8798d7bb-6480-90ef-90fd-d7ff7d7beb2a@linaro.org>
Date:   Tue, 19 Apr 2022 15:10:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] ARM: dts: align SPI NOR node name with dtschema
Content-Language: en-US
To:     Alexandre TORGUE <alexandre.torgue@foss.st.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Cc:     arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>
References: <20220407143027.294678-1-krzysztof.kozlowski@linaro.org>
 <d0d9c16f-4668-1263-49fa-e51648c8c098@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d0d9c16f-4668-1263-49fa-e51648c8c098@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2022 15:03, Alexandre TORGUE wrote:
> Hi Krzysztof
> 
> On 4/7/22 16:30, Krzysztof Kozlowski wrote:
>> The node names should be generic and SPI NOR dtschema expects "flash".
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>   arch/arm/boot/dts/da850-evm.dts                  | 2 +-
>>   arch/arm/boot/dts/dm8168-evm.dts                 | 2 +-
>>   arch/arm/boot/dts/spear1310-evb.dts              | 2 +-
>>   arch/arm/boot/dts/spear1340-evb.dts              | 2 +-
>>   arch/arm/boot/dts/stm32mp157c-emstamp-argon.dtsi | 2 +-
>>   arch/arm/boot/dts/stm32mp157c-ev1.dts            | 4 ++--
>>   6 files changed, 7 insertions(+), 7 deletions(-)
> 
> Thanks for your patch. Is it possible to split it per vendor 
> (TI/STM32/SPEAR) ?

This was a part of a bigger set where most of these I split. However
here split would be more churn for such simple change, so I combined them.

This was already picked up by Arnd:
https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/commit/?h=for-next&id=56147a156e7e2f50bef695efe6cc4fe8e91c40dc


Best regards,
Krzysztof
