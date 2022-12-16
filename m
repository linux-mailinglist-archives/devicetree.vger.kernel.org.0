Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A71564EC06
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 14:22:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229928AbiLPNWK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 08:22:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230221AbiLPNWG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 08:22:06 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFEF62E6BD
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 05:22:05 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id g7so3443750lfv.5
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 05:22:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RNCf2UgJngQuJz1n80wEvS0loAh/KFuMJfH8wEByOew=;
        b=K4OK+Gd6LS+KWQr2cK2MKGlRrZ8f7Zs2mBOxBnd9uWxWHAaopXPyYOsTo+BRtKT5WZ
         wJjyGRflyKietQEiqF66osK2N7XTrn5ZlG97ZrzCEDYqFSBTmgOdzsKa1rrZtNyorm/g
         bOFFY7X/Ddu9hKXsqIbNtGpRwuycqhh1QtwlB2asA4xW982Tr5EmTuxG3P+9z/4Cjrfg
         +qwYY36aVQl7f/eeFWBGuh0sA7ZVYFjNc1SOQBAo0vdb5ouxC7NsAYNVRPSWQJAOBAL8
         SaIECp8Vv3T6abrPqd37FIQuOxVr9ziMnpa0+mBuJVNaMLgQu12l5Fz4tCH+VtHslaHf
         My2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RNCf2UgJngQuJz1n80wEvS0loAh/KFuMJfH8wEByOew=;
        b=4QmEZktZt1ZDBwnZyYS8+QamlihEj5DnQDCaFql22CmUpbFTuAVs+CygWU9F1eKcUp
         Cd/WfMgTiy/bAve4mjK3wWbmgWp9C4TPvkTfk8dM9pEC/FcYsYxynNJmzRYUFOwrnsDP
         G6TC2vsjAITAxuDKKQcpR4AXqDGBOKDTCRPCxU48sEAgZrYhBxwNlV5jB8020I/zCDf9
         dQSKbmithI8HsxxchjJwYY7HrCOXHeJWDemEPbP1Sh+AAHs+tB68sRE8HsYeMcmxjPSc
         /VXg+RiANU2TrKxwLvVW2pSWAxYtLosEJGVqpnOE2nApswlnI0dPc2NCXq2BSvP3nyBq
         gB3g==
X-Gm-Message-State: ANoB5pkzfR/kcU+ODqsZYA/X25o0D19tj7A4FiVK5p5Btk9pmvJv4mwx
        bY532w6u5jUHrYqgt4JJhQfoKQ==
X-Google-Smtp-Source: AA0mqf62tids3S49qFwaQg9e0oPPfVRcEta0fP5KwomNnTkFlqzKJqRTfCF40M6m/4kJF3FHW7kcSg==
X-Received: by 2002:ac2:5a43:0:b0:4b5:90c5:281c with SMTP id r3-20020ac25a43000000b004b590c5281cmr8818446lfn.19.1671196924021;
        Fri, 16 Dec 2022 05:22:04 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o9-20020ac25e29000000b004b6f00832cesm219363lfg.166.2022.12.16.05.22.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 05:22:03 -0800 (PST)
Message-ID: <1114488b-7e73-6086-2f76-cb71ef6056f6@linaro.org>
Date:   Fri, 16 Dec 2022 14:22:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 01/10] dt-bindings: display: bridge: it66121: Add
 compatible string for IT6610
To:     Paul Cercueil <paul@crapouillou.net>,
        Robert Foss <robert.foss@linaro.org>
Cc:     Phong LE <ple@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        list@opendingux.net, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221214125821.12489-1-paul@crapouillou.net>
 <20221214125821.12489-2-paul@crapouillou.net>
 <CAG3jFytgK0noWteGvXTdSm9as9Q=qfhf_ep3Z8Wv2ofmLzGb=A@mail.gmail.com>
 <c78e92ae3cbea037abdd31ecd64e997c8dd1def2.camel@crapouillou.net>
 <bb2b5b72-42b3-3a6c-d865-9e338e34aba0@linaro.org>
 <d1f6d19d3218d9f1acc9b38e44af413f72f8a824.camel@crapouillou.net>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d1f6d19d3218d9f1acc9b38e44af413f72f8a824.camel@crapouillou.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/2022 13:21, Paul Cercueil wrote:
> Hi Krzysztof,
> 
> Le vendredi 16 décembre 2022 à 12:21 +0100, Krzysztof Kozlowski a
> écrit :
>> On 16/12/2022 11:46, Paul Cercueil wrote:
>>
>>>>>  properties:
>>>>>    compatible:
>>>>> -    const: ite,it66121
>>>>> +    enum:
>>>>> +      - ite,it66121
>>>>> +      - ite,it6610
>>
>> These should be ordered alphabetically. What's with the tendency of
>> adding always to the end?
> 
> I'm too used to the "inverse christmas tree" sort :)

Since these are not variables and they will not get shorter, any
christmas tree sorting here is the same conflict-prone as adding to the end.

> 
> I can send a quickfix patch if you really want alphabetical order.

No, no need.


Best regards,
Krzysztof

