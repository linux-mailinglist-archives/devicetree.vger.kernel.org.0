Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0102551350
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 10:51:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239366AbiFTIvE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 04:51:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239319AbiFTIvC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 04:51:02 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F88712D10
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 01:51:01 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id me5so19706438ejb.2
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 01:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=l921OzWrKWAkvgffalKJcegxOLa36ztSxqMp8PQLuKE=;
        b=K8YhUSw2j90oN35WVE7NTJrtHV0dTZB20ol4mTQLyuO94nvyW83AU6qr2lg51vXODD
         o9R3B4RVANHBRkwyy5TbfSI5mdDhNLzseI0fobTy4UBH7yf9wD34/VB0ukydEmAnDfEM
         r6RAuE4N+pbS9G/7F5TcxO3zeAPrHW3QK7tL8XYJ1N5qLb5Z4l5makzcW+3y4rT+aUMZ
         5ZICp0zJ7tQCeNGS4S2hCy54OrzCp0unX7VKSKximXDZomJApbztoGxg0RIc7KDgsDsy
         m9yTbwwjbzu1OkI5yydxa1OjRCcqzZsnk2F0p2yKA+eyL3eUr1/iWAjbNiwlkdLcj0jT
         6N1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=l921OzWrKWAkvgffalKJcegxOLa36ztSxqMp8PQLuKE=;
        b=QYLUKL8zKi7pmeS6IehZAA6rbRUHmCaFV+05z3E181nlTDzfU5FDI67D0gs3siYarB
         o0dXnf6qzTSGHxAMsJvaeeZc44dWQWlTlsl9OrrvxNdvl61cmdo330xkS5bgHHhpp89k
         SGwBgwCBYrXvifLUcoNQ5KDhfXhXtKkvaElFQKJA/vOBBPEHLVFxxpBRFMoLAZ3Nv56V
         IRsdTKygFC77FpSAvI8CqPAMDBkvye/qc5Cebc2P5YZoG4jtGc3bhKkhNpCxWxyilJ8g
         V3LGrDaHwdS02rUSTaWBDdtc9pnJKJfKrcfEe8MehFzlTCGc+MBvk9XRiwnqe46e67bS
         spMA==
X-Gm-Message-State: AJIora8WlCobzB6MIPujXsaS2lGPxs0rodTtKowaqjI9OVfkNQuQv+EM
        Fj3+lztLbXu4Ben+lLJ1+OXtFg==
X-Google-Smtp-Source: AGRyM1vg839TPzO9Llk78TgzhogRHGaP18+CEPGCz+ZqKqNWO6QJy5rQo9Fs6ITkPjHkEQ3FwxwpLw==
X-Received: by 2002:a17:907:16a2:b0:711:d048:7d41 with SMTP id hc34-20020a17090716a200b00711d0487d41mr20355368ejc.126.1655715059676;
        Mon, 20 Jun 2022 01:50:59 -0700 (PDT)
Received: from [192.168.0.207] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ff10-20020a1709069c0a00b006fec69696a0sm5512140ejc.220.2022.06.20.01.50.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 01:50:59 -0700 (PDT)
Message-ID: <a24c24e6-fdee-df79-fd2f-6a71540bd9b3@linaro.org>
Date:   Mon, 20 Jun 2022 10:50:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 2/3] dt-bindings: usb: mtk-xhci: Allow middle optional
 clocks to be missing
Content-Language: en-US
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-usb@vger.kernel.org
References: <20220617222916.2435618-1-nfraprado@collabora.com>
 <20220617222916.2435618-3-nfraprado@collabora.com>
 <8639e64d-c659-7090-2d0a-078fd96cfbd4@linaro.org>
 <bb460aa483cc888ffa36709d9e9c1f2e3be0e000.camel@mediatek.com>
 <bc5458fe-083c-d679-9fcb-95810a290da8@linaro.org>
 <af50210b95d0cd8b2e3103b3d4a9702aeeba9452.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <af50210b95d0cd8b2e3103b3d4a9702aeeba9452.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2022 08:59, Chunfeng Yun wrote:
> On Sun, 2022-06-19 at 14:05 +0200, Krzysztof Kozlowski wrote:
>> On 19/06/2022 09:46, Chunfeng Yun wrote:
>>> On Fri, 2022-06-17 at 18:25 -0700, Krzysztof Kozlowski wrote:
>>>> On 17/06/2022 15:29, Nícolas F. R. A. Prado wrote:
>>>>> The current clock list in the binding doesn't allow for one of
>>>>> the
>>>>> optional clocks to be missing and a subsequent clock to be
>>>>> present.
>>>>> An
>>>>> example where this is an issue is in mt8192.dtsi, which has
>>>>> "sys_ck",
>>>>> "ref_ck", "xhci_ck" and would cause dtbs_check warnings.
>>>>>
>>>>> Change the clock list in a way that allows the middle optional
>>>>> clocks to
>>>>> be missing, while still guaranteeing a fixed order. The
>>>>> "ref_ck" is
>>>>> kept
>>>>> as a const even though it is optional for simplicity, since it
>>>>> is
>>>>> present in all current dts files.
>>>>>
>>>>> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
>>>>> ---
>>>>>
>>>>>  .../devicetree/bindings/usb/mediatek,mtk-xhci.yaml       | 9
>>>>> +++++++--
>>>>>  1 file changed, 7 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git
>>>>> a/Documentation/devicetree/bindings/usb/mediatek,mtk-
>>>>> xhci.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtk-
>>>>> xhci.yaml
>>>>> index 63cbc2b62d18..99a1b233ec90 100644
>>>>> --- a/Documentation/devicetree/bindings/usb/mediatek,mtk-
>>>>> xhci.yaml
>>>>> +++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-
>>>>> xhci.yaml
>>>>> @@ -80,8 +80,13 @@ properties:
>>>>>      items:
>>>>>        - const: sys_ck  # required, the following ones are
>>>>> optional
>>>>>        - const: ref_ck
>>>>> -      - const: mcu_ck
>>>>> -      - const: dma_ck
>>>>> +      - enum:
>>>>> +          - mcu_ck
>>>>> +          - dma_ck
>>>>> +          - xhci_ck
>>>>> +      - enum:
>>>>> +          - dma_ck
>>>>> +          - xhci_ck
>>>>>        - const: xhci_ck
>>>>
>>>> You allow now almost any order here, including incorrect like
>>>> sys,ref,xhci,xhci,xhci.
>>>>
>>>> The order of clocks has to be fixed and we cannot allow
>>>> flexibility.
>>>> Are
>>>> you sure that these clocks are actually optional (not wired to
>>>> the
>>>> device)?
>>>
>>> In fact, these optional clocks are fixed, due to no gates are
>>> provided,
>>> SW can't control them by CCF;
>>> In this case, I usually use a fixed clock, or ignore it.
>>
>> But in some versions these clocks are controllable or not?
> Some SoCs are controllable, some ones are not (fixed clock).

Thanks for confirming. Then I would prefer to make these clocks required
(not optional) and always provide them - via common clock framework or
fixed-clock.

Best regards,
Krzysztof
