Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F17D84F116F
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 10:55:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243677AbiDDI5L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 04:57:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241820AbiDDI5L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 04:57:11 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60A2B3BA4D
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 01:55:15 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id m67-20020a1ca346000000b0038e6a1b218aso2670472wme.2
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 01:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lUtU6fovprcNyU8Y1c5J7kq3b8pT6Rjfc47KnhOXBoI=;
        b=RHUGPEqH2vO1GCWIwBsXQ/rdcfZ2iOPrSik7Hu+hOnJuB2rcYDk95AoriX5wAdhlVA
         P6gCr4MuT08lsPPRyLfq1bTlpXf+hdtoltiXIAsHaDGj3Fbft8Zj0IYojM6AY54pkL59
         jF9Vto+9NlDL8Z/5uA+INTUNEROcsyxmpqWvVbZ7helagYJdfnzcuisDfhDqxHxO1kpm
         W6Iy6mf2bITEDPeR8PlsF7+I2mMDt0A8jdOOKyJ5kXYaZs+K1NEnYs0n5BZuVriTlW2W
         brwMY20WpJl/Yihc+srXdgr6e4DuUb6ryiE7QegZrOgAWKYaEp809jszFTJCeqKw/44S
         ShUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lUtU6fovprcNyU8Y1c5J7kq3b8pT6Rjfc47KnhOXBoI=;
        b=IRVCDkTJNvp+0COqQDSJ+y7xXl0cCjq842X00q7ZS/h5zNnWnlpv2OwXQK+Joyav7e
         382iU+NvjGQuE1ZAGVru0vBUw6XmcRVmRNs09zUstMlsG1wQrGN05TYs4N1DThH9N9o6
         fVrKP+eiNDMCyjYCUcml7lXhFCsFtGZlQQakqgdxHJovVOlBpwI+pobKElMc2Vrz8Kmc
         vKXonh6K+w412DPGm/nhbjt0w3eI2F8lWavrhbGPU0tBFDxmBtPLGBy/WuW07zfYDZmd
         RRwZe5mmh/4JyNDuepUybd5j/WEp4wNkRgHMmdWbjDKJ1F4QO+/aCKTM2HQQeX5JcZXe
         gkmg==
X-Gm-Message-State: AOAM532NKc7CsOxAVQ++X4axllGLOH32rWuXeUF83JS+S7uVrA4UWfTN
        brLakrZ3A6B7X9pUbAvV/AtMSw==
X-Google-Smtp-Source: ABdhPJxi5PgAYEsQ/7XjHTnbGZTnbqb9O7QX19wp7V4JNEvzb+6lshyoka18h5MAKop9LnR33a2wHQ==
X-Received: by 2002:a7b:cf12:0:b0:38e:6b0e:a41d with SMTP id l18-20020a7bcf12000000b0038e6b0ea41dmr7381564wmg.8.1649062513971;
        Mon, 04 Apr 2022 01:55:13 -0700 (PDT)
Received: from [192.168.0.173] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id r4-20020a1c2b04000000b0038a0e15ee13sm17080424wmr.8.2022.04.04.01.55.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Apr 2022 01:55:13 -0700 (PDT)
Message-ID: <26af9701-267d-5a23-8688-24608617d3f6@linaro.org>
Date:   Mon, 4 Apr 2022 10:55:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/2] dt-bindings: mfd: syscon: Add support for regmap
 fast-io
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, lee.jones@linaro.org
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, arnd@arndb.de,
        matthias.bgg@gmail.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, nfraprado@collabora.com,
        kernel@collabora.com
References: <20220401135048.23245-1-angelogioacchino.delregno@collabora.com>
 <20220401135048.23245-3-angelogioacchino.delregno@collabora.com>
 <8588a941-6d3e-9e14-cb21-d7af29b4b2bd@linaro.org>
 <7775eb70-692f-3f1b-f226-f7e0fad47e37@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7775eb70-692f-3f1b-f226-f7e0fad47e37@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/04/2022 10:40, AngeloGioacchino Del Regno wrote:
> Il 02/04/22 13:38, Krzysztof Kozlowski ha scritto:
>> On 01/04/2022 15:50, AngeloGioacchino Del Regno wrote:
>>> The syscon driver now enables the .fast_io regmap configuration when
>>> the 'fast-io' property is found in a syscon node.
>>>
>>> Keeping in mind that, in regmap, fast_io is checked only if we are
>>> not using hardware spinlocks, allow the fast-io property only if
>>> there is no hwlocks reference (and vice-versa).
>>
>> I have doubts you need a property for this. "fast" is subjective in
>> terms of hardware, so this looks more like a software property, not
>> hardware.
>>
>> I think most of MMIOs inside a SoC are considered fast. Usually also the
>> syscon/regmap consumer knows which regmap it gets, so knows that it is
>> fast or not.
>>
> 
> Hello Krzysztof,
> 
> well yes, this property is changing how software behaves - specifically,
> as you've correctly understood, what regmap does.
> 
> It's true that most of MMIOs inside a SoC are considered fast.. the word "most" is
> the exact reason why I haven't proposed simply hardcoding '.fast_io = true' in
> syscon, or in regmap-mmio...
> There are too many different SoCs around, and I didn't want to end up breaking
> anything (even if it should be unlikely, since MMIO is fast by principle).

What I am proposing, is the regmap consumer knows whether access is fast
or not, so it could call get_regmap() or
syscon_regmap_lookup_by_phandle() with appropriate argument.

Even if we stay with a DT property, I am not sure if this is an
attribute of syscon but rather of a bus.

Best regards,
Krzysztof
