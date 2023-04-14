Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEEE06E1E15
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 10:24:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229841AbjDNIYl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 04:24:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229881AbjDNIY0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 04:24:26 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40B187EF7
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 01:23:56 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id j17so34057909ejs.5
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 01:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681460634; x=1684052634;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HlmjkGlmEwPeG1vyNfy2LB3FLh3g3BVhfM8XvqJ5230=;
        b=QVQr2FnlD4RjAAT+O04gy+/OhztUE5CI1IOw03DdQeNErGKtZQ0QNmWPYJRhXAi/qZ
         rmEwmQflx7w+RXnfLh61kVd7/iWTKr/P8th0I6NycDg6WsYSLsUmohzDXBFB5MSvH58e
         SkWMdUoHcH8tnFI1NEIXNVAkvhlfoDup1i7u5U/dbf5Fdiq4R2tSFqATAfYIqHRLcoYy
         QE5SQsRQB4q33v+Xwz7TTh0OG6vu/o6ux78k8Dj5EkI97XpQZ8ecHx17F8rOcRu73+Bl
         +FQENJm7GHhO7PzDvr7n/Pzdv+AnsGK10INAN/iBbYfrgUCOHDmhx3Q4QQrfcMFrDFgr
         9Img==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681460634; x=1684052634;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HlmjkGlmEwPeG1vyNfy2LB3FLh3g3BVhfM8XvqJ5230=;
        b=XjVucpKvBRsYqtdSGNPztDMPBLgkbWdL0LdShXs/dKjXsodocQYp7bgiYXFgiIgIKg
         gQsS29EDX43Uky2DcGOUFPVAS8dvZ+fp9dE8ViSiJ7FI36fFUR2W9t2BFyzuTx4/CDew
         rQdfKTlTPfrPizd0KHU2O4vXdwd7X1tsJFcoMTsCPJ3Ew2Ne1nJ3x9cwpi9HEoyUt7Re
         HR2+ER00kF5DTSwhR00/pNBHgNT+uC++TaJA9PxXZdWZzBO/U6i3fBfQzCNgIWkHairb
         HlLlMI2ea5/LLGuEY3dAjLU9DiNC+uPvYJJVvlcE7jA6lI3GMpDEgEv6V3Gp4CV+sbKK
         2y8g==
X-Gm-Message-State: AAQBX9f6RsJA1YIBPERxKg44XgVJwzCEpcTX2Um12VmJKLA2DEE0plha
        itIO+7gQfsotp42WaihV4JTrDg==
X-Google-Smtp-Source: AKy350YDDfm28Hr4Wu9pej6rnmmCl1oHhpNzr5ms7AHGJkI6pneNOhN5mTSgVEdO2HuvAbf8V5rPPA==
X-Received: by 2002:a17:907:3a03:b0:94c:784f:7569 with SMTP id fb3-20020a1709073a0300b0094c784f7569mr5193398ejc.30.1681460633867;
        Fri, 14 Apr 2023 01:23:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8a60:6b0f:105a:eefb? ([2a02:810d:15c0:828:8a60:6b0f:105a:eefb])
        by smtp.gmail.com with ESMTPSA id l12-20020a056402344c00b00504803f4071sm1843079edc.44.2023.04.14.01.23.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 01:23:53 -0700 (PDT)
Message-ID: <18a7f165-592c-8443-c661-6b0345a6cd00@linaro.org>
Date:   Fri, 14 Apr 2023 10:23:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 03/27] dt-bindings: display: mediatek: dpi: Add compatible
 for MediaTek MT6795
Content-Language: en-US
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com,
        vkoul@kernel.org, kishon@kernel.org, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, chunkuang.hu@kernel.org,
        ck.hu@mediatek.com, jitao.shi@mediatek.com,
        xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, linux-pwm@vger.kernel.org,
        kernel@collabora.com, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-4-angelogioacchino.delregno@collabora.com>
 <0416a00e-b567-1ae4-c49c-ec21e024ab0f@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0416a00e-b567-1ae4-c49c-ec21e024ab0f@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2023 14:35, Matthias Brugger wrote:
> 
> 
> On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
>> Add a compatible string for the MediaTek Helio X10 MT6795 SoC, using
>> the same parameters as MT8183.
>>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> ---
>>   .../display/mediatek/mediatek,dpi.yaml        | 23 +++++++++++--------
>>   1 file changed, 14 insertions(+), 9 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> index d976380801e3..803c00f26206 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> @@ -17,15 +17,20 @@ description: |
>>   
>>   properties:
>>     compatible:
>> -    enum:
>> -      - mediatek,mt2701-dpi
>> -      - mediatek,mt7623-dpi
>> -      - mediatek,mt8173-dpi
>> -      - mediatek,mt8183-dpi
>> -      - mediatek,mt8186-dpi
>> -      - mediatek,mt8188-dp-intf
>> -      - mediatek,mt8192-dpi
>> -      - mediatek,mt8195-dp-intf
>> +    oneOf:
>> +      - enum:
>> +          - mediatek,mt2701-dpi
>> +          - mediatek,mt7623-dpi
>> +          - mediatek,mt8173-dpi
>> +          - mediatek,mt8183-dpi
>> +          - mediatek,mt8186-dpi
>> +          - mediatek,mt8188-dp-intf
>> +          - mediatek,mt8192-dpi
>> +          - mediatek,mt8195-dp-intf
>> +      - items:
>> +          - enum:
>> +              - mediatek,mt6795-dpi
>> +          - const: mediatek,mt8183-dpi
> 
> Shouldn't we declare both const: ?

I assume it is likely the enum will grow. If this is reasonably
anticipated, keep enum.

Best regards,
Krzysztof

