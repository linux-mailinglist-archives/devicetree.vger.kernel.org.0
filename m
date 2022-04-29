Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F484514211
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 07:56:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234887AbiD2F7S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 01:59:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354184AbiD2F65 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 01:58:57 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82B1617A9B
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 22:55:40 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id b24so7837192edu.10
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 22:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tiRmC4Zpm+WzZdfPPf3eIqtx2v1z2PlQ5klf7MS2cC0=;
        b=Sy1yUI6B+p62yU4OE5CybcS0dn4IsYnHX21AnK3jTRJDftkbL2iPDYuSpqrliK2OpC
         bETFYpKn3DqtdPa24gwQFivtTO/Uo07qFmxt3d7Rlbz/qf/tYM+hg2Qek80iCrTW2hNl
         rU0xy/A68hwUqgcNeFeIj/8EFur+QMXm+MGH4bm2rF50ZQ8iaqPrNPPXsU2U0P/Q2usq
         TK9Eb6vuPEoZfxH4hxlxpQxZwVkd+j7JPQk7w41dO+6dKSKPT9mLe+wjw+2N7AEKdMPh
         xCSekEPqi/2n3sD4z3nRH/OuxiY+wSXLsNLd/KQmkN7zYin4uOsPs2Bxj2c4C8kyCUjD
         pZaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tiRmC4Zpm+WzZdfPPf3eIqtx2v1z2PlQ5klf7MS2cC0=;
        b=lmPO1Qn+L2XAhwVEJK9KUtQ4t73dmzl7TBZpiNmuqePzT6shKfelAMBji2cxyKY7m1
         Y0lBfxHSbNOXrNL+ayxOzEVD8BVorbOu/rcBjpuKiCNKppThXDqXrEaX1NQvemHldMG/
         NUi3tI7MRpnpQ8udPEpJNf46zi75UuX+0b3Apl6JAlGSfa4EVJKTQXPR+pYFjwIAeK93
         aFhjAzp/ByIX0rTgMgz9MdXDSl0vK+u/5azLtaUqzISiNztOGC0b6VYH7JktC3csd8OZ
         Sn+slMhA8At6OC9ICA6VJcVWqyGjcq90TdXcxS3Ak7p1i2eRh2X0qAcVILWhPVxEWkFH
         +IEQ==
X-Gm-Message-State: AOAM533rjWTyrFn8R4ROasRM0EhQX3sjKwnQIJiOBculFO8PweH2+3VD
        Mw/r/9aKVpsUkdtfMVZ7p4GTIg==
X-Google-Smtp-Source: ABdhPJyd6awJqF4Aj3EuNQSwmNFuKI2U8jPGpFxZhZpwUe09oa8q6leKP/ayFl3jEPCm66cP+pFNyw==
X-Received: by 2002:a50:c099:0:b0:415:f5c7:700e with SMTP id k25-20020a50c099000000b00415f5c7700emr39000077edf.205.1651211739111;
        Thu, 28 Apr 2022 22:55:39 -0700 (PDT)
Received: from [192.168.0.167] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w3-20020a170907270300b006f3ef214e4bsm317988ejk.177.2022.04.28.22.55.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 22:55:38 -0700 (PDT)
Message-ID: <9779588a-5bda-ea82-64a0-c13d48d89eff@linaro.org>
Date:   Fri, 29 Apr 2022 07:55:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: arm: mediatek: mmsys: refine power and gce
 properties
Content-Language: en-US
To:     Jason-JH Lin <jason-jh.lin@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Fabien Parent <fparent@baylibre.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, CK Hu <ck.hu@mediatek.com>,
        Rex-BC Chen <rex-bc.chen@mediatek.com>,
        Nancy Lin <nancy.lin@mediatek.com>,
        Singo Chang <singo.chang@mediatek.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220428012715.2619-1-jason-jh.lin@mediatek.com>
 <b7bb228f-751c-e7ad-a695-3dc40d889a72@linaro.org>
 <60338c26047f47c77fdc7d4eff6a7dee43853e1b.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <60338c26047f47c77fdc7d4eff6a7dee43853e1b.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/04/2022 06:10, Jason-JH Lin wrote:
> Yes, we cannot have infinite number for this, but we can use not only
> one mbox channel for one mmsys.
> 
> Its maximum number is equal to GCE HW thread number.
> The maximum number in mt8195 is 24 and mt8173 is 16.
> 
> But we currently using 1.
> So I'm not sure if I need to set the maxItems for this?

Yes. 24 for mt8195 and 16 for mt8173.

> 
>>
>>>      description:
>>> -      Using mailbox to communicate with GCE, it should have this
>>> -      property and list of phandle, mailbox specifiers. See
>>> -      Documentation/devicetree/bindings/mailbox/mtk-gce.txt for
>>> details.
>>> -    $ref: /schemas/types.yaml#/definitions/phandle-array
>>> +      If using mailbox to communicate with GCE, it should have
>>> this
>>> +      property. GCE will help configure the hardware settings for
>>> the
>>> +      current mmsys data pipeline.
>>>  
>>>    mediatek,gce-client-reg:
>>> -    description:
>>> -      The register of client driver can be configured by gce with
>>> 4 arguments
>>> -      defined in this property, such as phandle of gce, subsys id,
>>> -      register offset and size.
>>> -      Each subsys id is mapping to a base address of display
>>> function blocks
>>> -      register which is defined in the gce header
>>> -      include/dt-bindings/gce/<chip>-gce.h.
>>> -    $ref: /schemas/types.yaml#/definitions/phandle-array
>>
>> Why removing ref? Does your binding work after such change?
> 
> I removed it unexpectedly, I'll add it back.

Just be sure you test it before submitting...


Best regards,
Krzysztof
