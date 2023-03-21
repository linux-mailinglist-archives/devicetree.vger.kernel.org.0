Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94EC66C3570
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 16:18:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231683AbjCUPSC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 11:18:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231685AbjCUPRu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 11:17:50 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D704451CBD
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 08:17:32 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id h8so61065853ede.8
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 08:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679411850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KRub14cDWG5bsjeqlDtuRXP1mPBZqqoGfHwZXBK5HUk=;
        b=OvgzDawIBNnP9ueDqbC65uGM7q56iUrMFqKIPmRSKSkHJpm2oPZJrsY9PVMGTN6gl5
         nJmDED42S7gxY2YLmGI5cPzsVCuv3UG5L2bqV1IcHBnPiuUuLv3+7SNkkq3BUuZMvsq0
         GWorI81yONU6xxrTD8HsVqOAPGSoqDxrdfm7h0K8JdDnElV68+TsVRN4eVxOkwsa9x41
         61lE9oS6jlra9UTznRs5YGHsrNbing2iK6/whL/7dm7bUFr+bsF6WrGrVl16ACGdqU8l
         rFiErKP/oLf7j9XfDG/6zztIermG+1zER6jItH49fV0MY0iPsDxyGvY7Ti6HJ1FhmiHX
         Q4Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679411850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KRub14cDWG5bsjeqlDtuRXP1mPBZqqoGfHwZXBK5HUk=;
        b=F3hk1hn/Mlf//2KYSHD0dr5JQXPTIjP9Dni9GJwzR2v842QmBoiYxkp2xLQMYkVrN6
         r6nTNq2I+YrwKQES1sucad6KP6r8u25nUtzBOMebWqATNcy0BkeQAzak8aAjwwKQZO+V
         L4LmKDXnb6jhf4A8kgix80gk1C/lCCTAaKZ6Ohpxf4MD3tyy9/VwRY6n2V/NOflTSUtK
         KItSQrEHZ9EW4ouxF9eHmY4TiQw+PY/HRfSqsQkMz/1kerlNUjx+awbvQEgPD2E341kr
         i+6YWUDyt8O8BbaXtvvZq6b7cb7bumb/PeU1V07TUHIiq6Wu5wUARJniUz1iJHO1VlBu
         C8KA==
X-Gm-Message-State: AO0yUKW1SaKMLI6P+f9k2xDI/Ont4LUWGtnYWecmfY49mT3oE8o7Fcl8
        6XxEUiI3T+YcVsromuH7AiMEz4V18GOh3v/532k=
X-Google-Smtp-Source: AK7set8JY/HRGtAap5oncPC8OXGjI+/H213uczbb25qb6iUWBoNSy7O1cmIlZg+GOkn3cuww2XIewg==
X-Received: by 2002:a17:906:720f:b0:8f2:62a9:6159 with SMTP id m15-20020a170906720f00b008f262a96159mr2980463ejk.2.1679411850687;
        Tue, 21 Mar 2023 08:17:30 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:2142:d8da:5ae4:d817? ([2a02:810d:15c0:828:2142:d8da:5ae4:d817])
        by smtp.gmail.com with ESMTPSA id k9-20020a17090666c900b0092b606cb803sm6033076ejp.140.2023.03.21.08.17.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 08:17:30 -0700 (PDT)
Message-ID: <d8be08b9-3043-d517-b5b8-86ea7a602e0b@linaro.org>
Date:   Tue, 21 Mar 2023 16:17:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: Add no-hpd property
To:     Jayesh Choudhary <j-choudhary@ti.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     andrzej.hajda@intel.com, neil.armstrong@linaro.org,
        rfoss@kernel.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        jani.nikula@intel.com, tzimmermann@suse.de, javierm@redhat.com,
        ville.syrjala@linux.intel.com, r-ravikumar@ti.com,
        lyude@redhat.com, alexander.deucher@amd.com, sjakhade@cadence.com,
        yamonkar@cadence.com, a-bhatia1@ti.com
References: <20230316140823.234263-1-j-choudhary@ti.com>
 <20230316140823.234263-2-j-choudhary@ti.com>
 <dbc43c09-f8ec-f877-598a-adff47d44b0e@linaro.org>
 <79ce5fe8-9fb0-5caa-67a0-87dee7867856@ti.com>
 <55cfacf6-03e0-b9bc-83f3-3e9f2d7b2d4d@linaro.org>
 <d72bf0df-28d7-6419-56a5-58e04dcb30f2@ti.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d72bf0df-28d7-6419-56a5-58e04dcb30f2@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/03/2023 15:28, Jayesh Choudhary wrote:
> 
> 
> On 21/03/23 18:08, Krzysztof Kozlowski wrote:
>> On 21/03/2023 13:02, Jayesh Choudhary wrote:
>>>>
>>>>> +    type: boolean
>>>>> +    description:
>>>>> +      Set if the HPD line on the bridge isn't hooked up to anything or is
>>>>> +      otherwise unusable.
>>>>
>>>> It's the property of the panel, not bridge. Unless you want to say that
>>>> bridge physically does not have HPD? Does it follow the standard in such
>>>> case?
>>>
>>> MHDP does have hpd. But the mhdp driver should handle the cases when the
>>
>> This is about bindings, not driver. Your driver can still handle this as
>> it wishes.
>>
>>> hpd pin of bridge is not connected to that of the DP-connector. This is
>>> to add support for that. (optional property)
>>
>> Which is indicated by panel no-hpd, right?
> 
> Actually no panel is involved in this. For TI SoC J721S2, the data 
> pipeline involves the bridge whose endpoint is directly the DP connector 
> with compatible 'dp-connector'. And in the binding dp-connector.yaml, 
> there isn't any 'no-hpd' property for this indication.
> 
> Does this clarifies the issue? Or did I misinterpret your comment?

Yes, then you only need to narrow which hardware does not have HPD
hooked up. Or at least clarify that it is not about driver having or not
having HPD control...


Best regards,
Krzysztof

