Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 086B9705543
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 19:46:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbjEPRqq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 13:46:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbjEPRqo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 13:46:44 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77C5226B6
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 10:46:43 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-965c3f9af2aso2216647066b.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 10:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684259202; x=1686851202;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GRa69PQOGWHAG7dhMSxTg0hAGqZBZ04lzADv5vDNz8g=;
        b=RRPQYVAVbvDPGqCKhIMikPDdRRFVC0v/jXgzWQCbjnebcoZlBGSkLq8zU49oZdZ8Hb
         aULAVglhgjSlAgo4mMhyKohg1Up/VRkVDddLSm+bnC7HAsNSxZrCD34FcZQk/L1Qtx5E
         6jefn5/zukaN05rftxwwRuDn/ur7cBGCt+R8yBm9ZVT9jPGNqoNA2gF5fPqCGyjhK1yt
         h/TMZ1TFbp4jvszGMDS1qoct2OjXehPPFQ9dKGHD9CYUGb6Ch00tRs+JRgNNV9GVwU6l
         k2MYDGxxXUoYH8w0bGcI7YBontOYmpciKjBxbAeyk3zlP4NL6OPTZoYPUR8DVVhuY86D
         CBOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684259202; x=1686851202;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GRa69PQOGWHAG7dhMSxTg0hAGqZBZ04lzADv5vDNz8g=;
        b=iV1ofm2Lj90S3yiQPC+L6vDprxMrfv3ULwJ1GeWqV2TegR0q5kvrJi67kamjadplxh
         sLu3JkVVqIzqnCglNA5CAPFh4MsK/pU1/5bf5M7enP6CMMjgqyC3ULjR0Wdo0nsj/JiY
         odgqVHJgw8IhbGCElHAc6YFFfbINp6kHxqxZuw39PZUgo1lldagIal9h3EZW97FrbPrO
         dPEM02UWiaF5WngJbMD8m0SUiQeTFM4JslZg8x8IQ8AT3hselbtgu1loj8gZT5Rv+J63
         2uPMETWarDkGg6Akn1Tlcz2t1diNpE+n943UM59MyAl36DVGqCtszuSXCgVKX3zWZ/iY
         N6WA==
X-Gm-Message-State: AC+VfDxwfg2qXGL8LLF6TpKmUMlYlyshlk6C5Pi8bbJo8QI0dXwAEk9R
        Huq1TCdPIUneLch+tM7Is00afg==
X-Google-Smtp-Source: ACHHUZ4Fqn0IrjbbaMLzr7Bcxhp8gYX9LChIPIyWCrZkZMtVJWRTHK4AUx/ymdIQ4WqijDpz1YPenQ==
X-Received: by 2002:a17:906:c14f:b0:94d:a2c2:9aeb with SMTP id dp15-20020a170906c14f00b0094da2c29aebmr41011197ejc.49.1684259201897;
        Tue, 16 May 2023 10:46:41 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:77d1:16a1:abe1:84fc? ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id w5-20020a056402128500b0050c03520f68sm8567276edv.71.2023.05.16.10.46.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 10:46:41 -0700 (PDT)
Message-ID: <fbf1b0a6-f45d-69a0-5de6-8269567e15b3@linaro.org>
Date:   Tue, 16 May 2023 19:46:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add mediatek mipi csi driver v
 0.5
Content-Language: en-US
To:     Kevin Hilman <khilman@baylibre.com>,
        Julien Stephan <jstephan@baylibre.com>
Cc:     robh@kernel.org, chunkuang.hu@kernel.org,
        linux-mediatek@lists.infradead.org,
        Florian Sylvestre <fsylvestre@baylibre.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Andy Hsieh <andy.hsieh@mediatek.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        "moderated list:ARM/Mediatek USB3 PHY DRIVER" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20230515090551.1251389-1-jstephan@baylibre.com>
 <20230515090551.1251389-2-jstephan@baylibre.com>
 <ab9aa30f-82d7-1d14-5561-e19ff10af0b0@linaro.org>
 <4yppinkucchwnwtnnpbqdn4bejmntjq3q6mx6es55f2pwyce3c@qdhdks47lpyt>
 <1853f049-4f00-b7f0-973a-2c4e7b0b2634@linaro.org>
 <7h353w2oug.fsf@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7h353w2oug.fsf@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2023 19:00, Kevin Hilman wrote:
>>>>> +  compatible:
>>>>> +    enum:
>>>>> +      - mediatek,phy-mipi-csi-0-5
>>>>
>>>> SoC based compatibles. 0-5 is odd.
>>>>
>>>>> +
>>>>> +  reg:
>>>>> +    maxItems: 1
>>>>> +
>>>>> +  '#phy-cells':
>>>>> +    const: 0
>>>>> +
>>>>> +  mediatek,is_cdphy:
>>>>
>>>> No underscores in node names.
>>>>
>>>>> +    description:
>>>>> +      Specify if the current phy support CDPHY configuration
>>>>
>>>> Why this cannot be implied from compatible? Add specific compatibles.
>>>>
>>>>
>>> This cannot be implied by compatible because the number of phys depends
>>> on the soc and each phy can be either D-PHY only or CD-PHY capable.
>>> For example mt8365 has 2 phy: CSI0 and CSI1. CSI1 is DPHY only and CSI0 is CD-PHY
>>
>> So it is SoC specific so why it cannot be implied by compatible? I don't
>> understand. You will have SoC specific compatibles, right? or you just
>> ignored my comments here?
> 
> Julien, I think you had SoC specific compatibles in an earlier version
> but then changed it to be generic based on reviewer feedback.  However,
> that earlier version of the driver was trying to do a bunch of SoC
> specific logic internally and support multiple SoCs.  You've now greatly
> simplified the driver, with only a few SoC specific decisions needed.
> These can be implied by the driver based SoC specific compatible, as
> Krzysztof suggests, so you should just go back to having SoC specific
> compatibles.
> 

Yes. If there is common part, e.g. several SoCs use the same device with
same programming model, then the generic recommendation is to have
SoC-based fallback (used also in the driver) and SoC-specific compatibles.

Second accepted solution is to have generic fallback which does not use
SoC in the compatible (and of course mandatory SoC-specific comaptibles).

Third is to use versioned IP blocks.

The second case also would work, if it is applicable to you (you really
have fallback matching all devices). Third solution depends on your
versioning and Rob expressed dislike about it many times.

We had many discussions on mailing lists, thus simplifying the review -
I recommend the first choice. For a better recommendation you should say
a bit more about the block in different SoCs.

Best regards,
Krzysztof

