Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4198156767F
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 20:31:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230095AbiGESaO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 14:30:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbiGESaN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 14:30:13 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E229F13DC2
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 11:30:11 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id i18so21985317lfu.8
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 11:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=A0irQvtTd+pWB+7nICLoWM43NdZNeCpfmaCXZDvQ8yM=;
        b=Y+LNXNH098iiuTC6j6SiduR1UnU/p63Iaoa7SYbrpTZYCRg7G2YBrkKZb9NR2YWO3i
         PIat2cEXx4QZJTel7b1VSYg1IbRmzGFogoMwRtKAkuqvC6oq1iVTH0D8PjcBTN+gDirv
         DMXLURC+lwL0FJvcmzU7dVNv38euI/1XJol8ajoMAyH5lesDgiOwG5TJoJuxdwR3XkcQ
         bc1mHLOYbUITcM6/AR5jbkduxg6z9eusUX/8cSg47CUt2lMxvwqIwXhl0Fyh5Q8kCZNA
         bTK/jEHHDkhFpZKaZE/MYjglb8Q3RCnN1spOjUd361eft7FckDmziyFoPe5fKVZSSKJ3
         3gWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=A0irQvtTd+pWB+7nICLoWM43NdZNeCpfmaCXZDvQ8yM=;
        b=6J4cv3e/Ga75OtusI0Na2EVWihV14T8xPDB/IWcEg+rMLf/Pjrd1g/4/xIobXIiA0U
         eLQ7iViIcBFGf+ZN1BFgU5Fo3OdISbMRrzKVSZwyGMox4DdNDGuAdHB73D3tjldxWfie
         rim3L3Vyc7nNaRnu9sqP9pX2UUpOLBBgkVo9joFfFpHows212xgRwA/e1D4JhZSTXz6p
         LQdtoINPso6rKFe33EHaquC3NdPudhKmt+8GNYqnbUnSewoq5uhNcgpx0chJWrj16SEm
         DrEDU7Kl/AZbz36yIR+oYSlHON6orcBUTFFWgX+p/YsEO7PrMyZYQrncTc+NsvbmHjoy
         b+cw==
X-Gm-Message-State: AJIora+ggV0VHqWNvOuuWwFOCTAiaOGYp1tMTeNc1ZId0queSGNdtD60
        DrwK4PC9//bjuB34qi3L3TCh0w==
X-Google-Smtp-Source: AGRyM1vMWFgszNVpdpCV/2tP4bnNyG5SYNxUciMZYEze+G7ffFnPpqSD+ws3aBVoWvMKnaWWB+5CNg==
X-Received: by 2002:a05:6512:ba7:b0:47f:657c:95e5 with SMTP id b39-20020a0565120ba700b0047f657c95e5mr22336850lfv.184.1657045810249;
        Tue, 05 Jul 2022 11:30:10 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id c20-20020a056512239400b0047255d211c7sm5809429lfv.246.2022.07.05.11.30.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 11:30:09 -0700 (PDT)
Message-ID: <c1d12d9a-afe7-9ba8-5a2d-4056579fc46c@linaro.org>
Date:   Tue, 5 Jul 2022 20:30:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v5 07/15] dt-bindings: reset: amd,pensando-elbasr-reset:
 Add AMD Pensando SR Reset Controller bindings
Content-Language: en-US
To:     Brad Larson <brad@pensando.io>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Al Cooper <alcooperx@gmail.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, blarson@amd.com,
        Catalin Marinas <catalin.marinas@arm.com>,
        Gabriel Somlo <gsomlo@gmail.com>, gerg@linux-m68k.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Pratyush Yadav <p.yadav@ti.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Rob Herring <robh+dt@kernel.org>, samuel@sholland.org,
        Serge Semin <fancer.lancer@gmail.com>,
        suravee.suthikulpanit@amd.com,
        Tom Lendacky <thomas.lendacky@amd.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Will Deacon <will@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20220613195658.5607-1-brad@pensando.io>
 <20220613195658.5607-8-brad@pensando.io>
 <eac223c5-a3d4-65e5-3753-1bd4033513f2@linaro.org>
 <CAK9rFnyRgj26MaurS_u83wnzgmq+18=UdZT_FLLZc3jnWD4uFQ@mail.gmail.com>
 <db82fe69-8caf-f142-0714-ff73ea6f65ec@linaro.org>
 <CAK9rFny-PWvwY8K6mpzhx8deX3w8q5gFp1nmwq9QsiOUF4m+bg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAK9rFny-PWvwY8K6mpzhx8deX3w8q5gFp1nmwq9QsiOUF4m+bg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2022 20:28, Brad Larson wrote:
> Hi Krzysztof,
> 
> On Sun, Jul 3, 2022 at 11:41 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 04/07/2022 01:50, Brad Larson wrote:
>>>> Missing file:
>>>> ls: cannot access 'include/dt-bindings/reset/amd,pensando-elba-reset.h':
>>>> No such file or directory
>>>>
>>>>
>>>> Send complete bindings, not parts of it. Did you test it? I am pretty
>>>> sure that this did not happen. :(
>>>
>>> Its in patch v5-0015 with the driver
>>
>> Header is part of bindings, not driver.
> 
> That's the reason, the header was not with the bindings.

Sorry, I don't understand. The reason header was not with the bindings
is that header is part of bindings? That does not make really sense...

Anyway, don't mix up bindings and driver changes in one commit.

Best regards,
Krzysztof
