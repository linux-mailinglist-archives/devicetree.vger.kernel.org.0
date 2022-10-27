Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 500E36102A8
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 22:25:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236974AbiJ0UZh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 16:25:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236888AbiJ0UZf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 16:25:35 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07154419B1
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 13:25:31 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 1A20F85074;
        Thu, 27 Oct 2022 22:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1666902329;
        bh=2d0+/YY+OOPiTlhhJZqrO6myC7a4dKzxvQ/nKAofY8E=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=NXlPpV4jICmi5HsWTLePIBIkuCzXaqWzsUNJ8C8dQsxTJ29UW8nP3BEbyh4OgOy8D
         GktiqNAFPYf3ueY9u8HtN2X4YVuafMgZpYaPZ/OSZbdgVY2b0umdL/ZJ0xJowHPVSj
         Nvn0ggAMR93f5nM470emKDT0ZXxBvc1sp5XxaCKLYzG9QDPP6+PBzUz+CJhNLyq9yl
         EjERLS2hpKonjvNZq7WXeWFR5iSlWQMJJe9+ru16HzL4LhIdUBsy1fU1yioYTot6SQ
         06aqgcGhg+srzjhzvgSyqRulsFLqXj2B+qtOICmdftuwdR5MHSamQtfAzwECMs0ZLS
         elFqVH5o9qkDA==
Message-ID: <5164f1c3-12f3-7c6a-8f50-84e81dc7ce78@denx.de>
Date:   Thu, 27 Oct 2022 22:25:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2] ASoC: dt-bindings: Document audio OF graph
 dai-tdm-slot-num dai-tdm-slot-width props
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
References: <20220927185359.294322-1-marex@denx.de>
 <4a25e348-c6d4-ceeb-ff08-1fca4132d5a7@linaro.org>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <4a25e348-c6d4-ceeb-ff08-1fca4132d5a7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/14/22 01:34, Krzysztof Kozlowski wrote:
> On 27/09/2022 14:53, Marek Vasut wrote:
>> Document dai-tdm-slot-num and dai-tdm-slot-width props as those are
>> parsed by simple graph card and may therefore appear in audio OF graph
>> node.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Cc: Liam Girdwood <lgirdwood@gmail.com>
>> Cc: Mark Brown <broonie@kernel.org>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> Cc: alsa-devel@alsa-project.org
>> To: linux-arm-kernel@lists.infradead.org
>> ---
>> V2: Drop the definition refs and just fill in type and description
>> ---
>>   .../devicetree/bindings/sound/audio-graph-port.yaml         | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
>> index bc46a95ed8400..64654ceef2089 100644
>> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
>> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
>> @@ -74,6 +74,12 @@ patternProperties:
>>         convert-sample-format:
>>           $ref: "/schemas/sound/dai-params.yaml#/$defs/dai-sample-format"
>>   
>> +      dai-tdm-slot-num:
>> +        description: Number of slots in use.
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +      dai-tdm-slot-width:
>> +        description: Width in bits for each slot.
>> +        $ref: /schemas/types.yaml#/definitions/uint32
> 
> Isn't the slot width already part of dai-tdm-slot-width-map? Number of
> slots maybe as well can be deducted from number of tuples in
> dai-tdm-slot-width-map?

It seems to me per commit:
26e5366dd3056 ("ASoC: dt-bindings: audio-graph-port: Add 
dai-tdm-slot-width-map")
that "dai-tdm-slot-width-map" was meant to address some sort of hardware 
special case, or rather limitation, where the hardware was unable to be 
configured in arbitrary manner, hence the list of available usable 
configurations.

However, there seem to be no users of such a list in tree:
next$ git grep -l dai-tdm-slot-width-map
Documentation/devicetree/bindings/sound/audio-graph-port.yaml
sound/soc/generic/simple-card-utils.c

There are users of the dai-tdm-slot-width however:
next$ git grep -l dai-tdm-slot-width arch
arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
arch/arm64/boot/dts/freescale/imx8mq-evk.dts

As far as I can tell, the dai-tdm-slot-width describes generic hardware 
without limitations, which can be configured in an arbitrary manner, so 
this is the preferred DT property (over the map one).

Also, sorry for the late reply.

>>         dai-tdm-slot-width-map:
>>           description: Mapping of sample widths to slot widths. For hardware
>>             that cannot support a fixed slot width or a slot width always
[...]

