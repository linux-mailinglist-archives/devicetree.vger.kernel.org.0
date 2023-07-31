Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84B92768FDA
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 10:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229845AbjGaIRU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 04:17:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231722AbjGaIQz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 04:16:55 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAA4B1726
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 01:14:26 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so11345580a12.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 01:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690791265; x=1691396065;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p6rcZPwVJBWeYJ6kXZi9yA1FdLwGokDC5tlnkatV15w=;
        b=QTPoqYTCsActNvpiAsIPcOEkIha2cz1+i9EOrcWeVuAQqRzbD3Hp5oHPMMY04ggq1M
         nb4yyl+8vcvkiM6/JOorvvZp1HReTdhzm49qyaeTOLRzfaMpTO4kCqEAGSwHnglglu7G
         9efwAZ/KTTYT8NhsP5q9zsmcKy9sM9ibjUTw9OgEU/xN4eSet842XCNdRIIRxyp2oEig
         tbjADNqkvsW8eaHlK4e5rhJXARqmxaouqn18YdFDGrB/qOvJsVXwvURJ3rJWoljvkiJi
         LtdI+5aozZY/3fJ/P1e9EGUJlFFbUGv/9IKS2naDnAYj3UtTLw3Egf3fPWziZJlEi0ZP
         +Bmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690791265; x=1691396065;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p6rcZPwVJBWeYJ6kXZi9yA1FdLwGokDC5tlnkatV15w=;
        b=OKmVPKYcljz3f9o4Nc11KexUrVBtuB2j6QVfSqFij5NFgRSGny4gN73nB3AwfWbaoA
         mMborV8qn81CkDSvFCwaFx21UDiOYbvfrbLJ3ZRSO8XeUJnT5HwuypPE7VYQBgYstBXH
         igtGh4LdSvR3TirrXgy5FCS0ne8fgCNpPjGA5XaWSM1oNHyxP7jiqoVd+fktwMBt/Ry3
         n+tVuZ7wDnjcEJDzcqZIruHb5IlVP5+iGu2w0mxtrosyzgKO6Bu1In65s8jHs02blKe6
         1vmmM55H1EN3WeewSBVXyyCMM+ymDV2wTl0P3nhj8gAEak82ofhhECgr8GpHjQex9NnV
         ocIw==
X-Gm-Message-State: ABy/qLY5fHjlmYS/NZhyq8aNt3qjP99OZ4UQWQKzdbUw1puK8nafQPky
        pMWdk1iTxZA1zKru0lg0Q+Zjxw==
X-Google-Smtp-Source: APBJJlEcpNtkDOqJUGvWGXqCV6phd4Pm6wZGFOPble3FSFbPOjaBdJp/J199LjmDjTErsa3F80PoGg==
X-Received: by 2002:a05:6402:3508:b0:51d:cf7b:c9f0 with SMTP id b8-20020a056402350800b0051dcf7bc9f0mr13989833edd.12.1690791265071;
        Mon, 31 Jul 2023 01:14:25 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id w5-20020aa7d285000000b005227ead61d0sm5095073edq.83.2023.07.31.01.14.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jul 2023 01:14:24 -0700 (PDT)
Message-ID: <ab66c8a4-6a5e-651b-8f77-047980ebc238@linaro.org>
Date:   Mon, 31 Jul 2023 10:14:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3 5/6] ASoC: dt-bindings: mediatek,mt7986-wm8960: add
 mt7986-wm8960 document
Content-Language: en-US
To:     =?UTF-8?B?TWFzbyBIdWFuZyAo6buD5Yqg56u5KQ==?= 
        <Maso.Huang@mediatek.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "chenxiangrui@huaqin.corp-partner.google.com" 
        <chenxiangrui@huaqin.corp-partner.google.com>,
        =?UTF-8?B?VHJldm9yIFd1ICjlkLPmlofoia8p?= <Trevor.Wu@mediatek.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        =?UTF-8?B?QWxsZW4tS0ggQ2hlbmcgKOeoi+WGoOWLsik=?= 
        <Allen-KH.Cheng@mediatek.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "tiwai@suse.com" <tiwai@suse.com>,
        "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
        "perex@perex.cz" <perex@perex.cz>, "arnd@arndb.de" <arnd@arndb.de>,
        "angelogioacchino.delregno@collabora.com" 
        <angelogioacchino.delregno@collabora.com>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>
