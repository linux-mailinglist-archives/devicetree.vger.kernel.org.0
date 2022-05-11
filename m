Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E565D522E06
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 10:16:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235504AbiEKIPw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 04:15:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243419AbiEKIPv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 04:15:51 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD14E21275
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 01:15:47 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id g20so1592558edw.6
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 01:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nGIPkUoD0VqgRPwmnJdq8aDIQ4mHp9cW//PkaS4eSJQ=;
        b=v12qa2iTtKx2vdf1vq2PcT9u9GdQ9m9IGKZ4JZ6rG21TQSTvTP4+nmoa9IUpXFBIoo
         HCXVmFpF11W8kT0P0Be2LQsxp0UEhAcGedjF+gxrswebMy203EvQsuk8q9cnpCIwnDHi
         hJ8YVa+U5r+jDrQcUeQyDMH67V3MZoI5Ar2zEYMN0FPeklwVUvkTKQfUo/4ly7GB06wU
         kRRQ0tUqRQcD2ivSDskqB0eOB4fmz9yDyMBGd1Csf8zg4FUVHmZ/jQT1fE9dUvLCxZsg
         7028VOdrs3AVEHGFcTMMi93816g4PU0rULHhSquz166SszX/Cdl+dslpk2QRxW58Y67l
         4Kvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nGIPkUoD0VqgRPwmnJdq8aDIQ4mHp9cW//PkaS4eSJQ=;
        b=7Mm3KLReZAwjJeuK86gx+2MHc9H3XEYEffWPQj9Sou37pSlFmj7z8uTFuj7R7q93hb
         ZumYpJZklm3OrZoTuSrLqR17+X9qAZsl7Jy7M2ec11qKSh8qf5ETm+G+t+sbLNJgnIk6
         LHy2zWwSLS54cisRpkM/HsVOuePPg6qwvTIanPmC6oohX7NeusVLdRZnM5iMXKNvd5S5
         7QBFKvELUGfCPxOf0an17KgFroRRT6d6IqyBo/Xo5mihQ2JVa+DMaKsrhiT6YcwGiaXr
         +dcmCNV+wBg89CWh4/MVSnHjTAISZ4UkJpGC9IoxmxbG3N8KN77lFyQ0jP/IBKPSsYF1
         CV6w==
X-Gm-Message-State: AOAM533B9zaEC+yoWV4FAaA1U6hu9fNw1Fyy21CF5Uz0MDc1SJkvXorJ
        53qXkN/tZCwuPpDvKTEHt7juHg==
X-Google-Smtp-Source: ABdhPJyYpUvmHj5wexeKIFtMMhSwQ6w/vOEaR6DABNPdZPWdmBPuhvXzbQ4nDmBN1Iq3dFKuJCdiuw==
X-Received: by 2002:aa7:c31a:0:b0:425:df3c:de8e with SMTP id l26-20020aa7c31a000000b00425df3cde8emr27001921edq.83.1652256946337;
        Wed, 11 May 2022 01:15:46 -0700 (PDT)
Received: from [192.168.0.254] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id n15-20020a05640204cf00b0042617ba63c4sm782288edw.78.2022.05.11.01.15.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 01:15:45 -0700 (PDT)
Message-ID: <091e6619-3341-4a98-90f6-48a6281f6275@linaro.org>
Date:   Wed, 11 May 2022 10:15:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v6 1/4] dt-bindings: thermal: k3-j72xx: Add VTM bindings
 documentation
Content-Language: en-US
To:     "J, KEERTHY" <j-keerthy@ti.com>, robh+dt@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, amitk@kernel.org,
        kristo@kernel.org, vigneshr@ti.com
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220427064635.24898-1-j-keerthy@ti.com>
 <20220427064635.24898-2-j-keerthy@ti.com>
 <5859fed0-82b7-95eb-5719-9b0016916c50@ti.com>
 <eb0745a6-ecf2-4b70-368b-9ad8a322f208@linaro.org>
 <117f175f-62d1-17b5-742b-bcb250b7866f@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <117f175f-62d1-17b5-742b-bcb250b7866f@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/05/2022 09:53, J, KEERTHY wrote:
>>>
>>> Any comments on this version?
>>
>> You got Rob's review, so you don't need also mine.
>>
>> If you want, then in general look okay, except the description for "reg"
>> you could split per items:
>>
>> reg:
>>    items:
>>      - description: VTM cfg1 register space
>>      - description: VTM cfg2 register space
>>      - description: efuse register space
>>
>> It's more obvious what items you expect.
> 
> Hi Krzysztof,
> 
> DTEX 
> Documentation/devicetree/bindings/thermal/ti,j72xx-thermal.example.dts
> Documentation/devicetree/bindings/thermal/ti,j72xx-thermal.yaml: found 
> duplicate key "description" with value "VTM cfg2 register space" 
> (original value: "VTM cfg1 register space")
> Documentation/devicetree/bindings/Makefile:26: recipe for target 
> 'Documentation/devicetree/bindings/thermal/ti,j72xx-thermal.example.dts' 
> failed
> make[1]: *** 
> [Documentation/devicetree/bindings/thermal/ti,j72xx-thermal.example.dts] Er
> 
> I believe multiple instances of description is failing. So can i keep 
> the description as is?

It looks weird. Can you share your code (pastebin/github/paste here)?


Best regards,
Krzysztof
