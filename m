Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 849A8646B34
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 09:57:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbiLHI5c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 03:57:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbiLHI5a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 03:57:30 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F30C62EA7
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 00:57:29 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id b3so1048184lfv.2
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 00:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t+Wh+O8PRwTrRbk5kFdr3a/rSo7u8vOA5d9odhfiR14=;
        b=v1BSzoivO0PDOUQT0ugfbeIyn3ltnACrXweWeUA+dRemAuYcVd53KUcoqoV2McEcub
         IfYVTtelayxQaadlY3/x1LZHiBSoTV0lsY1GUYkDIFVB1DCuw+RNbFEZ+yTaUe/ENSdc
         fxSaDVJ5zzuJwqfP1qXHAzPOBOHk7qTaKzr7fZwzYAS128kkeJXBDj5prB4lhNzxgtL5
         IdvWodkx3BjVp1VZk8YC/0BvmoFHi25ioRN2If5ARSnBGks1Vfhjjl+BxWxUMSfoiG26
         HtI7KpSkvckM10TE74NfLcKzhACjrJxrL6azX6OEzG4BLfbvizZ+F2XOFFDqQu7U3Ct/
         mOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t+Wh+O8PRwTrRbk5kFdr3a/rSo7u8vOA5d9odhfiR14=;
        b=g5zzW/hfMsaS+Ie7cHh5vAGjTWaTJQv7HDCoDkUXs5Y1RZf+Cu4P6HZZC3mMqaHMcM
         sp/kqihE2yD/LWuVWOiXz2K/0iaA9sLiDSNmtEd5ghybBKMxhOs5I5Yyfa3SQmNB/+zL
         j7uKXEB1afk6XbOPUk2vdKcJiBQaqSx6u7rb62iyqb3RG4LMrGe7i62aU50a6P0TixY6
         s8zOTGHPbdcrhTSEYr+kJzkRNMZQi/AWOd+PU7IAJHdvMAhh055XP2fk9udQCh21VDL6
         wCI3ApSzDqVnqKS72JTjzal2GhAmhqw1vj7YnChsRPi31qyBdlfe/SDf0dvNXu6f1IsR
         JhzQ==
X-Gm-Message-State: ANoB5pmaDEn0C92FepeYm+FjMwJJRXtQb/6MBdcCrdMdZtZrvioaHZaz
        0939Zn1qgSdi94Aui8k9bWrWQWR+JjCNVi4luV4=
X-Google-Smtp-Source: AA0mqf5FwywbJZstRFly5MgLTHQOmnrNxgG1bb0++yQ1DsDDnUV6kjVmQp+5cJWWCy8cOwCS3g1TAw==
X-Received: by 2002:a05:6512:2005:b0:4b5:9043:2537 with SMTP id a5-20020a056512200500b004b590432537mr2133373lfb.48.1670489847665;
        Thu, 08 Dec 2022 00:57:27 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i6-20020a2ea226000000b0026dee5476d5sm2230773ljm.113.2022.12.08.00.57.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Dec 2022 00:57:27 -0800 (PST)
Message-ID: <d5e9f614-496c-b111-c9af-f180e16c40b5@linaro.org>
Date:   Thu, 8 Dec 2022 09:57:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 2/2] dt-bindings: lcdif: Add optional power-domain
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com>
 <1839665.tdWV9SEqCh@steina-w>
 <a033d9a3-4bee-d749-9bd9-24a419398d0b@linaro.org>
 <3212302.44csPzL39Z@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3212302.44csPzL39Z@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/12/2022 09:50, Alexander Stein wrote:
> Hello Krzysztof,
> 
> Am Donnerstag, 8. Dezember 2022, 09:25:31 CET schrieb Krzysztof Kozlowski:
>> On 08/12/2022 06:59, Alexander Stein wrote:
>>> Am Mittwoch, 7. Dezember 2022, 17:00:22 CET schrieb Marek Vasut:
>>>> On 12/7/22 16:14, Alexander Stein wrote:
>>>>> i.MX8MP requires a power-domain for this peripheral to use. Add it as
>>>>> an optional property.
>>>>>
>>>>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>>>>> ---
>>>>>
>>>>>   Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 3 +++
>>>>>   1 file changed, 3 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>>>> b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml index
>>>>> 793e8eccf8b8b..9d9fb5ad587c2 100644
>>>>> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>>>> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>>>>
>>>>> @@ -52,6 +52,9 @@ properties:
>>>>>     interrupts:
>>>>>       maxItems: 1
>>>>>
>>>>> +  power-domains:
>>>>> +    maxItems: 1
>>>>> +
>>>>>
>>>>>     port:
>>>>>       $ref: /schemas/graph.yaml#/properties/port
>>>>>       description: The LCDIF output port
>>>>
>>>> Should this be required on mx8mp then ?
>>>
>>> I'm hesitating to add a required property later on. But I'm okay with
>>> both.
>>> Rob, Krzysztof: Any preference here? Shall power-domains be made required
>>> for fsl,imx8mp-lcdif only?
>>
>> I don't know. That's not the question to us, but to someone who knows
>> the hardware/datasheet.
> 
> I was not talking about the hardware, which needs the power-domain, but the DT 
> schema. Sorry to be not specific about this.
> Is it okay to add a required property for a compatible later on?

Yes, it is okay, assuming:
1. Linux implementation still works without it thus preserving ABI.
2. It is really required, e.g. device cannot operate without it (your
commit msg suggests that).
3. The property should be required since beginning, but we did not add
it due to mistake/forgot/lack of docs etc.

Best regards,
Krzysztof

