Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1167E57958C
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 10:50:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237100AbiGSIuq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 04:50:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237110AbiGSIue (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 04:50:34 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 219BBDFCF
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 01:50:32 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id e28so23559458lfj.4
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 01:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3pxJNE6gYc8cb6d4rkA2eV3Aswi0lfTlAlrCacdvP2w=;
        b=ijFr0es238AtzUmBFcdhNq9P7S2bQTfENXLr/NSqt5rREGLk235GS2OEVXk806dVZu
         LZhIf326MJ344Gx/3K/y1+Q6E/BWtau/4SA8q6hRckQA2KZEcTBciFBoUT+zTJN3gZaw
         bFBVZKNsc1osyAVPJRoYq8QtRgh72fYlykSBxstzpzgPawA/NqvgBZs+xrpGXLRWJhjT
         9SD45XZSuqB7Vs8eD2J9dcHuuZZpQhFfY+3HxlEDezCy6d74cAfqv7KzmJjpiPVDUPtG
         V1426Zg579DI0aFdtzg9S6F1fJK5ZFHyrAIZvjtii2W5Ch4dtUqAJY9efj+r6HtPk7BL
         k65Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3pxJNE6gYc8cb6d4rkA2eV3Aswi0lfTlAlrCacdvP2w=;
        b=LFMiZQzkl0+CZzzWZqtDPLA6K0+gcq3Mv1rKeHjaOtnCuOdGf9QiAfzCj+JFaqP9mh
         N2saylOcDyC78JbjSJNEDV7UtPrhrjwNjm14NYlv/AilP+b65/debYeclIvP8exA1e4U
         G6RVS9JRjL4Lcewyat8vXYL3FGgR1nfYOoowjhaJAA5KYQPNQPQrXvtewa1j0XqrP8Q3
         AXsskN8l45JDc4Gz5Vn+cnIaTqhkWFeIzZb75OoZkM3I9ju01qvE8kmF8meL34jdy0xc
         4LevzMckekqy6r4d6VlmterIz7We0Q05njO9IulmOA6IC/fcW0ro87luDCH1+V7Yz6AY
         vA2Q==
X-Gm-Message-State: AJIora9O85LzKJdz3Pn+dgPquGAhS2KytoXM4ZnIsZLGtzlqoKj7nrIK
        rVAxRz8YRqkfFw0kmN4VN1GmAQ==
X-Google-Smtp-Source: AGRyM1us868YPpB392tMn7H3KK4A7rfaBwjaayrkHiss5VCTlo/g5OiMzIp0NjvcgAuBi9wC02cPVg==
X-Received: by 2002:a05:6512:1595:b0:489:da32:ec68 with SMTP id bp21-20020a056512159500b00489da32ec68mr16232700lfb.573.1658220631316;
        Tue, 19 Jul 2022 01:50:31 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id e22-20020a195016000000b00489de206812sm3061580lfb.151.2022.07.19.01.50.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 01:50:30 -0700 (PDT)
Message-ID: <2a7280cb-2bcc-4297-8beb-a9249c5bf899@linaro.org>
Date:   Tue, 19 Jul 2022 10:50:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 03/19] dt-bindings: power: mediatek: Add bindings for
 MediaTek SCPSYS
Content-Language: en-US
To:     Tinghan Shen <tinghan.shen@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        MandyJH Liu <mandyjh.liu@mediatek.com>
Cc:     iommu@lists.linux.dev, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220714122837.20094-1-tinghan.shen@mediatek.com>
 <20220714122837.20094-4-tinghan.shen@mediatek.com>
 <46df4ad5-5102-b5fe-95b7-5b157fb28f01@linaro.org>
 <c4480c9ea0822ae693ff6a501c073c365e983b83.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c4480c9ea0822ae693ff6a501c073c365e983b83.camel@mediatek.com>
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

On 19/07/2022 10:17, Tinghan Shen wrote:
>>> +    syscon@10006000 {
>>> +        compatible = "mediatek,scpsys", "syscon", "simple-mfd";
>>
>> This should be a SoC-specific compatible (and filename).
> 
> Ok. I think that you mean "mediatek,mt8195-scpsys".
> I'll update it in next version.

Yes.

> 
>>
>>> +        reg = <0x10006000 0x100>;
>>> +
>>> +        spm: power-controller {
>>
>> I think you created before less-portable, quite constrained bindings for
>> power controller. You now require that mt8195-power-controller is always
>> a child of some parent device which will share its regmap/MMIO with it.
>>
>> And what if in your next block there is no scpsys block and power
>> controller is the scpsys alone? It's not possible with your bindings.
> 
> Do you mean a power controller node that looks like this?
> 
> scpsys: power-controller@10006000 {
> 	compatible = "mediatek,mt6797-scpsys";
> 	#power-domain-cells = <1>;
> 
> 	// ...
> };

Yes, I mean, with an unit address.

> 
>>
>> Wouldn't it be better to assign some address space to the
>> power-controller (now as an offset from scpsys)?
> 
> Is this mean adding an offset after the node name?
> 
> spm: power-controller@0 {

This or above. I think it does not matter for the bindings - it's an
implementation detail, whether you give to the child absolute SoC
address or you give an bus-specific (scpsys) sub-address/offset.

The point is that you have an unit address, thus in the future this
could be a device node separate from scpsys.

Best regards,
Krzysztof
