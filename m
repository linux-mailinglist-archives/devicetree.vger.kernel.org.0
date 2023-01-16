Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAF3666BB1F
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 11:01:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229699AbjAPKBt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 05:01:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjAPKBq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 05:01:46 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF2A95B81
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 02:01:44 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id b4so20488755edf.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 02:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lgldI+82xaPUxW9jFm83l+ZVCizNwJg+yeI6zrnzsq4=;
        b=BCpiKjVBNdeZIXfLzwWGp6kixGj7UhUJC6Jg3ImNGeisAS1niXVyRhbI37ToWhVVov
         Gau4+9ctE1TDM13aqvWzu+yVTrjdC7tpaxBvH6lbm1K8ZLSAoYqj1tnfDNhaIggJy8Ix
         U/m66LrjGiz/kInp/qy2Q4BcTg2Hx+cyJ/wha7WUftpsKznaWllLTHXTxs4JOuEAtz2K
         Rk1Gp73r2z4eTAFbP20g0pkZLqvAsF50G1T9htpwAMzxU64m8827iOUAbuqItmOd2E4A
         HnjayK4LMsTaDCKG/ax7O7cRtjDYaN817bWhHtQmCMNH239aO/y0pjmUOszBeipZH+p1
         C2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lgldI+82xaPUxW9jFm83l+ZVCizNwJg+yeI6zrnzsq4=;
        b=nnhyQxRCLhokwDBhUGUGQp4z2qk2VPOSfBvPWbPSdznywXWsMvaYWZIWzEH034zaSF
         KxS8q+bUaCuVv320nN++5wVWUNu8KT+drAxW+CCn5QhcXsiZL5hVeT2ZnALh/XZUctZy
         kSXzT3E0aYEq9hJmVvxBJ4u/aAZQbkCPgaLZpMKDvhpo7X7gk7JRjEBTWvHuP0yg+qXD
         cPiIG+Z2XUBs4C95sGyO2lsUpi1SYsnhSCOCY1NRTxRB2/Tl++GTnTe24hfJdRHhSchJ
         EFBKwe43p9hPClmynEjH+4+89vvy5TjTbcU6APxX5RlOKPBMh2099bE1ADJ/xIw3YjbI
         i6lg==
X-Gm-Message-State: AFqh2kpUvQ/zzPzHsjJ6TSczACnSq9MCUsiwK5LZJZYlf7JWrgUrIhvD
        /Q4CZYvqOtJ/+AY9AXd6e5XXcA==
X-Google-Smtp-Source: AMrXdXvnFV6jO2U3anaxOMJIRIEJtNv8DD9RTL58GFnKUvxRRdcA3m/m4J+pPGsSPdTOMxg7f/nfCA==
X-Received: by 2002:a05:6402:520b:b0:48b:58be:472c with SMTP id s11-20020a056402520b00b0048b58be472cmr78238671edd.18.1673863303450;
        Mon, 16 Jan 2023 02:01:43 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q24-20020a056402249800b0046ac460da13sm11336099eda.53.2023.01.16.02.01.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 02:01:43 -0800 (PST)
Message-ID: <dbf5fc36-11c6-ae54-a19c-5fc9924aa18d@linaro.org>
Date:   Mon, 16 Jan 2023 11:01:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [RESEND v3 01/13] dt-binding: mediatek: add bindings for MediaTek
 mt8195 MDP3 components
To:     =?UTF-8?B?TW91ZHkgSG8gKOS9leWul+WOnyk=?= <Moudy.Ho@mediatek.com>,
        "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
        "mchehab@kernel.org" <mchehab@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
References: <20230116032147.23607-1-moudy.ho@mediatek.com>
 <20230116032147.23607-2-moudy.ho@mediatek.com>
 <f24a54f1-2720-3345-9596-bb8d388ba16f@linaro.org>
 <a5ef36df5bf8c483d327247199f5494be13b1efa.camel@mediatek.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a5ef36df5bf8c483d327247199f5494be13b1efa.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/01/2023 10:39, Moudy Ho (何宗原) wrote:
> Hi Krzysztof,
> 
> Thank you for taking the time to help review, I would like to ask a
> modification as follows.
> 
> On Mon, 2023-01-16 at 09:10 +0100, Krzysztof Kozlowski wrote:
>>>
> 
> (snip)
> 
>> On 16/01/2023 04:21, Moudy Ho wrote:
>>> diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-
>>> aal.yaml b/Documentation/devicetree/bindings/media/mediatek,mdp3-
>>> aal.yaml
>>> new file mode 100644
>>> index 000000000000..d2e1b5245778
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-
>>> aal.yaml
>>
>> Filename should match compatible, unless you already expect this
>> binding
>> will cover other devices. If so, why not adding them now?
>>
> 
> May I rename this file to "mediatek,mt8195-mdp3.yaml"
> 
>>>
> 
> (snip)
> 
>>> diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-
>>> color.yaml b/Documentation/devicetree/bindings/media/mediatek,mdp3-
>>> color.yaml
>>> new file mode 100644
>>> index 000000000000..1d8aa5dc76b9
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-
>>> color.yaml
>>> @@ -0,0 +1,63 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: 
>>> https://urldefense.com/v3/__http://devicetree.org/schemas/media/mediatek,mdp3-color.yaml*__;Iw!!CTRNKA9wMg0ARbw!lcferrFFP-mshDHNL-rwJLgNKDrXF9fXoljpqL30k5YKTNvCwuC3webzR32VnQQoPeFvSvAewNkeupcT4mjdEwNEKP4V$ 
>>>  
>>> +$schema: 
>>> https://urldefense.com/v3/__http://devicetree.org/meta-schemas/core.yaml*__;Iw!!CTRNKA9wMg0ARbw!lcferrFFP-mshDHNL-rwJLgNKDrXF9fXoljpqL30k5YKTNvCwuC3webzR32VnQQoPeFvSvAewNkeupcT4mjdEz618JHq$ 
>>>  
>>> +
>>> +title: MediaTek Media Data Path 3 COLOR
>>> +
>>> +maintainers:
>>> +  - Matthias Brugger <matthias.bgg@gmail.com>
>>> +  - Moudy Ho <moudy.ho@mediatek.com>
>>> +
>>> +description:
>>> +  One of Media Data Path 3 (MDP3) components used to adjust hue,
>>> luma and
>>> +  saturation to get better picture quality.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - mediatek,mt8195-mdp3-color
>>
>> This is exactly the same as previous file. Why do you split the
>> binding?
>> It really looks unnecessary.
>>
>> Probably all other files should be also squashed.
>>
> 
> and convert all other bindings into individual compatible enums to
> squash all files?
> 
>   compatible:
>     enum:
>       - mediatek,mt8195-mdp3-color
>       - mediatek,mt8195-mdp3-aal

Yes, all devices which have exactly the same properties in one binding
file. Their compatibles listed in enum.

You can keep the separate bindings which differ from each other.

Best regards,
Krzysztof