References: <20230728090819.18038-1-maso.huang@mediatek.com>
 <20230728090819.18038-6-maso.huang@mediatek.com>
 <7d70f893-ee75-d355-4b4c-4afe7a72cd7c@linaro.org>
 <5f794f6d3595e845433aab3c48eb47ec7962c929.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5f794f6d3595e845433aab3c48eb47ec7962c929.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2023 09:31, Maso Huang (黃加竹) wrote:
> On Fri, 2023-07-28 at 14:49 +0200, Krzysztof Kozlowski wrote:
>>  	 
>> External email : Please do not click links or open attachments until
>> you have verified the sender or the content.
>>  On 28/07/2023 11:08, Maso Huang wrote:
>>> Add document for mt7986 board with wm8960.
>>>
>>> Signed-off-by: Maso Huang <maso.huang@mediatek.com>
>>> ---
>>>  .../sound/mediatek,mt7986-wm8960.yaml         | 53
>> +++++++++++++++++++
>>>  1 file changed, 53 insertions(+)
>>>  create mode 100644
>> Documentation/devicetree/bindings/sound/mediatek,mt7986-wm8960.yaml
>>>
>>> diff --git
>> a/Documentation/devicetree/bindings/sound/mediatek,mt7986-wm8960.yaml 
>> b/Documentation/devicetree/bindings/sound/mediatek,mt7986-wm8960.yaml
>>> new file mode 100644
>>> index 000000000000..76394f7e5502
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/sound/mediatek,mt7986-
>> wm8960.yaml
>>> @@ -0,0 +1,53 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: 
>> http://devicetree.org/schemas/sound/mediatek,mt7986-wm8960.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: MediaTek MT7986 sound card with WM8960 codec
>>> +
>>> +maintainers:
>>> +  - Maso Huang <maso.huang@mediatek.com>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: mediatek,mt7986-wm8960-machine
>>> +
>>> +  mediatek,platform:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description: The phandle of MT7986 platform.
>>> +
>>> +  audio-routing:
>>> +    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
>>> +    description:
>>> +      A list of the connections between audio components. Each
>> entry is a
>>> +      sink/source pair of strings. Valid names could be the input
>> or output
>>> +      widgets of audio components, power supplies, MicBias of
>> codec and the
>>> +      software switch.
>>> +
>>> +  mediatek,audio-codec:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description: The phandle of wm8960 codec.
>>> +
>>
>> How did you implement Rob's comment? Or did you just ignore it?
>>
>> Best regards,
>> Krzysztof
>>
> 
> Hi Krzysztof,
> 
> Sorry, I did not mean to ignore Rob's comment.
> I waited for some suggestion in mail below, but it seems Rob was a
> little busy.
> 
> https://lore.kernel.org/lkml/8c6316e79e40406e4d46709f602dcb14a4c00562.camel@mediatek.com/
> 
> After gentle ping last week and receiving your advice, I thought that
> means to send the v3 patch and might discuss dtbingding in v3 series.
> 
> So sorry for misunderstanding it, I'll check the details with Rob in v3
> series then refine it in v4.

The problem is that you did not reference in this patch any ongoing
discussion and further questions, so comment looks like addressed, while
it was not.

Rob said:
"in a common schema and reference them "
You said:
"common part yaml and reference to it"
so I think you both agreed on the same.

The advice would be to create common binding which is then referenced by
other and your bindings. However if you start doing it, you will notice
that it is impossible, because you have conflicting types for
"audio-codec", so you cannot have one definition.

This leads to the point - property is probably wrong and you need
dai-link with sound-dai property, just like most cards are doing.

Best regards,
Krzysztof

