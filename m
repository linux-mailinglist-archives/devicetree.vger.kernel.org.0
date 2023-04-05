Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A7B36D7F9A
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 16:35:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232286AbjDEOfB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 10:35:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238614AbjDEOe4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 10:34:56 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F3A030CD
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 07:34:49 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id t4so31196224wra.7
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 07:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680705288;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CW6SEmeeRI4KuBNDdzCiH6zGWbYI1ySCeEScYHS2P00=;
        b=YrHVUT/qOMG/lSCl/TxA+5ER2cLvgR+4p4XnJeag4tAzZbSa4j3qiw+HWKAq8phWyx
         nvFMFv6EI/PxNWwv1sE7v/QKbUHmbZFq5kswHNV7kLmwW1cCmCy8+qpVkhM/nCEPwUAX
         26sEgrtGY1Rv1A3VoFoo+PK5gLppRKj5FW4WgFPLvfd4jkaYisdgCUj6vDZDRDiMbW52
         Ko+yWY5tjQoCW0qTEv2iyTCq9ImTAuWX21wxSUwa8siGXcorQYuoS90KhkTSJhWAaRUl
         MAkJ4r9Jn9hK5/1h95Cog+W/uA67v+kOzRm+rngmmTJXldtDd3dozxhZ41x/R5ZDIPUO
         Uvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680705288;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CW6SEmeeRI4KuBNDdzCiH6zGWbYI1ySCeEScYHS2P00=;
        b=h0KYbCICBInU3MkVV9u9CUmZjfx8xAV8j2X5JfAx8oCoD0JpM3L6iRL7Y2zQJOtKwP
         ifiNDgnHGwZrVTcj3NG4ypfAy7frdjLTbStSiY3nWfluMxoREqRoKWD568lkFWokNmzh
         Ca4YSYGH6iDJAA0CugD+PrIJ7vU2I8jM82/XTh4PxTJcjtMVKRY5pCsXbFtrTz9GA04B
         R/3YoTQyYj8MGEmyjrGCzg5/MA36dgwKoU9pnzOEAxzTLyLPI5nbg5qr9C2VDIR3574h
         Cl6ZgUO6/o8ttX8qiNfNzUbihFULKkpdvMC9jjlMz3BJuk0rj183ldhpTur8clf+DKvV
         61mg==
X-Gm-Message-State: AAQBX9c2DsoZErZfuH9w0cdKQIBkndJz6YqeRUXtFsb5+QofgApVRxRP
        UsTtYI8vmMqW2/6StaYamgkyqg==
X-Google-Smtp-Source: AKy350bRoK9o4nxpqsA5Es5CtZzavd7UOZlD9bG7h4k4M3SvZbJJl06c9LEpbSdXuqddV7dQYXIvsQ==
X-Received: by 2002:a5d:4f06:0:b0:2cd:defe:cfd3 with SMTP id c6-20020a5d4f06000000b002cddefecfd3mr4511354wru.30.1680705288039;
        Wed, 05 Apr 2023 07:34:48 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id k4-20020a5d4284000000b002cefcac0c62sm15333506wrq.9.2023.04.05.07.34.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 07:34:47 -0700 (PDT)
Message-ID: <25bcaa84-fb29-4343-d046-26e210fc81f4@baylibre.com>
Date:   Wed, 5 Apr 2023 16:34:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 10/10] memory: mtk-smi: mt8365: Add SMI Support
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com>
 <20230207-iommu-support-v2-10-60d5fa00e4e5@baylibre.com>
 <9847bc48-c96c-3599-e876-bcf9ebf1522e@linaro.org>
 <CAFGrd9pBdaHLGUZHkaz2_XKafyX=dxu9UckQxrphg52EG=A1SQ@mail.gmail.com>
 <8fc3dd22-79df-32cb-c219-896eda8fa986@linaro.org>
 <fd24877a-5fae-5434-dc56-61ab35ccd820@baylibre.com>
 <e38658be-1a2a-bccb-3f30-18f1b031f71d@linaro.org>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <e38658be-1a2a-bccb-3f30-18f1b031f71d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 05/04/2023 15:54, Krzysztof Kozlowski wrote:
> On 05/04/2023 15:06, Alexandre Mergnat wrote:
>> On 05/04/2023 13:45, Krzysztof Kozlowski wrote:
>>> On 05/04/2023 11:53, Alexandre Mergnat wrote:
>>>> Ok, I will move the driver patch before the DTS patches in the next version.
>>>>
>>> Or do not send it together at all, which might solve your dependency
>>> problem. According to your cover letter I cannot take the memory
>>> controller bits, so I am waiting for dependencies to hit the mainline.
>>> Alternatively I will need pull request with stable tag.
>>>
>> Ok, I prefer send the driver patch in another serie. That will solve the
>> dependency with the DTS a least.
> What dependency? Why do you have dependencies between drivers and DTS?
> That's a no-go.
I probably do something wrong but, that start with this comment [1]:

> I guess we should add a independent "mediatek,mt8365-smi-common".

Then I have added the mt8365 compatible support in the driver instead of using the mt8186 which already supported and used in the v1.
I change the binding and DTS to use "mediatek,mt8365-smi-common" only (no more "mediatek,mt8186-smi-common").
Maybe "dependency isn't the good word to use in that case.
Except for the patch order in the serie (or send the driver in another one), everything is fine or there are others wrong things ?


[1]: 
https://lore.kernel.org/all/488d226a8a66bc6f5b96063b2816b59dd065ad3f.camel@mediatek.com/

Regards,
Alexandre

