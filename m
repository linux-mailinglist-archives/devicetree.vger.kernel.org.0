Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E3D0568B71
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 16:39:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232469AbiGFOjD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 10:39:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232147AbiGFOjC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 10:39:02 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3A341F610
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 07:39:00 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id t19so25648114lfl.5
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 07:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zZOCnL2sk3pByrLKpJXQRiEZ7lTe3lvaSXFyozjR1Sk=;
        b=lmT7TvAXdlwO8MoznJL41ScqnCxhsPkyj3eO8uJVObJgBwMjkbz/dZ39ZBM2Q6uKVU
         OYmvbwv02NdsHcN62nEMsrORHyzmxAYZmIPxYaTFaaaS18SQGiG0Vbpy5rd8u60KuOm7
         BZZCXPyYtByZ51BH/XuE3XmjOHA+E+ksnsjvnO4Vv5MRk6ia//DlfQXbATqtc/M32+0W
         Vkyn6341a4yx3S6P9qKA/V1h+VyuGk/bMIBNVaiOI9euzs7WrBD5hJ//1OG1vpriTMQP
         FvgjjPgQIC4C0Bs6jZFH0oQ3q2vOxEvDkO7uPZLvwfSJqE2C/qslvt4ZbHZUZi/wFXmx
         eOMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zZOCnL2sk3pByrLKpJXQRiEZ7lTe3lvaSXFyozjR1Sk=;
        b=bcyerNla0Voy3BssZmrskf+fJemYEAI6tG62jhH0xAIkDa9LGrRRf0/JNFVPITenSd
         IbrUgruH05QdwRbKnnHpMUs5YqsbFPWRG1TLFowixAoaLLAdKbxmY4i0mawXBAWiOffb
         RkgzeTCsOWoEBMewG2uNPyMr/mSBdhq7m4x5OKiZ2EHcnnLZjCpBcRzRKn808mSLDPCp
         C68C5yx24N2r+w2w8M6PX6oTqmvCaERRiLls1Cw+r4Z9FvDmKU2A8W6CVMNC1rHtxllK
         r2zIiFmGmUmdvsQ0IKqNtiEWa/g+qI/g8nwi5idNQ+rGK7TU4DgiGr+8GHLMtI9Lg7mZ
         l2CA==
X-Gm-Message-State: AJIora/YfU2JZrSRU7QHUepV3b6c/BJLvyqB+EU9z5XC2NcPrRUeis3l
        nw7dUxjriNQQ8G3Dgqhw10c20Q==
X-Google-Smtp-Source: AGRyM1tvr1UuDnYcmSJc30YkpAaFP4aCC6wjkMinKdciZeRPBO4Q4W7IOip5cYIkpaF2vYVKHyb7wA==
X-Received: by 2002:a05:6512:2204:b0:484:e8eb:4169 with SMTP id h4-20020a056512220400b00484e8eb4169mr4366900lfu.472.1657118339097;
        Wed, 06 Jul 2022 07:38:59 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id b29-20020ac25e9d000000b00486bf193d23sm267876lfq.299.2022.07.06.07.38.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 07:38:58 -0700 (PDT)
Message-ID: <4c3443f4-a65d-331b-851a-01f5275bbf4b@linaro.org>
Date:   Wed, 6 Jul 2022 16:38:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v1 02/16] dt-bindings: memory: mediatek: Update condition
 for mt8195 smi node
Content-Language: en-US
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Cc:     iommu@lists.linux-foundation.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220704100028.19932-1-tinghan.shen@mediatek.com>
 <20220704100028.19932-3-tinghan.shen@mediatek.com>
 <119f2a98-ef56-7b99-631f-221b737939ae@linaro.org>
 <9757b32c-c196-f7e0-3c61-1d4edae854dc@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9757b32c-c196-f7e0-3c61-1d4edae854dc@gmail.com>
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

On 06/07/2022 15:48, Matthias Brugger wrote:
> 
> 
> On 04/07/2022 14:36, Krzysztof Kozlowski wrote:
>> On 04/07/2022 12:00, Tinghan Shen wrote:
>>> The max clock items for the dts node with compatible
>>> 'mediatek,mt8195-smi-sub-common' should be 3.
>>>
>>> However, the dtbs_check of such node will get following message,
>>> arch/arm64/boot/dts/mediatek/mt8195-evb.dtb: smi@14010000: clock-names: ['apb', 'smi', 'gals0'] is too long
>>>           From schema: Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.yaml
>>>
>>> Remove the last 'else' checking to fix this error.
>>
>> Missing fixes tag.
>>
> 
>  From my understanding, fixes tags are for patches that fix bugs (hw is not 
> working etc) and not a warning message from dtbs_check. So my point of view 
> would be to not add a fixes tag here.

Not conforming to bindings is also a bug. Missing properties or wrong
properties, even if hardware is working, is still a bug. If such bug is
not visible now in Linux, might be visible later in the future or
visible in different OS (DTS are used by other systems and pieces of
software like bootloaders). Limiting this only to Linux and to current
version (hardware still works) is OK for Linux drivers, but not for DTS.

Therefore Fixes tag in general is applicable. Of course maybe to this
one not really, maybe this is too trivial, or whatever, so I do not
insist. But I insist on the principle - reasonable dtbs_check warnings
are like compiler warnings - bugs which have to be fixed.


Best regards,
Krzysztof
